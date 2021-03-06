{***********UNITE*************************************************
Auteur  ...... : Vincent Laroche
Cr�� le ...... : 31/03/2005
Modifi� le ... : 25/01/2006
Description .. : Remplac� en eAGL par BALBUDTEGES_TOF.PAS
Suite ........ : Lek
Suite ........ : Je change le nom 
Suite ........ : BalBudteGenSec --> BalBudteGenSecQR 
Suite ........ : pour �viter le doublon avec g�n�rateur �tat
Mots clefs ... : 
*****************************************************************}
unit QRBLteGS;

interface      

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QR, DB,
  {$IFNDEF DBXPRESS}dbtables,{$ELSE}uDbxDataSet,{$ENDIF}
  Hctrls, Spin, Menus, hmsgbox, HQuickrp, StdCtrls,
  Buttons, ExtCtrls, Mask, Hcompte, ComCtrls, UtilEdt, HEnt1, Ent1,
  CpteUtil, EdtLegal, CritEDT, HQry, HSysMenu,UtilEdt1, QRRupt, Calcole,
  HTB97, HPanel, UiUtil,
  uLibWindows ; // TraductionTHMultiValComboBox  // FQ 16536 SBO 18/10/2005

procedure BalBudteGenSecQR ;
procedure BalBudteGenSecNature ;
procedure BalBudteGenSecZoom(Crit : TCritEdt) ;

type
  TFQRBLteGS = class(TFQR)
    TitreColCpt: TQRLabel;
    Col1: TQRLabel;
    Col2: TQRLabel;
    col3: TQRLabel;
    Col4: TQRLabel;
    Col5: TQRLabel;
    Col6: TQRLabel;
    ColTot: TQRLabel;
    TITRE1REP: TQRLabel;
    BFPrimaire: TQRBand;
    TITRE2REP: TQRLabel;
    MsgBox: THMsgBox;
    Bevel3: TBevel;
    BLibre: TQRBand;
    IniLibre: TQRLabel;
    IniLibreTotal: TQRLabel;
    DLMulti: TQRDetailLink;
    TFJournal: THLabel;
    FJournal: THValComboBox;
    FPeriode1: THValComboBox;
    TFExercice_: TLabel;
    FExercice_: THValComboBox;
    FValide: TCheckBox;
    Col7: TQRLabel;
    Col8: TQRLabel;
    Col9: TQRLabel;
    Col10: TQRLabel;
    Col11: TQRLabel;
    Col12: TQRLabel;
    TRJournal: TQRLabel;
    RJournal: TQRLabel;
    QRLabel3: TQRLabel;
    RExercice_: TQRLabel;
    QRLabel17: TQRLabel;
    RValide: TQRLabel;
    TFRESOL: THLabel;
    FRESOL: THValComboBox;
    TFNatBud: THLabel;
    TFCoef: THLabel;
    TRNatBud: TQRLabel;
    RNatBud: TQRLabel;
    TRCoef: TQRLabel;
    RTaux: TQRLabel;
    TFBG_BUDGENE: TQRLabel;
    TFBG_LIBELLE: TQRLabel;
    BG_BUDGENE_: TQRLabel;
    BudTotPrim1: TQRLabel;
    BudTotPrim2: TQRLabel;
    BudTotPrim3: TQRLabel;
    BudTotPrim4: TQRLabel;
    BudTotPrim5: TQRLabel;
    BudTotPrim6: TQRLabel;
    BudTotPrim7: TQRLabel;
    BudTotPrim8: TQRLabel;
    BudTotPrim9: TQRLabel;
    BudTotPrim10: TQRLabel;
    BudTotPrim11: TQRLabel;
    BudTotPrim12: TQRLabel;
    BudTotPrimTotal: TQRLabel;
    REPORTCOL1: TQRLabel;
    REPORTCOL2: TQRLabel;
    REPORTCOL3: TQRLabel;
    REPORTCOL4: TQRLabel;
    REPORTCOL5: TQRLabel;
    REPORTCOL6: TQRLabel;
    REPORTCOL7: TQRLabel;
    REPORTCOL8: TQRLabel;
    REPORTCOL9: TQRLabel;
    REPORTCOL10: TQRLabel;
    REPORTCOL11: TQRLabel;
    REPORTCOL12: TQRLabel;
    REPORTTOTAL1: TQRLabel;
    REPORTCOL13: TQRLabel;
    REPORTCOL14: TQRLabel;
    REPORTCOL15: TQRLabel;
    REPORTCOL16: TQRLabel;
    REPORTCOL17: TQRLabel;
    REPORTCOL18: TQRLabel;
    REPORTCOL19: TQRLabel;
    REPORTCOL20: TQRLabel;
    REPORTCOL21: TQRLabel;
    REPORTCOL22: TQRLabel;
    REPORTCOL23: TQRLabel;
    REPORTCOL24: TQRLabel;
    REPORTTOTAL2: TQRLabel;
    IniLibre1: TQRLabel;
    IniLibre2: TQRLabel;
    IniLibre3: TQRLabel;
    IniLibre4: TQRLabel;
    IniLibre5: TQRLabel;
    IniLibre6: TQRLabel;
    IniLibre7: TQRLabel;
    IniLibre8: TQRLabel;
    IniLibre9: TQRLabel;
    IniLibre10: TQRLabel;
    IniLibre11: TQRLabel;
    IniLibre12: TQRLabel;
    FRealise: TCheckBox;
    BSecondaire: TQRBand;
    IniGen: TQRLabel;
    RevGen: TQRLabel;
    ReaGen: TQRLabel;
    EcaGen: TQRLabel;
    IniGenCum1: TQRLabel;
    RevGenCum1: TQRLabel;
    ReaGenCum1: TQRLabel;
    EcaGenCum1: TQRLabel;
    IniGenCum2: TQRLabel;
    RevGenCum2: TQRLabel;
    ReaGenCum2: TQRLabel;
    EcaGenCum2: TQRLabel;
    IniGenCum3: TQRLabel;
    RevGenCum3: TQRLabel;
    ReaGenCum3: TQRLabel;
    EcaGenCum3: TQRLabel;
    IniGenCum4: TQRLabel;
    RevGenCum4: TQRLabel;
    ReaGenCum4: TQRLabel;
    EcaGenCum4: TQRLabel;
    IniGenCum5: TQRLabel;
    RevGenCum5: TQRLabel;
    ReaGenCum5: TQRLabel;
    EcaGenCum5: TQRLabel;
    IniGenCum6: TQRLabel;
    RevGenCum6: TQRLabel;
    ReaGenCum6: TQRLabel;
    EcaGenCum6: TQRLabel;
    IniGenCum7: TQRLabel;
    RevGenCum7: TQRLabel;
    ReaGenCum7: TQRLabel;
    EcaGenCum7: TQRLabel;
    IniGenCum8: TQRLabel;
    RevGenCum8: TQRLabel;
    ReaGenCum8: TQRLabel;
    EcaGenCum8: TQRLabel;
    IniGenCum9: TQRLabel;
    RevGenCum9: TQRLabel;
    ReaGenCum9: TQRLabel;
    EcaGenCum9: TQRLabel;
    IniGenCum10: TQRLabel;
    RevGenCum10: TQRLabel;
    ReaGenCum10: TQRLabel;
    EcaGenCum10: TQRLabel;
    EcaGenCum11: TQRLabel;
    ReaGenCum11: TQRLabel;
    RevGenCum11: TQRLabel;
    IniGenCum11: TQRLabel;
    IniGenCum12: TQRLabel;
    RevGenCum12: TQRLabel;
    ReaGenCum12: TQRLabel;
    EcaGenCum12: TQRLabel;
    IniGenTotal: TQRLabel;
    RevGenTotal: TQRLabel;
    ReaGenTotal: TQRLabel;
    EcaGenTotal: TQRLabel;
    DLSec: TQRDetailLink;
    QRLabel2: TQRLabel;
    RRealise: TQRLabel;
    BudTotal: TQRLabel;
    BudTotal1: TQRLabel;
    BudTotal2: TQRLabel;
    BudTotal3: TQRLabel;
    BudTotal4: TQRLabel;
    BudTotal5: TQRLabel;
    BudTotal6: TQRLabel;
    BudTotal7: TQRLabel;
    BudTotal8: TQRLabel;
    BudTotal9: TQRLabel;
    BudTotal10: TQRLabel;
    ReaTotal: TQRLabel;
    ReaTotal1: TQRLabel;
    ReaTotal2: TQRLabel;
    ReaTotal3: TQRLabel;
    ReaTotal4: TQRLabel;
    ReaTotal5: TQRLabel;
    ReaTotal6: TQRLabel;
    ReaTotal7: TQRLabel;
    ReaTotal8: TQRLabel;
    ReaTotal9: TQRLabel;
    ReaTotal10: TQRLabel;
    EcaTotal: TQRLabel;
    EcaTotal1: TQRLabel;
    EcaTotal2: TQRLabel;
    EcaTotal3: TQRLabel;
    EcaTotal4: TQRLabel;
    EcaTotal5: TQRLabel;
    EcaTotal6: TQRLabel;
    EcaTotal7: TQRLabel;
    EcaTotal8: TQRLabel;
    EcaTotal9: TQRLabel;
    EcaTotal10: TQRLabel;
    BudTotal11: TQRLabel;
    ReaTotal11: TQRLabel;
    EcaTotal11: TQRLabel;
    EcaTotal12: TQRLabel;
    ReaTotal12: TQRLabel;
    BudTotal12: TQRLabel;
    TotTotalB: TQRLabel;
    TotTotalR: TQRLabel;
    TotTotalE: TQRLabel;
    QSecond: TQuery;
    SSecond: TDataSource;
    TFJokerSect: THLabel;
    TFSection: THLabel;
    TFaS: TLabel;
    FJokerSect: TEdit;
    FSection1: THCpteEdit;
    FSection2: THCpteEdit;
    TRSection: TQRLabel;
    RSection1: TQRLabel;
    TRaS: TQRLabel;
    RSection2: TQRLabel;
    BHCpt: TQRBand;
    BS_BUDSECT: TQRDBText;
    BS_LIBELLE: TQRLabel;
    DLHsec: TQRDetailLink;
    RevLibre: TQRLabel;
    RevLibre1: TQRLabel;
    RevLibre2: TQRLabel;
    RevLibre3: TQRLabel;
    RevLibre4: TQRLabel;
    RevLibre5: TQRLabel;
    RevLibre6: TQRLabel;
    RevLibre7: TQRLabel;
    RevLibre8: TQRLabel;
    RevLibre9: TQRLabel;
    RevLibre10: TQRLabel;
    RevLibre11: TQRLabel;
    RevLibre12: TQRLabel;
    RevLibreTotal: TQRLabel;
    ReaLibre: TQRLabel;
    ReaLibre1: TQRLabel;
    ReaLibre2: TQRLabel;
    ReaLibre3: TQRLabel;
    ReaLibre4: TQRLabel;
    ReaLibre5: TQRLabel;
    ReaLibre6: TQRLabel;
    ReaLibre7: TQRLabel;
    ReaLibre8: TQRLabel;
    ReaLibre9: TQRLabel;
    ReaLibre10: TQRLabel;
    ReaLibre11: TQRLabel;
    ReaLibre12: TQRLabel;
    ReaLibreTotal: TQRLabel;
    EcaLibre: TQRLabel;
    EcaLibre1: TQRLabel;
    EcaLibre2: TQRLabel;
    EcaLibre3: TQRLabel;
    EcaLibre4: TQRLabel;
    EcaLibre5: TQRLabel;
    EcaLibre6: TQRLabel;
    EcaLibre7: TQRLabel;
    EcaLibre8: TQRLabel;
    EcaLibre9: TQRLabel;
    EcaLibre10: TQRLabel;
    EcaLibre11: TQRLabel;
    EcaLibre12: TQRLabel;
    EcaLibreTotal: TQRLabel;
    DLHLibre: TQRDetailLink;
    BRecap: TQRBand;
    IniRecap: TQRLabel;
    IniRecap1: TQRLabel;
    IniRecap2: TQRLabel;
    IniRecap3: TQRLabel;
    IniRecap4: TQRLabel;
    IniRecap5: TQRLabel;
    IniRecap6: TQRLabel;
    IniRecap7: TQRLabel;
    IniRecap8: TQRLabel;
    IniRecap9: TQRLabel;
    IniRecap10: TQRLabel;
    IniRecap11: TQRLabel;
    RevRecap: TQRLabel;
    RevRecap1: TQRLabel;
    RevRecap2: TQRLabel;
    RevRecap3: TQRLabel;
    RevRecap4: TQRLabel;
    RevRecap5: TQRLabel;
    RevRecap6: TQRLabel;
    RevRecap7: TQRLabel;
    RevRecap8: TQRLabel;
    RevRecap9: TQRLabel;
    RevRecap10: TQRLabel;
    RevRecap11: TQRLabel;
    ReaRecap: TQRLabel;
    ReaRecap1: TQRLabel;
    ReaRecap2: TQRLabel;
    ReaRecap3: TQRLabel;
    ReaRecap4: TQRLabel;
    ReaRecap5: TQRLabel;
    ReaRecap6: TQRLabel;
    ReaRecap7: TQRLabel;
    ReaRecap8: TQRLabel;
    ReaRecap9: TQRLabel;
    ReaRecap10: TQRLabel;
    ReaRecap11: TQRLabel;
    EcaRecap: TQRLabel;
    EcaRecap1: TQRLabel;
    EcaRecap2: TQRLabel;
    EcaRecap3: TQRLabel;
    EcaRecap4: TQRLabel;
    EcaRecap5: TQRLabel;
    EcaRecap6: TQRLabel;
    EcaRecap7: TQRLabel;
    EcaRecap8: TQRLabel;
    EcaRecap9: TQRLabel;
    EcaRecap10: TQRLabel;
    EcaRecap11: TQRLabel;
    IniRecap12: TQRLabel;
    RevRecap12: TQRLabel;
    ReaRecap12: TQRLabel;
    EcaRecap12: TQRLabel;
    EcaRecapTotal: TQRLabel;
    ReaRecapTotal: TQRLabel;
    RevRecapTotal: TQRLabel;
    IniRecapTotal: TQRLabel;
    BHRecap: TQRBand;
    BS_BUDSECT2: TQRDBText;
    BS_LIBELLE2: TQRLabel;
    DLRecap: TQRDetailLink;
    DLHRecap: TQRDetailLink;
    ReaTotPrim1: TQRLabel;
    ReaTotPrim2: TQRLabel;
    ReaTotPrim3: TQRLabel;
    ReaTotPrim4: TQRLabel;
    ReaTotPrim5: TQRLabel;
    ReaTotPrim6: TQRLabel;
    ReaTotPrim7: TQRLabel;
    ReaTotPrim8: TQRLabel;
    ReaTotPrim9: TQRLabel;
    ReaTotPrim10: TQRLabel;
    ReaTotPrim11: TQRLabel;
    ReaTotPrim12: TQRLabel;
    ReaTotPrimTotal: TQRLabel;
    EcaTotPrim1: TQRLabel;
    EcaTotPrim2: TQRLabel;
    EcaTotPrim3: TQRLabel;
    EcaTotPrim4: TQRLabel;
    EcaTotPrim5: TQRLabel;
    EcaTotPrim6: TQRLabel;
    EcaTotPrim7: TQRLabel;
    EcaTotPrim8: TQRLabel;
    EcaTotPrim9: TQRLabel;
    EcaTotPrim10: TQRLabel;
    EcaTotPrim11: TQRLabel;
    EcaTotPrim12: TQRLabel;
    EcaTotPrimTotal: TQRLabel;
    BudTotPrim: TQRLabel;
    ReaTotPrim: TQRLabel;
    EcaTotPrim: TQRLabel;
    TFSoldeFormate: THLabel;
    FSoldeFormate: THValComboBox;
    FTaux: THNumEdit;
    TRResol: TQRLabel;
    RResol: TQRLabel;
    BRappelLibreHaut: TQRBand;
    TLibRupt: TQRLabel;
    TCodRupt: TQRLabel;
    BLibreHaut: TQRBand;
    TRappelLibRupt: TQRLabel;
    TRappelCodRupt: TQRLabel;
    DLHRappelLibre: TQRDetailLink;
    FAvecCptSecond: TCheckBox;
    FPeriode2: THValComboBox;
    FNATBUD: THMultiValComboBox; // FQ 16536 SBO 18/10/2005
    procedure BDetailBeforePrint(var PrintBand: Boolean; var Quoi: string);
    procedure BFPrimaireBeforePrint(var PrintBand: Boolean; var Quoi: string);
    procedure BFinEtatBeforePrint(var PrintBand: Boolean; var Quoi: string);
    procedure TOPREPORTBeforePrint(var PrintBand: Boolean; var Quoi: string);
    procedure BOTTOMREPORTBeforePrint(var PrintBand: Boolean; var Quoi: string);
    procedure DLMultiNeedData(var MoreData: Boolean);
    procedure QAfterOpen(DataSet: TDataSet);
    procedure FJournalChange(Sender: TObject);
    procedure FExerciceChange(Sender: TObject);
    procedure FExercice_Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FPeriode1Change(Sender: TObject);
    procedure FPeriode2Change(Sender: TObject);
    procedure BLibreBeforePrint(var PrintBand: Boolean; var Quoi: string);
    procedure BFPrimaireAfterPrint(BandPrinted: Boolean);
    procedure BSecondaireAfterPrint(BandPrinted: Boolean);
    procedure BSecondaireBeforePrint(var PrintBand: Boolean; var Quoi: string);
    procedure QSecondAfterOpen(DataSet: TDataSet);
    procedure FSection1Change(Sender: TObject);
    procedure BHCptBeforePrint(var PrintBand: Boolean; var Quoi: string);
    procedure DLHsecNeedData(var MoreData: Boolean);
    procedure DLHLibreNeedData(var MoreData: Boolean);
    procedure DLHRecapNeedData(var MoreData: Boolean);
    procedure DLRecapNeedData(var MoreData: Boolean);
    procedure BLibreHautBeforePrint(var PrintBand: Boolean;  var Quoi: string);
    procedure FSansRuptClick(Sender: TObject);
    procedure BNouvRechClick(Sender: TObject);
    procedure DLHRappelLibreNeedData(var MoreData: Boolean);
    procedure BLibreAfterPrint(BandPrinted: Boolean);
    procedure FFiltresChange(Sender: TObject);
  private    { D�clarations priv�es }
    DatDebJal, DatFinJal      : TDateTime ;
    OkEnTeteSec, OkEnteteLibre,
    OkEnTeteRecap,OkRappelEnteteLibre : Boolean ;
    DebitPos                   : Boolean ;
    QBud                       : TQuery ;
    LLibre, LRecap             : TStringList ;
    TotSec, TotGen, TotEdt     : TMontTot ;
    TabDate                    : TTabDate12 ;
    StReportGen, StReportSec,StRappelLibTableLibre   : String ;
    AxeJal                     : String3 ;
    Qr1BG_BUDGENE, Qr1BG_RUB, Qr1BG_LIBELLE    : TStringField ;
    QR12BS_AXE, Qr12BS_BUDSECT, Qr12BS_RUB ,QR12BS_LIBELLE : TStringField ;
{    QR2BE_BUDGENE, QR2BE_EXERCICE, QR2BE_ETABLISSEMENT,
    QR2BE_REFINTERNE, QR2BE_LIBELLE, QR2BE_VALIDE,
    QR2BE_QUALIFPIECE, QR2BE_BUDJAL, QR2BE_NATUREBUD,
    QR2BE_BUDSECT, QR2BE_AXE       : TStringField ;
    QR2BE_DATECOMPTABLE            : TDateTimeField ;
    QR2BE_NUMEROPIECE              : TIntegerField ;
    QR2DEBIT, QR2CREDIT            : TFloatField ;
    FLoadColl                      : Boolean ;}
    QuelEtatBud                    : TQuelEtatBud ;
    NbMois                         : Word ;
    Function  QuoiCpt(i : Integer) : String ;
    Function  QuoiCptRecap(St1,St2 : String) : String ;
    Procedure BalBudGeSeZoom(Quoi : String) ;
    procedure CalculDateBud ;
    procedure InfosJournal ;
    procedure DebToDate ;
    procedure FinToDate ;
  public
    procedure GenereSQL ; Override ;
    procedure GenereSQL2 ;
    procedure FinirPrint ; Override ;
    procedure InitDivers ; Override ;
    procedure RenseigneCritere ; Override ;
    procedure ChoixEdition ; Override ;
    procedure RecupCritEdt ; Override ;
    function  CritOk : Boolean ; Override ;
  end;

Procedure PrepCalcBud(CritEdt : TCritEdt ; Var QMvt : TQuery)  ;
Procedure InitCalcBud(C1, C2 : String ; Var Tot1 : TMontTot ; TabD : TTabDate12 ; CritEdt : TCritEdt ; Q : TQuery) ;
Procedure CalculBud(i : Byte ; Var Tot1 : TMontTot ; NatB : String ; D,C : Double ; Dec : Byte) ;

implementation

{$R *.DFM}

var ChargeFiltre : Boolean;

procedure BalBudteGenSecQR ;
var QR : TFQRBLteGS ;
    Edition : TEdition ;
    PP : THPanel ;
BEGIN
PP:=FindInsidePanel ;
QR:=TFQRBLteGS.Create(Application) ;
Edition.Etat:=etBlBudgeteGenAna ;
QR.QRP.QRPrinter.OnSynZoom:=QR.BalBudGeSeZoom ;
QR.QuelEtatBud:=Normal ;
QR.InitType (nbBudGen,neBalBud,msGenBAna,'QRBLteGSNor','',TRUE,FALSE,True,Edition) ;
if PP=Nil then
   BEGIN
   try
    QR.ShowModal ;
    finally
    QR.Free ;
    end ;
   Screen.Cursor:=SyncrDefault ;
   END Else
   BEGIN
   InitInside(QR,PP) ;
   QR.Show ;
   END ;
END ;

procedure BalBudteGenSecNature ;
var QR : TFQRBLteGS ;
    Edition : TEdition ;
    PP : THPanel ;
BEGIN
PP:=FindInsidePanel ;
QR:=TFQRBLteGS.Create(Application) ;
Edition.Etat:=etBlBudgeteGenAna ;
QR.QRP.QRPrinter.OnSynZoom:=QR.BalBudGeSeZoom ;
QR.QuelEtatBud:=Nature ;
QR.InitType (nbBudGen,neBalBud,msGenBAna,'QRBLteGSNat','',TRUE,FALSE,True,Edition) ;
if PP=Nil then
   BEGIN
   try
    QR.ShowModal ;
    finally
    QR.Free ;
    end ;
   Screen.Cursor:=SyncrDefault ;
   END Else
   BEGIN
   InitInside(QR,PP) ;
   QR.Show ;
   END ;
END ;

procedure BalBudteGenSecZoom(Crit : TCritEdt) ;
var QR : TFQRBLteGS ;
    Edition : TEdition ;
BEGIN
QR:=TFQRBLteGS.Create(Application) ;
Edition.Etat:=etBlBudgeteGenAna ;
try
 QR.QRP.QRPrinter.OnSynZoom:=QR.BalBudGeSeZoom ;
 QR.InitType (nbBudGen,neBalBud,msGenBAna,'QRBLteGSNor','',FALSE,TRUE,True,Edition) ;
 finally
 QR.Free ;
 end ;
Screen.Cursor:=SyncrDefault ;
END ;

Function TFQRBLteGS.QuoiCpt(i : Integer) : String ;
BEGIN
Case i Of
   0 : Result:=QR1BG_BUDGENE.AsString+' '+Qr1BG_LIBELLE.AsString+'@'+'8' ;
   1 : Result:=QR1BG_BUDGENE.AsString+' '+Qr1BG_LIBELLE.AsString+'@'+'8' ;
   2 : Result:=QR12BS_BUDSECT.AsString+' '+QR1BG_BUDGENE.AsString+'@'+'9'+QR12BS_AXE.AsString ;
 end ;
END ;

Function TFQRBLteGS.QuoiCptRecap(St1,St2 : String) : String ;
BEGIN
Result:=St1+St2+'@'+'8' ;
END ;


Procedure TFQRBLteGS.BalBudGeSeZoom(Quoi : String) ;
Var Lp,i: Integer ;
BEGIN
Lp:=Pos('@',Quoi) ; If Lp=0 Then Exit ;
i:=StrToInt(Copy(Quoi,Lp+1,1)) ;
ZoomEdt(i,Quoi) ;
END ;

procedure TFQRBLteGS.FormShow(Sender: TObject);
begin
HelpContext:=15323000 ;
Standards.HelpContext:=15323100 ;
Avances.HelpContext:=15323200 ;
Mise.HelpContext:=15323300 ;
Option.HelpContext:=15323400 ;
TabRuptures.HelpContext:=15323500 ;
TabSup.TabVisible:=False ;
If FJournal.Values.Count>0 Then FJournal.Value:=FJournal.Values[0] ;
// FQ 16536 SBO 18/10/2005 Mise en place des options de r�vision dans les balances budg�taires
FNatBud.Text := TraduireMemoire('<<Tous>>') ;
FSoldeFormate.ItemIndex:=0 ;
  inherited;
//FRESOL.Value:='C' ;
InitResolution(FRESOL) ;
FLigneCpt.Checked:=True ;
TFGen.Parent:=Avances ; TFGenJoker.Parent:=Avances ;
FJoker.Parent:=Avances ; TFaG.Parent:=Avances ;
FCpte1.Parent:=Avances ; FCpte2.Parent:=Avances ;
FCpte1.TabOrder:=0 ; FCpte2.TabOrder:=1 ; FJoker.TabOrder:=2 ;
If FNatureCpt.Values.Count>0 Then FNatureCpt.Value:=FNatureCpt.Values[0] ;
DebToDate ; FinToDate  ;
//If (Not EstSerie(S7))  Then FGroupChoixRupt.Enabled:=FALSE ;
If (EstSerie(S3)) Then FGroupChoixRupt.Visible:=FALSE ;
AvecRevision.Visible := False ; // FQ 16536 SBO 18/10/2005
end;

Procedure TFQRBLteGS.FinirPrint ;
BEGIN
Inherited ;
if (CritEdt.Rupture=rLibres) then VideGroup(LLibre) ;
if CritEdt.Balbud.FormatPrint.PrSepMontant then FreeLesLignes(Self) ;
if CritEdt.BalBud.AvecCptSecond then VideRecap(LRecap) ;
END ;

procedure TFQRBLteGS.InitDivers ;
Var i : Byte ;
    St : String ;
BEGIN
Inherited ;
Fillchar(TotEdt,SizeOf(TotEdt),#0) ;
For i:=1 to 12 do TQRLabel(FindComponent('Col'+InttoStr(i))).Caption:='' ;
{ Calcul des diff�rentes fourchettes de dates }
CalculDateBud ;
{ Titres des colonnes de montants }
For i:=1 to NbMois do
    BEGIN
    St:=FormatDatetime('mmm yy',TabDate[i]) ; TQRLabel(FindComponent('Col'+InttoStr(i))).Caption:=FirstMajuscule(St) ;
    END ;
//BFPrimaire.Frame.DrawBottom:=CritEdt.BalBud.FormatPrint.PrSepCompte[1] ;
CritEdt.BalBud.FormatPrint.ColMin:=1 ;
CritEdt.BalBud.FormatPrint.ColMax:=13 ;
OkEnTeteSec:=True ;
OkRappelEnteteLibre:=FALSE ;
StRappelLibTableLibre:='' ;
if (CritEdt.BalBud.RuptOnly=Sur) then OkEnTeteSec:=False ;
END ;

procedure TFQRBLteGS.CalculDateBud ;
Var i : Integer ;
    LaDate : TDateTime ;
    Pm, PA : Word ;
BEGIN
Fillchar(TabDate,SizeOf(TabDate),#0) ;
LaDate:=StrToDate(FPeriode1.Value) ;
NbMois:=0 ;
NOMBREMOIS (CritEdt.Date1, CritEdt.Date2, Pm, PA, NbMois) ;
If NbMois>13 then NbMois:=12 ;
For i:=1 to NbMois do
    BEGIN
    TabDate[i]:=PlusMois(LaDate,i-1) ;
    END ;
END ;

procedure TFQRBLteGS.GenereSQL ;
Var St : String ; 
BEGIN
Inherited ;
Q.Close ; Q.SQL.Clear ;
Q.SQL.Add(' Select * ') ;
Q.SQL.Add(' From BUDGENE G Where ') ;
Q.SQL.Add(ExistBud(fbBudgen,CritEdt.BalBud.MvtSur,CritEdt.BalBud.Journal,CritEdt.BalBud.Axe,True)) ;
(*
Q.SQL.Add(' Exists  (select BE_BUDGENE from BUDECR  ') ;
Q.SQL.Add(' where BE_BUDGENE=G.BG_BUDGENE and BE_AXE="'+CritEdt.BalBud.Axe+'" ') ;
Q.SQL.Add(' and BE_BUDJAL="'+CritEdt.BalBud.Journal+'" ) ') ;
*)
if CritEdt.Joker then Q.SQL.Add(' AND BG_BUDGENE like "'+TraduitJoker(CritEdt.Cpt1)+'" ') Else
   BEGIN
   if CritEdt.Cpt1<>'' then Q.SQL.Add(' AND BG_BUDGENE>="'+CritEdt.Cpt1+'" ') ;
   if CritEdt.Cpt2<>'' then Q.SQL.Add(' AND BG_BUDGENE<="'+CritEdt.Cpt2+'" ') ;
   END ;
If (CritEdt.Rupture=rLibres) then
   BEGIN
   St:=WhereLibre(CritEdt.LibreCodes1,CritEdt.LibreCodes2,fbBudgen,CritEdt.BalBud.OnlyCptAssocie) ;
   If St<>'' Then Q.SQL.Add(St) ;
   Q.SQL.Add('Order By '+OrderLibre(CritEdt.LibreTrie)+'BG_BUDGENE ') ;
   END Else Q.SQL.Add(' Order By BG_BUDGENE') ;
ChangeSQL(Q) ; Q.Open ;
GenereSQL2 ;
END ;

procedure TFQRBLteGS.GenereSQL2 ;
BEGIN
QSecond.Close ; QSecond.SQL.Clear ;
QSecond.SQL.Add(' Select * ') ;
QSecond.SQL.Add(' From BUDSECT S Where ') ;
QSecond.SQL.Add(ExistBud(AxeToFbBud(CritEdt.BalBud.Axe),CritEdt.BalBud.MvtSur,CritEdt.BalBud.Journal,CritEdt.BalBud.Axe,False)) ;
(*
QSecond.SQL.Add(' Exists  (select BE_BUDSECT, BE_AXE, BE_BUDGENE from BUDECR  ') ;
QSecond.SQL.Add(' where BE_BUDGENE=:BG_BUDGENE and BE_BUDSECT=S.BS_BUDSECT and BE_AXE=S.BS_AXE ') ;
QSecond.SQL.Add(' and BE_BUDJAL="'+CritEdt.BalBud.Journal+'" ) ') ;
*)
QSecond.SQL.Add(' and BS_AXE="'+CritEdt.BalBud.Axe+'" ') ;
if CritEdt.SJoker then QSecond.SQL.Add(' AND BS_BUDSECT like "'+TraduitJoker(CritEdt.SCpt1)+'" ') Else
   BEGIN
   if CritEdt.SCpt1<>'' then QSecond.SQL.Add(' AND BS_BUDSECT>="'+CritEdt.SCpt1+'" ') ;
   if CritEdt.SCpt2<>'' then QSecond.SQL.Add(' AND BS_BUDSECT<="'+CritEdt.SCpt2+'" ') ;
   END ;
QSecond.SQL.Add(' Order By BS_AXE, BS_BUDSECT') ;
ChangeSQL(QSecond) ; //QSecond.Prepare ;
PrepareSQLODBC(QSecond) ;
QSecond.Open ;
END ;

procedure TFQRBLteGS.RenseigneCritere ;
BEGIN
Inherited ;
If OkZoomEdt Then Exit ;
RJournal.Caption:=FJournal.Text ;
RExercice_.Caption:=FExercice_.Text ;
CaseACocher(FValide,RValide) ;
CaseACocher(FRealise,RRealise) ;
RNatBud.Caption := CritEdt.BalBud.NatureLib ;   // FQ 16536 SBO 18/10/2005 Mise en place des options de r�vision dans les balances budg�taires
RTaux.Caption:=FloatToStr(FTaux.Value) ;
RResol.Caption:=FResol.Text ;
if CritEdt.SJoker then
   BEGIN
   TRSection.Caption:=MsgBox.Mess[9] ;
   RSection1.Caption:=FJokerSect.Text ; RSection2.Caption:='' ;
   END Else
   BEGIN
   TRSection.Caption:=MsgBox.Mess[8] ;
   RSection1.Caption:=CritEdt.LSCpt1 ; RSection2.Caption:=CritEdt.LScpt2 ;
   END ;
AfficheBudgetEn(RDevises,CritEdt) ;
END ;

procedure TFQRBLteGS.ChoixEdition ;
{ Initialisation des options d'�dition }
BEGIN
Inherited ;
if FinDeMois(PlusMois(CritEdt.Date1,11))<CritEdt.Date2 then
   BEGIN
   MsgRien.Execute(8,Caption,'') ; FDateCompta2.Text:=FPeriode2.Value ;
   END ;
if (CritEdt.Rupture=rLibres) then
   BEGIN
   ChargeGroup(LLibre,['B00','B01','B02','B03','B04','B05','B06','B07','B08','B09']) ;
   if CritEdt.BalBud.AvecCptSecond then ChargeRecap(LRecap) ;
   END ;

RetailleBandesBudgetes(Self,CritEdt,Msgbox.Mess[3],BSecondaire,Blibre,BRecap,BFPrimaire,BFinEtat) ;

If CritEdt.BalBud.Resol='C' then CritEdt.Decimale:=V_PGI.OkDecV else
If CritEdt.BalBud.Resol='F' then CritEdt.Decimale:=0 else
If CritEdt.BalBud.Resol='K' then CritEdt.Decimale:=0 else
If CritEdt.BalBud.Resol='M' then CritEdt.Decimale:=0 ;
if CritEdt.Balbud.FormatPrint.PrSepMontant then AffecteLigne(Self,EntetePage,CritEdt.BalBud.FormatPrint) ;
END ;

procedure TFQRBLteGS.RecupCritEdt ;
var lStWhere : String ;
    lStLib   : String ;
BEGIN
Inherited ;
With CritEdt Do
  BEGIN
  BalBud.Axe:=AxeJal ;
  BalBud.Journal:=FJournal.Value ;

  // FQ 16536 SBO 18/10/2005 Mise en place des options de r�vision dans les balances budg�taires
  TraductionTHMultiValComboBox( FNatBud, lStWhere, lStLib, 'BE_NATUREBUD' ) ;
  BalBud.NatureBud := lStWhere ;
  BalBud.NatureLib := lStLib ;
  // Fin FQ 16536 SBO 18/10/2005 Mise en place des options de r�vision dans les balances budg�taires

  BalBud.Exo1:=QUELEXODTBud(DatDebJal) ; BalBud.Exo2:=QUELEXODTBud(DatFinJal) ;
  Date1:=StrToDate(FDateCompta1.Text)    ; Date2:=StrToDate(FDateCompta2.Text) ;
  DateDeb:=DAte1 ; DateFin:=DAte2 ;
  if FValide.State=cbGrayed then Valide:='g' ;
  if FValide.State=cbChecked then Valide:='X' ;
  if FValide.State=cbUnChecked then Valide:='-' ;
  SJoker:=FJokerSect.Visible ;
  If SJoker Then BEGIN SCpt1:=FJokerSect.Text ; SCpt2:=FJokerSect.Text ; END
            Else BEGIN
                 SCpt1:=FSection1.Text  ; SCpt2:=FSection2.Text ;
                 PositionneFourchetteSt(FSection1,FSection2,CritEdt.LSCpt1,CritEdt.LSCpt2) ;
                 END ;
  BalBud.Resol:=FResol.Value[1] ; BalBud.Taux:=FTaux.Value ;
  BalBud.Realise:=FRealise.Checked ;
  BalBud.RuptOnly:=QuelleTypeRupt(0,FSAnsRupt.Checked,FAvecRupt.Checked,FSurRupt.Checked) ;
  BalBud.AvecCptSecond:=FAvecCptSecond.Checked and (Rupture=rLibres) ;
//  BalBud.SoldeFormate:=FSoldeFormate.Value ;
  If DebitPos Then BalBud.SoldeFormate:='PD' Else BalBud.SoldeFormate:='PC' ;
  BalBud.OnlyCptAssocie:=(Rupture<>rRien) and FOnlyCptAssocie.Checked ;
  With BalBud.FormatPrint Do
     BEGIN
     END ;
  END ;
END ;

function TFQRBLteGS.CritOk : Boolean ;
BEGIN
Result:=Inherited CritOK ;
if Result then PrepCalcBud(CritEdt,QBUD)  ;
END ;

procedure TFQRBLteGS.BDetailBeforePrint(var PrintBand: Boolean;  var Quoi: string);
begin
  inherited;
Fillchar(TotGen,SizeOf(TotGen),#0) ;
TFBG_BUDGENE.Caption:=Qr1BG_BUDGENE.AsString ;
TFBG_LIBELLE.Caption:=Qr1BG_LIBELLE.AsString ;
StReportGen:=Qr1BG_BUDGENE.AsString ;
InitReport([2],CritEdt.BalBud.FormatPrint.Report) ;
PrintBand:=(CritEdt.BalBud.RuptOnly<>Sur) ;
If PrintBand then Quoi:=QuoiCpt(0) ;
end;

procedure TFQRBLteGS.BFPrimaireBeforePrint(var PrintBand: Boolean;  var Quoi: string);
Var i    : Integer ;
    C1, C2, C3 : TComponent ;
begin
  inherited;
PrintBand:=(CritEdt.BalBud.RuptOnly<>Sur) ;
If PrintBand then
   BEGIN
   For i:=0 to 11 do
       BEGIn
       { En Budg�t� }
       C1:=FindComponent('BudTotPrim'+InttoStr(i+1)) ;
       { En R�alis� }
       C2:=FindComponent('ReaTotPrim'+InttoStr(i+1)) ;
       { Ecart : R�alis� - Budg�t� }
       C3:=FindComponent('EcaTotPrim'+InttoStr(i+1)) ;
       TQRLabel(C1).Caption:=PrintSoldeFormate(TotGen[0][i].TotDebit, TotGen[0][i].TotCredit, CritEdt.Decimale,CritEdt.Symbole,CritEdt.AfficheSymbole, Critedt.BalBud.SoldeFormate) ;
       TQRLabel(C2).Caption:=PrintSoldeFormate(TotGen[1][i].TotDebit, TotGen[1][i].TotCredit, CritEdt.Decimale,CritEdt.Symbole,CritEdt.AfficheSymbole, Critedt.BalBud.SoldeFormate) ;
//       TQRLabel(C3).Caption:=AfficheMontant(CritEDT.FormatMontant, CritEDT.Symbole, (TotGen[1][i].TotDebit-TotGen[0][i].TotDebit)-(TotGen[1][i].TotCredit-TotGen[0][i].TotCredit) , CritEDT.AfficheSymbole ) ;
       TQRLabel(C3).Caption:=PrintEcart(TotGen[1][i].TotDebit-TotGen[0][i].TotDebit,TotGen[1][i].TotCredit-TotGen[0][i].TotCredit,CritEDT.Decimale,DebitPos) ;
       END ;
   BudTotPrimTotal.Caption:=PrintSoldeFormate(TotGen[0][12].TotDebit, TotGen[0][12].TotCredit, CritEdt.Decimale,CritEdt.Symbole,CritEdt.AfficheSymbole, Critedt.BalBud.SoldeFormate) ;
   ReaTotPrimTotal.Caption:=PrintSoldeFormate(TotGen[1][12].TotDebit, TotGen[1][12].TotCredit, CritEdt.Decimale,CritEdt.Symbole,CritEdt.AfficheSymbole, Critedt.BalBud.SoldeFormate) ;
//   EcaTotPrimTotal.Caption:=AfficheMontant(CritEDT.FormatMontant, CritEDT.Symbole, (TotGen[1][12].TotDebit-TotGen[0][12].TotDebit)-(TotGen[1][12].TotCredit-TotGen[0][12].TotCredit) , CritEDT.AfficheSymbole ) ;
   EcaTotPrimTotal.Caption:=PrintEcart(TotGen[1][12].TotDebit-TotGen[0][12].TotDebit,TotGen[1][12].TotCredit-TotGen[0][12].TotCredit,CritEDT.Decimale,DebitPos) ;
   Quoi:=QuoiCpt(1) ;
   END ;

end;

procedure TFQRBLteGS.BFinEtatBeforePrint(var PrintBand: Boolean;  var Quoi: string);
Var I          : Byte ;
    C1, C2, C3 : TComponent ;
begin
  inherited;
For i:=0 to 11 do
    BEGIn
    { En Budg�t� }
    C1:=FindComponent('BudTotal'+InttoStr(i+1)) ;
    { En R�alis� }
    C2:=FindComponent('ReaTotal'+InttoStr(i+1)) ;
    { Ecart : R�alis� - Budg�t� }
    C3:=FindComponent('EcaTotal'+InttoStr(i+1)) ;
    TQRLabel(C1).Caption:=PrintSoldeFormate(TotEdt[0][i].TotDebit, TotEdt[0][i].TotCredit, CritEdt.Decimale,CritEdt.Symbole,CritEdt.AfficheSymbole, Critedt.BalBud.SoldeFormate) ;
    TQRLabel(C2).Caption:=PrintSoldeFormate(TotEdt[1][i].TotDebit, TotEdt[1][i].TotCredit, CritEdt.Decimale,CritEdt.Symbole,CritEdt.AfficheSymbole, Critedt.BalBud.SoldeFormate) ;
//    TQRLabel(C3).Caption:=AfficheMontant(CritEDT.FormatMontant, CritEDT.Symbole, (TotEdt[1][i].TotDebit-TotEdt[0][i].TotDebit)-(TotEdt[1][i].TotCredit-TotEdt[0][i].TotCredit) , CritEDT.AfficheSymbole ) ;
    TQRLabel(C3).Caption:=PrintEcart(TotEdt[1][i].TotDebit-TotEdt[0][i].TotDebit,TotEdt[1][i].TotCredit-TotEdt[0][i].TotCredit,CritEDT.Decimale,DebitPos ) ;
    END ;
TotTotalB.Caption:=PrintSoldeFormate(TotEdt[0][12].TotDebit, TotEdt[0][12].TotCredit, CritEdt.Decimale,CritEdt.Symbole,CritEdt.AfficheSymbole, Critedt.BalBud.SoldeFormate) ;
TotTotalR.Caption:=PrintSoldeFormate(TotEdt[1][12].TotDebit, TotEdt[1][12].TotCredit, CritEdt.Decimale,CritEdt.Symbole,CritEdt.AfficheSymbole, Critedt.BalBud.SoldeFormate) ;
//TotTotalE.Caption:=AfficheMontant(CritEDT.FormatMontant, CritEDT.Symbole, (TotEdt[1][12].TotDebit-TotEdt[0][12].TotDebit)-(TotEdt[1][12].TotCredit-TotEdt[0][12].TotCredit) , CritEDT.AfficheSymbole ) ;
TotTotalE.Caption:=PrintEcart(TotEdt[1][12].TotDebit-TotEdt[0][12].TotDebit,TotEdt[1][12].TotCredit-TotEdt[0][12].TotCredit,CritEDT.Decimale,DebitPos) ;
BOTTOMREPORT.enabled:=FALSE ;
end;

procedure TFQRBLteGS.TOPREPORTBeforePrint(var PrintBand: Boolean;  var Quoi: string);
begin
  inherited;
Titre1Rep.Caption:=Titre2Rep.Caption ;
ReportCol1.Caption:=ReportCol13.Caption ;
ReportCol2.Caption:=ReportCol14.Caption ;
ReportCol3.Caption:=ReportCol15.Caption ;
ReportCol4.Caption:=ReportCol16.Caption ;
ReportCol5.Caption:=ReportCol17.Caption ;
ReportCol6.Caption:=ReportCol18.Caption ;
ReportCol7.Caption:=ReportCol19.Caption ;
ReportCol8.Caption:=ReportCol20.Caption ;
ReportCol9.Caption:=ReportCol21.Caption ;
ReportCol10.Caption:=ReportCol22.Caption ;
ReportCol11.Caption:=ReportCol23.Caption ;
ReportCol12.Caption:=ReportCol24.Caption ;
ReportTotal1.Caption:=ReportTotal2.Caption ;
TITREREPORTH.Caption:=TITREREPORTB.Caption ;
end;

procedure TFQRBLteGS.BOTTOMREPORTBeforePrint(var PrintBand: Boolean;  var Quoi: string);
var MReport : TabTRep ;
begin
  inherited;
FillChar(Mreport,Sizeof(Mreport),#0) ;
Case QuelReportBAL(CritEdt.Balbud.FormatPrint.Report,MReport) of
  1 : Titre2Rep.Caption:=MsgBox.Mess[1] ;
  2 : Titre2Rep.Caption:=StReportGen ;
  3 : Titre2Rep.Caption:=StReportSec ;
 end ;
ReportCol13.Caption :=PrintSoldeFormate(MReport[1].TotDebit,MReport[1].TotCredit,CritEdt.Decimale,CritEdt.Symbole,CritEdt.AfficheSymbole, Critedt.BalBud.SoldeFormate) ;
ReportCol14.Caption :=PrintSoldeFormate(MReport[2].TotDebit,MReport[2].TotCredit,CritEdt.Decimale,CritEdt.Symbole,CritEdt.AfficheSymbole, Critedt.BalBud.SoldeFormate) ;
ReportCol15.Caption :=PrintSoldeFormate(MReport[3].TotDebit,MReport[3].TotCredit,CritEdt.Decimale,CritEdt.Symbole,CritEdt.AfficheSymbole, Critedt.BalBud.SoldeFormate) ;
ReportCol16.Caption :=PrintSoldeFormate(MReport[4].TotDebit,MReport[4].TotCredit,CritEdt.Decimale,CritEdt.Symbole,CritEdt.AfficheSymbole, Critedt.BalBud.SoldeFormate) ;
ReportCol17.Caption :=PrintSoldeFormate(MReport[5].TotDebit,MReport[5].TotCredit,CritEdt.Decimale,CritEdt.Symbole,CritEdt.AfficheSymbole, Critedt.BalBud.SoldeFormate) ;
ReportCol18.Caption :=PrintSoldeFormate(MReport[6].TotDebit,MReport[6].TotCredit,CritEdt.Decimale,CritEdt.Symbole,CritEdt.AfficheSymbole, Critedt.BalBud.SoldeFormate) ;
ReportCol19.Caption :=PrintSoldeFormate(MReport[7].TotDebit,MReport[7].TotCredit,CritEdt.Decimale,CritEdt.Symbole,CritEdt.AfficheSymbole, Critedt.BalBud.SoldeFormate) ;
ReportCol20.Caption :=PrintSoldeFormate(MReport[8].TotDebit,MReport[8].TotCredit,CritEdt.Decimale,CritEdt.Symbole,CritEdt.AfficheSymbole, Critedt.BalBud.SoldeFormate) ;
ReportCol21.Caption :=PrintSoldeFormate(MReport[9].TotDebit,MReport[9].TotCredit,CritEdt.Decimale,CritEdt.Symbole,CritEdt.AfficheSymbole, Critedt.BalBud.SoldeFormate) ;
ReportCol22.Caption :=PrintSoldeFormate(MReport[10].TotDebit,MReport[10].TotCredit,CritEdt.Decimale,CritEdt.Symbole,CritEdt.AfficheSymbole, Critedt.BalBud.SoldeFormate) ;
ReportCol23.Caption :=PrintSoldeFormate(MReport[11].TotDebit,MReport[11].TotCredit,CritEdt.Decimale,CritEdt.Symbole,CritEdt.AfficheSymbole, Critedt.BalBud.SoldeFormate) ;
ReportCol24.Caption :=PrintSoldeFormate(MReport[12].TotDebit,MReport[12].TotCredit,CritEdt.Decimale,CritEdt.Symbole,CritEdt.AfficheSymbole, Critedt.BalBud.SoldeFormate) ;
ReportTotal2.Caption:=PrintSoldeFormate(MReport[13].TotDebit,MReport[13].TotCredit,CritEdt.Decimale,CritEdt.Symbole,CritEdt.AfficheSymbole, Critedt.BalBud.SoldeFormate) ;
TITREREPORTB.Caption:='' ;
end;

procedure TFQRBLteGS.BLibreBeforePrint(var PrintBand: Boolean; var Quoi: string);
begin
  inherited;
PrintBand:=(CritEdt.Rupture=rLibres) ;
end;

procedure TFQRBLteGS.DLMultiNeedData(var MoreData: Boolean);
var TotLibre         : Array[0..77] of Double ;
    Librupt, Lib1, CodRupt, stCode,SauveCodRupt : String ;
    Quellerupt, i    : Integer ;
    Col              : TColor ;
    C1, C2, C3, C4   : TComponent ;
    CalIni, CalRev, CalRea : Double ;
    LibRuptInf : Array[1..10] Of TRuptInf ;
begin
  inherited;
MoreData:=False ;
if (CritEdt.Rupture=rLibres) then
   BEGIN
   MoreData:=PrintGroupLibre(LLibre,Q,fbBudGen,CritEdt.LibreTrie,CodRupt,LibRupt,Lib1,TotLibre,Quellerupt,Col,LibRuptInf) ;
   BLibre.Font.Color:=Col ; BLibreHaut.Font.Color:=Col ;
   If MoreData then
      BEGIN
      StCode:=CodRupt ;
      Delete(StCode,1,Quellerupt+2) ;
      MoreData:=DansChoixCodeLibre(StCode,Q,fbBudGen,CritEdt.LibreCodes1,CritEdt.LibreCodes2, CritEdt.LibreTrie) ;
      StRappelLibTableLibre:='' ;
      BLibre.Font.Color:=Col ;  BLibreHaut.Font.Color:=Col ; BRappelLibreHaut.Font.Color:=Col ;
      END ;
   if MoreData then
      BEGIN
      { Total Editon en Nature libre Uniquement}
      if (CritEdt.BalBud.RuptOnly=Sur) then
         BEGIN
         For i:=0 to 12 do
             BEGIN
             TotEdt[0][i].TotDebit:=Arrondi(TotEdt[0][i].TotDebit+(TotLibre[i*2]+TotLibre[(i*2)+26]), CritEdt.Decimale) ;
             TotEdt[0][i].TotCredit:=Arrondi(TotEdt[0][i].TotCredit+(TotLibre[i*2+1]+TotLibre[(i*2)+(1+26)]), CritEdt.Decimale) ;
             TotEdt[1][i].TotDebit:= Arrondi(TotEdt[1][i].TotDebit+TotLibre[(i*2)+52], CritEdt.Decimale) ;
             TotEdt[1][i].TotCredit:=Arrondi(TotEdt[1][i].TotCredit+TotLibre[(i*2)+(1+52)], CritEdt.Decimale) ;
             END ;
         END ;
      { Affichage sur la Bande }
//      TCodRupt.Caption:=MsgBox.Mess[6]+' '+CodRupt+' '+Lib1 ;
      TLibRupt.Caption:='' ; TLibRupt.Left:=BS_LIBELLE.Left ;
      BRappelLibreHaut.Height:=HauteurBandeRuptIni ;
      if (CritEdt.Rupture=rLibres) then
         BEGIN
         SauveCodRupt:=CodRupt ;
         StRappelLibTableLibre:=AlimStRuptSup(QuelleRupt,CodRupt,Lib1,LibRuptInf) ;
         insert(MsgBox.Mess[6]+' ',CodRupt,Quellerupt+2) ;
         TCodRupt.Caption:=CodRupt+' '+Lib1 ;
         AlimRuptSup(HauteurBandeRuptIni,QuelleRupt,TCodRupt.Width,BRappelLibreHaut,LibRuptInf,Self) ;
         END Else BEGIN TCodRupt.Caption:=CodRupt ; TLibRupt.Caption:=LibRupt ; TLibRupt.Left:=TFBG_LIBELLE.Left ; END ;
      TRappelCodRupt.Caption:=TCodRupt.Caption ;
      TRappelLibRupt.Caption:=TLibRupt.Caption ;
      TRappelLibRupt.Left:=TLibRupt.Left ;
      if (CritEdt.Rupture=rLibres) And (CritEdt.BalBud.RuptOnly=Sur) And CritEdt.BalBud.AvecCptSecond then TCodRupt.Caption:=SauveCodRupt+' '+Lib1 ;
      for i:=0 to 11 do
          BEGIN
          C1:=FindComponent('IniLibre'+InttoStr(i+1)) ;
          C2:=FindComponent('RevLibre'+InttoStr(i+1)) ;
          C3:=FindComponent('ReaLibre'+InttoStr(i+1)) ;
          TQRLabel(C1).Caption:=PrintSoldeFormate(TotLibre[i*2], TotLibre[i*2+1], CritEdt.Decimale,CritEdt.Symbole,CritEdt.AfficheSymbole, Critedt.BalBud.SoldeFormate) ;
          TQRLabel(C2).Caption:=PrintSoldeFormate(TotLibre[(i*2)+26], TotLibre[(i*2)+(1+26)], CritEdt.Decimale,CritEdt.Symbole,CritEdt.AfficheSymbole, Critedt.BalBud.SoldeFormate) ;
          TQRLabel(C3).Caption:=PrintSoldeFormate(TotLibre[(i*2)+52], TotLibre[(i*2)+(1+52)], CritEdt.Decimale,CritEdt.Symbole,CritEdt.AfficheSymbole, Critedt.BalBud.SoldeFormate) ;
          END ;
      IniLibreTotal.Caption:=PrintSoldeFormate(TotLibre[24], TotLibre[25], CritEdt.Decimale,CritEdt.Symbole,CritEdt.AfficheSymbole, Critedt.BalBud.SoldeFormate) ;
      RevLibreTotal.Caption:=PrintSoldeFormate(TotLibre[50], TotLibre[51], CritEdt.Decimale,CritEdt.Symbole,CritEdt.AfficheSymbole, Critedt.BalBud.SoldeFormate) ;
      ReaLibreTotal.Caption:=PrintSoldeFormate(TotLibre[76], TotLibre[77], CritEdt.Decimale,CritEdt.Symbole,CritEdt.AfficheSymbole, Critedt.BalBud.SoldeFormate) ;
      {-----------------}
      { Calcul de l'�cart }
      for i:=0 to 11 do
          BEGIN
          { (Ini+Rev)-Rea }
          CalIni:=Arrondi(TotLibre[i*2]-TotLibre[i*2+1],CritEdt.Decimale) ;
          CalRev:=Arrondi(TotLibre[(i*2)+26]-TotLibre[(i*2)+(1+26)],CritEdt.Decimale) ;
          CalRea:=Arrondi(TotLibre[(i*2)+52]-TotLibre[(i*2)+(1+52)],CritEdt.Decimale) ;
          C4:=FindComponent('EcaLibre'+InttoStr(i+1)) ;
//          TQRLabel(C4).Caption:=AfficheMontant(CritEDT.FormatMontant, CritEDT.Symbole, CalRea-(CalIni+CalRev) , CritEDT.AfficheSymbole ) ;
          TQRLabel(C4).Caption:=PrintEcart(CalRea,(CalIni+CalRev),CritEDT.Decimale,DebitPos) ;
          END ;
      CalIni:=Arrondi(TotLibre[24]-TotLibre[25],CritEdt.Decimale) ;
      CalRev:=Arrondi(TotLibre[50]-TotLibre[51],CritEdt.Decimale) ;
      CalRea:=Arrondi(TotLibre[76]-TotLibre[77],CritEdt.Decimale) ;
//      EcaLibreTotal.Caption:=AfficheMontant(CritEDT.FormatMontant, CritEDT.Symbole, CalRea-(CalIni+CalRev) , CritEDT.AfficheSymbole ) ;
      EcaLibreTotal.Caption:=PrintEcart(CalRea,(CalIni+CalRev),CritEDT.Decimale,DebitPos) ;
      END ;
   END ;
OkEnteteLibre:=MoreData ;
end;

procedure TFQRBLteGS.QAfterOpen(DataSet: TDataSet);
begin
  inherited;
Qr1BG_BUDGENE :=TStringField(Q.FindField('BG_BUDGENE'));
Qr1BG_RUB     :=TStringField(Q.FindField('BG_RUB'));
Qr1BG_LIBELLE :=TStringField(Q.FindField('BG_LIBELLE'));
end;

procedure TFQRBLteGS.FJournalChange(Sender: TObject);
Var St : String ;
     A : Char ;
begin
  inherited;
if FJournal.Value='' then Exit ;
//YMO 07/10/2005 FQ 15151 Quand le change est provoqu� par un nouveau filtre,
//pas de maj sur les zones
If Not ChargeFiltre then InfosJournal ;
FSection1.Clear ; FSection2.Clear ; FJokerSect.Clear ;
ST:=AxeJal ; A:=St[2] ;
Case A of
  '1' : BEGIN FSection1.ZoomTable:=tzBudSec1 ; FSection2.ZoomTable:=FSection1.ZoomTable ; END ;
  '2' : BEGIN FSection1.ZoomTable:=tzBudSec2 ; FSection2.ZoomTable:=FSection1.ZoomTable ; END ;
  '3' : BEGIN FSection1.ZoomTable:=tzBudSec3 ; FSection2.ZoomTable:=FSection1.ZoomTable ; END ;
  '4' : BEGIN FSection1.ZoomTable:=tzBudSec4 ; FSection2.ZoomTable:=FSection1.ZoomTable ; END ;
  '5' : BEGIN FSection1.ZoomTable:=tzBudSec5 ; FSection2.ZoomTable:=FSection1.ZoomTable ; END ;
  end ;
end;

procedure TFQRBLteGS.InfosJournal ;
Var QJal  : TQuery ;
//    D1, D2 : String ;
BEGIN
//QJal:=Nil ;
QJal:=OpenSQL('Select BJ_EXODEB, BJ_EXOFIN, BJ_PERDEB, BJ_PERFIN, BJ_AXE, BJ_NATJAL from BUDJAL Where BJ_BUDJAL="'+FJournal.Value+'"',True) ;
if Not QJal.EOF then
   BEGIN
   FEXERCICE.Value:=QJal.FindField('BJ_EXODEB').AsString ; FEXERCICE_.Value:=QJal.FindField('BJ_EXOFIN').AsString ;
   FPeriode1.Value:=QJal.FindField('BJ_PERDEB').AsString ; FPeriode2.Value:=QJal.FindField('BJ_PERFIN').AsString ;
   FDateCompta1.Text:=QJal.FindField('BJ_PERDEB').AsString ; FDateCompta2.Text:=QJal.FindField('BJ_PERFIN').AsString ;
   DatDebJal:=QJal.FindField('BJ_PERDEB').AsDateTime ; DatFinJal:=QJal.FindField('BJ_PERFIN').AsDateTime ;
   AxeJal:=QJal.FindField('BJ_AXE').AsString ;
   DebitPos:=QJal.FindField('BJ_NATJAL').AsString='CHA' ;
   END ;
Ferme(QJal) ;
END ;

procedure TFQRBLteGS.FExerciceChange(Sender: TObject);
begin
//  inherited;
if FExercice.Value>FExercice_.Value then FExercice_.Value:=FExercice.Value ;
ListePeriode(FExercice.Value,FPeriode1.Items,FPeriode1.Values,True) ;
FPeriode1.ItemIndex:=0 ; DebToDate ;
end;

procedure TFQRBLteGS.FExercice_Change(Sender: TObject);
begin
  inherited;
if FExercice_.Value<FExercice.Value then FExercice.Value:=FExercice_.Value ;
ListePeriode(FExercice_.Value,FPeriode2.Items,FPeriode2.Values,False) ;
FPeriode2.ItemIndex:=FPeriode2.Items.Count-1 ; FinToDate ;
end;

procedure TFQRBLteGS.FPeriode1Change(Sender: TObject);
begin
//YMO 06/10/2005 FQ 15151 Quand le change est provoqu� par un nouveau filtre,
//les dates ne sont pas encore renseign�es quand cet �v�nement est d�clench�
if isvalidDate(FPeriode1.Value)
and isvalidDate(FPeriode2.Value)
and (StrToDate(FPeriode1.Value)>StrToDate(FPeriode2.Value))
then FPeriode2.Value:=DateToStr(FinDeMois(StrToDate(FPeriode1.Value))) ;

FDateCompta1.Text:=FPeriode1.Value ;
end;

procedure TFQRBLteGS.FPeriode2Change(Sender: TObject);
begin
  inherited;
//YMO 06/10/2005 FQ 15151 Quand le change est provoqu� par un nouveau filtre,
//les dates ne sont pas encore renseign�es quand cet �v�nement est d�clench�
if isvalidDate(FPeriode1.Value)
and isvalidDate(FPeriode2.Value)
and (StrToDate(FPeriode2.Value)<StrToDate(FPeriode1.Value))
then FPeriode1.Value:=DateToStr(DebutDeMois(StrToDate(FPeriode2.Value))) ;

FDateCompta2.Text:=FPeriode2.Value ;
end;

procedure TFQRBLteGS.DebToDate ;
BEGIN
FDateCompta1.Text:=FPeriode1.Value ;
END ;

procedure TFQRBLteGS.FinToDate ;
BEGIN
FDateCompta2.Text:=FPeriode2.Value ;
END ;

procedure TFQRBLteGS.BFPrimaireAfterPrint(BandPrinted: Boolean);
begin
  inherited;
InitReport([2],CritEdt.BalBud.FormatPrint.Report) ;
end;

procedure TFQRBLteGS.BSecondaireAfterPrint(BandPrinted: Boolean);
begin
  inherited;
Fillchar(TotSec,SizeOf(TotSec),#0) ;
end;

procedure TFQRBLteGS.BSecondaireBeforePrint(var PrintBand: Boolean; var Quoi: string);
var Realise, Ecar : TabTot12 ;
    I          : Byte ;
    C1, C2, C3, C4 : TComponent ;
    TD             : TabloExt ;
    Compte1, Compte2, Lexo : String ;
    FinTemp, DateTemp : TDateTime ;
    TotBud            : TMontTot ;
    MReport           : TabTRep ;
    TotLibre          : Array[0..77] of Double ;
begin
  inherited;
Fillchar(TotLibre,SizeOf(TotLibre),#0) ;
Fillchar(MReport,SizeOf(MReport),#0) ;
Fillchar(TotBud,SizeOf(TotBud),#0) ;
InitCalcBud(Qr1BG_BUDGENE.AsString, Qr12BS_BUDSECT.AsString,TotBud,TabDate,CritEdt,QBud) ;
TotSec:=TotBud ;
For i:=0 to 12 do
    BEGIN
    TotGen[0][i].TotDebit:=Arrondi(TotGen[0][i].TotDebit+(TotBud[0][i].TotDebit+TotBud[1][i].TotDebit), CritEdt.Decimale) ;
    TotGen[0][i].TotCredit:=Arrondi(TotGen[0][i].TotCredit+(TotBud[0][i].TotCredit+TotBud[1][i].TotCredit), CritEdt.Decimale) ;
//    TotGen[i].TotDebit:=Arrondi(TotGen[i].TotDebit+(TotBud[0][i].TotDebit+TotBud[1][i].TotDebit), CritEdt.Decimale) ;
//    TotGen[i].TotCredit:=Arrondi(TotGen[i].TotCredit+(TotBud[0][i].TotCredit+TotBud[1][i].TotCredit), CritEdt.Decimale) ;
    if (CritEdt.BalBud.RuptOnly<>Sur) then
       BEGIN
       TotEdt[0][i].TotDebit:=Arrondi(TotEdt[0][i].TotDebit+(TotBud[0][i].TotDebit+TotBud[1][i].TotDebit), CritEdt.Decimale) ;
       TotEdt[0][i].TotCredit:=Arrondi(TotEdt[0][i].TotCredit+(TotBud[0][i].TotCredit+TotBud[1][i].TotCredit), CritEdt.Decimale) ;
       END ;
    MReport[i+1].TotDebit:=Arrondi(MReport[i+1].TotDebit+(TotBud[0][i].TotDebit+TotBud[1][i].TotDebit), CritEdt.Decimale) ;
    MReport[i+1].TotCredit:=Arrondi(MReport[i+1].TotCredit+(TotBud[0][i].TotCredit+TotBud[1][i].TotCredit), CritEdt.Decimale) ;
    { Nature libre en Initial }
    TotLibre[i*2]:=Arrondi(TotLibre[i*2]+TotBud[0][i].TotDebit, CritEdt.Decimale) ;
    TotLibre[i*2+1]:=Arrondi(TotLibre[i*2+1]+TotBud[0][i].TotCredit, CritEdt.Decimale) ;
    { Nature libre en R�vis� }
    TotLibre[(i*2)+26]:=Arrondi(TotLibre[(i*2)+26]+TotBud[1][i].TotDebit, CritEdt.Decimale) ;
    TotLibre[(i*2)+(26+1)]:=Arrondi(TotLibre[(i*2)+(26+1)]+TotBud[1][i].TotCredit, CritEdt.Decimale) ;
    END ;
Fillchar(Realise,SizeOf(Realise),#0) ;
Fillchar(Ecar,SizeOf(Ecar),#0) ;
If CritEdt.Balbud.Realise then
   BEGIN
   { Calcul r�alis� }
   Compte1:='G/S'+CritEdt.BalBud.Journal+QR1BG_RUB.AsString+':'+QR12BS_RUB.AsString ;
   Compte2:='' ;
   LExo:=QUELEXODTBud(TabDate[1]) ; DateTemp:=PlusMois(TabDate[1],1) ; if (Lexo<>QUELEXODTBud(DateTemp)) then LExo:='' ; FinTemp:=FinDeMois(TabDate[1]) ;
   GetCumul('RUBREA',Compte1,Compte2,'SAN',CritEdt.Etab,CritEDT.DeviseAffichee,LExo,TabDate[1],FinTemp,false,TRUE,Nil,TD,CritEdt.Monnaie=2) ;
   realise[0].TotDebit:=TD[3] ; realise[0].TotCredit:=TD[2] ;

   Lexo:=QUELEXODTBud(TabDate[2]) ; DateTemp:=PlusMois(TabDate[2],1) ; if (LExo<>QUELEXODTBud(DateTemp)) then LExo:='' ; FinTemp:=FinDeMois(TabDate[2]) ;
   GetCumul('RUBREA',Compte1,Compte2,'SAN',CritEdt.Etab,CritEDT.DeviseAffichee,LExo,TabDate[2],FinTemp,false,TRUE,Nil,TD,CritEdt.Monnaie=2) ;
   realise[1].TotDebit:=TD[3] ; realise[1].TotCredit:=TD[2] ;

   LExo:=QUELEXODTBud(TabDate[3]) ; DateTemp:=PlusMois(TabDate[3],1) ; if (LExo<>QUELEXODTBud(DateTemp)) then LExo:='' ; FinTemp:=FinDeMois(TabDate[3]) ;
   GetCumul('RUBREA',Compte1,Compte2,'SAN',CritEdt.Etab,CritEDT.DeviseAffichee,LExo,TabDate[3],FinTemp,false,TRUE,Nil,TD,CritEdt.Monnaie=2) ;
   realise[2].TotDebit:=TD[3] ; realise[2].TotCredit:=TD[2] ;

   LExo:=QUELEXODTBud(TabDate[4]) ; DateTemp:=PlusMois(TabDate[4],1) ; if (LExo<>QUELEXODTBud(DateTemp)) then LExo:='' ; FinTemp:=FinDeMois(TabDate[4]) ;
   GetCumul('RUBREA',Compte1,Compte2,'SAN',CritEdt.Etab,CritEDT.DeviseAffichee,LExo,TabDate[4],FinTemp,false,TRUE,Nil,TD,CritEdt.Monnaie=2) ;
   realise[3].TotDebit:=TD[3] ; realise[3].TotCredit:=TD[2] ;

   LExo:=QUELEXODTBud(TabDate[5]) ; DateTemp:=PlusMois(TabDate[5],1) ; if (LExo<>QUELEXODTBud(DateTemp)) then LExo:='' ; FinTemp:=FinDeMois(TabDate[5]) ;
   GetCumul('RUBREA',Compte1,Compte2,'SAN',CritEdt.Etab,CritEDT.DeviseAffichee,LExo,TabDate[5],FinTemp,false,TRUE,Nil,TD,CritEdt.Monnaie=2) ;
   realise[4].TotDebit:=TD[3] ; realise[4].TotCredit:=TD[2] ;

   LExo:=QUELEXODTBud(TabDate[6]) ; DateTemp:=PlusMois(TabDate[6],1) ; if (LExo<>QUELEXODTBud(DateTemp)) then LExo:='' ; FinTemp:=FinDeMois(TabDate[6]) ;
   GetCumul('RUBREA',Compte1,Compte2,'SAN',CritEdt.Etab,CritEDT.DeviseAffichee,LExo,TabDate[6],FinTemp,false,TRUE,Nil,TD,CritEdt.Monnaie=2) ;
   realise[5].TotDebit:=TD[3] ; realise[5].TotCredit:=TD[2] ;

   LExo:=QUELEXODTBud(TabDate[7]) ; DateTemp:=PlusMois(TabDate[7],1) ; if (LExo<>QUELEXODTBud(DateTemp)) then LExo:='' ; FinTemp:=FinDeMois(TabDate[7]) ;
   GetCumul('RUBREA',Compte1,Compte2,'SAN',CritEdt.Etab,CritEDT.DeviseAffichee,LExo,TabDate[7],FinTemp,false,TRUE,Nil,TD,CritEdt.Monnaie=2) ;
   realise[6].TotDebit:=TD[3] ; realise[6].TotCredit:=TD[2] ;

   LExo:=QUELEXODTBud(TabDate[8]) ; DateTemp:=PlusMois(TabDate[8],1) ; if (LExo<>QUELEXODTBud(DateTemp)) then LExo:='' ; FinTemp:=FinDeMois(TabDate[8]) ;
   GetCumul('RUBREA',Compte1,Compte2,'SAN',CritEdt.Etab,CritEDT.DeviseAffichee,LExo,TabDate[8],FinTemp,false,TRUE,Nil,TD,CritEdt.Monnaie=2) ;
   realise[7].TotDebit:=TD[3] ; realise[7].TotCredit:=TD[2] ;

   LExo:=QUELEXODTBud(TabDate[9]) ; DateTemp:=PlusMois(TabDate[9],1) ; if (LExo<>QUELEXODTBud(DateTemp)) then LExo:='' ; FinTemp:=FinDeMois(TabDate[9]) ;
   GetCumul('RUBREA',Compte1,Compte2,'SAN',CritEdt.Etab,CritEDT.DeviseAffichee,LExo,TabDate[9],FinTemp,false,TRUE,Nil,TD,CritEdt.Monnaie=2) ;
   realise[8].TotDebit:=TD[3] ; realise[8].TotCredit:=TD[2] ;

   LExo:=QUELEXODTBud(TabDate[10]) ; DateTemp:=PlusMois(TabDate[10],1) ; if (LExo<>QUELEXODTBud(DateTemp)) then LExo:='' ; FinTemp:=FinDeMois(TabDate[10]) ;
   GetCumul('RUBREA',Compte1,Compte2,'SAN',CritEdt.Etab,CritEDT.DeviseAffichee,LExo,TabDate[10],FinTemp,false,TRUE,Nil,TD,CritEdt.Monnaie=2) ;
   realise[9].TotDebit:=TD[3] ; realise[9].TotCredit:=TD[2] ;

   LExo:=QUELEXODTBud(TabDate[11]) ; DateTemp:=PlusMois(TabDate[11],1) ; if (LExo<>QUELEXODTBud(DateTemp)) then LExo:='' ; FinTemp:=FinDeMois(TabDate[11]) ;
   GetCumul('RUBREA',Compte1,Compte2,'SAN',CritEdt.Etab,CritEDT.DeviseAffichee,LExo,TabDate[11],FinTemp,false,TRUE,Nil,TD,CritEdt.Monnaie=2) ;
   realise[10].TotDebit:=TD[3] ; realise[10].TotCredit:=TD[2] ;
   (*Pr�voir boucle*)

   LExo:=QUELEXODTBud(TabDate[12]) ; DateTemp:=PlusMois(TabDate[12],1) ; if (LExo<>QUELEXODTBud(DateTemp)) then LExo:='' ; FinTemp:=FinDeMois(TabDate[12]) ;
   GetCumul('RUBREA',Compte1,Compte2,'SAN',CritEdt.Etab,CritEDT.DeviseAffichee,LExo,TabDate[12],FinTemp,false,TRUE,Nil,TD,CritEdt.Monnaie=2) ;
   realise[11].TotDebit:=TD[3] ; realise[11].TotCredit:=TD[2] ;
   (*
   LExo:=QUELEXODTBud(CritEdt.Date2) ;  FinTemp:=FinDeMois(CritEdt.Date2) ;
   GetCumul('RUBREA',Compte1,Compte2,'SAN',CritEdt.Etab,CritEDT.DeviseAffichee,LExo,TabDate[12],FinTemp,false,TRUE,Nil,TD) ;
   realise[11].TotDebit:=TD[1] ; realise[11].TotCredit:=TD[2] ;
   *)
   For i:=0 to 11 do
       BEGIN
       Reevaluation(Realise[i].TotDebit,Realise[i].TotCredit,CritEdt.BalBud.Resol, CritEdt.BalBud.Taux) ;
       Realise[12].TotDebit:=Arrondi(Realise[12].TotDebit+Realise[i].TotDebit, CritEdt.Decimale) ;
       Realise[12].TotCredit:=Arrondi(Realise[12].TotCredit+Realise[i].TotCredit, CritEdt.Decimale) ;
       END ;

   { Calcul de l'�cart }
   for i:=0 to 12 do
       BEGIN
       Ecar[i].TotDebit:= Arrondi(Realise[i].TotDebit-(TotSec[0][i].TotDebit+TotSec[1][i].TotDebit), CritEdt.Decimale) ;
       Ecar[i].TotCredit:=Arrondi(Realise[i].TotCredit-(TotSec[0][i].TotCredit+TotSec[1][i].TotCredit), CritEdt.Decimale) ;
//       Reevaluation(Ecar[i].TotDebit,Ecar[i].TotCredit,CritEdt.BalBud.Resol, CritEdt.BalBud.Taux) ;
       END ;
   { Calcul du r�alis� ...}
   for i:=0 to 12 do
       BEGIN
       TotGen[1][i].TotDebit:=Arrondi(TotGen[1][i].TotDebit+Realise[i].TotDebit, CritEdt.Decimale) ;
       TotGen[1][i].TotCredit:=Arrondi(TotGen[1][i].TotCredit+Realise[i].TotCredit, CritEdt.Decimale) ;
       if (CritEdt.BalBud.RuptOnly<>Sur) then
          BEGIN {... En Total Edition : En ruptue il se fait sur le PrintGroup }
          TotEdt[1][i].TotDebit:= Arrondi(TotEdt[1][i].TotDebit+Realise[i].TotDebit, CritEdt.Decimale) ;
          TotEdt[1][i].TotCredit:=Arrondi(TotEdt[1][i].TotCredit+Realise[i].TotCredit, CritEdt.Decimale) ;
          END ;
       { ... en Nature libre }
       TotLibre[(i*2)+52]:=Arrondi(TotLibre[(i*2)+52]+Realise[i].TotDebit, CritEdt.Decimale) ;
       TotLibre[(i*2)+(1+52)]:=Arrondi(TotLibre[(i*2)+(1+52)]+Realise[i].TotCredit, CritEdt.Decimale) ;
       END ;
   END ;
for i:=0 to 11 do
    BEGIN
    C1:=FindComponent('IniGenCum'+InttoStr(i+1)) ;
    C2:=FindComponent('RevGenCum'+InttoStr(i+1)) ;
    C3:=FindComponent('ReaGenCum'+InttoStr(i+1)) ;
    C4:=FindComponent('EcaGenCum'+InttoStr(i+1)) ;
    TQRLabel(C1).Caption:=PrintSoldeFormate(TotSec[0][i].TotDebit, TotSec[0][i].TotCredit, CritEdt.Decimale,CritEdt.Symbole,CritEdt.AfficheSymbole, Critedt.BalBud.SoldeFormate) ;
    TQRLabel(C2).Caption:=PrintSoldeFormate(TotSec[1][i].TotDebit, TotSec[1][i].TotCredit, CritEdt.Decimale,CritEdt.Symbole,CritEdt.AfficheSymbole, Critedt.BalBud.SoldeFormate) ;
    TQRLabel(C3).Caption:=PrintSoldeFormate(Realise[i].TotDebit, Realise[i].TotCredit, CritEdt.Decimale,CritEdt.Symbole,CritEdt.AfficheSymbole, Critedt.BalBud.SoldeFormate) ;
//    TQRLabel(C4).Caption:=AfficheMontant(CritEDT.FormatMontant, CritEDT.Symbole, Arrondi(Ecar[i].TotDebit-Ecar[i].TotCredit, CritEdt.Decimale) , CritEDT.AfficheSymbole ) ;
    TQRLabel(C4).Caption:=PrintEcart(Ecar[i].TotDebit,Ecar[i].TotCredit,CritEdt.Decimale,DebitPos) ;
    END ;
IniGenTotal.Caption:=PrintSoldeFormate(TotSec[0][12].TotDebit, TotSec[0][12].TotCredit, CritEdt.Decimale,CritEdt.Symbole,CritEdt.AfficheSymbole, Critedt.BalBud.SoldeFormate) ;
RevGenTotal.Caption:=PrintSoldeFormate(TotSec[1][12].TotDebit, TotSec[1][12].TotCredit, CritEdt.Decimale,CritEdt.Symbole,CritEdt.AfficheSymbole, Critedt.BalBud.SoldeFormate) ;
ReaGenTotal.Caption:=PrintSoldeFormate(Realise[12].TotDebit, Realise[12].TotCredit, CritEdt.Decimale,CritEdt.Symbole,CritEdt.AfficheSymbole, Critedt.BalBud.SoldeFormate) ;
//EcaGenTotal.Caption:=AfficheMontant(CritEDT.FormatMontant, CritEDT.Symbole, Arrondi(Ecar[12].TotDebit-Ecar[12].TotCredit, CritEdt.Decimale) , CritEDT.AfficheSymbole ) ;
EcaGenTotal.Caption:=PrintEcart(Ecar[12].TotDebit,Ecar[12].TotCredit,CritEdt.Decimale,DebitPos) ;

AddReportBAL([1,2], CritEdt.Balbud.FormatPrint.Report, MReport, CritEdt.Decimale) ;
if (CritEdt.Rupture=rLibres) then
   BEGIN
   AddGroupLibre(LLibre,Q,fbBudGen,CritEdt.LibreTrie,TotLibre) ; //
   if (CritEdt.BalBud.RuptOnly=Sur) then PrintBand:=False ;
   if CritEdt.BalBud.AvecCptSecond then
      BEGIN
      if DansRuptLibre(Q,fbBudGen,CritEdt.LibreCodes1, CritEdt.LibreCodes2,CritEdt.LibreTrie)
         then AddRecap(LRecap, [QR12BS_BUDSECT.AsString], [QR12BS_LIBELLE.AsString],TotLibre) ;
      (*
      Trouve:=False ;
      for i:=0 to 9 do
          BEGIN
          if Q.findField('BG_TABLE'+IntToStr(i)).AsString<>'' then Trouve:=True ;
          if Trouve then Break ;
          END ;
      if Trouve then AddRecap(LRecap, [QR12BS_BUDSECT.AsString], [QR12BS_LIBELLE.AsString],TotLibre) ;
      *)
      END ;
   END ;
OkEnTeteSec:=PrintBand ;
end;


procedure TFQRBLteGS.QSecondAfterOpen(DataSet: TDataSet);
begin
  inherited;
QR12BS_AXE           :=TStringField(QSecond.FindField('BS_AXE')) ;
QR12BS_BUDSECT       :=TStringField(QSecond.FindField('BS_BUDSECT')) ;
QR12BS_RUB           :=TStringField(QSecond.FindField('BS_RUB')) ;
QR12BS_LIBELLE       :=TStringField(QSecond.FindField('BS_LIBELLE')) ;
end;

procedure TFQRBLteGS.FSection1Change(Sender: TObject);
Var AvecJokerS : Boolean ;
begin
  inherited;
AvecJokerS:=Joker(FSection1, FSection2, FJokerSect ) ;
TFaS.Visible:=Not AvecJokerS ;
TFSection.Visible:=Not AvecJokerS ;
TFJokerSect.Visible:=AvecJokerS ;
end;

Procedure PrepCalcBud(CritEdt : TCritEdt ; Var QMvt : TQuery)  ;
BEGIN
QMvt:=TQuery.Create(Application) ; QMvt.DataBaseName:='SOC' ; QMvt.SQL.Clear ;
QMvt.SQL.Clear ;
QMvt.SQL.Add('Select BE_BUDGENE, BE_BUDSECT, BE_EXERCICE, BE_DATECOMPTABLE, BE_NUMEROPIECE,') ;
QMvt.SQL.Add(       'BE_REFINTERNE, BE_ETABLISSEMENT, BE_LIBELLE, BE_VALIDE,') ;
QMvt.SQL.Add(       'BE_BUDJAL,BE_NATUREBUD, BE_QUALIFPIECE, ') ;
Case CritEdt.Monnaie of
  0 : BEGIN QMvt.SQL.Add('BE_DEBIT DEBIT,BE_CREDIT CREDIT') ; END ;
//  1 : BEGIN QEcr.SQL.Add('E_DEBITDEV DEBIT,E_CREDITDEV CREDIT') ; END ;
//  2 : BEGIN QMvt.SQL.Add('BE_DEBITEURO DEBIT,BE_CREDITEURO CREDIT') ; END ;
end ;
QMvt.SQL.Add(' From BUDECR ') ;
QMvt.SQL.Add(' Where BE_BUDGENE=:C1 and BE_BUDSECT=:C2 ') ;
QMvt.SQL.Add(' And BE_AXE="'+CritEdt.BalBud.AXE+'" ') ;
QMvt.SQL.Add(' And BE_BUDJAL="'+CritEdt.BalBud.Journal+'" ') ;

  // FQ 16536 SBO 18/10/2005 Mise en place des options de r�vision dans les balances budg�taires
  If CritEdt.BalBud.NatureBud<>'' then
    QMvt.SQL.Add('AND ' + CritEdt.BalBud.NatureBud + ' ') ;
  // fin FQ 16536 SBO 18/10/2005 Mise en place des options de r�vision dans les balances budg�taires

QMvt.SQL.Add('And BE_DATECOMPTABLE>="'+usdatetime(CritEdt.Date1)+'" And BE_DATECOMPTABLE<="'+usdatetime(CritEdt.Date2)+'" ') ;
QMvt.SQL.Add('And BE_EXERCICE>="'+CritEdt.BalBud.Exo1+'" And BE_EXERCICE<="'+CritEdt.BalBud.Exo2+'" ') ;
if CritEdt.Etab<>'' then QMvt.SQL.Add(' And BE_ETABLISSEMENT="'+CritEdt.Etab+'"') ;
if CritEdt.Valide<>'g' then QMvt.SQL.Add(' And BE_VALIDE="'+CritEdt.Valide+'" ') ;
If CritEDT.SQLPlus<>'' Then QMvt.SQL.Add(CritEDT.SQLPlus) ;
QMvt.SQL.Add(' Order by BE_BUDGENE, BE_BUDJAL, BE_NATUREBUD, BE_EXERCICE, BE_DATECOMPTABLE, BE_BUDSECT, BE_AXE, BE_NUMEROPIECE, BE_QUALIFPIECE ') ;
ChangeSql(QMvt) ;
END ;


Procedure InitCalcBud(C1, C2 : String ; Var Tot1 : TMontTot ; TabD : TTabDate12 ; CritEdt : TCritEdt ; Q : TQuery) ;
Var DateCompta : TDateTime ;
    LaNatBud : String ;
    DEBIT, CREDIT : Double ;
BEGIN
Q.Close ;
Q.PAramByName('C1').AsString:=C1 ;
Q.PAramByName('C2').AsString:=C2 ;
//Q.Prepare ;
PrepareSQLODBC(Q) ;
Q.Open ;
Fillchar(Tot1,SizeOf(Tot1),#0) ;
If Q.Eof then Exit ;
While Not Q.eof do
      BEGIN
      DateCompta:=Q.FindField('BE_DATECOMPTABLE').AsDateTime ;
      LaNatBud:=Q.FindField('BE_NATUREBUD').AsString ;
      DEBIT:=Q.FindField('DEBIT').AsFloat;
      CREDIT:=Q.FindField('CREDIT').asFloat ;
      Reevaluation(DEBIT,CREDIT,CritEdt.BalBud.Resol, CritEdt.BalBud.Taux) ;
      if (DateCOMPTA>=TabD[1]) And (DateCompta<=FinDeMois(TabD[1]))
         then CalculBud(0,Tot1, LaNatBud,DEBIT, CREDIT, CritEdt.Decimale) ;
      if (DateCompta>=TabD[2]) And (DateCompta<=FinDeMois(TabD[2]))
         then CalculBud(1,Tot1, LaNatBud,DEBIT, CREDIT, CritEdt.Decimale) ;
      if (DateCompta>=TabD[3]) And (DateCompta<=FinDeMois(TabD[3]))
         then CalculBud(2,Tot1, LaNatBud,DEBIT, CREDIT, CritEdt.Decimale) ;
      if (DateCompta>=TabD[4]) And (DateCompta<=FinDeMois(TabD[4]))
         then CalculBud(3,Tot1, LaNatBud,DEBIT, CREDIT, CritEdt.Decimale) ;
      if (DateCompta>=TabD[5]) And (DateCompta<=FinDeMois(TabD[5]))
         then CalculBud(4,Tot1, LaNatBud,DEBIT, CREDIT, CritEdt.Decimale) ;
      if (DateCompta>=TabD[6]) And (DateCompta<=FinDeMois(TabD[6]))
         then CalculBud(5,Tot1, LaNatBud,DEBIT, CREDIT, CritEdt.Decimale) ;
      if (DateCompta>=TabD[7]) And (DateCompta<=FinDeMois(TabD[7]))
         then CalculBud(6,Tot1, LaNatBud,DEBIT, CREDIT, CritEdt.Decimale) ;
      if (DateCompta>=TabD[8]) And (DateCompta<=FinDeMois(TabD[8]))
         then CalculBud(7,Tot1, LaNatBud,DEBIT, CREDIT, CritEdt.Decimale) ;
      if (DateCompta>=TabD[9]) And (DateCompta<=FinDeMois(TabD[9]))
         then CalculBud(8,Tot1, LaNatBud,DEBIT, CREDIT, CritEdt.Decimale) ;
      if (DateCompta>=TabD[10]) And (DateCompta<=FinDeMois(TabD[10]))
         then CalculBud(9,Tot1, LaNatBud,DEBIT, CREDIT, CritEdt.Decimale) ;
      if (DateCompta>=TabD[11]) And (DateCompta<=FinDeMois(TabD[11]))
         then CalculBud(10,Tot1, LaNatBud,DEBIT, CREDIT, CritEdt.Decimale) ;
      if (DateCompta>=TabD[12]) And (DateCompta<=FinDeMois(TabD[12]))
         then CalculBud(11,Tot1, LaNatBud,DEBIT, CREDIT, CritEdt.Decimale) ;
      Q.Next ;
      END ;
END ;

Procedure CalculBud(i : Byte ; Var Tot1 : TMontTot ; NatB : String ; D,C : Double ; Dec : Byte) ;
Var NB : String ;
BEGIN
NB:=NatB ;
If (NB='INI') or (NB='ANO') then         {FP FQ16059}
   BEGIN
   Tot1[0][i].TotDebit:=  Arrondi(Tot1[0][i].TotDebit+D, Dec) ;
   Tot1[0][i].TotCredit:= Arrondi(Tot1[0][i].TotCredit+C, Dec) ;
   Tot1[0][12].TotDebit:= Arrondi(Tot1[0][12].TotDebit+D, Dec) ;
   Tot1[0][12].TotCredit:=Arrondi(Tot1[0][12].TotCredit+C, Dec) ;
   END Else
If Copy(NB,1,2)='DM' then
   BEGIN
   Tot1[1][i].TotDebit:=  Arrondi(Tot1[1][i].TotDebit+D, Dec) ;
   Tot1[1][i].TotCredit:= Arrondi(Tot1[1][i].TotCredit+C, Dec) ;
   Tot1[1][12].TotDebit:= Arrondi(Tot1[1][12].TotDebit+D, Dec) ;
   Tot1[1][12].TotCredit:=Arrondi(Tot1[1][12].TotCredit+C, Dec) ;
   END ;
END ;


procedure TFQRBLteGS.BHCptBeforePrint(var PrintBand: Boolean; var Quoi: string);
begin
  inherited;
BS_BUDSECT.Caption:=Qr12BS_BUDSECT.AsString  ;
BS_LIBELLE.Caption:=Qr12BS_LIBELLE.AsString ;
StReportSec:=Qr12BS_BUDSECT.AsString ;
If PrintBand then Quoi:=QuoiCpt(2) ;
if ((CritEdt.Rupture=rLibres) Or (CritEdt.Rupture=rRuptures)) And (CritEdt.BalBud.AvecCptSecond)
   then Quoi:=QuoiCptRecap(BS_BUDSECT2.Caption,BS_LIBELLE2.Caption) ;
end;

procedure TFQRBLteGS.DLHsecNeedData(var MoreData: Boolean);
begin
  inherited;
MoreData:=OkEnTeteSec ;
OkEnTeteSec:=False ;
end;

procedure TFQRBLteGS.DLHLibreNeedData(var MoreData: Boolean);
begin
  inherited;
MoreData:=OkEnteteLibre ;
OkEnteteLibre:=False ;
if MoreData And ((CritEdt.Rupture=rLibres) Or (CritEdt.Rupture=rRuptures)) then
   if CritEdt.BalBud.AvecCptSecond then OkRappelEnteteLibre:=TRUE ;
end;

procedure TFQRBLteGS.DLHRecapNeedData(var MoreData: Boolean);
begin
  inherited;
MoreData:=OkEnTeteRecap ;
OkEnTeteRecap:=False ;
end;

procedure TFQRBLteGS.DLRecapNeedData(var MoreData: Boolean);
var TotRecap         : Array[0..77] of Double ;
    LibRecap, CodRecap : String ;
    i                  : Integer ;
    C1, C2, C3, C4   : TComponent ;
    CalIni, CalRev, CalRea : Double ;
begin
  inherited;
MoreData:=False ;
if CritEdt.BalBud.AvecCptSecond then
   BEGIN
   MoreData:=PrintRecap(LRecap,CodRecap,LibRecap,TotRecap) ;
   if MoreData then
      BEGIN
      { Affichage sur la Bande }
      BS_BUDSECT2.Caption:=CodRecap ;
      BS_LIBELLE2.Caption:=LibRecap+StRappelLibTableLibre ;
      for i:=0 to 11 do
          BEGIN
          C1:=FindComponent('IniRecap'+InttoStr(i+1)) ;
          C2:=FindComponent('RevRecap'+InttoStr(i+1)) ;
          C3:=FindComponent('ReaRecap'+InttoStr(i+1)) ;
          TQRLabel(C1).Caption:=PrintSoldeFormate(TotRecap[i*2], TotRecap[i*2+1], CritEdt.Decimale,CritEdt.Symbole,CritEdt.AfficheSymbole, Critedt.BalBud.SoldeFormate) ;
          TQRLabel(C2).Caption:=PrintSoldeFormate(TotRecap[(i*2)+26], TotRecap[(i*2)+(1+26)], CritEdt.Decimale,CritEdt.Symbole,CritEdt.AfficheSymbole, Critedt.BalBud.SoldeFormate) ;
          TQRLabel(C3).Caption:=PrintSoldeFormate(TotRecap[(i*2)+52], TotRecap[(i*2)+(1+52)], CritEdt.Decimale,CritEdt.Symbole,CritEdt.AfficheSymbole, Critedt.BalBud.SoldeFormate) ;
          END ;
      IniRecapTotal.Caption:=PrintSoldeFormate(TotRecap[24], TotRecap[25], CritEdt.Decimale,CritEdt.Symbole,CritEdt.AfficheSymbole, Critedt.BalBud.SoldeFormate) ;
      RevRecapTotal.Caption:=PrintSoldeFormate(TotRecap[50], TotRecap[51], CritEdt.Decimale,CritEdt.Symbole,CritEdt.AfficheSymbole, Critedt.BalBud.SoldeFormate) ;
      ReaRecapTotal.Caption:=PrintSoldeFormate(TotRecap[76], TotRecap[77], CritEdt.Decimale,CritEdt.Symbole,CritEdt.AfficheSymbole, Critedt.BalBud.SoldeFormate) ;
      {-----------------}
      { Calcul de l'�cart }
      for i:=0 to 11 do
          BEGIN
          { (Ini+Rev)-Rea }
          CalIni:=Arrondi(TotRecap[i*2]-TotRecap[i*2+1],CritEdt.Decimale) ;
          CalRev:=Arrondi(TotRecap[(i*2)+26]-TotRecap[(i*2)+(1+26)],CritEdt.Decimale) ;
          CalRea:=Arrondi(TotRecap[(i*2)+52]-TotRecap[(i*2)+(1+52)],CritEdt.Decimale) ;
          C4:=FindComponent('EcaRecap'+InttoStr(i+1)) ;
//          TQRLabel(C4).Caption:=AfficheMontant(CritEDT.FormatMontant, CritEDT.Symbole, CalRea-(CalIni+CalRev) , CritEDT.AfficheSymbole ) ;
          TQRLabel(C4).Caption:=PrintEcart(CalRea,(CalIni+CalRev),CritEDT.Decimale,DebitPos) ;
          END ;
      CalIni:=Arrondi(TotRecap[24]-TotRecap[25],CritEdt.Decimale) ;
      CalRev:=Arrondi(TotRecap[50]-TotRecap[51],CritEdt.Decimale) ;
      CalRea:=Arrondi(TotRecap[76]-TotRecap[77],CritEdt.Decimale) ;
//      EcaRecapTotal.Caption:=AfficheMontant(CritEDT.FormatMontant, CritEDT.Symbole, CalRea-(CalIni+CalRev) , CritEDT.AfficheSymbole ) ;
      EcaRecapTotal.Caption:=PrintEcart(CalRea,CalIni+CalRev,CritEDT.Decimale,DebitPos) ;
      END ;
   END ;
OkEnTeteRecap:=MoreData ;
end;

procedure TFQRBLteGS.BLibreHautBeforePrint(var PrintBand: Boolean; var Quoi: string);
begin
  inherited;
if CritEdt.BalBud.AvecCptSecond then BEGIN VideRecap(LRecap) ; ChargeRecap(LRecap) ; END ;
end;

procedure TFQRBLteGS.FSansRuptClick(Sender: TObject);
begin
  inherited;
if Not FSurRupt.Checked then FAvecCptSecond.Checked:=False ;
FAvecCptSecond.Enabled:=FSurRupt.Checked ;
if QuelEtatBud=Nature then
   BEGIN
   if Not FSansRupt.Checked then FTablesLibres.Checked:=True ;
   END ;
end;

procedure TFQRBLteGS.BNouvRechClick(Sender: TObject);
begin
  inherited;
FJournal.ItemIndex:=0 ;
//FRESOL.ItemIndex:=0 ;
InitResolution(FRESOL) ;

end;

procedure TFQRBLteGS.DLHRappelLibreNeedData(var MoreData: Boolean);
begin
  inherited;
MoreData:=OkRappelEnteteLibre ;
OkRappelEnteteLibre:=False ;
end;

procedure TFQRBLteGS.BLibreAfterPrint(BandPrinted: Boolean);
begin
  inherited;
if (CritEdt.Rupture=rLibres) then
   if CritEdt.BalBud.AvecCptSecond then BEGIN VideRecap(LRecap) ; ChargeRecap(LRecap) ; END ;
end;

procedure TFQRBLteGS.FFiltresChange(Sender: TObject);
begin
ChargeFiltre:=True;
  inherited;
ChargeFiltre:=False;
end;

end.
