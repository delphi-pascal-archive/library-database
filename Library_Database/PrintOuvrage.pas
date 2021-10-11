unit PrintOuvrage;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, Buttons, StdCtrls, Mask, Grids, DBGrids, ExtCtrls,
  ComCtrls;

type
  TPOuvrages = class(TForm)
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
    DBEdit11: TDBEdit;
    Panel3: TPanel;
    DBNavigator1: TDBNavigator;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
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
  POuvrages: TPOuvrages;

implementation

uses DataModul, QROuvrages, QRFOuvrages;

{$R *.dfm}

procedure TPOuvrages.SpeedButton6Click(Sender: TObject);
begin
POuvrages.Hide;
end;

procedure TPOuvrages.SpeedButton3Click(Sender: TObject);
begin
POuvrages.Hide;
end;

procedure TPOuvrages.SpeedButton1Click(Sender: TObject);
begin
EtatOuvrages.QRLabel1.Caption:='Liste des ouvrages';
EtatOuvrages.Print;
end;

procedure TPOuvrages.SpeedButton2Click(Sender: TObject);
begin
EtatOuvrages.QRLabel1.Caption:='Liste des ouvrages';
EtatOuvrages.Preview;
end;

procedure TPOuvrages.SpeedButton4Click(Sender: TObject);
begin
EtatFicheOuvrages.Print;
end;

procedure TPOuvrages.SpeedButton5Click(Sender: TObject);
begin
EtatFicheOuvrages.Preview;
end;

end.
