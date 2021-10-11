unit DataModul;

interface

uses
  SysUtils, Classes, DB, DBTables, IBCustomDataSet, IBDatabase, IBTable;

type
  TData = class(TDataModule)
    DOuvrages: TDataSource;
    DEtudiants: TDataSource;
    DPrets: TDataSource;
    TOuvrages: TTable;
    TEtudiants: TTable;
    TPrets: TTable;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Data: TData;

implementation

{$R *.dfm}

procedure TData.DataModuleCreate(Sender: TObject);
begin
TOuvrages.Open;
TEtudiants.Open;
TPrets.Open;
end;

end.
