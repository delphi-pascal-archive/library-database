unit PrintEtudiants;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, Grids, DBGrids, ExtCtrls, ComCtrls,
  Buttons;

type
  TPEtudiants = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel2: TPanel;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBMemo1: TDBMemo;
    Panel3: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    DBNavigator1: TDBNavigator;
    Panel4: TPanel;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    DBNavigator2: TDBNavigator;
    DBGrid1: TDBGrid;
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  PEtudiants: TPEtudiants;

implementation

uses DataModul, QRCarteEtudiants, QREtudiants;

{$R *.dfm}

procedure TPEtudiants.SpeedButton6Click(Sender: TObject);
begin
PEtudiants.Hide;
end;

procedure TPEtudiants.SpeedButton3Click(Sender: TObject);
begin
PEtudiants.Hide;
end;

procedure TPEtudiants.SpeedButton1Click(Sender: TObject);
begin
EtatListeEtudiants.Print;
end;

procedure TPEtudiants.SpeedButton2Click(Sender: TObject);
begin
EtatListeEtudiants.Preview;
end;

procedure TPEtudiants.SpeedButton4Click(Sender: TObject);
begin
EtatListeEtudiants.QRLabel1.Caption:='Liste des étudiants';
EtatEtudiants.Print;
end;

procedure TPEtudiants.SpeedButton5Click(Sender: TObject);
begin
EtatListeEtudiants.QRLabel1.Caption:='Liste des étudiants';
EtatEtudiants.Preview;
end;

end.
