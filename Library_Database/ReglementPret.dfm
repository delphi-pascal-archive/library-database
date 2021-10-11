object Reglement: TReglement
  Left = 244
  Top = 228
  Width = 538
  Height = 420
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'R'#232'glement'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    Left = 8
    Top = 8
    Width = 513
    Height = 41
    BevelInner = bvLowered
    TabOrder = 0
    object Label12: TLabel
      Left = 8
      Top = 14
      Width = 36
      Height = 13
      Caption = 'Entrez'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ComboBox2: TComboBox
      Left = 48
      Top = 10
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 0
      OnKeyPress = ComboBox2KeyPress
      Items.Strings = (
        'CODE_OUVRAGE'
        'TITRE_OUVRAGE'
        'AUTEUR_OUVRAGE'
        'N_CARTE_ETUDIANT'
        'NOM'
        'PRENOM')
    end
    object Edit2: TEdit
      Left = 200
      Top = 10
      Width = 249
      Height = 21
      TabOrder = 1
    end
    object BitBtn6: TBitBtn
      Left = 456
      Top = 9
      Width = 49
      Height = 24
      Caption = 'Ok'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ModalResult = 1
      ParentFont = False
      TabOrder = 2
      OnClick = BitBtn6Click
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
  end
  object Panel1: TPanel
    Left = 8
    Top = 56
    Width = 513
    Height = 281
    BevelInner = bvLowered
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 89
      Height = 13
      Caption = 'CODE_OUVRAGE'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 8
      Top = 32
      Width = 91
      Height = 13
      Caption = 'TITRE_OUVRAGE'
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 8
      Top = 56
      Width = 104
      Height = 13
      Caption = 'AUTEUR_OUVRAGE'
      FocusControl = DBEdit3
    end
    object Label4: TLabel
      Left = 8
      Top = 80
      Width = 103
      Height = 13
      Caption = 'LANGUE_OUVRAGE'
      FocusControl = DBEdit4
    end
    object Label5: TLabel
      Left = 8
      Top = 104
      Width = 87
      Height = 13
      Caption = 'TYPE_OUVRAGE'
      FocusControl = DBEdit5
    end
    object Label6: TLabel
      Left = 8
      Top = 128
      Width = 50
      Height = 13
      Caption = 'N_CARTE'
      FocusControl = DBEdit6
    end
    object Label7: TLabel
      Left = 8
      Top = 152
      Width = 25
      Height = 13
      Caption = 'NOM'
      FocusControl = DBEdit7
    end
    object Label8: TLabel
      Left = 8
      Top = 176
      Width = 47
      Height = 13
      Caption = 'PRENOM'
      FocusControl = DBEdit8
    end
    object Label9: TLabel
      Left = 8
      Top = 200
      Width = 64
      Height = 13
      Caption = 'DATE_PRET'
      FocusControl = DBEdit9
    end
    object Label10: TLabel
      Left = 8
      Top = 224
      Width = 131
      Height = 13
      Caption = 'DATE_PREVUE_RETOUR'
      FocusControl = DBEdit10
    end
    object Label11: TLabel
      Left = 8
      Top = 248
      Width = 39
      Height = 13
      Caption = 'RENDU'
      FocusControl = DBEdit11
    end
    object Label13: TLabel
      Left = 272
      Top = 200
      Width = 108
      Height = 13
      Caption = 'DATE_AUJOURD'#39'HUI'
      DragMode = dmAutomatic
    end
    object DBEdit1: TDBEdit
      Left = 144
      Top = 8
      Width = 241
      Height = 21
      DataField = 'CODE_OUVRAGE'
      DataSource = Data.DPrets
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 144
      Top = 32
      Width = 345
      Height = 21
      DataField = 'TITRE_OUVRAGE'
      DataSource = Data.DPrets
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 144
      Top = 56
      Width = 241
      Height = 21
      DataField = 'AUTEUR_OUVRAGE'
      DataSource = Data.DPrets
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 144
      Top = 80
      Width = 129
      Height = 21
      DataField = 'LANGUE_OUVRAGE'
      DataSource = Data.DPrets
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 144
      Top = 104
      Width = 145
      Height = 21
      DataField = 'TYPE_OUVRAGE'
      DataSource = Data.DPrets
      TabOrder = 4
    end
    object DBEdit6: TDBEdit
      Left = 144
      Top = 128
      Width = 97
      Height = 21
      DataField = 'N_CARTE'
      DataSource = Data.DPrets
      TabOrder = 5
    end
    object DBEdit7: TDBEdit
      Left = 144
      Top = 152
      Width = 265
      Height = 21
      DataField = 'NOM'
      DataSource = Data.DPrets
      TabOrder = 6
    end
    object DBEdit8: TDBEdit
      Left = 144
      Top = 176
      Width = 225
      Height = 21
      DataField = 'PRENOM'
      DataSource = Data.DPrets
      TabOrder = 7
    end
    object DBEdit9: TDBEdit
      Left = 144
      Top = 200
      Width = 121
      Height = 21
      DataField = 'DATE_PRET'
      DataSource = Data.DPrets
      TabOrder = 8
    end
    object DBEdit10: TDBEdit
      Left = 144
      Top = 224
      Width = 121
      Height = 21
      DataField = 'DATE_PREVUE_RETOUR'
      DataSource = Data.DPrets
      TabOrder = 9
    end
    object DBEdit11: TDBEdit
      Left = 144
      Top = 248
      Width = 273
      Height = 21
      DataField = 'RENDU'
      DataSource = Data.DPrets
      TabOrder = 10
    end
    object Panel4: TPanel
      Left = 384
      Top = 192
      Width = 121
      Height = 25
      Caption = 'Panel4'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 11
    end
  end
  object Panel2: TPanel
    Left = 8
    Top = 336
    Width = 513
    Height = 41
    BevelInner = bvLowered
    TabOrder = 2
    object SpeedButton1: TSpeedButton
      Left = 8
      Top = 8
      Width = 81
      Height = 25
      Caption = 'R'#232'gler'
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
      Left = 424
      Top = 8
      Width = 81
      Height = 25
      Caption = '&Fermer'
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
      Left = 88
      Top = 8
      Width = 129
      Height = 25
      Caption = 'Suspendre le lecteur'
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
      Left = 216
      Top = 8
      Width = 208
      Height = 25
      DataSource = Data.DPrets
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Flat = True
      TabOrder = 0
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 456
    Top = 136
  end
end
