   M S B A M L   `   `   `  ����  	CLI_Timer$    CLI_Timer.MVVM.View.MainWindow   5   	   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   $	��250��5   	   $	��450��5   	     � WindowStyle$
  None=�5	   	    � WindowStartupLocation$ CenterScreen=�5
   	   
 � Top$ 20��5   	    � AllowsTransparency$
 True��5   	   
������  � 
ResizeMode$ NoResize=�5   	   .��5      ��  �� CornerRadius$ 10, 10, 10, 10��6      PrimaryColor#��[  5      ._�5   
   �� $	��250��6   .+�5      �� -   5          TopBarColor#��[ 5      $��20��5      $ 10, 10, 0, 0��5      ._�5      ��   CloseButtonStyle#���  6   $��Right=�5      $��40��5      
������ 
������ ��5       �� *CloseCommand+.��5"      (� F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     6    (� Stretch$ Uniform=�5#      .��5$      �� -   5        $��svg12��5$   !   $��48��5%   !   $��48��5&   !    � 	Resources 5'      ��%    .+�5(      F� :x,http://schemas.microsoft.com/winfx/2006/xaml     6#   -   5        $��path10��5)   #   
���������5+   "   B� 5,   &   $w��qm12.45 37.65-2.1-2.1L21.9 24 10.35 12.45l2.1-2.1L24 21.9l11.55-11.55 2.1 2.1L26.1 24l11.55 11.55-2.1 2.1L24 26.1ZC�63    B� FillRule$ NonZero=�5-   3   5/      50      51      52      53      �� 56      	 �� Padding$	 20, 0, 20, 0q�6   $	��230��57      ._�59      � $��Stretch=�6   $��Stretch=�5:      $��0, 20, 0, 5q�5;      
 � RowDefinitions
 5=      �� 5>      $��* �6(   �� 5?      $
��Auto �6(   .+�5B      �� -   5         ��Name$
 list��5J      
������ $��Hidden=�5D      $��Hidden=�5E      $��False��5F      $��0q�5G      $��
5, 0, 5, 5q�5H      $|�False��5I        CommandHistoryItemStyle#���  5L      ��5B      �� *CommandHistory+��5O      �� 5P      .R�5Q   "   � 
 5R   &   �� 5S   *   $
��Auto �68   �� 5T   *   $
��Auto �68   .+�5W   &   ]� $��0��60   
���  ��$	��735��5Y   0   .+�5[   *   �� $��>��64     Pointer#��[ 5\   4   $
��Left=�5]   4   �� 5`   *     PrimaryTextColor#��[ 5a   4   $��Center=�5b   4   $��16(�5c   4   $��10, 0q�5d   4   $
��Wrap=�5e   4   $
��Left=�5f   4   $
��Left=�5g   4   ��5`   4   �� *title+��5h   4   �� *ActualWidth+ �� RelativeSource ��  �� AncestorType ListView5i   '   �� 5k   &   $��1��61    �� Orientation$ 
Horizontal=�5l   1   .+�5m   *   ��  ��Name$ thirdLatesInputInfo��64   $��16(�5n   4    
 Output#��[ 5o   4   ��5p   4   �� *answer+��5r   .   �� 5s   2    �� 
StartPoint$	 0,0&�5t   F    �� EndPoint$	 1,0&�5u   F   ��5s   F   �� *GradientStops+5u   F   5w   +   5y   '   5{   #   5|      ��5�      �� 5�      .R�5�   "   �� $��Bottom=�6-   5�      5�      � 5�      $��10, 8q�6   $��Right=�5�      $��Bottom=�5�      
 5�      �� 5�      $
��Auto �6,   �� 5�      $
��Auto �6,   .+�5�      �� $��14(�6$   
�������#��[ 5�   $   $��
0, 0, 0, 5q�5�   $   ��5�   $   �� *ThirdTimerText+5�   $   �� 5�      $��14(�6$   
�������#��[ 5�   $   $��
0, 0, 0, 0q�5�   $   $��1��5�   $   ��5�   $   �� *SecondaryTimerText+5�   $   5�      �� 5�      $��0, 0, 0, 10q�6!   $��Bottom=�5�   !   $
��Left=�5�   !   $ 
Horizontal=�5�   !   $��1��5�   !   .+�5�      ��   InputFieldStyle#��[ 6"     SecondaryColor#��[ 5�   "   #��[ 5�   "   $��16(�5�   "    �� 
CaretBrush# [ 5�   "   $	��300��5�   "   $��30��5�   "   ��5�   "   �� *EnteredCommand+ �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=�.��5�   .    J� InputBindings 5�      �� 5�   "   
 �� Key$ Enter��6-    �� Command 5�   -   �� *SendCommand+.��5�   5   5�      �� 5�      $��14(�6$    	 SecondaryTextColor#��[	 5�   $   $��Center=�5�   $   $��Center=�5�   $   $��15, 0, 0, 0q�5�   $   #��[ 5�   $   ��5�   $   �� *PrimaryTimerText+5�   $   5�      5�      5�      5�      5�      5�      