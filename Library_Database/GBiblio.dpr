program GBiblio;

uses
  Forms,
  AFirstPage in 'AFirstPage.pas' {Afirst},
  GOuvrages in 'GOuvrages.pas' {EditOuvrages},
  DataModul in 'DataModul.pas' {Data: TDataModule},
  PrintOuvrage in 'PrintOuvrage.pas' {POuvrages},
  ReashOuv in 'ReashOuv.pas' {RechercherOuvrages},
  GEtudiants in 'GEtudiants.pas' {EditEtudiants},
  PrintEtudiants in 'PrintEtudiants.pas' {PEtudiants},
  GPrets in 'GPrets.pas' {EditPrets},
  Trans in 'Trans.pas' {TransPrets},
  ReglementPret in 'ReglementPret.pas' {Reglement},
  HistoriquePrets in 'HistoriquePrets.pas' {HPrets},
  EtudiantsBloques in 'EtudiantsBloques.pas' {Bloques},
  PrintBloques in 'PrintBloques.pas' {PBloques},
  PrintOuvNnRendus in 'PrintOuvNnRendus.pas' {PONRendus},
  QROuvrages in 'QROuvrages.pas' {EtatOuvrages: TQuickRep},
  QRFOuvrages in 'QRFOuvrages.pas' {EtatFicheOuvrages: TQuickRep},
  QRCarteEtudiants in 'QRCarteEtudiants.pas' {EtatEtudiants: TQuickRep},
  QREtudiants in 'QREtudiants.pas' {EtatListeEtudiants: TQuickRep},
  GPasse in 'GPasse.pas' {password},
  GPasseO in 'GPasseO.pas' {passwordO},
  GPasseL in 'GPasseL.pas' {passwordL},
  Gpropos in 'Gpropos.pas' {Apropos},
  GPassR in 'GPassR.pas' {passwordR};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TAfirst, Afirst);
  Application.CreateForm(TEditOuvrages, EditOuvrages);
  Application.CreateForm(TData, Data);
  Application.CreateForm(TPOuvrages, POuvrages);
  Application.CreateForm(TRechercherOuvrages, RechercherOuvrages);
  Application.CreateForm(TEditEtudiants, EditEtudiants);
  Application.CreateForm(TPEtudiants, PEtudiants);
  Application.CreateForm(TEditPrets, EditPrets);
  Application.CreateForm(TTransPrets, TransPrets);
  Application.CreateForm(TReglement, Reglement);
  Application.CreateForm(THPrets, HPrets);
  Application.CreateForm(TBloques, Bloques);
  Application.CreateForm(TPBloques, PBloques);
  Application.CreateForm(TPONRendus, PONRendus);
  Application.CreateForm(TEtatOuvrages, EtatOuvrages);
  Application.CreateForm(TEtatFicheOuvrages, EtatFicheOuvrages);
  Application.CreateForm(TEtatEtudiants, EtatEtudiants);
  Application.CreateForm(TEtatListeEtudiants, EtatListeEtudiants);
  Application.CreateForm(Tpassword, password);
  Application.CreateForm(TpasswordO, passwordO);
  Application.CreateForm(TpasswordL, passwordL);
  Application.CreateForm(TApropos, Apropos);
  Application.CreateForm(TpasswordR, passwordR);
  Application.Run;
end.
