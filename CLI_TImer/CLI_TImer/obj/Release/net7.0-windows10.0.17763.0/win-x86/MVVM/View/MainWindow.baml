   M S B A M L   `   `   `  ����   	CLI_Timer$    CLI_Timer.MVVM.View.MainWindow   W SPresentationCore, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=7.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=7.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     $	��250��$	��450��  � WindowStyle$
  None=� � WindowStartupLocation$ Manual=�
 � Top$ 20�� � AllowsTransparency$
 True��
������ .����  �� CornerRadius$ 10, 10, 10, 10��   PrimaryColor#��[  ._��� $	��250��.+��� -     TopBarColor#��[ $��20��$ 10, 10, 0, 0��._���   CloseButtonStyle#���  $��Right=�$��40��
������ 
������ ���� *CloseCommand+.��(� F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      (� Stretch$ Uniform=�.���� -   $��svg12��$��48��$��48�� � 	Resources ��%    .+�F� :x,http://schemas.microsoft.com/winfx/2006/xaml     -   $��path10��
���������B� $w��qm12.45 37.65-2.1-2.1L21.9 24 10.35 12.45l2.1-2.1L24 21.9l11.55-11.55 2.1 2.1L26.1 24l11.55 11.55-2.1 2.1L24 26.1ZC� B� FillRule$ NonZero=���  �� Padding$ 20, 0, 20, 0q�$	��230��._�� $��Stretch=�$��Stretch=�$��0, 20, 0, 5q�	 � RowDefinitions	 �� $��* ��� $
��Auto �.+��� -   
 ��Name$

 list��
������ $��Hidden=�$��Hidden=�$��False��$��0q�$��
5, 0, 5, 5q�$|�False��  CommandHistoryItemStyle#���  ���� *CommandHistory+���� .R��� .+���  �� Orientation$ 
Horizontal=�.+��� $��>��  Pointer#��[ ��  
 Output#��[   PrimaryTextColor#��[ $��Center=�$��16(�$��
7, 0, 0, 0q����� *title+�� $ 
Horizontal=�.+���  ��Name$ thirdLatesInputInfo��$��16(�#��[ ���� *answer+���� ���� *gradientStops+�� $��14(�  SecondaryTextColor#��[ $��Center=�$��Center=�$��15, 0, 0, 0q�#��[ ���� *output+���� .R��� $��Bottom=�� $��10, 8q�$��Right=�$��Bottom=�	 �� $
��Auto ��� $
��Auto �.+��� $��14(�
�������#��[ $��
0, 0, 0, 5q����� *ThirdTimerText+�� $��14(�
�������#��[ $��
0, 0, 0, 0q�$��1������ *SecondaryTimerText+�� $��0, 0, 0, 10q�$��Bottom=�$
��Left=�$ 
Horizontal=�$��1��.+���   InputFieldStyle#��[  	 SecondaryColor#��[	 #��[ $��16(� �� 
CaretBrush# [ $	��300��$��30������ *EnteredCommand+ �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=�.�� J� InputBindings �� 
 �� Key$ Enter�� �� Command �� *SendCommand+.���� $��14(�#��[ $��Center=�$��Center=�$��15, 0, 0, 0q�#��[ ���� *PrimaryTimerText+