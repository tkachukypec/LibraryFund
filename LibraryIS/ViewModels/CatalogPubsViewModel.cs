using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Collections.ObjectModel;
using LibraryIS.Services;
using LibraryIS.ViewModels;
using LibraryIS.Filters;
using System.Windows;
using System.ComponentModel;
using System.Runtime.CompilerServices;
using LibraryIS;

namespace LibraryIS.ViewModels
{
    class CatalogPubsViewModel : ViewModelBase
    {
        INavigationService<AddEditBookViewModel> _navigationService = ServiceContainer.Instance.GetService<INavigationService<AddEditBookViewModel>>();
        private Command _editCommand;
        public Command EditCommand
        {
            get
            {
                return _editCommand ?? (_editCommand = new Command(obj =>
                {
                    _navigationService.ShowView(new AddEditBookViewModel(obj as Publication));
                    _navigationService.ClosedView += (o, e) => UpdateBookList();
                }, obj => obj != null));
            }
        }
        private Command _addCommand;
        public Command AddCommand
        {
            get
            {
                return _addCommand ?? (_addCommand = new Command(obj =>
                {
                    _navigationService.ShowView(new AddEditBookViewModel());
                    _navigationService.ClosedView += (o, e) => UpdateBookList();
                }));
            }
        }
        public ObservableCollection<BBKFilter> BBKFilters { get; private set; }
        public string SearchString { get; set; } = "";
        public ObservableCollection<Publication> Publications { get; private set; }
        IDialogService _dialogService;
        public CatalogPubsViewModel()
        {
            Title = "Издания";
            _dialogService = ServiceContainer.Instance.GetService<IDialogService>();
            Publications = new ObservableCollection<Publication>();
            BBKFilters = new ObservableCollection<BBKFilter>(DataBase.GetEntities().BBK.Select(p => new BBKFilter() { BBK = p }));
        }
        private bool _resetFilterActive = false;
        public bool ResetFilterActive
        {
            get => _resetFilterActive;
            private set
            {
                if (_resetFilterActive != value)
                {
                    _resetFilterActive = value;
                    PropertyChange("");
                }
            }
        }
        public void ResetFilters()
        {
            ResetFilterActive = false;
            foreach(BBKFilter bbkfilter in BBKFilters)
            {
                bbkfilter.IsChecked = false;
            }

            UpdateBookList();
        }
        public int SelectedSort { get; set; } = 0;
        private int _currentCountElements = 0;
        private int _countAllElements = 0;
        public int CurrentCountElements
        {
            get => _currentCountElements;
            private set
            {
                if(_currentCountElements != value)
                {
                    _currentCountElements = value;
                    PropertyChange("CurrentCountElements");
                }
            }
        }
        public int CountAllElements
        {
            get => _countAllElements;
            set
            {
                if(_countAllElements != value)
                {
                    _countAllElements = value;
                    PropertyChange("CountAllElements");
                }
            }
        }
        private Command _removecommand;
        public Command RemoveCommand
        {
            get
            {
                return _removecommand ?? (_removecommand = new Command(
                    obj =>
                    {
                        DialogResult dialogResult = _dialogService.ShowDialog("Вы действительно хотите удалить объект из базы данных?", "Подтверждение", TypeDialog.ConfirmationType);

                        if (dialogResult == DialogResult.Yes)
                        {
                            Publication pub = obj as Publication;
                            DataBase.GetEntities().Publication.Remove(pub);
                            DataBase.SaveChanges();
                            UpdateBookList();
                        }
                    },obj => obj != null));
            }
        }
        public void UpdateBookList()
        {
            try
            {
                Publications.Clear();
                List<BBK> BBKs = BBKFilters.Where(p => p.IsChecked).Select(p => p.BBK).ToList();
                List<Publication> pubs = DataBase.GetEntities().Publication.ToList();
                CountAllElements = pubs.Count();
                if(!String.IsNullOrWhiteSpace(SearchString))
                {
                    pubs = pubs.Where(p => p.Title.Contains(SearchString.Trim())).ToList();
                }
                if(BBKs.Count != 0)
                {
                    pubs = pubs.Where(p => BBKs.Contains(p.BBK)).ToList();
                    ResetFilterActive = true;
                }
                else
                {
                    ResetFilterActive = false;
                }
                switch(SelectedSort)
                {
                    case 0:
                        pubs = pubs.OrderBy(p => p.Id).ToList();
                        break;
                    case 1:
                        pubs = pubs.OrderByDescending(p => p.Id).ToList();
                        break;
                    case 2:
                        pubs = pubs.OrderBy(p => p.Title).ToList();
                        break;
                    case 3:
                        pubs = pubs.OrderByDescending(p => p.Title).ToList();
                        break;
                    case 4:
                        pubs = pubs.OrderBy(p => p.Year).ToList();
                        break;
                    case 5:
                        pubs = pubs.OrderByDescending(p => p.Year).ToList();
                        break;

                }
                CurrentCountElements = pubs.Count();
                if (pubs.Count != 0)
                {
                    foreach(Publication pub in pubs)
                    {
                        Publications.Add(pub);
                    }
                }
                else
                {
                    _dialogService?.ShowDialog("По вашему запросу ничего не найдено", "Результаты поиска", TypeDialog.InfoType);
                }
            }
            catch(Exception e)
            {
                _dialogService?.ShowDialog(e.Message, $"Ошибка {e.HResult}", TypeDialog.ErrorType);
            }
        }
    }
}
