   M S B A M L   `   `   `  ����D  @CLI_TImer, Version=0.2.1.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:CLI_TImer.MVVM.ViewCLI_TImer.MVVM.View  5      5clr-namespace:CLI_TImer.HelpersCLI_TImer.Helpers  5      ,    &CLI_TImer.MVVM.View.PalettSettingsView   5      W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      3local!clr-namespace:CLI_TImer.MVVM.View     5      5	converterclr-namespace:CLI_TImer.Helpers     5        � 	Resources  5       �� MergedDictionaries �� Source   FocusVisual �� Property �� Value �� StrokeDashArray J� SnapsToDevicePixels  Button.Static.Background �� Color  Button.Static.Border  Button.MouseOver.Background  Button.MouseOver.Border  Button.Pressed.Background  Button.Pressed.Border  Button.Disabled.Background  Button.Disabled.Border 	 Button.Disabled.Foreground 
 ButtonStyle1 �� 
TargetType	 �� 
TargetType
 ��Name ��Name �� Triggers P� Property P� Value �� 
TargetName+   %CLI_TImer.Helpers.HexToBrushConverter  HexToBrushConverter+   %CLI_TImer.Helpers.HexToColorConverter  HexToColorConverter�� 5   
    5      �� 5      $J Dpack://application:,,,/CLI_Timer;component/Themes/SettingStyles.xaml?�6%   �� 5      $A ;pack://application:,,,/CLI_Timer;component/Themes/Temp.xaml?�6%   %�  &	        &	 �     &	 �     &	 �     &	     &	 ?    &	 b    &	 �    &	 �    &		 �    &	
 �    7   7  7  7  7  7  7  7  7  7 	 &	 �    &	     �� 5      .�5      ��  � �� 5      �� 5      .R�5      �� $��2q�6(   $	 1 2R�63   #��� ��6I   $
 true��6�   $��1��6�   5      5      5      �� 5      $ 	#FFDDDDDD��6?   �� 5      $ 	#FF707070��6;   �� 5      $ 	#FFBEE6FD��6B   �� 5      $ 	#FF3C7FB1��6>   �� 5       $ 	#FFC4E5F6��6@   �� 5!      $ 	#FF2C628B��6<   �� 5"      $ 	#FFF4F4F4��6A   �� 5#      $ 	#FFADB2B5��6=   �� 5$      $ 	#FF838383��6A   �� 5%      " ��6)   .�5&      ��  �@�FocusVisualStyle8   65   �� 5'       � ��8  6/   �� 5(       � ��8  60   �� 5)       � ��# � ��6/   �� 5*       � ��$ 1q�64   �� 5+       � ��$ Center=�6?   �� 5,       � ��$ Center=�6=   �� 5-       � ��$ 1q�6,   �� 5.       � �� 5/      �� 50      "	 ��6*   .R�51      �� $
 border��6%   #��z��65   #��z��6_   #��z��6�   $
 true��6�   ._�52   "   �� $ contentPresenter��63   $|�False��6M   #��z��6_   #��z��6�   $
��True��6�   # z 6�   #��z��6  53       54      P� 55   "    �@��IsDefaulted$
 true��6A   . �56   &   �� $ border��6D   # � ��6X    � ��57   #   P� 58   "    �@J�IsMouseOver$
 true��6A   . �59   &   �� $ border��6C   8   � ��6W   �� 5:   &   $ border��6D   8   � ��6X   5;   #   P� 5<   "    � ��$
 true��6?   . �5=   &   �� $ border��6C   8   � ��6W   �� 5>   &   $ border��6D   8   � ��6X   5?   #   P� 5@   "    � {�$ false��6?   . �5A   &   �� $ border��6C   8   � ��6W   �� 5B   &   $ border��6D   8   � ��6X   �� 5C   &   $ contentPresenter��6O   8 	  � ��6m   5D   #   5F      5H      5I        5L      6,     5M      6,   5N      .��5R      �  � RowDefinitions 5S   
   �� 5T      $��* �6   �� 5U      $
��Auto �6   .+�5X   
   ]�   PrimaryColor#��[ 6   .+�5Y      �� $��Color Palettes��6   $��40(�5Z      
�������$��20, 10, 0, 0q�5\      $	��Top=�6*   �� 5^      $��10, 5, 10, 10q�5_      $��Stretch=�6.   
������ $��0q�5a      
������   ListItemContainer#���  5b      $��False��5c      $��Hidden=�6=   $	��Top=�5d      ��5^      �� *	Gradients+ �� SelectedItem 5d   ,   �� *SelectedGradient+��5e      �� 5f      .R�5g      �  � ColumnDefinitions 5i   "   �� 5j   &   $
��Auto �67   �� 5k   &   $��* �67   �� 5l   &   $
��Auto �67   .+�5o      ��   ColorFieldStyle#��[ 5p   &   $��0��5q   &   ��5o   &   �� *
StartHex+��5r   &   �� *
StartHex+ �� 	Converter# [ .��6v   5s      �� 5u      $G��ALorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam��6$   $��1��5v   $   $��17(�5w   $   $��Center=�5x   $   $��Center=�6A   $��Center=�5y   $   $��Center=�6?   ��5{   "   �� 5|   &   .��5}   *   �  � Offset$ 0Q�6�    � Color 67   �� *
StartHex+# [ 6�   � 5~   *   $ 1Q�6�    67   �� *EndHex+# [ 6�   5   '   5�      �� 5�      #��[ 5�   &   $��2��5�   &   ��5�   &   �� *EndHex+��5�   &   �� *EndHex+# [ .��6t   5�      5�      5�      5�      �� 5�      $��20��6   $��20��6    
���  ��6,   5�      �� 5�   
   -   5        $
 	BottomBar��5�        SecondaryColor#��[ 6$   $��Bottom=�6Q   $��1��6l   $��-5q�6y   ._�5�      �  5�      �� 5�      $
��Auto �6'   �� 5�      $
��Auto �6'   �� 5�      $��* �6'   �� 5�      $
��Auto �6'   �� 5�      $
��Auto �6'   .+�5�      ��   TertiaryColor#��[ 6   $��0��6E   $��20, 5, 0, 5q�5�       �� CornerRadius$ 10��5�      $��2q�5�       �� Padding$ 5q�6-   $��Center=�69   ._�5�      �� #��� 
 6   $��24��6D   
������ $��New Gradient��5�      $��15(�64     PrimaryTextColor#��[ 6B   
������ $��0q�5�   3   ��5�      �� *NewGradientCommand+5�   3   5�      �� 5�      ���#ff5447$��1��6.   $��
5, 5, 0, 5q�5�      $��Right=�6-   $ 10��5�      $��2q�5�      $ 5q�6-   ._�5�      �� #��� 
 6   $��24��6D   
������ $��Delete Seleceted��5�      $��15(�68   #��[ 6F   
������ $��0q�5�   3   ��5�      �� *DeleteSelectedCommand+5�   3   5�      �� 5�      $0��*Just leave the menu to discard the changes��6   $��3��5�      $��Center=�6(   $��13(�5�      
�������6&   �� 5�      ���#6EEE87$��4��6.   $��0, 5, 20, 5q�5�      $ 10��5�      $��2q�5�      $ 5q�6-   ._�5�      �� #��� 
 6   $��24��6D   
������ $��Save Changes��5�      $��15(�64   
���   �
������ $��0q�5�   3   ��5�      �� *SaveButtonPressedCommand+5�   3   5�      5�      5�      5�      5�      