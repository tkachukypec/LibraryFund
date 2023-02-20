﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Threading.Tasks;
using System.Windows;
using LibraryIS.Services;
using LibraryIS.ViewModels;
using LibraryIS;

namespace LibraryIS
{
    /// <summary>
    /// Логика взаимодействия для App.xaml
    /// </summary>
    public partial class App : Application
    {
        protected override void OnStartup(StartupEventArgs e)
        {
            base.OnStartup(e);
            ServiceContainer.Instance.AddService<IDialogService>(new DialogService());

            ServiceContainer.Instance.AddService<INavigationService<AddEditBookViewModel>>
                (new WindowNavigationService<AddEditBookViewModel, AddPublicationWindow>());
        }
    }
}
