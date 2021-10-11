unit GPasseO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls;

type
  TpasswordO = class(TForm)
    Label1: TLabel;
    Image1: TImage;
    Button1: TButton;
    Edit1: TEdit;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  passwordO: TpasswordO;

implementation

uses GOuvrages, GPasse;

{$R *.dfm}

procedure TpasswordO.Button1Click(Sender: TObject);
begin
  if Edit1.Text='utilisateur1' then //Si le texte de l'edit est "utilisateur1" alors...
EditOuvrages.show                      //On entre dans l gestion des Ouvrages
else                               //Sinon...
ShowMessage('Mot de passe incorrect !');
Edit1.Text:='';       //On affiche un message indiquant que le mot de passe est incorrect
passwordO.Hide;
end;

procedure TpasswordO.Button2Click(Sender: TObject);
begin
close;
end;

end.
