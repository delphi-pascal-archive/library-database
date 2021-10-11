unit GOuvrages;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls, DBActns, ActnList;

type
  TEditOuvrages = class(TForm)
    Panel1: TPanel;
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
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    Label11: TLabel;
    Action: TActionList;
    DataSetFirst1: TDataSetFirst;
    DataSetPrior1: TDataSetPrior;
    DataSetNext1: TDataSetNext;
    DataSetLast1: TDataSetLast;
    DBComboBox1: TDBComboBox;
    DBComboBox2: TDBComboBox;
    DBComboBox3: TDBComboBox;
    DBComboBox4: TDBComboBox;
    DBComboBox5: TDBComboBox;
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
  EditOuvrages: TEditOuvrages;
  rep:integer;
implementation

uses DataModul;

{$R *.dfm}

procedure TEditOuvrages.Button8Click(Sender: TObject);
begin
Data.TOuvrages.Insert;
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

procedure TEditOuvrages.Button5Click(Sender: TObject);
begin
if (Data.TOuvrages.RecordCount<>0) then begin
Data.TOuvrages.Edit;
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

procedure TEditOuvrages.Button9Click(Sender: TObject);
begin
if (Data.TOuvrages.RecordCount<>0) then
begin
rep:= MessageBox(Handle,'Etes-vous sûr de vouloir supprimer cet enregistrement ?',
 'Avertissement',MB_YESNO or MB_ICONSTOP ) ;
 if (rep =IDYES)  then Data.TOuvrages.Delete;
end else begin ShowMessage('Impossible d''effectuer cette opération sur un ensemble de données vide'); end;
end;

procedure TEditOuvrages.Button6Click(Sender: TObject);
begin
Data.TOuvrages.Post;
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

procedure TEditOuvrages.Button7Click(Sender: TObject);
begin
Data.TOuvrages.Cancel;
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

procedure TEditOuvrages.Button10Click(Sender: TObject);
begin
EditOuvrages.Hide;
end;

end.
