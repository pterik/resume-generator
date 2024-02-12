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
  Data.DBXMySQL, Data.SqlExpr, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, FireDAC.Phys.IBDef,
  FireDAC.Phys.IB, FireDAC.Phys.IBBase, Vcl.Menus, DBAccess, Uni,
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
    procedure GetMonthRegionByMask(const D: TDatetime; Region: string;
      var FullMonthYear, ShortMonthYear: string);
    function IsEmpty(const S: String): boolean;
  end;

var
  FormMain: TFormMain;

implementation

{$R *.dfm}

uses
System.StrUtils, System.IOUtils, System.Zip, System.inifiles, ShellApi,
System.Win.ComObj, System.RegularExpressions, System.DateUtils, Vcl.ExtActns,
// Quick.Console, Quick.SMTP,
NewTemplate, NewUkrainianResume, TranslateResume, Parameters,
  Emailbox, TemplatesList, ResumesList;

function TFormMain.IsEmpty(const S: String): boolean;
begin
  Result := (Length(Trim(S)) <= 0);
end;


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
UniConnection.ProviderName := 'MySQL';
UniConnection.Server := 'localhost';
UniConnection.Port := 3306;
UniConnection.Username := 'jobreport';
UniConnection.Password := 'jobreport123';
UniConnection.database := 'jobsearch';
//UniConnection.SpecificOptions.Values['Schema'] := 'jobsearch';
UniConnection.Open;
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

procedure TFormMain.GetMonthRegionByMask(const D: TDatetime;
  Region: string; var FullMonthYear, ShortMonthYear: string);
var
  Year, MM, Day: Word;
begin
DecodeDate(D, Year, MM, Day);
if lowercase(Region) = 'template' then
  begin
  case MM of
      1:
        begin
          FullMonthYear := 'Январь' + ' ' + IntToStr(Year);
          ShortMonthYear := 'янв' + '. ' + IntToStr(Year);
        end;
      2:
        begin
          FullMonthYear := 'Февраль' + ' ' + IntToStr(Year);
          ShortMonthYear := 'фев' + '. ' + IntToStr(Year);
        end;
      3:
        begin
          FullMonthYear := 'Март' + ' ' + IntToStr(Year);
          ShortMonthYear := 'мар' + '. ' + IntToStr(Year);
        end;
      4:
        begin
          FullMonthYear := 'Апрель' + ' ' + IntToStr(Year);
          ShortMonthYear := 'апр' + '. ' + IntToStr(Year);
        end;
      5:
        begin
          FullMonthYear := 'Май' + ' ' + IntToStr(Year);
          ShortMonthYear := 'май' + '. ' + IntToStr(Year);
        end;
      6:
        begin
          FullMonthYear := 'Июнь' + ' ' + IntToStr(Year);
          ShortMonthYear := 'июн' + '. ' + IntToStr(Year);
        end;
      7:
        begin
          FullMonthYear := 'Июль' + ' ' + IntToStr(Year);
          ShortMonthYear := 'июл' + '. ' + IntToStr(Year);
        end;
      8:
        begin
          FullMonthYear := 'Август' + ' ' + IntToStr(Year);
          ShortMonthYear := 'авг' + '. ' + IntToStr(Year);
        end;
      9:
        begin
          FullMonthYear := 'Сентябрь' + ' ' + IntToStr(Year);
          ShortMonthYear := 'сен' + '. ' + IntToStr(Year);
        end;
      10:
        begin
          FullMonthYear := 'Октябрь' + ' ' + IntToStr(Year);
          ShortMonthYear := 'окт' + '. ' + IntToStr(Year);
        end;
      11:
        begin
          FullMonthYear := 'Ноябрь' + ' ' + IntToStr(Year);
          ShortMonthYear := 'ноя' + '. ' + IntToStr(Year);
        end;
      12:
        begin
          FullMonthYear := 'Декабрь' + ' ' + IntToStr(Year);
          ShortMonthYear := 'дек' + '. ' + IntToStr(Year);
        end;
    end;
  end;
if lowercase(Region) = 'ukraine' then
  begin
  case MM of
      1:
        begin
          FullMonthYear := 'Січень' + ' ' + IntToStr(Year);
          ShortMonthYear := 'січ' + '. ' + IntToStr(Year);
        end;
      2:
        begin
          FullMonthYear := 'Лютий' + ' ' + IntToStr(Year);
          ShortMonthYear := 'лют' + '. ' + IntToStr(Year);
        end;
      3:
        begin
          FullMonthYear := 'Березень' + ' ' + IntToStr(Year);
          ShortMonthYear := 'бер' + '. ' + IntToStr(Year);
        end;
      4:
        begin
          FullMonthYear := 'Квітень' + ' ' + IntToStr(Year);
          ShortMonthYear := 'кві' + '. ' + IntToStr(Year);
        end;
      5:
        begin
          FullMonthYear := 'Травень' + ' ' + IntToStr(Year);
          ShortMonthYear := 'тра' + '. ' + IntToStr(Year);
        end;
      6:
        begin
          FullMonthYear := 'Червень' + ' ' + IntToStr(Year);
          ShortMonthYear := 'чер' + '. ' + IntToStr(Year);
        end;
      7:
        begin
          FullMonthYear := 'Липень' + ' ' + IntToStr(Year);
          ShortMonthYear := 'лип' + '. ' + IntToStr(Year);
        end;
      8:
        begin
          FullMonthYear := 'Серпень' + ' ' + IntToStr(Year);
          ShortMonthYear := 'сер' + '. ' + IntToStr(Year);
        end;
      9:
        begin
          FullMonthYear := 'Вересень' + ' ' + IntToStr(Year);
          ShortMonthYear := 'вер' + '. ' + IntToStr(Year);
        end;
      10:
        begin
          FullMonthYear := 'Жовтень' + ' ' + IntToStr(Year);
          ShortMonthYear := 'жов' + '. ' + IntToStr(Year);
        end;
      11:
        begin
          FullMonthYear := 'Листопад' + ' ' + IntToStr(Year);
          ShortMonthYear := 'лис' + '. ' + IntToStr(Year);
        end;
      12:
        begin
          FullMonthYear := 'Грудень' + ' ' + IntToStr(Year);
          ShortMonthYear := 'гру' + '. ' + IntToStr(Year);
        end;
    end;
    // січень, лютий, березень, квітень, травень, червень, липень, серпень, вересень, жовтень, листопад, грудень.
  end;
  if lowercase(Region) = 'poland' then
  begin
    case MM of
      1:
        begin
          FullMonthYear := 'styczeń' + ' ' + IntToStr(Year);
          ShortMonthYear := 'sty' + '. ' + IntToStr(Year);
        end;
      2:
        begin
          FullMonthYear := 'luty' + ' ' + IntToStr(Year);
          ShortMonthYear := 'lut' + '. ' + IntToStr(Year);
        end;
      3:
        begin
          FullMonthYear := 'marzec' + ' ' + IntToStr(Year);
          ShortMonthYear := 'mar' + '.' + IntToStr(Year);
        end;
      4:
        begin
          FullMonthYear := 'kwiecień' + ' ' + IntToStr(Year);
          ShortMonthYear := 'kwi' + '. ' + IntToStr(Year);
        end;
      5:
        begin
          FullMonthYear := 'maj' + ' ' + IntToStr(Year);
          ShortMonthYear := 'maj' + '. ' + IntToStr(Year);
        end;
      6:
        begin
          FullMonthYear := 'czerwiec' + ' ' + IntToStr(Year);
          ShortMonthYear := 'cze' + '. ' + IntToStr(Year);
        end;
      7:
        begin
          FullMonthYear := 'lipiec' + ' ' + IntToStr(Year);
          ShortMonthYear := 'lip' + '. ' + IntToStr(Year);
        end;
      8:
        begin
          FullMonthYear := 'sierpień' + ' ' + IntToStr(Year);
          ShortMonthYear := 'sie' + '. ' + IntToStr(Year);
        end;
      9:
        begin
          FullMonthYear := 'wrzesień' + ' ' + IntToStr(Year);
          ShortMonthYear := 'wrz' + '. ' + IntToStr(Year);
        end;
      10:
        begin
          FullMonthYear := 'październik' + ' ' + IntToStr(Year);
          ShortMonthYear := 'paź' + '. ' + IntToStr(Year);
        end;
      11:
        begin
          FullMonthYear := 'listopad' + ' ' + IntToStr(Year);
          ShortMonthYear := 'lis' + '. ' + IntToStr(Year);
        end;
      12:
        begin
          FullMonthYear := 'grudzień' + ' ' + IntToStr(Year);
          ShortMonthYear := 'gru' + '. ' + IntToStr(Year);
        end;
    end;
    // styczeń, luty, marzec, kwiecień, maj, czerwiec, lipiec, sierpień, wrzesień, październik, listopad, grudzień.
  end;
  if lowercase(Region) = 'croatia' then
  begin
    case MM of
      1:
        begin
          FullMonthYear := 'siječanj' + ' ' + IntToStr(Year);
          ShortMonthYear := 'sij' + '. ' + IntToStr(Year);
        end;
      2:
        begin
          FullMonthYear := 'veljača' + ' ' + IntToStr(Year);
          ShortMonthYear := 'vel' + '. ' + IntToStr(Year);
        end;
      3:
        begin
          FullMonthYear := 'ožujak' + ' ' + IntToStr(Year);
          ShortMonthYear := 'ožu' + '. ' + IntToStr(Year);
        end;
      4:
        begin
          FullMonthYear := 'travanj' + ' ' + IntToStr(Year);
          ShortMonthYear := 'tra' + '. ' + IntToStr(Year);
        end;
      5:
        begin
          FullMonthYear := 'svibanj' + ' ' + IntToStr(Year);
          ShortMonthYear := 'svi' + '. ' + IntToStr(Year);
        end;
      6:
        begin
          FullMonthYear := 'lip' + ' ' + IntToStr(Year);
          ShortMonthYear := 'lip' + '. ' + IntToStr(Year);
        end;
      7:
        begin
          FullMonthYear := 'srpanj' + ' ' + IntToStr(Year);
          ShortMonthYear := 'srp' + '. ' + IntToStr(Year);
        end;
      8:
        begin
          FullMonthYear := 'kolovoz' + ' ' + IntToStr(Year);
          ShortMonthYear := 'kol' + '. ' + IntToStr(Year);
        end;
      9:
        begin
          FullMonthYear := 'rujan' + ' ' + IntToStr(Year);
          ShortMonthYear := 'ruj' + '. ' + IntToStr(Year);
        end;
      10:
        begin
          FullMonthYear := 'listopad' + ' ' + IntToStr(Year);
          ShortMonthYear := 'lis' + '. ' + IntToStr(Year);
        end;
      11:
        begin
          FullMonthYear := 'studeni' + ' ' + IntToStr(Year);
          ShortMonthYear := 'studeni' + '. ' + IntToStr(Year);
        end;
      12:
        begin
          FullMonthYear := 'prosinac' + ' ' + IntToStr(Year);
          ShortMonthYear := 'pro' + '. ' + IntToStr(Year);
        end;
    end;
    // Siječanj, veljača, ožujak, travanj, svibanj, lipanj, srpanj, kolovoz, rujan, listopad, studeni, prosinac
  end;
  if lowercase(Region) = 'germany' then
  begin
    case MM of
      1:
        begin
          FullMonthYear := 'Januar' + ' ' + IntToStr(Year);
          ShortMonthYear := 'Jan' + '. ' + IntToStr(Year);
        end;
      2:
        begin
          FullMonthYear := 'Februar';
          ShortMonthYear := 'Feb' + '. ' + IntToStr(Year);
        end;
      3:
        begin
          FullMonthYear := 'März';
          ShortMonthYear := 'Mär' + '. ' + IntToStr(Year);
        end;
      4:
        begin
          FullMonthYear := 'April';
          ShortMonthYear := 'Apr' + '. ' + IntToStr(Year);
        end;
      5:
        begin
          FullMonthYear := 'Mai';
          ShortMonthYear := 'Mai' + '. ' + IntToStr(Year);
        end;
      6:
        begin
          FullMonthYear := 'Juni';
          ShortMonthYear := 'Jun' + '. ' + IntToStr(Year);
        end;
      7:
        begin
          FullMonthYear := 'Juli';
          ShortMonthYear := 'Jul' + '. ' + IntToStr(Year);
        end;
      8:
        begin
          FullMonthYear := 'August';
          ShortMonthYear := 'Aug' + '. ' + IntToStr(Year);
        end;
      9:
        begin
          FullMonthYear := 'September';
          ShortMonthYear := 'Sep' + '. ' + IntToStr(Year);
        end;
      10:
        begin
          FullMonthYear := 'Oktober';
          ShortMonthYear := 'Okt' + '. ' + IntToStr(Year);
        end;
      11:
        begin
          FullMonthYear := 'November';
          ShortMonthYear := 'Nov' + '. ' + IntToStr(Year);
        end;
      12:
        begin
          FullMonthYear := 'Dezember';
          ShortMonthYear := 'Dez' + '. ' + IntToStr(Year);
        end;
    end;
    // Januar, Februar, März, April, Mai, Juni, Juli, August, September, Oktober, November, Dezember
  end;
  if (lowercase(Region) = 'england') or (lowercase(Region) = 'usa\canada') then
  begin
    case MM of
      1:
        begin
          FullMonthYear := 'January' + ' ' + IntToStr(Year);
          ShortMonthYear := 'Jan' + '. ' + IntToStr(Year);
        end;
      2:
        begin
          FullMonthYear := 'February' + ' ' + IntToStr(Year);
          ShortMonthYear := 'Feb' + '. ' + IntToStr(Year);
        end;
      3:
        begin
          FullMonthYear := 'March' + ' ' + IntToStr(Year);
          ShortMonthYear := 'Mar' + '. ' + IntToStr(Year);
        end;
      4:
        begin
          FullMonthYear := 'April' + ' ' + IntToStr(Year);
          ShortMonthYear := 'Apr' + '. ' + IntToStr(Year);
        end;
      5:
        begin
          FullMonthYear := 'May' + ' ' + IntToStr(Year);
          ShortMonthYear := 'May' + '. ' + IntToStr(Year);
        end;
      6:
        begin
          FullMonthYear := 'June' + ' ' + IntToStr(Year);
          ShortMonthYear := 'Jun' + '. ' + IntToStr(Year);
        end;
      7:
        begin
          FullMonthYear := 'July' + ' ' + IntToStr(Year);
          ShortMonthYear := 'Jul' + ' .' + IntToStr(Year);
        end;
      8:
        begin
          FullMonthYear := 'August' + ' ' + IntToStr(Year);
          ShortMonthYear := 'Aug' + '. ' + IntToStr(Year);
        end;
      9:
        begin
          FullMonthYear := 'September' + ' ' + IntToStr(Year);
          ShortMonthYear := 'Sep' + '. ' + IntToStr(Year);
        end;
      10:
        begin
          FullMonthYear := 'October' + ' ' + IntToStr(Year);
          ShortMonthYear := 'Oct' + '. ' + IntToStr(Year);
        end;
      11:
        begin
          FullMonthYear := 'November' + ' ' + IntToStr(Year);
          ShortMonthYear := 'Nov' + '. ' + IntToStr(Year);
        end;
      12:
        begin
          FullMonthYear := 'December' + ' ' + IntToStr(Year);
          ShortMonthYear := 'Dec' + '. ' + IntToStr(Year);
        end;
    end;
    // January, February, March, April, May, June, July, August, September, October, November, December
  end;
end;

end.
