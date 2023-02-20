using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Data;
using LiveCharts;
using LiveCharts.Defaults;
using LiveCharts.Wpf;

namespace LibraryIS.converters
{
    class ListValuesToChartValues : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            List<double> values = value as List<double>;
            if (values == null) return null;
            ChartValues<ObservablePoint> observablePoints = new ChartValues<ObservablePoint>();
            for (int i = 0; i < values.Count; i++)
            {
                observablePoints.Add(new ObservablePoint(i + 1, values[i]));
            }
            return observablePoints;
        }
        public object ConvertBack(object value, Type targetType, object parameter, System.Globalization.CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }
}
