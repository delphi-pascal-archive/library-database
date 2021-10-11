unit AffEtudiants;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, Buttons, StdCtrls, Mask, Grids, DBGrids, ExtCtrls,
  ComCtrls;

type
  TEtudiantsAffichier = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    Panel3: TPanel;
    SpeedButton1: TSpeedButton;
    DBNavigator1: TDBNavigator;
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
    DBMemo1: TDBMemo;
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  EtudiantsAffichier: TEtudiantsAffichier;

implementation

uses DataModul;

{$R *.dfm}

procedure TEtudiantsAffichier.SpeedButton1Click(Sender: TObject);
begin
EtudiantsAffichier.hide;
end;

end.
