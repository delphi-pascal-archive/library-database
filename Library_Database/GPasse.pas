unit GPasse;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls;

type
  Tpassword = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    Edit1: TEdit;
    Button2: TButton;
    Image1: TImage;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  password: Tpassword;

implementation

uses GPrets;

{$R *.dfm}

procedure Tpassword.Button1Click(Sender: TObject);
begin
 if Edit1.Text='utilisateur2' then //Si le texte de l'edit est "delphi" alors...
EditPrets.show                      //On entre dans l gestion du Prets
else                               //Sinon...
ShowMessage('Mot de passe incorrect !');
Edit1.Text:='';       //On affiche un message indiquant que le mot de passe est incorrect
password.Hide;
end;

procedure Tpassword.Button2Click(Sender: TObject);
begin
close;
end;

end.
