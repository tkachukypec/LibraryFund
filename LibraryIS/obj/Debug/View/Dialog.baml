   M S B A M L   `   `   `  ????D  @LibraryIS, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:LibraryIS.ViewLibraryIS.View  5   	       LibraryIS.View.Dialog   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   .localclr-namespace:LibraryIS.View     5   	   -   5        $??_window??5   	     ? 
ResizeMode$  NoResize=?5   	    ? WindowStyle$
 None=?5	   	    ? AllowsTransparency . 
??????  ? WindowStartupLocation$ CenterScreen=?5   	    ? Title$ Dialog??5   	   $	??550??6   $	??500??6%    ? 	Resources 5         	infoColor  
errorColor  confirmationColor  	infoImage  
errorImage  confirmationImage  selectionInfo  selectionError  selectionConf ?? 
TargetType 	 baseStyleButton ?? Property ?? Value	 ?? 
TargetType
 ??Name ?? Triggers P? Property P? Value ?? 
TargetName ?? RelativeSource ?? AncestorType ?? BasedOn 
 infoStyleButton  errorStyleButton  yesConfStyleButton  noConfStyleButton??%?  &	        &	      &	 >     &	 ]     &	 ?     &	 ?     &	 ,    &	 K    &	 j    &		 ?    &	
 ?    7 	 7  &	     7 
 7  &	 T    7 	 7  &	 ?    7  ??5   
   #7DBAAB??65   ??5   
   #F44336??66   ??5   
   #865AE2??6=   ??5   
   .*/Resources/Images/dialogResources/info.png??6T   ??5   
   /+/Resources/Images/dialogResources/error.png??6V   ??5   
   62/Resources/Images/dialogResources/confirmation.png??6d   ??5   
   #8ACCBB??69   ??5   
   #FF473A??6:   ??5   
   #8E60F2??69   ?? 5   
   " ??6   .?5      ??  ? ??$	 100??6&   64   ?? 5       ? ??
 ?????6;   ?? 5       ? ??$ 25(?6)   66   ?? 5       ? ?? 5      ?? 5       "	 ??6&   .R?5!      ?? $

 _brd??6!   
?????? ._?5"      ?? $??Center=?6(   $??Center=?6E   ?? 5#      61   5$      5%       5&      P? 5'       ?@J?IsMouseOver . . ?5(   "   ?? $
 _brd??6)    6Q   ?? *
Background+ ?? $ ButtonL? ? ??6?   5)      5+      5-      5.      ?? 50   
   " ??6   8   .?51      ??  ? ??$ Ok??6(   65   ?? 52       ? ??8  6T   53      ?? 55   
   " ??6   8   .?56      ??  ? ??8  6U   57      ?? 59   
   " ??6   8   .?5:      ??  ? ??$
 Да??6(   65   ?? 5;       ? ??8  6T   5<      ?? 5>   
   " ??6   8   .?5?      ??  ? ??$ Нет??6(   66   5@      5A      .??5C      ?? $??5q?6    ?? CornerRadius$ 10??6   
??????? J? Effect 5D   
   3  -System.Windows.Media.Effects.DropShadowEffect  5E         Color$ Black??6      ShadowDepth$ 1Q?6-   6?   ._?5G   
   ?? .+?5H      ?? -   5         ??Name$ _image??5H      $??75??6$   $??75??6/   $
??0,20q?6;   $??Center=?6I   ??5I      ?? 5J      " ??6    ?? Triggers 5K      ?? 5L       ?? Binding 6*   ??  ?? ElementName$ _window?? ?? Path$ 
TypeDialog? ?? Value 06b   .a?5M   "   ??  ? ??# [ 6;   6`   5N      ?? 5O       6*   ?? $ _window??$ 
TypeDialog? 16b   .a?5P   "   ??  ? ??# [ 6;   6a   5Q      ?? 5R       6*   ?? $ _window??$ 
TypeDialog? 26b   .a?5S   "   ??  ? ??# [ 6;   6h   5T      5W      5Y      ?? 5Z      -   5         ??Name$ _captionTextBlock??5Z   '   $??75??6   $
??Bold"?6B   $??20,10,20,10q?6T   $
??Wrap=?6i   $??CharacterEllipsis=?5[      $??25(?69   -+Подтверждение удаления6_   ?? 5\      -   5        $ _messageTextBlock??5\   (   $	??200??6   $??15(?6C   ???#7d7d7d$??CharacterEllipsis=?5]      $
??Wrap=?69   $??
20,0,20,40q?6M   YWВы действительно хотите удалить данный элемент6?   ?? 5^      $??65??6   $ 	0,0,10,10??6!   ??5_      ?? 5`      " ??6    5a      ?? 5b       6*   ?? $ _window??$ 
TypeDialog? 06b   .a?5c   "   ??  ? ??# [  6?   6d   5d      ?? 5e       6*   ?? $ _window??$ 
TypeDialog? 16b   .a?5f   "   ??  ? ??# [ 6?   6e   5g      ?? 5h       6*   ?? $ _window??$ 
TypeDialog? 26b   .a?5i   "   ??  ? ??# [ 6?   6l   5j      5m      ._?5o      ?? -   5         ??Name$ _contentControl??5o   !   $??Center=?6:   6Y   5p      5q      5r      5u      