object RechercherEtudiants: TRechercherEtudiants
  Left = 238
  Top = 191
  Width = 760
  Height = 466
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'RechercherEtudiants'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 8
    Top = 8
    Width = 737
    Height = 417
    ActivePage = TabSheet1
    TabOrder = 0
    TabPosition = tpBottom
    object TabSheet1: TTabSheet
      Caption = 'Crit'#232'res de recherche'
      object Panel3: TPanel
        Left = 144
        Top = 304
        Width = 441
        Height = 33
        BorderStyle = bsSingle
        TabOrder = 0
        object RadioButton1: TRadioButton
          Left = 89
          Top = 5
          Width = 113
          Height = 17
          Caption = 'ET'
          Checked = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          TabStop = True
          OnClick = RadioButton1Click
        end
        object RadioButton2: TRadioButton
          Left = 233
          Top = 5
          Width = 113
          Height = 17
          Caption = 'OU'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnClick = RadioButton2Click
        end
      end
      object Panel4: TPanel
        Left = 144
        Top = 336
        Width = 441
        Height = 41
        BevelInner = bvLowered
        TabOrder = 1
        object SpeedButton1: TSpeedButton
          Left = 232
          Top = 8
          Width = 121
          Height = 25
          Caption = 'Tout &effacer'
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
          Left = 88
          Top = 8
          Width = 121
          Height = 25
          Caption = '&Rechercher'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = SpeedButton2Click
        end
      end
      object Panel1: TPanel
        Left = 144
        Top = 16
        Width = 441
        Height = 273
        BevelInner = bvLowered
        BorderStyle = bsSingle
        TabOrder = 2
        object Label1: TLabel
          Left = 40
          Top = 16
          Width = 50
          Height = 13
          Caption = 'N_CARTE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 40
          Top = 40
          Width = 25
          Height = 13
          Caption = 'NOM'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 40
          Top = 64
          Width = 46
          Height = 13
          Caption = 'PRENOM'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 40
          Top = 88
          Width = 98
          Height = 13
          Caption = 'DATE_NAISSANCE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 40
          Top = 112
          Width = 94
          Height = 13
          Caption = 'LIEU_NAISSANCE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 40
          Top = 136
          Width = 50
          Height = 13
          Caption = 'ADRESSE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 40
          Top = 160
          Width = 76
          Height = 13
          Caption = 'ANNEE_ETUDE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label8: TLabel
          Left = 40
          Top = 184
          Width = 64
          Height = 13
          Caption = 'SPECIALITE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label9: TLabel
          Left = 40
          Top = 208
          Width = 41
          Height = 13
          Caption = 'CLASSE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label10: TLabel
          Left = 40
          Top = 232
          Width = 44
          Height = 13
          Caption = 'STATUT'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Edit1: TEdit
          Left = 144
          Top = 11
          Width = 268
          Height = 21
          TabOrder = 0
        end
        object Edit2: TEdit
          Left = 144
          Top = 35
          Width = 268
          Height = 21
          TabOrder = 1
        end
        object Edit3: TEdit
          Left = 144
          Top = 59
          Width = 268
          Height = 21
          TabOrder = 2
        end
        object Edit4: TEdit
          Left = 144
          Top = 83
          Width = 268
          Height = 21
          TabOrder = 3
        end
        object Edit5: TEdit
          Left = 144
          Top = 107
          Width = 268
          Height = 21
          TabOrder = 4
        end
        object Edit6: TEdit
          Left = 144
          Top = 131
          Width = 268
          Height = 21
          TabOrder = 5
        end
        object Edit7: TEdit
          Left = 144
          Top = 155
          Width = 268
          Height = 21
          TabOrder = 6
        end
        object Edit8: TEdit
          Left = 144
          Top = 179
          Width = 268
          Height = 21
          TabOrder = 7
        end
        object Edit9: TEdit
          Left = 144
          Top = 203
          Width = 268
          Height = 21
          TabOrder = 8
        end
        object Edit10: TEdit
          Left = 144
          Top = 227
          Width = 268
          Height = 21
          TabOrder = 9
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'R'#233'sultat'
      ImageIndex = 1
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 729
        Height = 385
        BevelInner = bvLowered
        TabOrder = 0
        object DBGrid1: TDBGrid
          Left = 8
          Top = 8
          Width = 713
          Height = 369
          DataSource = DataSource
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
              Width = 77
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
              Width = 258
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
              Width = 145
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
              Width = 135
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
              Width = 135
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
              Width = 108
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'STATUT_OUVRAGE'
              Width = 132
              Visible = True
            end>
        end
      end
    end
  end
  object Button1: TButton
    Left = 176
    Top = 405
    Width = 87
    Height = 19
    Cancel = True
    Caption = '&Fermer'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = Button1Click
  end
  object DataSource: TDataSource
    DataSet = Query
    Left = 8
    Top = 56
  end
  object Query: TIBQuery
    BufferChunks = 1000
    CachedUpdates = False
    Left = 8
    Top = 16
  end
end
