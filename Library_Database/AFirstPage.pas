unit AFirstPage;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, ExtCtrls, ComCtrls, Gauges, Buttons, jpeg,
  XPMan;

type
  TAfirst = class(TForm)
    MainMenu1: TMainMenu;
    Fichier1: TMenuItem;
    Gestiondesmenusdroulants1: TMenuItem;
    Ouvrages1: TMenuItem;
    N1: TMenuItem;
    Quitter1: TMenuItem;
    Etudiants1: TMenuItem;
    Affichier1: TMenuItem;
    Imprimer1: TMenuItem;
    Ouvrages3: TMenuItem;
    Listesdesouvrages1: TMenuItem;
    Ficheparfiche2: TMenuItem;
    Rechercher1: TMenuItem;
    Ouvrages4: TMenuItem;
    N2: TMenuItem;
    Panel4: TPanel;
    Label5: TLabel;
    PanelTime: TPanel;
    PanelDate: TPanel;
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel2: TPanel;
    Gauge1: TGauge;
    Label1: TLabel;
    Timer1: TTimer;
    Panel3: TPanel;
    Etudiants3: TMenuItem;
    Listedestudiants2: TMenuItem;
    Ficheparfiche4: TMenuItem;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Label11: TLabel;
    Gestiondesprts1: TMenuItem;
    Nouveau1: TMenuItem;
    Rglement1: TMenuItem;
    Historiquedesprts1: TMenuItem;
    N4: TMenuItem;
    Etudiantsbloqus1: TMenuItem;
    Etudiantsbloqus2: TMenuItem;
    N7: TMenuItem;
    Aproposde1: TMenuItem;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    XPManifest1: TXPManifest;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    Label3: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    ComboBox1: TComboBox;
    procedure Ouvrages1Click(Sender: TObject);
    procedure Listedesouvrages1Click(Sender: TObject);
    procedure Ficheparfiche1Click(Sender: TObject);
    procedure Listesdesouvrages1Click(Sender: TObject);
    procedure Ficheparfiche2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Ouvrages4Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Etudiants1Click(Sender: TObject);
    procedure Listedestudiants1Click(Sender: TObject);
    procedure Ficheparfiche3Click(Sender: TObject);
    procedure Listedestudiants2Click(Sender: TObject);
    procedure Ficheparfiche4Click(Sender: TObject);
    procedure Etudiants4Click(Sender: TObject);
    procedure Nouveau1Click(Sender: TObject);
    procedure Rglement1Click(Sender: TObject);
    procedure Historiquedesprts1Click(Sender: TObject);
    procedure Etudiantsbloqus1Click(Sender: TObject);
    procedure Etudiantsbloqus2Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Quitter1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Aproposde1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Label4Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Afirst: TAfirst;

implementation

uses GOuvrages, AffOuvrages, PrintOuvrage, ReashOuv, GEtudiants,
  AffEtudiants, PrintEtudiants, ReashEtudiants, ReglementPret,
  HistoriquePrets, EtudiantsBloques, PrintBloques, PrintOuvNnRendus,GPrets,
  GPasse, GPasseO, GPasseL, DataModul, Gpropos, GPassR;

{$R *.dfm}

procedure TAfirst.Ouvrages1Click(Sender: TObject);
begin
passwordO.show;
end;

procedure TAfirst.Listedesouvrages1Click(Sender: TObject);
begin
OuvragesAffichier.PageControl1.ActivePageIndex:=0;
OuvragesAffichier.show;
end;

procedure TAfirst.Ficheparfiche1Click(Sender: TObject);
begin
OuvragesAffichier.PageControl1.ActivePageIndex:=1;
OuvragesAffichier.Show;
end;

procedure TAfirst.Listesdesouvrages1Click(Sender: TObject);
begin
POuvrages.PageControl1.ActivePageIndex:=0;
POuvrages.show;
end;

procedure TAfirst.Ficheparfiche2Click(Sender: TObject);
begin
POuvrages.PageControl1.ActivePageIndex:=1;
POuvrages.show;
end;

procedure TAfirst.Timer1Timer(Sender: TObject);
var DateEtHeure : TSystemTime;
begin
PanelDate.caption:= 'Le ' +Datetostr(now);
PanelTime.Caption:= Timetostr(now);
GetSystemTime(DateEtHeure);
Gauge1.Progress:=DateEtHeure.wSecond;
end;

procedure TAfirst.Ouvrages4Click(Sender: TObject);
begin
RechercherOuvrages.PageControl1.ActivePageIndex:=0;
RechercherOuvrages.show;
end;

procedure TAfirst.BitBtn2Click(Sender: TObject);
begin
Edit1.Text:='';
end;

procedure TAfirst.Etudiants1Click(Sender: TObject);
begin
passwordL.show;
end;

procedure TAfirst.Listedestudiants1Click(Sender: TObject);
begin
EtudiantsAffichier.PageControl1.ActivePageIndex:=0;
EtudiantsAffichier.show;
end;

procedure TAfirst.Ficheparfiche3Click(Sender: TObject);
begin
EtudiantsAffichier.PageControl1.ActivePageIndex:=1;
EtudiantsAffichier.show;
end;

procedure TAfirst.Listedestudiants2Click(Sender: TObject);
begin
PEtudiants.PageControl1.ActivePageIndex:=0;
PEtudiants.show;
end;

procedure TAfirst.Ficheparfiche4Click(Sender: TObject);
begin
PEtudiants.PageControl1.ActivePageIndex:=1;
PEtudiants.show;
end;

procedure TAfirst.Etudiants4Click(Sender: TObject);
begin
RechercherEtudiants.show;
end;

procedure TAfirst.Nouveau1Click(Sender: TObject);
begin
password.show;
end;

procedure TAfirst.Rglement1Click(Sender: TObject);
begin
passwordR.show;
end;

procedure TAfirst.Historiquedesprts1Click(Sender: TObject);
begin
HPrets.show;
end;

procedure TAfirst.Etudiantsbloqus1Click(Sender: TObject);
begin
Bloques.show;
end;

procedure TAfirst.Etudiantsbloqus2Click(Sender: TObject);
begin
PBloques.show;
end;

procedure TAfirst.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
canclose:=false;
if MessageBox(Handle,'Etes-vous sûr de vouloir quitter GBiblio ?',
 'Avertissement',MB_YESNO or MB_ICONSTOP ) =IDYES  then application.Terminate;
end;

procedure TAfirst.Quitter1Click(Sender: TObject);
begin
if MessageBox(Handle,'Etes-vous sûr de vouloir quitter GBiblio ?',
 'Avertissement',MB_YESNO or MB_ICONSTOP ) =IDYES  then application.Terminate;
end;

procedure TAfirst.SpeedButton1Click(Sender: TObject);
begin
if MessageBox(Handle,'Etes-vous sûr de vouloir quitter GBiblio ?',
 'Avertissement',MB_YESNO or MB_ICONSTOP ) =IDYES  then application.Terminate;
end;

procedure TAfirst.Aproposde1Click(Sender: TObject);
begin
Apropos.Show;
end;

procedure TAfirst.SpeedButton2Click(Sender: TObject);
begin
passwordO.show; 
end;

procedure TAfirst.SpeedButton3Click(Sender: TObject);
begin
passwordL.show;
end;

procedure TAfirst.SpeedButton4Click(Sender: TObject);
begin
password.show;
end;

procedure TAfirst.BitBtn1Click(Sender: TObject);
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

procedure TAfirst.Label4Click(Sender: TObject);
begin
passwordO.show;
end;

end.
