unit ReglementPret;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls,db;

type
  TReglement = class(TForm)
    Panel3: TPanel;
    Label12: TLabel;
    ComboBox2: TComboBox;
    Edit2: TEdit;
    BitBtn6: TBitBtn;
    Panel1: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    DBNavigator1: TDBNavigator;
    SpeedButton3: TSpeedButton;
    Label13: TLabel;
    Timer1: TTimer;
    Panel4: TPanel;
    procedure SpeedButton2Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure ComboBox2KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton3Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Reglement: TReglement;

implementation

uses DataModul;

{$R *.dfm}

procedure TReglement.SpeedButton2Click(Sender: TObject);
begin
Reglement.Hide;
end;

procedure TReglement.BitBtn6Click(Sender: TObject);
begin
if Edit2.Text <> '' then Data.TPrets.Locate(ComboBox2.text,Edit2.Text,[loPartialKey]);
end;

procedure TReglement.FormShow(Sender: TObject);
begin
Data.TPrets.Filter:= 'RENDU= ''' + 'NON' + '*''';
Data.TPrets.Filtered :=true ;
// s'il y a aucun enregistrement annuler
if Data.TPrets.RecordCount= 0 then begin
ShowMessage('Tous les ouvrages sont rendus');
exit; end;
end;

procedure TReglement.SpeedButton1Click(Sender: TObject);
begin
DBEdit11.Text:='OUI';
Data.TPrets.Edit;
Data.TPrets.FieldByName('RENDU').Value:='OUI';
Data.TPrets.Post;
end;

procedure TReglement.ComboBox2KeyPress(Sender: TObject; var Key: Char);
begin
key:=#13;
end;

procedure TReglement.SpeedButton3Click(Sender: TObject);
begin
Data.TEtudiants.Locate('N_CARTE',DBEdit6.Text,[loPartialKey]);
Data.TEtudiants.Edit;
Data.TEtudiants.FieldByName('STATUT').Value:='SUSPENDU';
Data.TEtudiants.Post;
if MessageBox(Handle,'Etes-vous sûr de vouloir suspendre ce lecteur ?',
 'Avertissement',MB_YESNO or MB_ICONSTOP )  =IDYES  then Data.TPrets.Delete;
end;

procedure TReglement.Timer1Timer(Sender: TObject);
begin
Panel4.caption:= 'Le ' +Datetostr(now);
end;

end.
