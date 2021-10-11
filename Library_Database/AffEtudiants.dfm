object EtudiantsAffichier: TEtudiantsAffichier
  Left = 342
  Top = 150
  Width = 649
  Height = 413
  Caption = 'Affichage des '#233'tudiants'
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
    Height = 321
    ActivePage = TabSheet1
    TabIndex = 0
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Liste des ouvrages'
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 617
        Height = 289
        BevelInner = bvLowered
        TabOrder = 0
        object DBGrid1: TDBGrid
          Left = 8
          Top = 8
          Width = 601
          Height = 273
          DataSource = Data.DEtudiants
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'N_CARTE'
              Title.Color = clBlack
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOM'
              Title.Color = clBlack
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PRENOM'
              Title.Color = clBlack
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATE_NAISSANCE'
              Title.Color = clBlack
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'LIEU_NAISSANCE'
              Title.Color = clBlack
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ADRESSE'
              Title.Color = clBlack
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ANNEE_ETUDE'
              Title.Color = clBlack
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SPECIALITE'
              Title.Color = clBlack
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CLASSE'
              Title.Color = clBlack
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'STATUT'
              Title.Color = clBlack
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'REMARQUES'
              Visible = False
            end>
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Fiche par fiche'
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
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 112
          Top = 32
          Width = 25
          Height = 13
          Caption = 'NOM'
          FocusControl = DBEdit2
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 112
          Top = 56
          Width = 46
          Height = 13
          Caption = 'PRENOM'
          FocusControl = DBEdit3
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 112
          Top = 80
          Width = 98
          Height = 13
          Caption = 'DATE_NAISSANCE'
          FocusControl = DBEdit4
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 112
          Top = 104
          Width = 94
          Height = 13
          Caption = 'LIEU_NAISSANCE'
          FocusControl = DBEdit5
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 112
          Top = 128
          Width = 50
          Height = 13
          Caption = 'ADRESSE'
          FocusControl = DBEdit6
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 112
          Top = 152
          Width = 76
          Height = 13
          Caption = 'ANNEE_ETUDE'
          FocusControl = DBEdit7
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label8: TLabel
          Left = 112
          Top = 176
          Width = 64
          Height = 13
          Caption = 'SPECIALITE'
          FocusControl = DBEdit8
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label9: TLabel
          Left = 112
          Top = 200
          Width = 41
          Height = 13
          Caption = 'CLASSE'
          FocusControl = DBEdit9
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label10: TLabel
          Left = 112
          Top = 224
          Width = 44
          Height = 13
          Caption = 'STATUT'
          FocusControl = DBEdit10
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label11: TLabel
          Left = 112
          Top = 256
          Width = 69
          Height = 13
          Caption = 'REMARQUES'
          FocusControl = DBMemo1
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
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
    end
  end
  object Panel3: TPanel
    Left = 8
    Top = 328
    Width = 625
    Height = 41
    BevelInner = bvLowered
    TabOrder = 1
    object SpeedButton1: TSpeedButton
      Left = 496
      Top = 8
      Width = 121
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
      Width = 480
      Height = 25
      DataSource = Data.DEtudiants
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Flat = True
      TabOrder = 0
    end
  end
end
