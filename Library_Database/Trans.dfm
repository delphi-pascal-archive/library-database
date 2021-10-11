object TransPrets: TTransPrets
  Left = 303
  Top = 408
  Width = 649
  Height = 430
  BorderIcons = [biSystemMenu]
  Caption = 'Rechercher des ouvrages'
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
    Height = 381
    ActivePage = TabSheet2
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Ouvrages'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 617
        Height = 313
        BevelInner = bvLowered
        TabOrder = 0
        object DBGrid1: TDBGrid
          Left = 0
          Top = 0
          Width = 617
          Height = 313
          DataSource = Data.DOuvrages
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
        Top = 308
        Width = 617
        Height = 41
        BevelInner = bvLowered
        TabOrder = 1
        object SpeedButton1: TSpeedButton
          Left = 8
          Top = 8
          Width = 121
          Height = 25
          Caption = '&Ajouter'
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
          Left = 496
          Top = 8
          Width = 113
          Height = 25
          Caption = '&Annuler'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = SpeedButton2Click
        end
        object DBNavigator1: TDBNavigator
          Left = 136
          Top = 8
          Width = 352
          Height = 25
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Flat = True
          TabOrder = 0
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Etudiants'
      ImageIndex = 1
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 617
        Height = 313
        BevelInner = bvLowered
        TabOrder = 0
        object DBGrid2: TDBGrid
          Left = 0
          Top = 0
          Width = 617
          Height = 313
          DataSource = Data.DEtudiants
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
        end
      end
      object Panel4: TPanel
        Left = 0
        Top = 308
        Width = 617
        Height = 41
        BevelInner = bvLowered
        TabOrder = 1
        object SpeedButton3: TSpeedButton
          Left = 8
          Top = 8
          Width = 121
          Height = 25
          Caption = '&Ajouter'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = SpeedButton3Click
        end
        object SpeedButton4: TSpeedButton
          Left = 496
          Top = 8
          Width = 113
          Height = 25
          Caption = '&Annuler'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = SpeedButton4Click
        end
        object DBNavigator2: TDBNavigator
          Left = 136
          Top = 8
          Width = 352
          Height = 25
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Flat = True
          TabOrder = 0
        end
      end
    end
  end
end
