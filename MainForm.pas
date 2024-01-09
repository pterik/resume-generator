unit MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.OleServer, WordXP, Vcl.Mask, Vcl.WinXCalendars, IdSMTP, IdMessage,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdSMTPBase,
  IdExplicitTLSClientServerBase, IdMessageClient, IdMessageBuilder, System.UITypes,
  IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack, IdSSL, IdSSLOpenSSL,
  FireDAC.Stan.Intf, FireDAC.Stan.Param, FireDAC.Phys.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait, FireDAC.Comp.Client,
  Data.DB, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Phys.PG, FireDAC.Phys.PGDef, FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef,
  Data.DBXMySQL, Data.SqlExpr, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids,
  VCL.TMSFNCTypes, VCL.TMSFNCUtils, VCL.TMSFNCGraphics, VCL.TMSFNCGraphicsTypes,
  VCL.TMSFNCWXDocx.Models, VCL.TMSFNCCustomComponent, VCL.TMSFNCBitmapContainer,
  VCL.TMSFNCCustomControl, VCL.TMSFNCWebBrowser, VCL.TMSFNCCustomWEBControl,
  VCL.TMSFNCCustomWEBComponent, VCL.TMSFNCWXDocx, FireDAC.Phys.IBDef,
  FireDAC.Phys.IB, FireDAC.Phys.IBBase, WordCS, Vcl.Menus, DBAccess, Uni,
  UniProvider, MySQLUniProvider, MemDS, DASQLMonitor, UniSQLMonitor;

type
  TWordReplaceFlags = set of (wrfReplaceAll, wrfMatchCase, wrfMatchWildcards);
  TWordDateSeparator = set of (Minus, Dot, Slash);
//  TWordRecType = set of (wtEdit, wtMemo, wtLink, wtEMAIL, wtImage);
  TWordRecType = set of (wtEdit, wtMemo, wtLink, wtEMAIL);
  TWordTypes=record
    WordType:TWordRecType;
    Active:Boolean;
    Key:string;
    StringValue:string;
    ReplaceText:array of string;
    ReplaceTextCount:integer;
    WordImage:TBitmap;
  end;

  TWordRecords = array of TWordTypes;

  TFormMain = class(TForm)
    BitBtnClose: TBitBtn;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    NNewTemplate: TMenuItem;
    NNewResume: TMenuItem;
    NNewTranslation: TMenuItem;
    N5: TMenuItem;
    NParameters: TMenuItem;
    UniConnection: TUniConnection;
    MySQLUniProvider1: TMySQLUniProvider;
    UniTransaction: TUniTransaction;
    UniSQLMonitor1: TUniSQLMonitor;
    Mailbox: TMenuItem;
    NTemplates: TMenuItem;
    BitBtnTemplates: TBitBtn;
    N2: TMenuItem;
    UniRegions: TUniQuery;
    UniLanguages: TUniQuery;
    UniLanguageslang: TStringField;
    UniLanguageslanguage: TStringField;
    UniLanguagesorderby: TIntegerField;
    UniLanguagescreated: TDateTimeField;
    UniLanguagesupdated: TDateTimeField;
    G1: TMenuItem;
    N3: TMenuItem;
    UniRegionsid: TStringField;
    UniRegionsregion_name: TStringField;
    UniRegionsdate_mask: TStringField;
    UniRegionsorderby: TIntegerField;
    UniRegionscreated: TDateTimeField;
    UniRegionsupdated: TDateTimeField;
    BitBtnNewUkrResume: TBitBtn;
    MemoText: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure NNewTemplateClick(Sender: TObject);
    procedure NNewResumeClick(Sender: TObject);
    procedure NNewTranslationClick(Sender: TObject);
    procedure NParametersClick(Sender: TObject);
    procedure MailboxClick(Sender: TObject);
    procedure NTemplatesClick(Sender: TObject);
    procedure BitBtnTemplatesClick(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure BitBtnNewUkrResumeClick(Sender: TObject);
  private
     WarningFired:boolean;
  protected
      procedure ActionChange(Sender: TObject; CheckDefaults: Boolean); override;
  public
    property Action;
    procedure Warning(const s: string);
  end;

var
  FormMain: TFormMain;

implementation

{$R *.dfm}

uses
System.StrUtils, System.IOUtils, System.Zip, System.inifiles, ShellApi,
System.Win.ComObj, System.RegularExpressions, System.DateUtils, Vcl.ExtActns,
Quick.Console, Quick.SMTP, NewTemplate, NewUkrainianResume, TranslateResume, Parameters,
  Emailbox, TemplatesList, ResumesList;

function ComputerName: string;
var
  Size: Cardinal;
begin
  Size := MAX_COMPUTERNAME_LENGTH + 1;
  SetLength(Result, Size);
  GetComputerName(PChar(Result), Size);
  // Урезаем строку до действительной длины имени компьютера
  SetLength(Result, Size);
end;

procedure TFormMain.Warning(const s: string);
begin
MemoText.Lines.Add(S);
if not WarningFired then
  begin
  ShowMessage(S);
  WarningFired :=true;
  end;
end;

procedure TFormMain.ActionChange(Sender: TObject; CheckDefaults: Boolean);
begin
  inherited;

end;


procedure TFormMain.BitBtnNewUkrResumeClick(Sender: TObject);
begin
if FormNewUkrainianResume=nil then Application.CreateForm(TFormNewUkrainianResume, FormNewUkrainianResume);
FormNewUkrainianResume.SetFormValues;
FormNewUkrainianResume.SetEmptyResume;
FormNewUkrainianResume.ShowModal;
end;

procedure TFormMain.BitBtnTemplatesClick(Sender: TObject);
begin
if FormTemplatesList=nil then Application.CreateForm(TFormTemplatesList, FormTemplatesList);
FormTemplatesList.SetFormValues;
FormTemplatesList.ShowModal;
end;

procedure TFormMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if UniConnection.Connected then UniConnection.Close;
end;

procedure TFormMain.FormCreate(Sender: TObject);
begin
UniConnection.Connected:=true;
end;

procedure TFormMain.FormDestroy(Sender: TObject);
begin
UniConnection.Destroy;
end;

procedure TFormMain.MailboxClick(Sender: TObject);
begin
if FormEmails=nil then Application.CreateForm(TFormEmails, FormEmails);
FormEmails.SetFormValues;
FormEmails.ShowModal;
end;

procedure TFormMain.NTemplatesClick(Sender: TObject);
begin
if FormTemplatesList=nil then Application.CreateForm(TFormTemplatesList, FormTemplatesList);
FormTemplatesList.SetFormValues;
FormTemplatesList.ShowModal;

end;

procedure TFormMain.N2Click(Sender: TObject);
begin
if FormListResumes=nil then Application.CreateForm(TFormListResumes, FormListResumes);
FormListResumes.SetFormValues;
FormListResumes.ShowModal;

end;

procedure TFormMain.N3Click(Sender: TObject);
begin
if FormEmails=nil then Application.CreateForm(TFormEmails, FormEmails);
FormEmails.SetFormValues;
FormEmails.ShowModal;
end;

procedure TFormMain.NNewResumeClick(Sender: TObject);
begin
if FormNewUkrainianResume=nil then Application.CreateForm(TFormNewUkrainianResume, FormNewUkrainianResume);
FormNewUkrainianResume.SetFormValues;
FormNewUkrainianResume.SetEmptyResume;
FormNewUkrainianResume.ShowModal;
end;

procedure TFormMain.NNewTemplateClick(Sender: TObject);
begin
if FormNewTemplate=nil then Application.CreateForm(TFormNewTemplate, FormNewTemplate);
FormNewTemplate.SetFormValues;
FormNewTemplate.ShowModal;
end;

procedure TFormMain.NNewTranslationClick(Sender: TObject);
begin
if FormTranslateResume=nil then Application.CreateForm(TFormTranslateResume, FormTranslateResume);
FormTranslateResume.SetFormValues;
FormTranslateResume.ShowModal;
end;

procedure TFormMain.NParametersClick(Sender: TObject);
begin
if FormParameters=nil then Application.CreateForm(TFormParameters, FormParameters);
FormParameters.SetFormValues;
FormParameters.ShowModal;
end;

end.
