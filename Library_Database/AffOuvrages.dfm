object OuvragesAffichier: TOuvragesAffichier
  Left = 262
  Top = 309
  Width = 648
  Height = 412
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'OuvragesAffichier'
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
    ActivePage = TabSheet2
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
          DataSource = Data.DOuvrages
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'CODE'
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
              FieldName = 'TITRE'
              Title.Color = clBlack
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'AUTEUR'
              Title.Color = clBlack
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MAISON_EDITION'
              Title.Color = clBlack
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ANNEE_EDITION'
              Title.Color = clBlack
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'LANGUE'
              Title.Color = clBlack
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NBR_EXEMPLAIRES'
              Title.Color = clBlack
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TYPE_OUVRAGE'
              Title.Color = clBlack
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CODE_ISBN'
              Title.Color = clBlack
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'N_INVENTAIRE'
              Title.Color = clBlack
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ETAT_OUVRAGE'
              Title.Color = clBlack
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Visible = True
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
          Width = 29
          Height = 13
          Caption = 'CODE'
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
          Width = 33
          Height = 13
          Caption = 'TITRE'
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
          Width = 45
          Height = 13
          Caption = 'AUTEUR'
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
          Caption = 'MAISON_EDITION'
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
          Width = 87
          Height = 13
          Caption = 'ANNEE_EDITION'
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
          Width = 43
          Height = 13
          Caption = 'LANGUE'
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
          Width = 105
          Height = 13
          Caption = 'NBR_EXEMPLAIRES'
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
          Width = 87
          Height = 13
          Caption = 'TYPE_OUVRAGE'
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
          Width = 62
          Height = 13
          Caption = 'CODE_ISBN'
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
          Width = 80
          Height = 13
          Caption = 'N_INVENTAIRE'
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
          Top = 248
          Width = 88
          Height = 13
          Caption = 'ETAT_OUVRAGE'
          FocusControl = DBEdit11
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
          Width = 250
          Height = 21
          DataField = 'CODE'
          DataSource = Data.DOuvrages
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 216
          Top = 32
          Width = 300
          Height = 21
          DataField = 'TITRE'
          DataSource = Data.DOuvrages
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 216
          Top = 56
          Width = 250
          Height = 21
          DataField = 'AUTEUR'
          DataSource = Data.DOuvrages
          TabOrder = 2
        end
        object DBEdit4: TDBEdit
          Left = 216
          Top = 80
          Width = 250
          Height = 21
          DataField = 'MAISON_EDITION'
          DataSource = Data.DOuvrages
          TabOrder = 3
        end
        object DBEdit5: TDBEdit
          Left = 216
          Top = 104
          Width = 56
          Height = 21
          DataField = 'ANNEE_EDITION'
          DataSource = Data.DOuvrages
          TabOrder = 4
        end
        object DBEdit6: TDBEdit
          Left = 216
          Top = 128
          Width = 199
          Height = 21
          DataField = 'LANGUE'
          DataSource = Data.DOuvrages
          TabOrder = 5
        end
        object DBEdit7: TDBEdit
          Left = 216
          Top = 152
          Width = 134
          Height = 21
          DataField = 'NBR_EXEMPLAIRES'
          DataSource = Data.DOuvrages
          TabOrder = 6
        end
        object DBEdit8: TDBEdit
          Left = 216
          Top = 176
          Width = 145
          Height = 21
          DataField = 'TYPE_OUVRAGE'
          DataSource = Data.DOuvrages
          TabOrder = 7
        end
        object DBEdit9: TDBEdit
          Left = 216
          Top = 200
          Width = 100
          Height = 21
          DataField = 'CODE_ISBN'
          DataSource = Data.DOuvrages
          TabOrder = 8
        end
        object DBEdit10: TDBEdit
          Left = 216
          Top = 224
          Width = 199
          Height = 21
          DataField = 'N_INVENTAIRE'
          DataSource = Data.DOuvrages
          TabOrder = 9
        end
        object DBEdit11: TDBEdit
          Left = 216
          Top = 248
          Width = 225
          Height = 21
          DataField = 'ETAT_OUVRAGE'
          DataSource = Data.DOuvrages
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
      DataSource = Data.DOuvrages
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Flat = True
      TabOrder = 0
    end
  end
end
