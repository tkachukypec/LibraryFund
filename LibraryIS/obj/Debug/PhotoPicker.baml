   M S B A M L   `   `   `  ????D  @LibraryIS, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:LibraryIS	LibraryIS  5      ;"clr-namespace:LibraryIS.convertersLibraryIS.converters  5          LibraryIS.PhotoPicker   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      )localclr-namespace:LibraryIS     5      9
converters"clr-namespace:LibraryIS.converters     5        ? 	Resources  5
      =  7LibraryIS.converters.RemovalAvailabilityButtonConverter   _rabConverter??%   &	          5   
   6P   5      .??5      ? .+?5   
   (? .??5      ?? $	??100??6   $	??100??6!   ??5      ?? 5       j? Stretch$ Uniform=?5   U    ?? ImageSource 5   !   ?? *	ImagePath+  relativeToFullPathConverter ?? 	Converter# [  ?? RelativeSource ??  ?? AncestorType$ UserControlL?5      .+?5      ?? -   5         ??Name$
 _brd??5   E    J? Opacity$ 0Q?69   
 ?? Top$ 0??6S   	 ?? Left$	 0??6b   $	??100??6r   $	??100??6~   ???	#aa7d7d7d._?5      ? .+?5      ?? $??Center=?6%   $??Center=?6B   
 ?? Orientation$
 Vertical=?6]   .+?5      ?? $??30??6$   $??resources/images/logo.png??6/   6T   ?? 5      $??10(?6(   
???????$??Сменить??6I    ?? TextAlignment$ Center=?6X   6q   ?? 5      $??10)?6(   
???????$??Изображение??6K   $ Center=?6^   6w   5      ?? 5      -   5         ??Name$ delBtn??5   ?   $??15??6?   $??15??6?   
?????? $??0q?6?   $??Right=?6  $	??Top=?6+  y?68   ?? *	ImagePath+# [   ?? $ UserControlL???5      ?? 5    "   $??Center=?6,   $??10(?6I   X6Z   ??5#      ?? 5$   "    ?? 
TargetType" ??6(   .?5%   &   ??  ?? Property ? ?? ?? Value ?#4d4d4d6U   ?? 5&   &    ? ?? 5'   *   ?? 5(   .    ?? 
TargetType" ??6>   .R?5)   2   ?? ._?5*   6   ?? 6I   5+   3   5,   /   5.   '    ?? Triggers 5/   &   P? 50   *    P? Property ?@J?IsMouseOver P? Value . . ?51   .   ??  ? ?? ?#ffffff6]   52   +   54   #   56      57      58       ? Triggers 59      :? 5:       :? RoutedEvent$ 
MouseEnter??6#   [?5;      ?? 5<      .??5=   "   ?? .??5>   &   W?  ?? 
TargetName$
 _brd??66    ?? TargetProperty$ Opacity?6S    W? From$ 0X?6w   	 W? To$ 1X?6?    g? Duration$ 0:0:0.2D?6?   6?   5?   #   5@      5B      :? 5C      $ 
MouseLeave??6#   [?5D      ?? 5E      .??5F   "   ?? .??5G   &   W? $
 _brd??66   $ Opacity?6S   $ 1X?6w   $ 0X?6?   $ 0:0:0.2D?6?   6?   5H   #   5I      5K      5M      5N      5O      5P      