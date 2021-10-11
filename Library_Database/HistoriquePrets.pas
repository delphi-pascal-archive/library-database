unit HistoriquePrets;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, DB, DBTables, ComCtrls, StdCtrls,
  Buttons, IBCustomDataSet, IBQuery;

type
  THPrets = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel2: TPanel;
    Panel1: TPanel;
    Label1: TLabel;
    Button1: TButton;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    Label3: TLabel;
    Label4: TLabel;
    DBGrid1: TDBGrid;
    Label5: TLabel;
    Label7: TLabel;
    Memo1: TMemo;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Image1: TImage;
    SpeedButton2: TSpeedButton;
    procedure Button1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  HPrets: THPrets;
  con:string;
implementation

uses DataModul, QROuvrages;

{$R *.dfm}

procedure THPrets.Button1Click(Sender: TObject);
begin

HPrets.Hide;
end;

procedure THPrets.SpeedButton2Click(Sender: TObject);
begin
Edit1.text:='';
end;

procedure THPrets.SpeedButton1Click(Sender: TObject);
begin
 if Edit1.text=''then exit;
// Appliquer le filtre
Data.TPrets.Filter:= ComboBox1.text+'= ''' + Edit1.Text + '*''';
// Accepter le filtre
Data.TPrets.Filtered :=true ;
// s'il y a aucun enregistrement annuler
if Data.TPrets.RecordCount= 0 then begin
ShowMessage('Aucun enregistrement trouvé');
exit; end;
// Afficher Consultations
HPrets.PageControl1.ActivePageIndex:=1;
HPrets.show;
end;

procedure THPrets.Button2Click(Sender: TObject);
begin
EtatOuvrages.QRLabel1.Caption:='Liste des ouvrages non redus';
EtatOuvrages.Preview;
end;

end.
