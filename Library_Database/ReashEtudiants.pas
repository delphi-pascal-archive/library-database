unit ReashEtudiants;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, DB, DBTables, Grids, DBGrids, Buttons,
  ExtCtrls, ComCtrls, IBCustomDataSet, IBQuery;

type
  TRechercherEtudiants = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel3: TPanel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Panel4: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    TabSheet2: TTabSheet;
    Panel5: TPanel;
    DBGrid1: TDBGrid;
    Button1: TButton;
    DataSource: TDataSource;
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
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Query: TIBQuery;
    procedure SpeedButton2Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  RechercherEtudiants: TRechercherEtudiants;
  con:string;
implementation

uses DataModul;

{$R *.dfm}

procedure TRechercherEtudiants.SpeedButton2Click(Sender: TObject);
begin
{Query.Active:=false;
Query.SQL.Clear;
Query.SQL.Add( 'Select * From Etudiants.DB');
Query.SQL.Add ('WHERE (Upper(N_CARTE) LIKE "%'+ AnsiUpperCase(Edit1.Text)+'%")');
Query.SQL.Add (con+'(Upper(NOM) LIKE "%'+ AnsiUpperCase(Edit2.Text)+'%")');
Query.SQL.Add (con+'(Upper(PRENOM) LIKE "%'+ AnsiUpperCase(Edit3.Text)+'%")');
Query.SQL.Add (con+'(Upper(DATE_NAISSANCE) LIKE "%'+AnsiUpperCase(Edit4.Text) +'%")');
Query.SQL.Add (con+'(Upper(LIEU_NAISSANCE) LIKE "%'+AnsiUpperCase(Edit5.Text) +'%")');
Query.SQL.Add (con+'(Upper(ADRESSE) LIKE "%'+AnsiUpperCase(Edit6.Text) +'%")');
Query.SQL.Add (con+'(Upper(ANNEE_ETUDE) LIKE "%'+AnsiUpperCase(Edit7.Text) +'%")');
Query.SQL.Add (con+'(Upper(SPECIALITE) LIKE "%'+ AnsiUpperCase(Edit8.Text)+'%")');
Query.SQL.Add (con+'(Upper(CLASSE) LIKE "%'+AnsiUpperCase(Edit9.Text) +'%")');
Query.SQL.Add (con+'(Upper(STATUT) LIKE "%'+AnsiUpperCase(Edit10.Text) +'%")');
Query.Active:=true;
if Query.RecordCount<>0 then PageControl1.ActivePageIndex:=1 else ShowMessage('Aucun résultat à afficher');}
end;

procedure TRechercherEtudiants.RadioButton1Click(Sender: TObject);
begin
con:='AND';
end;

procedure TRechercherEtudiants.RadioButton2Click(Sender: TObject);
begin
con:='OR';
end;

procedure TRechercherEtudiants.FormCreate(Sender: TObject);
begin
con:='AND';
end;

procedure TRechercherEtudiants.SpeedButton1Click(Sender: TObject);
begin
Query.Active:=false;
Query.SQL.Clear;
Query.SQL.Add( 'Select * From Etudiants');
Query.Active:=true;
Edit1.Text:='';Edit2.Text:='';Edit3.Text:='';Edit4.Text:='';
Edit5.Text:='';Edit6.Text:='';Edit7.Text:='';Edit8.Text:='';
Edit9.Text:='';Edit10.Text:='';
end;

procedure TRechercherEtudiants.Button1Click(Sender: TObject);
begin
Query.Active:=false;
RechercherEtudiants.Hide;
end;

procedure TRechercherEtudiants.FormShow(Sender: TObject);
begin
Query.Active:=false;
Query.SQL.Clear;
Query.SQL.Add( 'Select * From Etudiants');
Query.Active:=true;
end;

procedure TRechercherEtudiants.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
Query.Active:=false;
end;

end.
