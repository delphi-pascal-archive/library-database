unit GEtudiants;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBActns, ActnList, StdCtrls, Buttons, ExtCtrls, DBCtrls, Mask;

type
  TEditEtudiants = class(TForm)
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
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBMemo1: TDBMemo;
    DBComboBox1: TDBComboBox;
    Label12: TLabel;
    Label13: TLabel;
    procedure Button8Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  EditEtudiants: TEditEtudiants;
  rep:integer;
implementation

uses DataModul;

{$R *.dfm}

procedure TEditEtudiants.Button8Click(Sender: TObject);
begin
Data.TEtudiants.Insert;
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
end;

procedure TEditEtudiants.Button5Click(Sender: TObject);
begin
if (Data.TEtudiants.RecordCount<>0) then
 begin
Data.TEtudiants.Edit;
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
end
else
begin ShowMessage('Impossible d''effectuer cette opération sur un ensemble de données vide');
end;
end;

procedure TEditEtudiants.Button9Click(Sender: TObject);
begin
if (Data.TEtudiants.RecordCount<>0) then
begin
rep:= MessageBox(Handle,'Etes-vous sûr de vouloir supprimer cet enregistrement ?',
 'Avertissement',MB_YESNO or MB_ICONSTOP ) ;
 if (rep =IDYES)  then Data.TEtudiants.Delete;
end else begin ShowMessage('Impossible d''effectuer cette opération sur un ensemble de données vide'); end;
end;

procedure TEditEtudiants.Button6Click(Sender: TObject);
begin
Data.TEtudiants.Post;
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
end;

procedure TEditEtudiants.Button7Click(Sender: TObject);
begin
Data.TEtudiants.Cancel;
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
end;

procedure TEditEtudiants.Button10Click(Sender: TObject);
begin
EditEtudiants.Hide;
end;

end.
