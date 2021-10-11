object Bloques: TBloques
  Left = 241
  Top = 253
  Width = 642
  Height = 424
  Caption = 'Lecteurs bloques'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 617
    Height = 337
    BevelInner = bvLowered
    Color = clWindow
    TabOrder = 0
    object SpeedButton2: TSpeedButton
      Left = 192
      Top = 56
      Width = 241
      Height = 22
      Caption = 'Afficher les Lecteurs Suspendus'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = SpeedButton2Click
    end
    object Label1: TLabel
      Left = 184
      Top = 8
      Width = 36
      Height = 13
      Caption = 'Champ:'
    end
    object Label2: TLabel
      Left = 320
      Top = 8
      Width = 33
      Height = 13
      Caption = 'Valeur:'
    end
    object DBGrid1: TDBGrid
      Left = 8
      Top = 96
      Width = 609
      Height = 241
      DataSource = Data.DEtudiants
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
    end
    object Edit1: TEdit
      Left = 320
      Top = 24
      Width = 121
      Height = 21
      Color = clCream
      Enabled = False
      TabOrder = 1
      Text = 'SUSPENDU'
    end
    object Edit2: TEdit
      Left = 184
      Top = 24
      Width = 121
      Height = 21
      Color = clCream
      Enabled = False
      TabOrder = 2
      Text = 'STATUT'
    end
  end
  object Panel2: TPanel
    Left = 8
    Top = 344
    Width = 617
    Height = 41
    BevelInner = bvLowered
    TabOrder = 1
    object SpeedButton1: TSpeedButton
      Left = 480
      Top = 8
      Width = 129
      Height = 25
      Caption = '&Fermer'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = SpeedButton1Click
    end
    object DBNavigator1: TDBNavigator
      Left = 8
      Top = 8
      Width = 456
      Height = 25
      DataSource = Data.DEtudiants
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Flat = True
      TabOrder = 0
    end
  end
end
