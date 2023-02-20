using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Windows.Controls;

namespace LibraryIS.ViewModels
{
    class MainWindowViewModel : ViewModelBase
    {
        public Librarian Account { get; private set; }
        public ObservableCollection<ViewModelBase> ViewModelsCollection { get; private set; }
        private ViewModelBase _selectedViewModel;
        public ViewModelBase SelectedViewModel
        {
            get => _selectedViewModel;
            set
            {
                if(_selectedViewModel != value)
                {
                    _selectedViewModel = value;
                    PropertyChange();
                }
            }
        }
        public MainWindowViewModel()
        {
            Account = AuthorizationViewModel.Account;
            ViewModelsCollection = new ObservableCollection<ViewModelBase>();
            ViewModelsCollection.Add(new CatalogPubsViewModel());
            ViewModelsCollection.Add(new ReportViewModel());
            SelectedViewModel = ViewModelsCollection[0];
        }
    }
}
