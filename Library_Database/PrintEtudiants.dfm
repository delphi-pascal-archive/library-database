object PEtudiants: TPEtudiants
  Left = 224
  Top = 253
  Width = 649
  Height = 407
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Imprimer les lecteurs'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 8
    Top = 8
    Width = 625
    Height = 369
    ActivePage = TabSheet1
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Liste des lecteurs'
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 617
        Height = 289
        BevelInner = bvLowered
        TabOrder = 0
        object DBGrid1: TDBGrid
          Left = 0
          Top = 0
          Width = 617
          Height = 289
          DataSource = Data.DEtudiants
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 292
        Width = 617
        Height = 41
        BevelInner = bvLowered
        TabOrder = 1
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
          Width = 97
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
    end
    object TabSheet2: TTabSheet
      Caption = 'Carte de lecteur'
      ImageIndex = 1
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 617
        Height = 289
        BevelInner = bvLowered
        TabOrder = 0
        object Label1: TLabel
          Left = 112
          Top = 8
          Width = 50
          Height = 13
          Caption = 'N_CARTE'
          FocusControl = DBEdit1
        end
        object Label2: TLabel
          Left = 112
          Top = 32
          Width = 25
          Height = 13
          Caption = 'NOM'
          FocusControl = DBEdit2
        end
        object Label3: TLabel
          Left = 112
          Top = 56
          Width = 47
          Height = 13
          Caption = 'PRENOM'
          FocusControl = DBEdit3
        end
        object Label4: TLabel
          Left = 112
          Top = 80
          Width = 96
          Height = 13
          Caption = 'DATE_NAISSANCE'
          FocusControl = DBEdit4
        end
        object Label5: TLabel
          Left = 112
          Top = 104
          Width = 91
          Height = 13
          Caption = 'LIEU_NAISSANCE'
          FocusControl = DBEdit5
        end
        object Label6: TLabel
          Left = 112
          Top = 128
          Width = 51
          Height = 13
          Caption = 'ADRESSE'
          FocusControl = DBEdit6
        end
        object Label7: TLabel
          Left = 112
          Top = 152
          Width = 80
          Height = 13
          Caption = 'ANNEE_ETUDE'
          FocusControl = DBEdit7
        end
        object Label8: TLabel
          Left = 112
          Top = 176
          Width = 61
          Height = 13
          Caption = 'SPECIALITE'
          FocusControl = DBEdit8
        end
        object Label9: TLabel
          Left = 112
          Top = 200
          Width = 41
          Height = 13
          Caption = 'CLASSE'
          FocusControl = DBEdit9
        end
        object Label10: TLabel
          Left = 112
          Top = 224
          Width = 43
          Height = 13
          Caption = 'STATUT'
          FocusControl = DBEdit10
        end
        object Label11: TLabel
          Left = 112
          Top = 256
          Width = 69
          Height = 13
          Caption = 'REMARQUES'
          FocusControl = DBMemo1
        end
        object DBEdit1: TDBEdit
          Left = 216
          Top = 8
          Width = 161
          Height = 21
          DataField = 'N_CARTE'
          DataSource = Data.DEtudiants
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 216
          Top = 32
          Width = 209
          Height = 21
          DataField = 'NOM'
          DataSource = Data.DEtudiants
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 216
          Top = 56
          Width = 209
          Height = 21
          DataField = 'PRENOM'
          DataSource = Data.DEtudiants
          TabOrder = 2
        end
        object DBEdit4: TDBEdit
          Left = 216
          Top = 80
          Width = 113
          Height = 21
          DataField = 'DATE_NAISSANCE'
          DataSource = Data.DEtudiants
          TabOrder = 3
        end
        object DBEdit5: TDBEdit
          Left = 216
          Top = 104
          Width = 153
          Height = 21
          DataField = 'LIEU_NAISSANCE'
          DataSource = Data.DEtudiants
          TabOrder = 4
        end
        object DBEdit6: TDBEdit
          Left = 216
          Top = 128
          Width = 278
          Height = 21
          DataField = 'ADRESSE'
          DataSource = Data.DEtudiants
          TabOrder = 5
        end
        object DBEdit7: TDBEdit
          Left = 216
          Top = 152
          Width = 69
          Height = 21
          DataField = 'ANNEE_ETUDE'
          DataSource = Data.DEtudiants
          TabOrder = 6
        end
        object DBEdit8: TDBEdit
          Left = 216
          Top = 176
          Width = 193
          Height = 21
          DataField = 'SPECIALITE'
          DataSource = Data.DEtudiants
          TabOrder = 7
        end
        object DBEdit9: TDBEdit
          Left = 216
          Top = 200
          Width = 134
          Height = 21
          DataField = 'CLASSE'
          DataSource = Data.DEtudiants
          TabOrder = 8
        end
        object DBEdit10: TDBEdit
          Left = 216
          Top = 224
          Width = 193
          Height = 21
          DataField = 'STATUT'
          DataSource = Data.DEtudiants
          TabOrder = 9
        end
        object DBMemo1: TDBMemo
          Left = 216
          Top = 248
          Width = 297
          Height = 37
          DataField = 'REMARQUES'
          DataSource = Data.DEtudiants
          TabOrder = 10
        end
      end
      object Panel4: TPanel
        Left = 0
        Top = 292
        Width = 617
        Height = 41
        BevelInner = bvLowered
        TabOrder = 1
        object SpeedButton4: TSpeedButton
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
          OnClick = SpeedButton4Click
        end
        object SpeedButton5: TSpeedButton
          Left = 394
          Top = 8
          Width = 97
          Height = 25
          Caption = '&Apper'#231'u'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = SpeedButton5Click
        end
        object SpeedButton6: TSpeedButton
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
          OnClick = SpeedButton6Click
        end
        object DBNavigator2: TDBNavigator
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
    end
  end
end
