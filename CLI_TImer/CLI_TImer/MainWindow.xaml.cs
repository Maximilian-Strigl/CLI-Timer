﻿using System.Threading;
using System;
using System.Windows;
using System.Windows.Input;
using System.Windows.Controls;
using CLI_TImer.MVVM.Model;
using CLI_TImer.MVVM.ViewModel;

namespace CLI_TImer
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {       
        public MainWindow()
        {
            InitializeComponent();

            DataContext = new MainViewModel();

            this.Left = SystemParameters.PrimaryScreenWidth - this.Width - 20;
        }

        private void Border_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            this.DragMove();
        }
    }
}