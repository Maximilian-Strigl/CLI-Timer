   M S B A M L   `   `   `  ���� D  @CLI_Timer, Version=0.2.1.0, Culture=neutral, PublicKeyToken=null%clr-namespace:CLI_Timer	CLI_Timer  C&clr-namespace:CLI_Timer.MVVM.ViewModelCLI_Timer.MVVM.ViewModel  9!clr-namespace:CLI_Timer.MVVM.ViewCLI_Timer.MVVM.View      CLI_Timer.App   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     )localclr-namespace:CLI_Timer     <	viewModel&clr-namespace:CLI_Timer.MVVM.ViewModel     2view!clr-namespace:CLI_Timer.MVVM.View       �� 	Resources     PrimaryColor �� Color  SecondaryColor  TertiaryColor  LightHoverColor  TopBarColor  PrimaryTextColor  SecondaryTextColor �� 
TargetType  InputFieldStyle �� Property �� Value �� 
TargetType �� CornerRadius �� Padding ��Name	 �� DataType6   0CLI_Timer.MVVM.ViewModel.GernalSettingsViewModel,   &CLI_Timer.MVVM.View.GernalSettingsView7  1CLI_Timer.MVVM.ViewModel.ProfileSettingsViewModel-   'CLI_Timer.MVVM.View.ProfileSettingsView5   /CLI_Timer.MVVM.ViewModel.PalettSettingViewModel,   &CLI_Timer.MVVM.View.PalettSettingsView5   /CLI_Timer.MVVM.ViewModel.SoundSettingsViewModel+   %CLI_Timer.MVVM.View.SoundSettingsView  
BurgerMenu 	 Pointer 

 Output  FocusVisual
 �� StrokeDashArray J� SnapsToDevicePixels  Button.Static.Background  Button.Static.Border  Button.MouseOver.Background  Button.MouseOver.Border  Button.Pressed.Background  Button.Pressed.Border  Button.Disabled.Background  Button.Disabled.Border  Button.Disabled.Foreground  FocusVisual1  Item.MouseOver.Background  Item.MouseOver.Border " Item.SelectedActive.Background  Item.SelectedActive.Border $  Item.SelectedInactive.Background   Item.SelectedInactive.Border  CommandHistoryItemStyle �� RelativeSource �� AncestorType ��Name �� Triggers ]� 
Conditions �� Property �� Value �� 
TargetName P� Property P� Value  CloseButtonStyle ��Name��%�  &	        &	      &	 &     &	 9     &	 L     &	 _     &	 p     &	 �     (�� K    *, +)(�� ]    *, +)(�� o    *, +)(�� �    *, +)&	 �    &		 �    &	
 F    &	 y    &	 �    &	 �    &	 �    &	     &	     &	 2    &	 I    &	 ^    &	 s    &	 �    &	 �    &	 �    &	     &	     &	 6    &	 M    &	 d    7  7  7  7  7  7  7  &	 �    7  7  7  7  7  7  7  7  7  7  �� $ #2B3046���� $ #272b3f���� $ #3f4666���� $ #56608c���� $ #242633���� $ White���� $ #757276���� " ��.���  � �� �� " ��.R��� #��z��#��z��#��z��$ 8��$ 
5, 0, 3, 0q�._��� $ PART_ContentHost��#��z��$|�false��$��Hidden=�$��Hidden=�$��0q�$��Center=�$��25���� "	  .R�  �� "	  .R�  �� "	  .R�  �� "	  .R�  �� " ��.���  � ��$ /Assets/BurgerMenu.png���� " ��.���  � ��$ /Fonts/#NanumGothic)���  � ��
 �������  � ��$ 12(���  � ��$ Center=��� " ��.���  � ��$ /Fonts/#Chivo Mono)��� .���  � �� �� .R��� $��2q�$	
 1 2R�#��� ��$
 true��$��1���� $ 	#FFDDDDDD���� $ 	#FF707070���� $ #20222e���� $ Transparent���� $ #191b24���� $ Transparent���� $ 	#FFF4F4F4���� $ 	#FFADB2B5���� $ 	#FF838383���� .���  � �� �� .R��� $��2q�$	
 1 2R�#��� ��$
 true��$��1���� $ Transparent���� $ Transparent���� $ Transparent���� $ Transparent���� $ Transparent���� $ Transparent���� " ��.���  �@J�SnapsToDevicePixels$
 True����  � ��$	 4,1q���  � �� �� *HorizontalContentAlignment+ �� " ����  � �� �� *VerticalContentAlignment+ �� " ����  � ��
 ���� ��  � ��
 ���� ��  � ��$ 1q���  �@�FocusVisualStyle8   ��  � �� �� " ��.R��� $ Bd��#��z��#��z��#��z��# z��$
 true��._��� #��z��# z #��z�� ]�  ��  �@J�IsMouseOver$
 True��./��� $ Bd��8   � ���� $ Bd��8   � ��]�  ��  �@��IsSelectionActive$ False����  �@��
IsSelected$
 True��./��� $ Bd��8   � ���� $ Bd��8   � ��]�  ��  �@��IsSelectionActive$
 True����  �@��
IsSelected$
 True��./��� $ Bd��8   � ���� $ Bd��8   � ��P�  � {�$ False��. ��� $ Bd��# � �� � ���� " ��.���  �@�FocusVisualStyle8   ��  � ��8  ��  � ��8  ��  � ��# � ����  � ��$ 0q���  � ��$ Center=���  � ��$ Center=���  � ��$ 1q���  � �� �� " ��.R��� $ border��#��z��#��z��#��z��$
 true��$ 0, 10, 0, 0��._��� $ contentPresenter��$|�False��#��z��#��z��$
��True��# z #��z�� P�  �@��IsDefaulted$
 true��. ��� $ border��# � �� � ��P�  �@J�IsMouseOver$
 true��. ��� $ border��8   � ���� $ border��8   � ��P�  � ��$
 true��. ��� $ border��8   � ���� $ border��8   � ��P�  � {�$ false��. ��� $ border��8   � ���� $ border��8   � ���� $ contentPresenter��8 	  � ��