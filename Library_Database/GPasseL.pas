unit GPasseL;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls;

type
  TpasswordL = class(TForm)
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
  passwordL: TpasswordL;

implementation

uses GEtudiants;

{$R *.dfm}

procedure TpasswordL.Button1Click(Sender: TObject);
begin
   if Edit1.Text='utilisateur1' then //Si le texte de l'edit est "utilisateur1" alors...
EditEtudiants.show                      //On entre dans l gestion des lecteur
else                               //Sinon...
ShowMessage('Mot de passe incorrect !');
Edit1.Text:='';       //On affiche un message indiquant que le mot de passe est incorrect
passwordL.Hide;
end;

procedure TpasswordL.Button2Click(Sender: TObject);
begin
close;
end;

end.
