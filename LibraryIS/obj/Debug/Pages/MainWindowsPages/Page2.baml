   M S B A M L   `   `   `  ????D  @LibraryIS, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullS.clr-namespace:LibraryIS.Pages.MainWindowsPages LibraryIS.Pages.MainWindowsPages  5      U QLiveCharts.Wpf, Version=0.9.7.0, Culture=neutral, PublicKeyToken=0bc1f845d1ebb8dfG4clr-namespace:LiveCharts.Wpf;assembly=LiveCharts.WpfLiveCharts.Wpf 5      ;"clr-namespace:LibraryIS.convertersLibraryIS.converters  5      ,    &LibraryIS.Pages.MainWindowsPages.Page2   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      @local.clr-namespace:LibraryIS.Pages.MainWindowsPages     5      Gcharts4clr-namespace:LiveCharts.Wpf;assembly=LiveCharts.Wpf     5      9
converters"clr-namespace:LibraryIS.converters     5      -   5        $??window??5        N? Title  5      ?? *Title+ ? 	Resources 5      -  'LibraryIS.converters.PieSeriesConverter   conv2  ,LibraryIS.converters.ListValuesToChartValues 	 conv2??%:   &	        &	        5   
   67     5   
   6=   5      .??5      ?  ? ColumnDefinitions 5   
   ?? 5      $??1* ?6   6,   ?? 5      $??1* ?6   6,   ?? 5      $??1* ?6   6,    ? RowDefinitions 5   
   ?? 5      $	??80* ?6   6+   ?? 5      $
??223* ?6   6,   ?? 5      $
??147* ?6   6,   .+?5   
   ?? $??0??6   $??0??6!   $
??Left=?61   $	??Top=?6L   $??Roboto)?6d   $??25(?6x   $??30,30q?6?   ??6?   ?? *Title+6?     LiveCharts.Wpf.PieChart  5   
   &   LiveCharts.Wpf.Charts.Base.Chart   LegendLocation$ Bottom=?6   $??0??62   $??2??6B   $??1??6V      Series 5!      `?  `? 	Converter# [  6   .1?5"      ??  ?? Path$ 
BookLabels?6   62   ?? 5#      $ CountExtraditionValues?6   6>   5$      5&      #  LiveCharts.Wpf.CartesianChart  5(   
   $??2??6    $??0??6-    5*      !  LiveCharts.Wpf.ColumnSeries    LiveCharts.Wpf.Series   Values 6&   ?? *RelativeFrequencies+	 ?? 	Converter#	 [ 6p   
   AxisX
 5-        LiveCharts.Wpf.Axis     Labels 6   ?? *
BookLabels+6>   5/        51   
   $??2??6    $??1??6-    53      	  LiveCharts.Wpf.LineSeries	   6$   ?? * AccumulatedRelativeFrequencies+#	 [ 6y   
 56         6   ?? *
BookLabels+6>   58      ?? 5:   
    ?? Orientation$ Vertical=?6   $??0??6,   $??2??69   $??2??6I   .+?5;      ??  ?? TextAlignment$ Center=?6   $??Medium"?6/   $
??0,10q?6C   $6??0Наиболее популярная книга??6Q   6t   ?? 5<      $	??150??5=      $	??150??6!   $??0, 20q?6-   ??5<      ?? *PopularPub.ImagePath+  relativeToFullPathConverter#	 [ 5=   >   ?? 5>      ???#7d7d7d$
??Wrap=?6-   $ Center=?5?   J   ??5>   A   ?? *PopularPub.Book.Author+  listAuthorToStringConverter#	 [ 5?   c   ?? 5@      $??Medium"?6   $??13(?6,   $
??Wrap=?5A      $ Center=?6,   ??5@   :   ?? *PopularBook.Book.Title+5A   E   ?? 5B      $??13(?6   $
??Wrap=?5C      $ Center=?6,   ??5B   &   ?? *PopularPub.BookIssuance.Count+ ?? StringFormat$+ %(количество аренд:{0})??5C   E   5D      ?? 5E   
   -   5        $??Center=?5E      $??Center=?6.   $??2??6I   $??2??6Y   .??6{   '%Сохранить отчет в .doc6?   ?? 5G   
   -   5         ??Name$
 plug??5G   %   $y?Hidden=?6   ???	#F0FFFFFF$??3??6J   $??3??6[   ._?5H      ?? $??Center=?6   $??Center=?66   $ Vertical=?6Q   .+?5I      ?? }?. $	??200??6-   $	??200??69    ?? CornerRadius$	 200??6F   ???#ededed._?5J      ?? -   5         ??Name$ canvasAnimation??5J      $??0,0,0,0q?66   .+?5K      ?? $	??120??6$   $	??120??60    ?? Left$ 40??6=   
 ?? Top$ 50??6N   ???#6375f16o   ? 5L       ? Points1 ?    Zb?2
 Zb Zb?, Zb ???2
???#6375f16T   ?? 5M      -   5         ??Name$ listOne??5M   $   ???#9d9d9d$??80??6D   $	??100??6O   $ 60??6\   $
 -170??6m   6?   ?? 5N      -   5        $ listTwo??5N   $   ???#AdAdAd$??90??6D   $	??100??6O   $ 55??6\   $
 -150??6m   6?   ?? 5O      -   5        $ listTree??5O   $   
???????$	??100??6C   $	??100??6O   $ 50??6\   $
 -120??6m   6?   F? 5P      ???#688AFD$ -1??6.   ??5Q      B? 5R   "   .??5S   &   E? -   5        test?? E? 
StartPoint$ 40,70&?5S   ?   .??5T   *   ?? -	   5        two?? ?? Point$ 160,70&?5T   C   6T   ?? 5U   *   $ 160,70&?66   6G   ?? 5V   *   $ 40,70&?66   6F   5W   '   5X   #   5Z      5[      5\      ?? 5]      ???#7D7D7D$??Normal&?61   $??20(?6F   USПожалуйста, подождите. Идет создание отчета...6?   5^      5_      5`       ? Triggers 5a      :? 5b   
    :? RoutedEvent$ Loaded??6   .[?5c      ?? .??5d      ?? .??5e      *?  g? RepeatBehavior$ Forever??63    ?? 
TargetName$
 test??6L    ?? TargetProperty$ 
StartPoint?6i    g? Duration$ 0:0:2.5D?6?   .'?5f      ??  $? KeyTime$ 0%??6.    $? Value$ 40,70&?6;   6K   ?? 5g      $	 20%??6.   $ 30,80&?6<   6L   ?? 5h      $	 65%??6.   $ 30,80&?6<   6L   ?? 5i      $	 65%??6.   $ 40,70&?6<   6L   5j      *? 5k      $ Forever??63   $	 two??6L   $ Point?6h   $ 0:0:2.5D?6?   .'?5l      ?? $ 0%??6.   $ 160,70&?6;   6L   ?? 5m      $	 20%??6.   $ 170,80&?6<   6M   ?? 5n      $	 65%??6.   $ 170,80&?6<   6M   ?? 5o      $	 65%??6.   $ 160,70&?6<   6M   5p      U? 5q      $ Forever??64   $ listTree??6M   $ (Canvas.Top)?6n   $ 0:0:2.5D?6?   .\?5r      ??   O? KeyTime$	  20%??6/   ! O? Value$
! -170Q?6=   6L   ?? 5s      $	  25%??6/   $! 70Q?6=   6J   ?? 5t      $	  65%??6/   $! 70Q?6=   6J   ?? 5u      $	  65%??6/   $
! -170Q?6=   6L   5v      U? 5w      $ Forever??64   $ listTwo??6M   $ (Canvas.Top)?6m   $ 0:0:2.5D?6?   .\?5x      ?? $	  20%??6/   $
! -150Q?6=   6L   ?? 5y      $	  25%??6/   $! 60Q?6=   6J   ?? 5z      $	  65%??6/   $! 60Q?6=   6J   ?? 5{      $	  65%??6/   $
! -150Q?6=   6L   5|      U? 5}      $ Forever??64   $ listOne??6M   $ (Canvas.Top)?6m   $ 0:0:2.5D?6?   .\?5~      ?? $	  20%??6/   $
! -120Q?6=   6L   ?? 5      $	  25%??6/   $! 50Q?6=   6J   ?? 5?      $	  65%??6/   $! 50Q?6=   6J   ?? 5?      $	  65%??6/   $
! -120Q?6=   6L   5?      r? 5?      $ Forever??67   $ canvasAnimation??6P   $ Margin?6x   $ 0:0:2.5D?6?   .	?5?      ?? " p? KeyTime$	" 30%??62   # p? Value$# 0,0,0,0q?6@   6R   ?? 5?      $	" 65%??62   $# 
-200,0,0,0q?6@   6U   ?? 5?      $	" 65%??62   $# 	200,0,0,0q?6@   6T   ?? 5?      $
" 100%??62   $# 0,0,0,0q?6A   6S   5?      5?      5?      5?      5?      