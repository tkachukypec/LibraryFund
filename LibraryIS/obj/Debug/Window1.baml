   M S B A M L   `   `   `  ????D  @LibraryIS, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:LibraryIS	LibraryIS  5   	   ;"clr-namespace:LibraryIS.ViewModelsLibraryIS.ViewModels  5   	   S.clr-namespace:LibraryIS.Pages.MainWindowsPages LibraryIS.Pages.MainWindowsPages  5   	       LibraryIS.Window1   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   )localclr-namespace:LibraryIS     5   	   8	viewModel"clr-namespace:LibraryIS.ViewModels     5   	   @pages.clr-namespace:LibraryIS.Pages.MainWindowsPages     5   	   -   5          ? Title$  Window1??5
   	   $	??450??6   $	??800??6&    ? DataContext 5      .  (LibraryIS.ViewModels.MainWindowViewModel  5   
   6*    ? 	Resources 5       ?? DataType/  )LibraryIS.ViewModels.CatalogPubsViewModel,   &LibraryIS.Pages.MainWindowsPages.Page1*  $LibraryIS.ViewModels.ReportViewModel,   &LibraryIS.Pages.MainWindowsPages.Page2??%?   (??       5      *, +)(?? 7     5      *, +)?? 5   
   "  6   .R?5        6   5      ?? 5   
   "  6   .R?5        6   5      5      .??5      ?  ? ColumnDefinitions 5   
   ?? 5      $	??200 ?6   6-   ?? 5      6!   .+?5   
   ]? $??0??6   ???#10101A.+?5      ?? $	??Top=?6   $
??0,15q?6.   $??35??6<    ?? Orientation$ 
Horizontal=?6H   .+?5       ?? $??15,0,0,0q?6   $??25??6*   $??25??65   $??resources/images/logo.png??6A   6f   ?? 5!      $??15(?6   $??15,0,0,0q?6*   
???????$??Center=?5"      $??Библиотека??67   $
??Bold"?6I   6]   5#      ?? 5%      $??Bottom=?6   ???#1C1A2F$??60??6F   $ 
Horizontal=?6R   .+?5&      ?? $??7q?6   $??46??6$    ?? CornerRadius$ 15??6/   ??5'      ?? 5(       ?? ImageSource 6%   ?? *Account.ImagePath+   relativeToFullPathConverter ?? 	Converter# [  5+      5-      ?? 5.      $??5,0,0,0q?6   $??95??6.   $ Vertical=?69   .+?5/      ?? $??12(?6    
???????$??0,15,0,0q?6A   $
??Bold"?6S   ??50      `? 51      	 ?? StringFormat$	 {0} {1}??6+   .1?52   "   ?? 
 ?? Path$
 Account.Name?6*   6@   ?? 53   "   $
 Account.Surname?6*   6C   54      56      ?? 57      
???????$??12(?63   $??0,2,0,0q?6A   $??Roboto)?6R   $
??Bold"?6f   $??Библиотекарь??58       66   59      ?? 5:      -   5        $??40??5:        buttonExitStyle#??[ 6$   6d   5;      ?? 5=        menuListItemStyle#??[ 6   $??	0,20,0,20q?6N   $??0q?5>   n   
?????? $	??Top=?6?   ??6   ?? *ViewModelsCollection+ ?? SelectedItem 6C   ?? *SelectedViewModel+??5?      ?? 5@      .R?5A      ?? 
???????$
??Bold"?67   $??Center=?5B   ;   $??Center=?6V   $??16(?6s   ??6$   ?? *Title+6?   5C      5E      5F       ? 5H   
     ? NavigationUIVisibility$ Hidden=?6   $??1??6V   ??60   ?? *SelectedViewModel+6h   5I      5J      