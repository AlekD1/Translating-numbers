object Form1: TForm1
  Left = 1005
  Top = 170
  BorderStyle = bsSingle
  Caption = #1055#1077#1088#1077#1074#1086#1076' '#1095#1080#1089#1077#1083
  ClientHeight = 545
  ClientWidth = 676
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mm1
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object grp1: TGroupBox
    Left = 8
    Top = 8
    Width = 329
    Height = 241
    Caption = #1055#1077#1088#1077#1074#1086#1076' '#1095#1080#1089#1083#1072
    TabOrder = 0
    object lbl1: TLabel
      Left = 16
      Top = 128
      Width = 30
      Height = 13
      Caption = #1063#1080#1089#1083#1086
    end
    object lbl2: TLabel
      Left = 16
      Top = 160
      Width = 53
      Height = 13
      Caption = #1056#1077#1079#1091#1083#1100#1090#1072#1090
    end
    object edt1: TEdit
      Left = 88
      Top = 128
      Width = 193
      Height = 21
      TabOrder = 0
      OnKeyPress = edt1KeyPress
    end
    object edt2: TEdit
      Left = 88
      Top = 160
      Width = 193
      Height = 21
      Enabled = False
      TabOrder = 1
      OnChange = edt2Change
    end
    object btn1: TButton
      Left = 8
      Top = 200
      Width = 89
      Height = 25
      Caption = #1055#1077#1088#1077#1074#1077#1089#1090#1080
      TabOrder = 2
      OnClick = btn1Click
    end
    object btn2: TButton
      Left = 104
      Top = 200
      Width = 121
      Height = 25
      Caption = #1055#1086#1076#1088#1086#1073#1085#1086#1077' '#1088#1077#1096#1077#1085#1080#1077
      TabOrder = 3
      OnClick = btn2Click
    end
    object btn3: TButton
      Left = 232
      Top = 200
      Width = 89
      Height = 25
      Caption = #1054#1095#1080#1089#1090#1080#1090#1100
      TabOrder = 4
      OnClick = btn3Click
    end
    object grp2: TGroupBox
      Left = 16
      Top = 24
      Width = 145
      Height = 89
      Caption = #1048#1047
      TabOrder = 5
      object rb1: TRadioButton
        Left = 8
        Top = 16
        Width = 113
        Height = 17
        Caption = #1044#1074#1086#1080#1095#1085#1086#1081
        TabOrder = 0
        OnClick = rb1Click
      end
      object rb2: TRadioButton
        Left = 8
        Top = 32
        Width = 113
        Height = 17
        Caption = #1042#1086#1089#1100#1084#1077#1088#1080#1095#1085#1086#1081
        TabOrder = 1
        OnClick = rb2Click
      end
      object rb3: TRadioButton
        Left = 8
        Top = 48
        Width = 113
        Height = 17
        Caption = #1044#1077#1089#1103#1090#1077#1088#1080#1095#1085#1086#1081
        TabOrder = 2
        OnClick = rb3Click
      end
      object rb4: TRadioButton
        Left = 8
        Top = 64
        Width = 129
        Height = 17
        Caption = #1064#1077#1089#1090#1085#1072#1076#1094#1072#1090#1077#1088#1080#1095#1085#1086#1081
        TabOrder = 3
        OnClick = rb4Click
      end
    end
    object grp3: TGroupBox
      Left = 168
      Top = 24
      Width = 145
      Height = 89
      Caption = #1042
      TabOrder = 6
      object rb5: TRadioButton
        Left = 8
        Top = 16
        Width = 113
        Height = 17
        Caption = #1044#1074#1086#1080#1095#1085#1091#1102
        TabOrder = 0
        OnClick = rb5Click
      end
      object rb6: TRadioButton
        Left = 8
        Top = 32
        Width = 113
        Height = 17
        Caption = #1042#1086#1089#1100#1084#1077#1088#1080#1095#1085#1091#1102
        TabOrder = 1
        OnClick = rb6Click
      end
      object rb7: TRadioButton
        Left = 8
        Top = 48
        Width = 113
        Height = 17
        Caption = #1044#1077#1089#1103#1090#1077#1088#1080#1095#1085#1091#1102
        TabOrder = 2
        OnClick = rb7Click
      end
      object rb8: TRadioButton
        Left = 8
        Top = 64
        Width = 129
        Height = 17
        Caption = #1064#1077#1089#1090#1085#1072#1076#1094#1072#1090#1077#1088#1080#1095#1085#1091#1102
        TabOrder = 3
        OnClick = rb8Click
      end
    end
  end
  object Memo1: TMemo
    Left = 8
    Top = 256
    Width = 329
    Height = 257
    ScrollBars = ssVertical
    TabOrder = 1
  end
  object Button1: TButton
    Left = 96
    Top = 515
    Width = 161
    Height = 22
    Caption = #1047#1072#1082#1088#1099#1090#1100' '#1088#1077#1096#1077#1085#1080#1077
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 424
    Top = 512
    Width = 161
    Height = 22
    Caption = #1047#1072#1082#1088#1099#1090#1100' '#1080#1089#1090#1086#1088#1080#1102
    TabOrder = 2
    OnClick = Button2Click
  end
  object RadioGroup1: TRadioGroup
    Left = 352
    Top = 8
    Width = 305
    Height = 241
    Caption = #1048#1089#1090#1086#1088#1080#1103
    TabOrder = 4
  end
  object Memo3: TMemo
    Left = 360
    Top = 24
    Width = 289
    Height = 201
    Alignment = taCenter
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 5
  end
  object Button3: TButton
    Left = 424
    Top = 224
    Width = 153
    Height = 17
    Caption = #1047#1072#1082#1088#1099#1090#1100
    TabOrder = 6
    OnClick = Button3Click
  end
  object mm1: TMainMenu
    Left = 296
    Top = 128
    object N1: TMenuItem
      Caption = #1060#1072#1081#1083
      object N2: TMenuItem
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1082#1072#1082
        OnClick = N2Click
      end
      object N5: TMenuItem
        Caption = #1048#1089#1090#1086#1088#1080#1103
        OnClick = N5Click
      end
      object N3: TMenuItem
        Caption = #1042#1099#1093#1086#1076
        OnClick = N3Click
      end
    end
    object N4: TMenuItem
      Caption = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
      OnClick = N4Click
    end
  end
  object dlgSave1: TSaveDialog
    Left = 296
    Top = 160
  end
end
