object Form1: TForm1
  Left = 209
  Top = 154
  Width = 1232
  Height = 675
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 216
    Top = 176
    Width = 109
    Height = 13
    Caption = 'D:\...\Delphi7\Projects'
    FocusControl = DirectoryListBox1
  end
  object Label2: TLabel
    Left = 216
    Top = 16
    Width = 3
    Height = 13
  end
  object FileListBox1: TFileListBox
    Left = 16
    Top = 64
    Width = 129
    Height = 113
    FileEdit = Edit4
    ItemHeight = 13
    TabOrder = 0
  end
  object DriveComboBox1: TDriveComboBox
    Left = 216
    Top = 56
    Width = 145
    Height = 19
    DirList = DirectoryListBox1
    TabOrder = 1
  end
  object FilterComboBox1: TFilterComboBox
    Left = 16
    Top = 40
    Width = 97
    Height = 21
    FileList = FileListBox1
    TabOrder = 2
  end
  object DirectoryListBox1: TDirectoryListBox
    Left = 216
    Top = 80
    Width = 145
    Height = 97
    DirLabel = Label1
    FileList = FileListBox1
    ItemHeight = 16
    TabOrder = 3
  end
  object Button1: TButton
    Left = 112
    Top = 176
    Width = 89
    Height = 25
    Caption = 'C'#1086#1079#1076#1072#1090#1100
    TabOrder = 4
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 16
    Top = 176
    Width = 97
    Height = 21
    TabOrder = 5
  end
  object Button2: TButton
    Left = 112
    Top = 208
    Width = 89
    Height = 25
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 6
  end
  object Button3: TButton
    Left = 112
    Top = 240
    Width = 89
    Height = 25
    Caption = #1055#1077#1088#1077#1080#1084#1077#1085#1086#1074#1072#1090#1100
    TabOrder = 7
  end
  object Button4: TButton
    Left = 112
    Top = 272
    Width = 89
    Height = 25
    Caption = #1089#1086#1079#1076#1072#1090#1100' '#1092#1072#1081#1083
    TabOrder = 8
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 112
    Top = 304
    Width = 89
    Height = 25
    Caption = #1082#1086#1087#1080#1088#1086#1074#1072#1090#1100
    TabOrder = 9
    OnClick = Button5Click
  end
  object Edit2: TEdit
    Left = 16
    Top = 208
    Width = 97
    Height = 21
    TabOrder = 10
  end
  object Edit3: TEdit
    Left = 16
    Top = 272
    Width = 97
    Height = 21
    TabOrder = 11
  end
  object Edit4: TEdit
    Left = 16
    Top = 304
    Width = 97
    Height = 21
    TabOrder = 12
    Text = '*.*'
  end
  object Button6: TButton
    Left = 200
    Top = 304
    Width = 89
    Height = 25
    Caption = #1042#1089#1090#1072#1074#1080#1090#1100
    TabOrder = 13
    OnClick = Button6Click
  end
end
