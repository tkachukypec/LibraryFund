   M S B A M L   `   `   `  ????D  @LibraryIS, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:LibraryIS	LibraryIS  5   	   ;"clr-namespace:LibraryIS.ViewModelsLibraryIS.ViewModels  5   	       LibraryIS.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   )localclr-namespace:LibraryIS     5   	   9
viewModels"clr-namespace:LibraryIS.ViewModels     5   	     ? 
ResizeMode$  NoResize=?5	   	    ? WindowStartupLocation$ CenterScreen=?5
   	    ? Title$ Авторизация??5   	   $	??450??6   $	??800??6*      windowStyle#??[  66    ? DataContext 5      1  +LibraryIS.ViewModels.AuthorizationViewModel  5   
   6.   .??5      ? .+?5   
   ?? $
??Bold"?6   $??25(?6&   $
??Left=?6K   $??Center=?6f   $??
40,0,0,130q?6?   ??64   ?? *Title+6?   ?? 5   
   $??Center=?6   $
??Left=?6/   $??	40,0,0,40q?6J   
Логин6d   ?? 5   
   $??Center=?6)   $??40q?6D   $??18(?6P   ??6   ?? *Login+6`   ?? 5   
   $??Center=?6   $
??Left=?6/   $??40,120,0,40q?6J   Пароль6g   G? 5   
   -   5         G?Name$ _passwordBox??5      $??Center=?6,   $??40,120,40,0q?6G   $??18(?6\   6l   ?? 5   
   -   5        $	??100??5      $??30??6   $??Right=?6)   $??Bottom=?6E   $??	0,0,40,40q?6`   $??Вход??6s   6?   5      5      