using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using LibraryIS.ViewModels;

namespace LibraryIS.Services
{
    interface INavigationService<T> where T:ViewModelBase
    {
        void ShowView(T viewModel);
        event EventHandler ClosedView;
    }
}
