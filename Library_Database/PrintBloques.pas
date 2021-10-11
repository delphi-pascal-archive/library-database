unit PrintBloques;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DBCtrls, Buttons, ExtCtrls, StdCtrls;

type
  TPBloques = class(TForm)
    Panel3: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    DBNavigator1: TDBNavigator;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Label2: TLabel;
    Label1: TLabel;
    Edit2: TEdit;
    Edit1: TEdit;
    SpeedButton4: TSpeedButton;
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  PBloques: TPBloques;

implementation

uses DataModul, QREtudiants;

{$R *.dfm}

procedure TPBloques.SpeedButton3Click(Sender: TObject);
begin
Data.TEtudiants.Filtered :=false ;
PBloques.Hide;
end;

procedure TPBloques.FormShow(Sender: TObject);
begin
Data.TEtudiants.Filter:= 'STATUT= ''' + 'BLOQUE' + '*''';
Data.TEtudiants.Filtered :=true ;
if Data.TEtudiants.RecordCount= 0 then ShowMessage('Aucun étudiant bloqué');
end;

procedure TPBloques.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
Data.TEtudiants.Filtered :=false ;
end;

procedure TPBloques.SpeedButton1Click(Sender: TObject);
begin
EtatListeEtudiants.QRLabel1.Caption:='Liste des étudiants suspendus';
EtatListeEtudiants.print;
end;

procedure TPBloques.SpeedButton2Click(Sender: TObject);
begin
EtatListeEtudiants.QRLabel1.Caption:='Liste des étudiants suspendus';
EtatListeEtudiants.Preview;
end;

procedure TPBloques.SpeedButton4Click(Sender: TObject);
begin
if Edit1.text=''then exit;
// Appliquer le filtre
Data.TEtudiants.Filter:= Edit2.text+'= ''' + Edit1.Text + '*''';
// Accepter le filtre
Data.TEtudiants.Filtered :=true ;
// s'il y a aucun enregistrement annuler
if Data.TEtudiants.RecordCount= 0 then begin
ShowMessage('Aucun enregistrement trouvé');
exit; end;
// Afficher Consultations
PBloques.show;
end;

end.
