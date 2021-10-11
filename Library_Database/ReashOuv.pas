unit ReashOuv;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, Buttons, StdCtrls, ExtCtrls, ComCtrls, DB,
  DBTables, IBCustomDataSet, IBQuery, XPMan;

type
  TRechercherOuvrages = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel5: TPanel;
    Button1: TButton;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Edit1: TEdit;
    ComboBox1: TComboBox;
    Label5: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    SpeedButton2: TSpeedButton;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    Label8: TLabel;
    Label6: TLabel;
    Image1: TImage;
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  RechercherOuvrages: TRechercherOuvrages;
  con:string;
implementation

uses DataModul;

{$R *.dfm}

procedure TRechercherOuvrages.SpeedButton2Click(Sender: TObject);
begin
Edit1.text:='';
end;

procedure TRechercherOuvrages.SpeedButton1Click(Sender: TObject);
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
RechercherOuvrages.PageControl1.ActivePageIndex:=1;
RechercherOuvrages.show;
end;

procedure TRechercherOuvrages.Button1Click(Sender: TObject);
begin

RechercherOuvrages.Hide;
end;

end.
