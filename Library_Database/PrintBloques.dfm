object PBloques: TPBloques
  Left = 232
  Top = 235
  Width = 642
  Height = 374
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Imprimer la liste des '#233'tudiants bloqu'#233's'
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
  object Panel3: TPanel
    Left = 8
    Top = 304
    Width = 617
    Height = 41
    BevelInner = bvLowered
    TabOrder = 0
    object SpeedButton1: TSpeedButton
      Left = 296
      Top = 8
      Width = 97
      Height = 25
      Caption = '&Imprimer'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 394
      Top = 8
      Width = 95
      Height = 25
      Caption = '&Apper'#231'u'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = SpeedButton2Click
    end
    object SpeedButton3: TSpeedButton
      Left = 496
      Top = 8
      Width = 113
      Height = 25
      Caption = '&Fermer'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = SpeedButton3Click
    end
    object DBNavigator1: TDBNavigator
      Left = 8
      Top = 8
      Width = 280
      Height = 25
      DataSource = Data.DEtudiants
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Flat = True
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 8
    Top = 8
    Width = 617
    Height = 289
    BevelInner = bvLowered
    Color = clWindow
    TabOrder = 1
    object Label2: TLabel
      Left = 320
      Top = 8
      Width = 33
      Height = 13
      Caption = 'Valeur:'
    end
    object Label1: TLabel
      Left = 184
      Top = 8
      Width = 36
      Height = 13
      Caption = 'Champ:'
    end
    object SpeedButton4: TSpeedButton
      Left = 200
      Top = 56
      Width = 233
      Height = 22
      Caption = 'Afficher les Lecteurs Suspendus'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = SpeedButton4Click
    end
    object DBGrid1: TDBGrid
      Left = 0
      Top = 96
      Width = 617
      Height = 193
      DataSource = Data.DEtudiants
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
    end
    object Edit2: TEdit
      Left = 184
      Top = 24
      Width = 121
      Height = 21
      Color = clCream
      Enabled = False
      TabOrder = 1
      Text = 'STATUT'
    end
    object Edit1: TEdit
      Left = 320
      Top = 24
      Width = 121
      Height = 21
      Color = clCream
      Enabled = False
      TabOrder = 2
      Text = 'SUSPENDU'
    end
  end
end
