unit EtudiantsBloques;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, DBCtrls, ExtCtrls, Grids, DBGrids, StdCtrls;

type
  TBloques = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBNavigator1: TDBNavigator;
    SpeedButton1: TSpeedButton;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    SpeedButton2: TSpeedButton;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Bloques: TBloques;

implementation

uses DataModul;

{$R *.dfm}

procedure TBloques.SpeedButton1Click(Sender: TObject);
begin
Bloques.Hide;
end;

procedure TBloques.FormShow(Sender: TObject);
begin
Data.TEtudiants.Filter:= 'STATUT= ''' + 'BLOQUE' + '*''';
Data.TEtudiants.Filtered :=true ;
if Data.TEtudiants.RecordCount=0 then ShowMessage('Aucun étudiant bloqués');
end;

procedure TBloques.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
Data.TOuvrages.Filtered :=false ;
end;

procedure TBloques.SpeedButton2Click(Sender: TObject);
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
Bloques.show;
end;

end.
