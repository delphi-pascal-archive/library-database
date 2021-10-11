object Data: TData
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 292
  Top = 208
  Height = 384
  Width = 427
  object DOuvrages: TDataSource
    DataSet = TOuvrages
    Left = 112
    Top = 72
  end
  object DEtudiants: TDataSource
    DataSet = TEtudiants
    Left = 176
    Top = 72
  end
  object DPrets: TDataSource
    DataSet = TPrets
    Left = 240
    Top = 72
  end
  object TOuvrages: TTable
    Active = True
    TableName = 'Ouvrages.db'
    Left = 112
    Top = 16
  end
  object TEtudiants: TTable
    Active = True
    TableName = 'Etudiants.db'
    Left = 176
    Top = 16
  end
  object TPrets: TTable
    TableName = 'Prets.db'
    Left = 248
    Top = 16
  end
end
