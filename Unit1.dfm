object Form1: TForm1
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'auto_clicker'
  ClientHeight = 367
  ClientWidth = 233
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  DesignSize = (
    233
    367)
  PixelsPerInch = 96
  TextHeight = 13
  object Label11: TLabel
    Left = 130
    Top = 336
    Width = 40
    Height = 13
    Caption = 'count: 0'
  end
  object Label12: TLabel
    Left = 32
    Top = 307
    Width = 36
    Height = 13
    Caption = 'Anzahl:'
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 233
    Height = 97
    Caption = 'Position 1'
    TabOrder = 0
    object Label1: TLabel
      Left = 19
      Top = 73
      Width = 30
      Height = 13
      Caption = 'delay:'
    end
    object Label2: TLabel
      Left = 182
      Top = 73
      Width = 24
      Height = 13
      Caption = 'in ms'
    end
    object Edit1: TEdit
      Left = 19
      Top = 16
      Width = 121
      Height = 21
      TabOrder = 0
      Text = 'X'
    end
    object Edit2: TEdit
      Left = 19
      Top = 43
      Width = 121
      Height = 21
      TabOrder = 1
      Text = 'Y'
    end
    object Button1: TButton
      Tag = 1
      Left = 146
      Top = 16
      Width = 75
      Height = 25
      Caption = 'set coords'
      TabOrder = 2
      OnClick = Button1Click
    end
    object CheckBox1: TCheckBox
      Left = 146
      Top = 47
      Width = 75
      Height = 17
      Caption = 'double click'
      TabOrder = 3
    end
    object Edit3: TEdit
      Left = 55
      Top = 70
      Width = 121
      Height = 21
      TabOrder = 4
      Text = '1000'
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 97
    Width = 233
    Height = 97
    Caption = 'Position 2'
    TabOrder = 1
    object Label3: TLabel
      Left = 19
      Top = 73
      Width = 30
      Height = 13
      Caption = 'delay:'
    end
    object Label4: TLabel
      Left = 182
      Top = 73
      Width = 24
      Height = 13
      Caption = 'in ms'
    end
    object Edit4: TEdit
      Left = 19
      Top = 16
      Width = 121
      Height = 21
      TabOrder = 0
      Text = 'X'
    end
    object Edit5: TEdit
      Left = 19
      Top = 43
      Width = 121
      Height = 21
      TabOrder = 1
      Text = 'Y'
    end
    object Button2: TButton
      Tag = 2
      Left = 146
      Top = 16
      Width = 75
      Height = 25
      Caption = 'set coords'
      TabOrder = 2
      OnClick = Button2Click
    end
    object CheckBox2: TCheckBox
      Left = 146
      Top = 47
      Width = 75
      Height = 17
      Caption = 'double click'
      TabOrder = 3
    end
    object Edit6: TEdit
      Left = 55
      Top = 70
      Width = 121
      Height = 21
      TabOrder = 4
      Text = '1000'
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 200
    Width = 233
    Height = 97
    Caption = 'Position 3'
    TabOrder = 2
    object Label5: TLabel
      Left = 19
      Top = 73
      Width = 30
      Height = 13
      Caption = 'delay:'
    end
    object Label6: TLabel
      Left = 182
      Top = 73
      Width = 24
      Height = 13
      Caption = 'in ms'
    end
    object Edit7: TEdit
      Left = 19
      Top = 16
      Width = 121
      Height = 21
      TabOrder = 0
      Text = 'X'
    end
    object Edit8: TEdit
      Left = 19
      Top = 43
      Width = 121
      Height = 21
      TabOrder = 1
      Text = 'Y'
    end
    object Button3: TButton
      Tag = 3
      Left = 146
      Top = 16
      Width = 75
      Height = 25
      Caption = 'set coords'
      TabOrder = 2
      OnClick = Button3Click
    end
    object CheckBox3: TCheckBox
      Left = 146
      Top = 47
      Width = 75
      Height = 17
      Caption = 'double click'
      TabOrder = 3
    end
    object Edit9: TEdit
      Left = 55
      Top = 70
      Width = 121
      Height = 21
      TabOrder = 4
      Text = '1000'
    end
  end
  object Button6: TButton
    Left = 32
    Top = 331
    Width = 75
    Height = 25
    Caption = 'Start'
    TabOrder = 3
    OnClick = Button6Click
  end
  object Edit16: TEdit
    Left = 74
    Top = 304
    Width = 121
    Height = 21
    Anchors = [akTop, akRight]
    TabOrder = 4
    Text = '10'
  end
  object IdHTTP1: TIdHTTP
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = -1
    Request.ContentRangeStart = -1
    Request.ContentRangeInstanceLength = -1
    Request.Accept = 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    Request.Ranges.Units = 'bytes'
    Request.Ranges = <>
    HTTPOptions = [hoForceEncodeParams]
    Left = 592
    Top = 608
  end
end
