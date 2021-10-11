unit GPassR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls;

type
  TpasswordR = class(TForm)
    Label1: TLabel;
    Image1: TImage;
    Edit1: TEdit;
    Button2: TButton;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  passwordR: TpasswordR;

implementation

uses ReglementPret;

{$R *.dfm}

procedure TpasswordR.Button1Click(Sender: TObject);
begin
  if Edit1.Text='utilisateur1' then //Si le texte de l'edit est "utilisateur1" alors...
Reglement.show                      //On entre dans l gestion des lecteur
else                               //Sinon...
ShowMessage('Mot de passe incorrect !');
Edit1.Text:='';       //On affiche un message indiquant que le mot de passe est incorrect
passwordR.Hide;
end;

procedure TpasswordR.Button2Click(Sender: TObject);
begin
close;
end;

end.
