using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Data;
using System.IO;
using System.Windows.Media.Imaging;

namespace LibraryIS.converters
{
    class RemovalAvailabilityButtonConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, System.Globalization.CultureInfo culture)
        {
            /*bool? b = value as bool?;
            return b == true ? Visibility.Visible : Visibility.Hidden;*/

            string str = value as string;
            return string.IsNullOrEmpty(str) ? Visibility.Hidden : Visibility.Visible;
        }
        public object ConvertBack(object value, Type targetType, object parameter, System.Globalization.CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }
}
