   M S B A M L   `   `   `  ���� D  @CLI_Timer, Version=0.2.1.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:CLI_Timer.MVVM.ViewCLI_Timer.MVVM.View  7 clr-namespace:CLI_Timer.ControlsCLI_Timer.Controls  -    'CLI_Timer.MVVM.View.ProfileSettingsView   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     3local!clr-namespace:CLI_Timer.MVVM.View     4control clr-namespace:CLI_Timer.Controls       � 	Resources   �� MergedDictionaries �� Source   DescriptionLabel �� 
TargetType �� Property �� Value  PrimaryTextColor��  �� $J Dpack://application:,,,/CLI_Timer;component/Themes/SettingStyles.xaml?��� $A ;pack://application:,,,/CLI_Timer;component/Themes/Temp.xaml?�%t   &	        7  �� " ��.���  � ��$ 16(���  � ��8   ��  � ��$	 Top=���  � ��$ Center=�.���  � RowDefinitions �� $
��Auto ��� $��* ��� $
��Auto �.+���   PrimaryColor#��[ .+��� $��Profile Settings��$��40(�
�������$��20, 10, 0, 0q��� -   $��ListView��  ProfileListItemContainer#���  $��10, 5, 10, 10q�
������ $��0q�
������ ���� *
Profiles+ �� SelectedItem �� *SelectedProfile+���� .R��� .+��  � ColumnDefinitions �� $
��Auto ��� $��* ��� $
��Auto � �� $
��Auto ��� $
��Auto ��� $
��Auto ��� $
��Auto �.+��� $��Profile Name:��#��[  ��   InputFieldStyle#��[ $��16(�  TertiaryColor#��[ 
�������	 �� TextAlignment$
	 Left=�$��Center=�$��
0, 0, 5, 0q�$��1��$��25��$��Center=����� *Name+�� 
 �� Orientation$
 
Horizontal=�$��2��.+��� #��[ $��40��$��25��#��[ #��[ $��Center=�$��Center=�$��Center=�$��
5, 0, 5, 0q����� *Hours+�� #��[ $��40��$��25��#��[ #��[ $��Center=�$��Center=�$��Center=�$��
5, 0, 5, 0q����� *	Minutes+�� #��[ $��40��$��25��#��[ #��[ $��Center=�$��Center=�$��
5, 0, 5, 0q�$��Center=����� *	Seconds+�� $��CLI Answer:��$��Right=�#��[  $��1���� #��[ $��16(�#��[ 
�������$
	 Left=�$��Center=�$��
0, 0, 5, 0q�$��1��$��1��$��25��$��Center=����� *Answer+�� $��3��$��1��$	��120��$��25��#��[ #��[   ComboBoxStyle#��[ $��Center=�$��Center=� �� *	TimerType+���� *TimerTypeValues+�� $��	Ringtone:��$��Right=�#��[  $��2��� $��1��$��2��.+��� $��PathBox��#��[ $��16(�#��[ 
�������$
	 Left=�$��Center=�$��
0, 0, 5, 0q�$��2��$��25��$��Center=�$
��Auto=����� *DisplayRingtonePath+��  J� IsHitTestVisible$ False��$2��,Enter Path to Audio File (empty for default)��$��Center=�$
��Left=�$��10,0,0,0q�
����������� " ��.���  � y�$ 	Collapsed=� �� Triggers ��  �� Binding �� *Text+ �� ElementName$ PathBox�� �� Value  .a���  � y�$ Visible=��� $��Search Explorer��  UnderlineOnHover#��[ $��Right=�
������ 
�������
������ $��0q�$��0, 0, 10, 0q����� $ ListView�� �� Path$3 -DataContext.SearchFileExplorerForAudioCommand��� $
 
Horizontal=�$��2��$��2��.+��� #��[ $��40��$��25��#��[ #��[ $��Center=�$��Center=�$��Center=�$��
5, 0, 5, 0q����� *RingtoneMinutes+�� #��[ $��40��$��25��#��[ #��[ $��Center=�$��Center=�$��Center=�$��
5, 0, 5, 0q����� *RingtoneSeconds+   CLI_Timer.Controls.Switch     Toggled �� *RingtoneEnabled+ �� Mode$ TwoWay=��� $��Notification:��$��Right=�#��[  $��3��� $��1��$��3��.+��� $��	NotifyBox��#��[ $��16(�#��[ 
�������$
	 Left=�$��Center=�$��
0, 0, 5, 0q�$��2��$��25��$��Center=�$
��Auto=����� *NotificationText+�� $ False��$2��,Enter Path to Audio File (empty for default)��$��Center=�$
��Left=�$��10,0,0,0q�
����������� " ��.���  � y�$ 	Collapsed=� ��  �� *Text+$ 	NotifyBox��  .a���  � y�$ Visible=��� $
 
Horizontal=�$��3��$��2��.+�   �� *NotificationEnabled+$ TwoWay=��� -    ��Name$ 	BottomBar��  SecondaryColor#��[ $��Bottom=�$��2��$��-5q�._��  �� $��* ��� $
��Auto ��� $
��Auto �.+��� $0��*Just leave the menu to discard the changes��$��1��$��Center=�$��13(�
��������� #��[ $��2��$��10, 5, 20, 5q� �� CornerRadius$ 10��$��2q� �� Padding$ 5q�._��� $��24��
������ $��Save Changes��$��15(�#��[ 
������ $��0q����� *SaveChangesCommand+