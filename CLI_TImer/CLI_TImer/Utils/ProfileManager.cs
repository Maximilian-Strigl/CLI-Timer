﻿using CLI_Timer.MVVM.Model;
using System.Collections.Generic;

namespace CLI_Timer.Utils
{
    //ToDo
    //Save after changes
    //Default Profile
    public static class NewProfileManager
    {
        public static List<Profile> ProfileList { get; set; } = new();
        public static Profile DefaultProfile { get; set; } = new Profile();

        public static string AddProfile(Profile profile)
        {
            foreach(Profile p in ProfileList)
            {
                if (p.Name == profile.Name)
                {
                    return "A Profile with this name already exists";
                }
            }

            ProfileList.Add(profile);

            //Save
            return "Profile successfully added";
        }

        public static string RemoveProfile(Profile profile) 
        {
            Profile? p = ProfileList.Find(x => x.Name == profile.Name);

            if (p is null) return "Profile does not exist";

            ProfileList.Remove(p);
            return "Profile Successfully deleted";

            //Save
        }

        public static string UpdateProfile(Profile profile)
        {
            Profile? p = ProfileList.Find(x => x.Name == profile.Name);

            if (p is null) return "Profile not found";

            p.Name = profile.Name;
            p.Time = profile.Time > 0 ? profile.Time : p.Time;
            p.TimerType = profile.TimerType is not null ? profile.TimerType : p.TimerType;

            ProfileList.Remove(p);
            ProfileList.Add(p);

            return "Updated Profile";
        }

        public static Profile? GetProfile(string name) 
        {
            foreach(Profile p in ProfileList)
            {
                if(p.Name == name) return p;
            }
            return new();
        }
    }
}
