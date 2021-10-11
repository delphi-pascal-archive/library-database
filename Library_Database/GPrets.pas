unit GPrets;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, DBActns, ActnList, Buttons, ExtCtrls,DB,DBTables;

type
  TEditPrets = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Panel2: TPanel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Button8: TButton;
    Button5: TButton;
    Button9: TButton;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    Button6: TButton;
    Button7: TButton;
    Button10: TButton;
    Action: TActionList;
    DataSetFirst1: TDataSetFirst;
    DataSetPrior1: TDataSetPrior;
    DataSetNext1: TDataSetNext;
    DataSetLast1: TDataSetLast;
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
    Panel1: TPanel;
    Label11: TLabel;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    Panel3: TPanel;
    Label12: TLabel;
    ComboBox2: TComboBox;
    Edit2: TEdit;
    BitBtn6: TBitBtn;
    Label14: TLabel;
    DBEdit12: TDBEdit;
    Label15: TLabel;
    DBEdit13: TDBEdit;
    BitBtn7: TBitBtn;
    procedure Button8Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure ComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox2KeyPress(Sender: TObject; var Key: Char);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  EditPrets: TEditPrets;
  rep:integer;
implementation

uses DataModul, Trans;

{$R *.dfm}

procedure TEditPrets.Button8Click(Sender: TObject);
begin
Data.TPrets.Insert;
Button6.Enabled:= true;
Button7.Enabled:= true;
BUTTON8.Enabled:= false;
BUTTON5.Enabled:= false;
BUTTON9.Enabled:= false;
Button10.Enabled:= false;
Action.State:=asSuspendedEnabled;
BitBtn5.Enabled:=false;
BitBtn2.Enabled:=false;
BitBtn3.Enabled:=false;
BitBtn4.Enabled:=false;
Panel1.Enabled:=false;
Panel3.Enabled:=false;
DBEdit9.text:=DateToStr(now);
DBEdit10.text:=DateToStr(now+15);
end;

procedure TEditPrets.Button5Click(Sender: TObject);
begin
if (Data.TPrets.RecordCount<>0) then begin
Data.TPrets.Edit;
Button6.Enabled:= true;
Button7.Enabled:= true;
BUTTON8.Enabled:= false;
BUTTON5.Enabled:= false;
BUTTON9.Enabled:= false;
Button10.Enabled:= false;
Action.State:=asSuspendedEnabled;
BitBtn5.Enabled:=false;
BitBtn2.Enabled:=false;
BitBtn3.Enabled:=false;
BitBtn4.Enabled:=false;
end else begin ShowMessage('Impossible d''effectuer cette opération sur un ensemble de données vide'); end;
end;

procedure TEditPrets.Button9Click(Sender: TObject);
begin
if (Data.TPrets.RecordCount<>0) then
begin
rep:= MessageBox(Handle,'Etes-vous sûr de vouloir supprimer cet enregistrement ?',
 'Avertissement',MB_YESNO or MB_ICONSTOP ) ;
 if (rep =IDYES)  then Data.TPrets.Delete;
end else begin ShowMessage('Impossible d''effectuer cette opération sur un ensemble de données vide'); end;
end;

procedure TEditPrets.Button6Click(Sender: TObject);
begin
Data.TPrets.Post;
ShowMessage('Enregistré avec succès');
Button6.Enabled:= false;
Button7.Enabled:= false;
BUTTON8.Enabled:= TRUE;
BUTTON5.Enabled:= TRUE;
BUTTON9.Enabled:= TRUE;
Button10.Enabled:= true;
BitBtn5.Enabled:=true;
BitBtn2.Enabled:=true;
BitBtn3.Enabled:=true;
BitBtn4.Enabled:=true;
Action.State:=asNormal;
Panel1.Enabled:=false;
Panel3.Enabled:=false;
end;

procedure TEditPrets.Button7Click(Sender: TObject);
begin
Data.TPrets.Cancel;
Button6.Enabled:= false;
Button7.Enabled:= false;
BUTTON8.Enabled:= TRUE;
BUTTON5.Enabled:= TRUE;
BUTTON9.Enabled:= TRUE;
Button10.Enabled:= true;
Action.State:=asNormal;
BitBtn5.Enabled:=true;
BitBtn2.Enabled:=true;
BitBtn3.Enabled:=true;
BitBtn4.Enabled:=true;
Panel1.Enabled:=true;
Panel3.Enabled:=true;
end;

procedure TEditPrets.Button10Click(Sender: TObject);
begin
EditPrets.Hide;
end;

procedure TEditPrets.BitBtn1Click(Sender: TObject);
begin
if Edit1.text=''then exit;
// Appliquer le filtre
Data.TOuvrages.Filter:= ComboBox1.text+'= ''' + Edit1.Text + '*''';
// Accepter le filtre
Data.TOuvrages.Filtered :=true ;
// s'il y a aucun enregistrement annuler
if Data.TOuvrages.RecordCount= 0 then begin
ShowMessage('Aucun enregistrement trouvé');
exit; end;
// Afficher Consultations
TransPrets.PageControl1.ActivePageIndex:=0;
TransPrets.show;
end;

procedure TEditPrets.BitBtn6Click(Sender: TObject);
begin
if Edit2.text='' then exit;
// Appliquer le filtre
Data.TEtudiants.Filter:= ComboBox2.text+'= ''' + Edit2.Text + '*''';
// Accepter le filtre
Data.TEtudiants.Filtered :=true ;
// s'il y a aucun enregistrement annuler
if Data.TEtudiants.RecordCount= 0 then begin
ShowMessage('Aucun enregistrement trouvé');
exit; end;
// Afficher Consultations
TransPrets.PageControl1.ActivePageIndex:=1;
TransPrets.show;
end;

procedure TEditPrets.ComboBox1KeyPress(Sender: TObject; var Key: Char);
begin
key:=#0;
end;

procedure TEditPrets.ComboBox2KeyPress(Sender: TObject; var Key: Char);
begin
key:=#0;
end;

end.
