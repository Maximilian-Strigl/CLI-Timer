   M S B A M L   `   `   `  ����D  @CLI_Timer, Version=0.2.1.0, Culture=neutral, PublicKeyToken=null%clr-namespace:CLI_Timer	CLI_Timer  5      C&clr-namespace:CLI_Timer.MVVM.ViewModelCLI_Timer.MVVM.ViewModel  5      9!clr-namespace:CLI_Timer.MVVM.ViewCLI_Timer.MVVM.View  5          CLI_Timer.App   5      W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      )localclr-namespace:CLI_Timer     5      <	viewModel&clr-namespace:CLI_Timer.MVVM.ViewModel     5      2view!clr-namespace:CLI_Timer.MVVM.View     5        �� 	Resources  5         PrimaryColor �� Color  SecondaryColor  TertiaryColor  LightHoverColor  TopBarColor  PrimaryTextColor  SecondaryTextColor �� 
TargetType  InputFieldStyle �� Property �� Value �� 
TargetType �� CornerRadius �� Padding ��Name	 �� DataType6   0CLI_Timer.MVVM.ViewModel.GernalSettingsViewModel,   &CLI_Timer.MVVM.View.GernalSettingsView7  1CLI_Timer.MVVM.ViewModel.ProfileSettingsViewModel-   'CLI_Timer.MVVM.View.ProfileSettingsView5   /CLI_Timer.MVVM.ViewModel.PalettSettingViewModel,   &CLI_Timer.MVVM.View.PalettSettingsView5   /CLI_Timer.MVVM.ViewModel.SoundSettingsViewModel+   %CLI_Timer.MVVM.View.SoundSettingsView  
BurgerMenu 	 Pointer 

 Output  FocusVisual
 �� StrokeDashArray J� SnapsToDevicePixels  Button.Static.Background  Button.Static.Border  Button.MouseOver.Background  Button.MouseOver.Border  Button.Pressed.Background  Button.Pressed.Border  Button.Disabled.Background  Button.Disabled.Border  Button.Disabled.Foreground  FocusVisual1  Item.MouseOver.Background  Item.MouseOver.Border " Item.SelectedActive.Background  Item.SelectedActive.Border $  Item.SelectedInactive.Background   Item.SelectedInactive.Border  CommandHistoryItemStyle �� RelativeSource �� AncestorType ��Name �� Triggers ]� 
Conditions �� Property �� Value �� 
TargetName P� Property P� Value  CloseButtonStyle ��Name��%�  &	        &	 !     &	 B     &	 c     &	 �     &	 �     &	 �     &	 �     (�� ~    53      *, +)(�� �    57      *, +)(�� �    5;      *, +)(��     5?      *, +)&	 F    &		 �    &	
 �    &	 �    &	 �    &	 �    &	 �    &	 �    &	 !    &	 B    &	 g    &	 �    &	 �    &	 �    &	 �    &	 �    &	 �    &	 �    &	     &	 <    &	 a    7  7  7  7  7  7  7  &	     7  7  7  7  7  7  7  7  7  7  �� 5
   
   $ #2B3046��6/   �� 5   
   $ #272b3f��61   �� 5   
   $ #3f4666��60   �� 5   
   $ #56608c��62   �� 5   
   $ #242633��6.   �� 5   
   $ White��63   �� 5   
   $ #757276��65   �� 5   
   " ��6   .�5      ��  � �� 5      �� 5      " ��6&   .R�5      �� #��z��6!   #��z��5   !   #��z��5   !   $ 8��5   !   $ 
5, 0, 3, 0q�5   !   ._�5       �� $ PART_ContentHost��6+   #��z��5!   +   $|�false��5"   +   $��Hidden=�5#   +   $��Hidden=�5$   +   $��0q�5%   +   $��Center=�5&   +   $��25��5'   +   5)      5+      5/      51      �� 53   
   "	  6   .R�54        55      �� 57   
   "	  6   .R�58        59      �� 5;   
   "	  6   .R�5<        5=      �� 5?   
   "	  6   .R�5@        5A      �� 5C   
   " ��6#   .�5D      ��  � ��$ /Assets/BurgerMenu.png��6'   5E      �� 5H   
   " ��6    .�5I      ��  � ��$ /Fonts/#NanumGothic)�5J      5K      �� 5M       � ��
 �����5N      �� 5P       � ��$ 12(�5Q      �� 5S       � ��$ Center=�5T      5V      �� 5X   
   " ��6   .�5Y      ��  � ��$ /Fonts/#Chivo Mono)�5Z      5[      �� 5\   
   .�5]      ��  � �� 5^      �� 5_      .R�5`      �� $��2q�6$   $	
 1 2R�6/   #��� ��6E   $
 true��6�   $��1��6�   5a      5c      5d      �� 5f   
   $ 	#FFDDDDDD��6;   �� 5g   
   $ 	#FF707070��67   �� 5h   
   $ #20222e��6>   �� 5k   
   $ Transparent��6:   �� 5l   
   $ #191b24��6<   �� 5n   
   $ Transparent��68   �� 5o   
   $ 	#FFF4F4F4��6=   �� 5p   
   $ 	#FFADB2B5��69   �� 5q   
   $ 	#FF838383��6=   �� 5u   
   .�5v      ��  � �� 5w      �� 5x      .R�5y      �� $��2q�6$   $	
 1 2R�6/   #��� ��6E   $
 true��6�   $��1��6�   5z      5|      5}      �� 5~   
   $ Transparent��6<   �� 5   
   $ Transparent��68   �� 5�   
   $ Transparent��6A   �� 5�   
   $ Transparent��6=   �� 5�   
   $ Transparent��6C   �� 5�   
   $ Transparent��6?   �� 5�   
   " ��60   .�5�      ��  �@J�SnapsToDevicePixels$
 True��64   �� 5�       � ��$	 4,1q�6(   �� 5�       � �� 6;   �� *HorizontalContentAlignment+ �� " ���� 5�       � �� 69   �� *VerticalContentAlignment+ �� " ���� 5�       � ��
 ���� 6+   �� 5�       � ��
 ���� 6,   �� 5�       � ��$ 1q�60   �� 5�       �@�FocusVisualStyle8   61   �� 5�       � �� 5�      �� 5�      " ��6&   .R�5�      �� $ Bd��6!   #��z��6-   #��z��6W   #��z��6�   # z��6�   $
 true��6�   ._�5�      �� #��z��6/   # z 6r   #��z��6�   5�       5�      ]� 5�       5�   "   �� 5�   &    �@J�IsMouseOver$
 True��6G   ./�5�   "   �� $ Bd��6?   8   � ��6O   �� 5�   "   $ Bd��6@   8   � ��6P   5�      ]� 5�       5�   "   �� 5�   &    �@��IsSelectionActive$ False��6V   �� 5�   &    �@��
IsSelected$
 True��6F   ./�5�   "   �� $ Bd��6?   8   � ��6O   �� 5�   "   $ Bd��6@   8   � ��6P   5�      ]� 5�       5�   "   �� 5�   &    �@��IsSelectionActive$
 True��6V   �� 5�   &    �@��
IsSelected$
 True��6F   ./�5�   "   �� $ Bd��6?   8   � ��6O   �� 5�   "   $ Bd��6@   8   � ��6P   5�      P� 5�       � {�$ False��6;   . �5�   "   �� $ Bd��6K   # � ��6[    � ��5�      5�      5�      5�      �� 5�   
   " ��6)   .�5�      ��  �@�FocusVisualStyle8   61   �� 5�       � ��8  6+   �� 5�       � ��8  6,   �� 5�       � ��# � ��6+   �� 5�       � ��$ 0q�60   �� 5�       � ��$ Center=�6;   �� 5�       � ��$ Center=�69   �� 5�       � ��$ 1q�6(   �� 5�       � �� 5�      �� 5�      " ��6&   .R�5�      �� $ border��6!   #��z��61   #��z��6[   #��z��6�   $
 true��6�   $ 0, 10, 0, 0��6�   ._�5�      �� $ contentPresenter��6/   $|�False��6I   #��z��6[   #��z��6�   $
��True��6�   # z 6�   #��z��6  5�       5�      P� 5�       �@��IsDefaulted$
 true��6=   . �5�   "   �� $ border��6@   # � ��6T    � ��5�      P� 5�       �@J�IsMouseOver$
 true��6=   . �5�   "   �� $ border��6?   8   � ��6S   �� 5�   "   $ border��6@   8   � ��6T   5�      P� 5�       � ��$
 true��6;   . �5�   "   �� $ border��6?   8   � ��6S   �� 5�   "   $ border��6@   8   � ��6T   5�      P� 5�       � {�$ false��6;   . �5�   "   �� $ border��6?   8   � ��6S   �� 5�   "   $ border��6@   8   � ��6T   �� 5�   "   $ contentPresenter��6K   8 	  � ��6i   5�      5�      5�      5�      5�      5�      