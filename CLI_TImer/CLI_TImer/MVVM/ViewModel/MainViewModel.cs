﻿using CLI_TImer.MVVM.Model;
using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using System;
using System.Collections.ObjectModel;
using System.Windows.Threading;
using CLI_TImer.Classes;
using System.Windows.Input;
using System.IO;
using CLI_TImer.Helpers;
using System.Windows.Annotations;
using System.Linq;
using CLI_TImer.MVVM.View;
using System.Diagnostics;
using System.Windows.Media;
using System.Windows.Controls;
using Microsoft.Toolkit.Uwp.Notifications;

namespace CLI_TImer.MVVM.ViewModel
{
    public partial class MainViewModel : ObservableObject
    {
        #region variables

        //Settings
        SettingsWindow settingsWindow;
        SoundPlayer soundPlayer = new();

        [ObservableProperty]
        public string? mainTimerText;

        public string PauseTimerText = "";

        //Inputs
        [ObservableProperty]
        public string enteredCommand = string.Empty;

        [ObservableProperty]
        public ObservableCollection<Command> commandHistory = new();


        //Code
        private int pausePosition;

        //private int hours = 0;
        //private int minutes = 0;
        //private int seconds = 0;

        Profile? selectedProfile;
        Profile? mainRunningProfile;
        Profile? secondaryRunningProfile;

        Timer timer;

        Random random = new();

        public virtual Dispatcher Dispatcher { get; protected set; }

        AppDataManager dataManager = AppDataManager.instance;

        #endregion

        public MainViewModel()
        {
            timer = new(this);
            SetMainTimerText(0);

            Dispatcher= Dispatcher.CurrentDispatcher;

            int standardTime = Properties.Settings.Default.DefaultTime;

            timer.setMainTimer(standardTime);
            
        }

        #region Set Timer Text
        internal void SetMainTimerText(int time)
        {
            MainTimerText = $"{Times.SecondsToHours(time)}h {Times.SecondsToMinutes(time)}m {time % 60}s";
        }

        internal void UpdatePauseTimerText(int seconds)
        {
            if (CommandHistory.Count == 0) return;
            string PauseTimerText = $"{Times.SecondsToHours(seconds)}h {Times.SecondsToMinutes(seconds)}m {seconds % 60}s";

            Dispatcher.BeginInvoke(new Action(() =>
            {
                Command latestPause = CommandHistory[pausePosition];

                CommandHistory.Remove(latestPause);

                latestPause.output = PauseTimerText;

                CommandHistory.Add(latestPause);

                CommandHistory.Move(CommandHistory.Count -1, pausePosition);
            }));
        }

        public void MainTimerFinished()
        {
            if(mainRunningProfile.RingtoneEnabled == false) return;
            if (string.IsNullOrEmpty(mainRunningProfile.RingtonePath))
            {
                soundPlayer.playSound(@"C://Windows/Media/Alarm04.wav", mainRunningProfile.RingtoneDuration);
            }
            else
            {
                soundPlayer.playSound(mainRunningProfile.RingtonePath, mainRunningProfile.RingtoneDuration);
            }

            if(mainRunningProfile.NotificationEnabled == true) 
            {
                new ToastContentBuilder()
                    .AddText(mainRunningProfile.Name + " finished")
                    .AddText(mainRunningProfile.NotificationText)
                    .AddButton(new ToastButton()
                        .SetContent("Stop"))
                    .AddButton(new ToastButton()
                        .SetContent("Add 5m"))
                    .Show();
            }

        }

        public void SecondaryTimerFinished()
        {
            if(secondaryRunningProfile.RingtoneEnabled == false) return;
            if (string.IsNullOrEmpty(secondaryRunningProfile.RingtonePath))
            {
                soundPlayer.playSound(@"C://Windows/Media/Alarm08.wav", secondaryRunningProfile.RingtoneDuration);
            }
            else
            {
                soundPlayer.playSound(secondaryRunningProfile.RingtonePath, secondaryRunningProfile.RingtoneDuration);
            }

            if(secondaryRunningProfile.NotificationEnabled == true) 
            {
                new ToastContentBuilder()
                .AddText(secondaryRunningProfile.Name + " finished")
                .AddText(secondaryRunningProfile.NotificationText)
                .AddButton(new ToastButton()
                    .SetContent("Stop"))
                .AddButton(new ToastButton()
                    .SetContent("Add 5m"))
                .Show();
            }

        }


        #endregion

        //Input Commands
        [RelayCommand]
        public void Send()
        {
            CheckCommand(EnteredCommand);
            EnteredCommand = "";
        }

        #region commands
        private void CheckCommand(string _command)
        {
            int hours, minutes, seconds;
            hours = seconds = minutes = 0;  
            string[]? command = _command.Split(' ');           

            string? answer = "";


            if (_command.Split("'").Length == 3)
            {
                answer = _command.Split("'")[1];
            }
            else if (_command.Split('"').Length == 3)
            {
                answer = _command.Split('"')[1];
            }

            foreach (string s in command)
            {
                if (string.IsNullOrEmpty(s)) break;
                if (s[^1] == 'h') _=int.TryParse(s.Remove(s.Length-1), out hours);
                if (s[^1] == 'm') _=int.TryParse(s.Remove(s.Length-1), out minutes);
                if (s[^1] == 's') _=int.TryParse(s.Remove(s.Length - 1), out seconds);
            }

            int resultTime = Times.TimeToSeconds(hours, minutes, seconds);

            if (RunProfile(command[0], resultTime) == true) return;


            switch(command[0])
            {
                case "new":
                    ProfileManager.AddNewProfile(command[1], answer, resultTime, command[command.Length - 1]);
                    AddToHistory("new Command", $"added '{command[1]}' to command List", "");
                    break;

                case "change":
                    
                    if (command[2] == "time")
                    {
                        ProfileManager.UpdateProfile(command[1], resultTime);
                        AddToHistory("change Profile", $"changed the '{command[2]}' property of '{command[1]}'", "");
                        break;
                    }
                    ProfileManager.UpdateProfile(command[1], command[2], command[3]);
                    AddToHistory("change Profile", $"changed the '{command[2]}' property of '{command[1]}'", "");
                    break;

                case "delete":
                    ProfileManager.DeleteProfile(command[1]);
                    AddToHistory("delete Profile", $"deleted {command[1]}", "");
                    break;

                case "add":
                    timer.AddSecondsToCurrentTimer(Times.TimeToSeconds(hours, minutes, seconds));
                    answer = "added ";
                    answer +=  hours != 0 ? $"{hours}h " : "" ;
                    answer +=  minutes != 0 ? $"{minutes}m " : "";
                    answer +=  seconds != 0 ? $"{seconds}s " : "";
                    AddToHistory("add", answer, "");
                    break;

                case "start":
                    timer.startMain();
                    AddToHistory("start", "started main timer", "");
                    break;

                case "subtract":
                    SubtractTimeFromCurrentTimer(hours, minutes, seconds);
                    answer = "subtracted ";
                    answer +=  hours != 0 ? $"{hours}h " : "";
                    answer +=  minutes != 0 ? $"{minutes}m " : "";
                    answer +=  seconds != 0 ? $"{seconds}s " : "";
                    AddToHistory("subtract", answer, "");
                    break;

                case "end":
                    ResetCurrentTimer();
                    AddToHistory("end", "stopped current timer", "");
                    break;

                case "reset":
                    timer.ResetAllTimers();
                    AddToHistory("reset", "reseted all timers", "");
                    break;

                case "clear":
                    ClearCommandHistoy();
                    break;

                case "close":
                    Close();
                    break;

                case "settings":
                    settingsWindow = new SettingsWindow();
                    settingsWindow.Show();
                    break;

                default:
                    AddToHistory("Error", "unknown Command", "");
                    break;
            }
        }

        //Adds a Command to the History
        private void AddToHistory(string title, string answer, string output)
        {
            int GradientNumber = random.Next(dataManager.GetGradientList().Count());

            var StartRgb = Convert.ToInt32(dataManager.GetGradientList()[GradientNumber].StartHex.Remove(0, 1), 16);
            var EndRgb = Convert.ToInt32(dataManager.GetGradientList()[GradientNumber].StartHex.Remove(0, 1), 16);

            GradientStopCollection gradientStopCollection = new()
            {
                new GradientStop(Color.FromRgb((byte)((StartRgb >> 16) & 0xFF), (byte)((StartRgb >> 8) & 0xFF), (byte)(StartRgb& 0xFF)), 0),
                new GradientStop(Color.FromRgb((byte)((EndRgb >> 16) & 0xFF), (byte)((EndRgb >> 8) & 0xFF), (byte)(EndRgb& 0xFF)), 1)
            };

            CommandHistory.Add(new Command { title = title, answer = answer, output = output, gradientStops = gradientStopCollection});
        }


        //Profile
        private bool RunProfile(string command, int time)
        {
            if (selectedProfile == ProfileManager.getProfileFromCommand(command)) return false;

            selectedProfile = ProfileManager.getProfileFromCommand(command);

            if(selectedProfile == null) return false;

            if (time != 0) selectedProfile.Time = time;

            if(selectedProfile.TimerType == TimerType.main) mainRunningProfile = selectedProfile;
            if(selectedProfile.TimerType == TimerType.second) secondaryRunningProfile = selectedProfile;

            ExecuteProfile(selectedProfile);
            return true;
        }

        private void ExecuteProfile(Profile profile)
        {
            timer.SetAndStartTimerFromProfile(profile);

            if (profile.TimerType == TimerType.second) pausePosition = CommandHistory.Count;
            AddToHistory(profile.Name, profile.Answer, "");
        }
        private void ClearCommandHistoy() => CommandHistory.Clear();    

        private void SubtractTimeFromCurrentTimer(int hours, int minutes, int seconds)
        {
            timer.AddSecondsToCurrentTimer(-Times.TimeToSeconds(hours, minutes, seconds));
        }

        private void ResetCurrentTimer() => timer.ResetCurrentTimer();

        #endregion

        #region AppBehaviour
        //Close Button

        [RelayCommand]
        public static void Close()
        {
            System.Windows.Application.Current.Shutdown();
        }
        #endregion
    }
}