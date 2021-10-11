unit Trans;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, Buttons, Grids, DBGrids, ExtCtrls, ComCtrls, StdCtrls;

type
  TTransPrets = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    DBNavigator1: TDBNavigator;
    Panel4: TPanel;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    DBNavigator2: TDBNavigator;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  TransPrets: TTransPrets;

implementation

uses DataModul, GPrets;

{$R *.dfm}

procedure TTransPrets.SpeedButton2Click(Sender: TObject);
begin
TransPrets.Hide;
end;

procedure TTransPrets.SpeedButton1Click(Sender: TObject);
begin
EditPrets.DBEdit1.Text:=Data.TOuvrages.FieldByName('CODE').Text;
EditPrets.DBEdit2.Text:=Data.TOuvrages.FieldByName('TITRE').Text;
EditPrets.DBEdit3.Text:=Data.TOuvrages.FieldByName('AUTEUR').Text;
EditPrets.DBEdit4.Text:=Data.TOuvrages.FieldByName('LANGUE').Text;
EditPrets.DBEdit5.Text:=Data.TOuvrages.FieldByName('TYPE_OUVRAGE').Text;
TransPrets.Hide;
Data.TOuvrages.Filtered:=false;
end;

procedure TTransPrets.DBGrid1DblClick(Sender: TObject);
begin
SpeedButton1Click(Self);
end;

procedure TTransPrets.SpeedButton3Click(Sender: TObject);
begin
EditPrets.DBEdit6.Text:=Data.TEtudiants.FieldByName('N_CARTE').Text;
EditPrets.DBEdit7.Text:=Data.TEtudiants.FieldByName('NOM').Text;
EditPrets.DBEdit8.Text:=Data.TEtudiants.FieldByName('PRENOM').Text;
EditPrets.DBEdit12.Text:=Data.TEtudiants.FieldByName('CLASSE').Text;
TransPrets.Hide;
Data.TEtudiants.Filtered:=false;
end;

procedure TTransPrets.SpeedButton4Click(Sender: TObject);
begin
TransPrets.Hide;
end;

procedure TTransPrets.DBGrid2DblClick(Sender: TObject);
begin
SpeedButton3Click(self);
end;

end.
