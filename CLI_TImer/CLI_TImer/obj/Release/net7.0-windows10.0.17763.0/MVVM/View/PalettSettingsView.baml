   M S B A M L   `   `   `  ���� D  @CLI_Timer, Version=0.2.1.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:CLI_Timer.MVVM.ViewCLI_Timer.MVVM.View  ;"clr-namespace:CLI_Timer.ConvertersCLI_Timer.Converters  ,    &CLI_Timer.MVVM.View.PalettSettingsView   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     3local!clr-namespace:CLI_Timer.MVVM.View     8	converter"clr-namespace:CLI_Timer.Converters       � 	Resources   �� MergedDictionaries �� Source   FocusVisual �� Property �� Value �� StrokeDashArray J� SnapsToDevicePixels  Button.Static.Background �� Color  Button.Static.Border  Button.MouseOver.Background  Button.MouseOver.Border  Button.Pressed.Background  Button.Pressed.Border  Button.Disabled.Background  Button.Disabled.Border 	 Button.Disabled.Foreground 
 ButtonStyle1 �� 
TargetType	 �� 
TargetType
 ��Name ��Name �� Triggers P� Property P� Value �� 
TargetName.   (CLI_Timer.Converters.HexToBrushConverter  HexToBrushConverter.   (CLI_Timer.Converters.HexToColorConverter  HexToColorConverter��  �� $J Dpack://application:,,,/CLI_Timer;component/Themes/SettingStyles.xaml?��� $A ;pack://application:,,,/CLI_Timer;component/Themes/Temp.xaml?�%�  &	        &	 R     &	 g     &	 |     &	 �     &	 �     &	 �     &	 �     &	 �     &		 �     &	
     7   7  7  7  7  7  7  7  7  7 	 &	     &	 	    �� .���  � �� �� .R��� $��2q�$	 1 2R�#��� ��$
 true��$��1���� $ 	#FFDDDDDD���� $ 	#FF707070���� $ 	#FFBEE6FD���� $ 	#FF3C7FB1���� $ 	#FFC4E5F6���� $ 	#FF2C628B���� $ 	#FFF4F4F4���� $ 	#FFADB2B5���� $ 	#FF838383���� " ��.���  �@�FocusVisualStyle8   ��  � ��8  ��  � ��8  ��  � ��# � ����  � ��$ 1q���  � ��$ Center=���  � ��$ Center=���  � ��$ 1q���  � �� �� "	 ��.R��� $
 border��#��z��#��z��#��z��$
 true��._��� $ contentPresenter��$|�False��#��z��#��z��$
��True��# z #��z�� P�  �@��IsDefaulted$
 true��. ��� $ border��# � �� � ��P�  �@J�IsMouseOver$
 true��. ��� $ border��8   � ���� $ border��8   � ��P�  � ��$
 true��. ��� $ border��8   � ���� $ border��8   � ��P�  � {�$ false��. ��� $ border��8   � ���� $ border��8   � ���� $ contentPresenter��8 	  � ��    .���  � RowDefinitions �� $��* ��� $
��Auto �.+�]�   PrimaryColor#��[ .+��� $��Color Palettes��$��40(�
�������$��20, 10, 0, 0q�$	��Top=��� $��10, 5, 10, 10q�$��Stretch=�
������ $��0q�
������   ListItemContainer#���  $��False��$��Hidden=�$	��Top=����� *	Gradients+ �� SelectedItem �� *SelectedGradient+���� .R��  � ColumnDefinitions �� $
��Auto ��� $��* ��� $
��Auto �.+���   ColorFieldStyle#��[ $��0������ *
StartHex+���� *
StartHex+ �� 	Converter# [ .���� $G��ALorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam��$��1��$��17(�$��Center=�$��Center=�$��Center=�$��Center=����� .���  � Offset$ 0Q� � Color �� *
StartHex+# [ � $ 1Q� �� *EndHex+# [ �� #��[ $��2������ *EndHex+���� *EndHex+# [ .���� $��20��$��20��
���  ���� -   $
 	BottomBar��  SecondaryColor#��[ $��Bottom=�$��1��$��-5q�._��  �� $
��Auto ��� $
��Auto ��� $��* ��� $
��Auto ��� $
��Auto �.+���   TertiaryColor#��[ $��0��$��20, 5, 0, 5q� �� CornerRadius$ 10��$��2q� �� Padding$ 5q�$��Center=�._��� #��� 
 $��24��
������ $��New Gradient��$��15(�  PrimaryTextColor#��[ 
������ $��0q����� *NewGradientCommand+�� ���#ff5447$��1��$��
5, 5, 0, 5q�$��Right=�$ 10��$��2q�$ 5q�._��� #��� 
 $��24��
������ $��Delete Seleceted��$��15(�#��[ 
������ $��0q����� *DeleteSelectedCommand+�� $0��*Just leave the menu to discard the changes��$��3��$��Center=�$��13(�
��������� ���#6EEE87$��4��$��0, 5, 20, 5q�$ 10��$��2q�$ 5q�._��� #��� 
 $��24��
������ $��Save Changes��$��15(�
���   �
������ $��0q����� *SaveButtonPressedCommand+