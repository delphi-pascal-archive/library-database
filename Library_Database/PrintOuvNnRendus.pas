unit PrintOuvNnRendus;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, Buttons, Grids, DBGrids, ExtCtrls;

type
  TPONRendus = class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  PONRendus: TPONRendus;

implementation

uses DataModul, QROuvrages;

{$R *.dfm}

procedure TPONRendus.SpeedButton3Click(Sender: TObject);
begin
Data.TOuvrages.Filtered :=false ;
PONRendus.Hide;
end;

procedure TPONRendus.FormShow(Sender: TObject);
begin
Data.TOuvrages.Filter:= 'ETAT_OUVRAGE= ''' + 'NON' + '*''';
Data.TOuvrages.Filtered :=true ;
if Data.TOuvrages.RecordCount= 0 then ShowMessage('Tous les ouvrages sont rendus');
end;

procedure TPONRendus.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
Data.TOuvrages.Filtered :=false ;
end;

procedure TPONRendus.SpeedButton1Click(Sender: TObject);
begin
EtatOuvrages.QRLabel1.Caption:='Liste des ouvrages non rendus';
EtatOuvrages.Print;
end;

procedure TPONRendus.SpeedButton2Click(Sender: TObject);
begin
EtatOuvrages.QRLabel1.Caption:='Liste des ouvrages non rendus';
EtatOuvrages.Preview;
end;

end.
