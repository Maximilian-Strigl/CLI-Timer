   M S B A M L   `   `   `  ����D  @CLI_TImer, Version=0.2.1.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:CLI_TImer.MVVM.ViewCLI_TImer.MVVM.View  5   	   $    CLI_TImer.MVVM.View.MainWindow   5   	   W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   3local!clr-namespace:CLI_TImer.MVVM.View     5   	   $	��250��5   	   $	��450��6     � WindowStyle$
  None=�5	   	    � WindowStartupLocation$ Manual=�5
   	   
 � Top$ 20��5   	    � AllowsTransparency$
 True��5   	   
������  � 	Resources 5      ��%    5      .��5      ��  �� CornerRadius$ 10, 10, 10, 10��6      PrimaryColor#��[  5      ._�5   
   �� $	��250��6   .+�5      �� -   5          TopBarColor#��[ 5      $��20��5      $ 10, 10, 0, 0��5      ._�5      ��   CloseButtonStyle#���  6   $��Right=�6D   $��40��5       
������ 
������ ��5#      �� *CloseCommand+.��5%      (� F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     6    (� Stretch$ Uniform=�6`   .��5&      �� -   5        $��svg12��5&   !   $��48��6.   $��48��69    5'      ��%    .+�5(      F� :x,http://schemas.microsoft.com/winfx/2006/xaml     6#   -   5        $��path10��5(   Z   
���������5)   "   B� 5*   &   $w��qm12.45 37.65-2.1-2.1L21.9 24 10.35 12.45l2.1-2.1L24 21.9l11.55-11.55 2.1 2.1L26.1 24l11.55 11.55-2.1 2.1L24 26.1ZC�63    B� FillRule$ NonZero=�6�   5,      5-      5.      50      52      �� 54       �� Padding$ 20, 0, 20, 0q�6   $	��230��55      ._�57      � $��Stretch=�6   $��Stretch=�58      $��0, 20, 0, 5q�59      	 � RowDefinitions	 5;      �� 5<      $��* �6(   �� 5=      $
��Auto �6(   .+�5B      �� -   5        
 ��Name$

 list��5J      
������ $��Hidden=�5D      $��Hidden=�5E      $��False��5F      $��0q�5G      $��
5, 0, 5, 5q�5H      $|�False��5I        CommandHistoryItemStyle#���  5L      ��5B      �� *CommandHistory+��5N      �� 5P      .R�5R   "   �� .+�5T   &   ��  �� Orientation$ 
Horizontal=�61   .+�5U   *   �� $��>��64     Pointer#��[ 5V   4   �� 5Y   *    
 Output#��[ 5Z   4     PrimaryTextColor#��[ 5[   4   $��Center=�5\   4   $��16(�5]   4   $��
7, 0, 0, 0q�5^   4   ��5Y   4   �� *title+5^   4   5`   '   �� 5b   &   $ 
Horizontal=�61   .+�5c   *   ��  ��Name$ thirdLatesInputInfo��64   $��16(�5d   4   #��[ 5e   4   ��5f   4   �� *answer+��5h   .   �� 5i   2   ��6F   �� *gradientStops+5l   +   �� 5n   *   $��14(�64     SecondaryTextColor#��[ 5o   4   $��Center=�5p   4   $��Center=�5q   4   $��15, 0, 0, 0q�5s   4   #��[ 5t   4   ��5r   4   �� *output+5t   4   5v   '   5x   #   5z      ��5~      �� 5�      .R�5�   "   �� $��Bottom=�6-   5�      5�      �� 5�      $��0, 0, 0, 10q�6!   $��Bottom=�5�   !   $
��Left=�5�   !   $ 
Horizontal=�5�   !   $��1��5�   !   .+�5�      ��   InputFieldStyle#��[ 6"    	 SecondaryColor#��[	 5�   "   #��[ 5�   "   $��16(�5�   "    �� 
CaretBrush# [ 5�   "   $	��300��5�   "   $��30��5�   "   ��5�   "   �� *EnteredCommand+ �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=�.��5�   .    J� InputBindings 5�      �� 5�   "   
 �� Key$ Enter��6-    �� Command 5�   -   �� *SendCommand+.��5�   5   5�      �� 5�      $��14(�5�   $   #��[ 5�   $   $��Center=�5�   $   $��Center=�5�   $   $��15, 0, 0, 0q�5�   $   #��[ 5�   $   ��5�   $   �� *MainTimerText+5�   $   5�      5�      5�      5�      5�      5�      