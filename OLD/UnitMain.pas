unit UnitMain;

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
  FireDAC.Phys.IB, FireDAC.Phys.IBBase, WordCS;

const
CONST_URL_RECOMMENDATION = 'bit.ly/44DY2tY';
CONST_EMAIL = 'vitaly.makhaev@gmail.com';

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
    MemoText: TMemo;
    BitBtnClose: TBitBtn;
    BitBtnGo: TBitBtn;
    BitBtnCheck: TBitBtn;
    BitBtnCV: TBitBtn;
    BitBtnLetter: TBitBtn;
    BitBtnPDF: TBitBtn;
    PageControl1: TPageControl;
    TabSheetMain: TTabSheet;
    TabSheetHeader: TTabSheet;
    ComboBoxCountry: TComboBox;
    Label8: TLabel;
    Label9: TLabel;
    Label14: TLabel;
    EditPosition: TEdit;
    CBTemplate: TComboBox;
    Label10: TLabel;
    EditMainFolder: TEdit;
    Label1: TLabel;
    EditPosition_UKR: TEdit;
    MemoHeader: TMemo;
    Label2: TLabel;
    MemoHeader_Ukr: TMemo;
    StaticText1: TStaticText;
    MemoSkills: TMemo;
    MemoSkills_Ukr: TMemo;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    BitBtnFind: TBitBtn;
    EditRecommend: TEdit;
    Label3: TLabel;
    CheckBoxExtraComment: TCheckBox;
    Label16: TLabel;
    BitBtnOpenTmpl: TBitBtn;
    TabSheetJob1: TTabSheet;
    TabSheetJob2: TTabSheet;
    TabSheetJob3: TTabSheet;
    TabSheetJob4: TTabSheet;
    TabSheetJob5: TTabSheet;
    TabSheetJob6: TTabSheet;
    TabSheetJob7: TTabSheet;
    TabSheetJob8: TTabSheet;
    TabSheetJob9: TTabSheet;
    TabSheet10: TTabSheet;
    ComboBoxDateFormat: TComboBox;
    Edit1Dates: TEdit;
    Edit1Name: TEdit;
    Edit1Company: TEdit;
    CalendarPickerB1: TCalendarPicker;
    CalendarPickerE1: TCalendarPicker;
    Memo1Resp: TMemo;
    Edit1Benefits: TEdit;
    Edit1Skills: TEdit;
    Edit2Dates: TEdit;
    Edit2Name: TEdit;
    Edit2Company: TEdit;
    CalendarPickerB2: TCalendarPicker;
    CalendarPickerE2: TCalendarPicker;
    Memo2Resp: TMemo;
    Edit2Benefits: TEdit;
    Edit2Skills: TEdit;
    Edit3Dates: TEdit;
    Edit3Name: TEdit;
    Edit3Company: TEdit;
    CalendarPickerB3: TCalendarPicker;
    CalendarPickerE3: TCalendarPicker;
    Memo3Resp: TMemo;
    Edit3Benefits: TEdit;
    Edit3Skills: TEdit;
    Edit4Dates: TEdit;
    Edit4Name: TEdit;
    Edit4Company: TEdit;
    CalendarPickerB4: TCalendarPicker;
    CalendarPickerE4: TCalendarPicker;
    Memo4Resp: TMemo;
    Edit4Benefits: TEdit;
    Edit4Skills: TEdit;
    Edit5Dates: TEdit;
    Edit5Name: TEdit;
    Edit5Company: TEdit;
    CalendarPickerB5: TCalendarPicker;
    CalendarPickerE5: TCalendarPicker;
    Memo5Resp: TMemo;
    Edit5Benefits: TEdit;
    Edit5Skills: TEdit;
    Memo6Resp: TMemo;
    Edit6Benefits: TEdit;
    Edit6Skills: TEdit;
    Memo7Resp: TMemo;
    Edit7Benefits: TEdit;
    Edit7Skills: TEdit;
    Memo8Resp: TMemo;
    Edit8Benefits: TEdit;
    Edit8Skills: TEdit;
    Memo9Resp: TMemo;
    Edit9Benefits: TEdit;
    Edit9Skills: TEdit;
    Memo10Resp: TMemo;
    Edit10Benefits: TEdit;
    Edit10Skills: TEdit;
    Edit6Dates: TEdit;
    Edit6Name: TEdit;
    Edit6Company: TEdit;
    CalendarPickerB6: TCalendarPicker;
    CalendarPickerE6: TCalendarPicker;
    CalendarPickerB7: TCalendarPicker;
    CalendarPickerE7: TCalendarPicker;
    Edit7Dates: TEdit;
    Edit7Name: TEdit;
    Edit7Company: TEdit;
    CalendarPickerB8: TCalendarPicker;
    CalendarPickerE8: TCalendarPicker;
    Edit8Dates: TEdit;
    Edit8Name: TEdit;
    Edit8Company: TEdit;
    Edit9Dates: TEdit;
    CalendarPickerB9: TCalendarPicker;
    CalendarPickerE9: TCalendarPicker;
    Edit9Name: TEdit;
    Edit9Company: TEdit;
    CalendarPickerB10: TCalendarPicker;
    CalendarPickerE10: TCalendarPicker;
    Edit10Dates: TEdit;
    Edit10Name: TEdit;
    Edit10Company: TEdit;
    Memo8Footer: TMemo;
    Memo1Footer: TMemo;
    Memo2Footer: TMemo;
    Memo3Footer: TMemo;
    Memo4Footer: TMemo;
    Memo5Footer: TMemo;
    Memo6Footer: TMemo;
    Memo7Footer: TMemo;
    Memo9Footer: TMemo;
    Memo10Footer: TMemo;
    TabSheetAlarms: TTabSheet;
    Label4: TLabel;
    Label6: TLabel;
    EditTag: TEdit;
    EditEmail: TEdit;
    BitBtnInsertTag: TBitBtn;
    BitBtnInsertEmail: TBitBtn;
    FDTransaction: TFDTransaction;
    FDOneTag: TFDQuery;
    FDInsertTag: TFDQuery;
    FDOneEmail: TFDQuery;
    FDInsertEmail: TFDQuery;
    DataSourceTags: TDataSource;
    DataSourceEmails: TDataSource;
    DBGridEmails: TDBGrid;
    DBGridTags: TDBGrid;
    BitBtnDeleteEmail: TBitBtn;
    FDTableEmails: TFDTable;
    BitBtnDeleteTag: TBitBtn;
    FDTableTags: TFDTable;
    CheckBoxMailcheck: TCheckBox;
    TabSheet1: TTabSheet;
    BitBtnOpenMailbox: TBitBtn;
    MemoLog: TMemo;
    FDPhysIBDriverLink1: TFDPhysIBDriverLink;
    FDConnectionIB: TFDConnection;
    FDTableEmailsID: TIntegerField;
    FDTableEmailsSENDER: TStringField;
    FDTableEmailsRECEIVER: TStringField;
    FDTableEmailsOTHER_RECEIVERS: TStringField;
    FDTableEmailsSUBJECT: TStringField;
    FDTableEmailsBODY: TStringField;
    FDTableEmailsIMAP_KEYID: TStringField;
    FDTableEmailsATTACHMENT_SIZE: TIntegerField;
    FDTableEmailsARCHIVED: TBooleanField;
    FDTableEmailsMAILBOX_RECEIVED: TSQLTimeStampField;
    FDTableEmailsCREATED: TSQLTimeStampField;
    FDTableEmailsUPDATED: TSQLTimeStampField;
    FDTableEmailsDB_RECEIVED: TSQLTimeStampField;
    FDTableTagsID: TIntegerField;
    FDTableTagsTAG: TStringField;
    WordApplication1: TWordApplication;
    WordDocument1: TWordDocument;
    WordRange1: TWordRange;
    BitBtnTemplates: TBitBtn;
    CheckBoxWordWrap: TCheckBox;
    BitBtnNewResume: TBitBtn;
    BitBtnTranslateResume: TBitBtn;
    procedure Label1DblClick(Sender: TObject);
    procedure BitBtnGoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EditPositionExit(Sender: TObject);
    procedure ComboBoxCountryChange(Sender: TObject);
    procedure BitBtnCheckClick(Sender: TObject);
    procedure BitBtnCVClick(Sender: TObject);
    procedure BitBtnLetterClick(Sender: TObject);
    procedure CBTemplateExit(Sender: TObject);
    procedure BitBtnPDFClick(Sender: TObject);
    procedure CalendarPickerB1Change(Sender: TObject);
    procedure CalendarPickerB2Change(Sender: TObject);
    procedure CalendarPickerB3Change(Sender: TObject);
    procedure CalendarPickerB4Change(Sender: TObject);
    procedure CalendarPickerB5Change(Sender: TObject);
    procedure CalendarPickerB6Change(Sender: TObject);
    procedure CalendarPickerB7Change(Sender: TObject);
    procedure CalendarPickerB8Change(Sender: TObject);
    procedure CalendarPickerB9Change(Sender: TObject);
    procedure BitBtnOpenTmplClick(Sender: TObject);
    procedure BitBtnSendClick(Sender: TObject);
    procedure BitBtnKeywordClick(Sender: TObject);
    procedure BitBtnInsertEmailClick(Sender: TObject);
    procedure BitBtnInsertTagClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BitBtnDeleteEmailClick(Sender: TObject);
    procedure BitBtnDeleteTagClick(Sender: TObject);
    procedure BitBtnOpenMailboxClick(Sender: TObject);
    procedure CheckBoxWordWrapClick(Sender: TObject);
    procedure BitBtnTemplatesClick(Sender: TObject);
  private
    WordRecords:TWordRecords;
    WarningFired:boolean;
    FileResumeTarget, FileCVTarget, FileCLTarget,FileResumePDF, FileCVPDF, FileCLPDF:string;
    Country, Position, MainFolder, Group:string;
    WApp1:OLEVariant;
    WordWrap:boolean;
    DateSeparator:TWordDateSeparator;
    procedure InsertOrUpdateTag(const Value: string);
    procedure InsertOrUpdateEmail(const Value: string);
    procedure Warning(const s: string);
    procedure ListEmails;
    procedure ListTags;

   protected
      procedure ActionChange(Sender: TObject; CheckDefaults: Boolean); override;
   public
    property Action;
    function GetMonthByMask(const D:TDateTime):string;
    procedure SetWordRecord(I:integer; Key:string;WordType:TWordRecType; const EditTxt:TEdit); overload;
    procedure SetWordRecord(I:integer; Key:string;WordType:TWordRecType; const STxt:String); overload;
    procedure SetWordRecord(I: integer; Key: string; WordType: TWordRecType; const MemoTx: TMemo);overload;
    procedure SetValues;
    procedure ShowValues;
    procedure PresetJobValues;
    function OLE_FileReplace(FWordFrom, FWordTo:TFileName):boolean;
  end;

var
  FormMain: TFormMain;

implementation

{$R *.dfm}

uses
System.StrUtils, System.IOUtils, System.Zip, System.inifiles, ShellApi,
System.Win.ComObj, System.RegularExpressions, System.DateUtils, Vcl.ExtActns,
Quick.Console, Quick.SMTP, UnitTemplates;

const
//FWordTemplate='c:\Users\vital\Documents\Поиск работы\DEV\R Template.docx';
//FWordTarget='c:\Users\vital\Documents\Поиск работы\DEV\R testapp.docx';
EMail='admin@data-migration.club';
Password='Pterik1maxa';

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
procedure TFormMain.BitBtnCVClick(Sender: TObject);
begin
if FileCVTarget<>'' then ShellExecute(Handle, 'open', PWideChar(FileCVTarget), nil, nil, SW_SHOWNORMAL) ;
end;

procedure TFormMain.BitBtnDeleteEmailClick(Sender: TObject);
begin
if MessageDlg('Подтвердите удаление', MtWarning, [mbYes,mbNo],0)=mrYes
  then FDTableEmails.Delete;
FDTableEmails.Refresh;
end;

procedure TFormMain.BitBtnInsertTagClick(Sender: TObject);
begin
if length(trim(EditTag.Text))=0
then
  begin
  Warning('Указан пустой domain');
  exit;
  end;
InsertOrUpdateTag(trim(EditTag.Text));
EditTag.Clear;
FDTableTags.Refresh;
end;

procedure TFormMain.BitBtnInsertEmailClick(Sender: TObject);
var
i:Integer;
isNonLatinFound:boolean;
charSet:TSysCharSet;
email:string;
begin
charSet:=['a'..'z'];
charSet:=charSet+['1'..'9'];
charSet:=charSet+['@'];
charSet:=charSet+['.'];
charSet:=charSet+['-'];
charSet:=charSet+['_'];
email:=lowercase(trim(EditEmail.Text));
if not CheckBoxMailcheck.Checked then
  begin
  if length(email)=0
    then
      begin
      Warning('Поле email пустое');
      exit;
      end;
  if Pos('@',email)=0
    then
      begin
      Warning('Знак @ не указан в поле email');
      exit;
      end;
  if Pos('.',email)=0
    then
      begin
      Warning('Точка не указана в поле email');
      exit;
      end;
  if Pos(' ',email)>0
    then
      begin
      Warning('Пробел указан поле email в позиции '+IntToStr(Pos(' ',EditEmail.Text)));
      exit;
      end;
  if Pos('.',email)>length(email)-2
    then
      begin
      Warning('Неверно указано расширение домена ');
      exit;
      end;
  isNonLatinFound:=false;
  Email:=lowercase(EditEmail.Text);
  for i:=1 to length(Email)-1 do
      begin
      if not(CharInSet(Email[i], charSet) or (email[i]='@') or (email[i]='.')) then
        begin
        isNonLatinFound:=True;
        break;
        end;
      end;
  if isnonLatinFound
    then
      begin
      Warning('Найден нелатинский символ "'+email[i]+'" в поле email');
      exit;
      end;
  end;
InsertOrUpdateEmail(email);
EditEmail.Clear;
FDTableEmails.Refresh;
end;

procedure TFormMain.BitBtnPDFClick(Sender: TObject);
const
  wdExportFormatPDF = 17;
var
  Word1, Doc1: OleVariant;
  Word2, Doc2: OleVariant;
  Word3, Doc3: OleVariant;
  Hf1, Hf2, Hf3 : Integer;
begin
if (trim(FileCLPDF)+trim(FileCVPDF)+trim(FileResumePDF)='')   then
  begin
    Warning('Нажмите Go, создайте DOCX файлы');
    exit;
  end;
MemoLog.Lines.Add('"'+FileCLPDF+'"'+' :CL');
MemoLog.Lines.Add('"'+FileCVPDF+'" :CV');
MemoLog.Lines.Add('"'+FileResumePDF+'" :R');
if FileExists(FileCLPDF) then
  begin
    Hf1 := FileOpen(FileCLPDF, fmOpenReadWrite or fmShareExclusive);
    if Hf1 = -1
      then
      begin
        Warning('Файл открыт в другой программе: '+FileCLPDF);
        exit;
      end
      else
        begin
          FileClose(Hf1);
          DeleteFile(FileCLPDF);
        end;
  end;
if FileExists(FileCVPDF) then
  begin
    Hf2 := FileOpen(FileCVPDF, fmOpenReadWrite or fmShareExclusive);
    if Hf2 = -1
      then
      begin
        Warning('Файл открыт в другой программе: '+FileCVPDF);
        exit;
      end
      else
        begin
          FileClose(Hf2);
          DeleteFile(FileCVPDF);
        end;
  end;
if FileExists(FileResumePDF) then
  begin
    Hf3 := FileOpen(FileResumePDF, fmOpenReadWrite or fmShareExclusive);
    if Hf3 = -1
      then
      begin
        Warning('Файл открыт в другой программе: '+FileResumePDF);
        exit;
      end
      else
        begin
          FileClose(Hf3);
          DeleteFile(FileResumePDF);
        end;
  end;
try
Word1 := CreateOLEObject('Word.Application');
Doc1 := Word1.Documents.Open(FileCLTarget);
Doc1.ExportAsFixedFormat(FileCLPDF, wdExportFormatPDF);
finally
  Doc1.Close;
  Word1.Quit;
  Word1 := Unassigned;
end;
try
Word2 := CreateOLEObject('Word.Application');
Doc2 := Word2.Documents.Open(FileCVTarget);
Doc2.ExportAsFixedFormat(FileCVPDF, wdExportFormatPDF);
finally
  Doc2.Close;
  Word2.Quit;
  Word2 := Unassigned;
end;
try
Word3 := CreateOLEObject('Word.Application');
Doc3 := Word3.Documents.Open(FileResumeTarget);
Doc3.ExportAsFixedFormat(FileResumePDF, wdExportFormatPDF);
finally
  Doc3.Close;
  Word3.Quit;
  Word3 := Unassigned;
end;

end;

procedure TFormMain.BitBtnOpenTmplClick(Sender: TObject);
begin
if FIleResumeTarget<>'' then ShellExecute(Handle, 'open', PWideChar(FileResumeTarget), nil, nil, SW_SHOWNORMAL) ;
end;

procedure TFormMain.ActionChange(Sender: TObject; CheckDefaults: Boolean);
begin
  inherited;

end;

procedure TFormMain.BitBtnSendClick(Sender: TObject);
var
  smtp : TSMTP;
begin
try
  smtp := TSMTP.Create('mail.adm.tools',25,False);
  try
      smtp.Username := 'admin@data-migration.club';
      smtp.Password := 'Youknowme2';
      smtp.Mail.AddAttachment('resume.png','C:\Temp\resume.png');
      smtp.Mail.AddAttachment('Compile1.png','C:\Temp\Compile1.png');
      smtp.Mail.Attachments.Add('C:\Temp\Compile2.png');
      smtp.Mail.SenderName := 'pterik@gmail.com';
      smtp.Mail.From := 'admin@data-migration.club';
      smtp.Mail.Recipient := 'job@data-migration.club';
      smtp.Mail.Subject := 'Test message тестируем';
      smtp.Mail.Body := 'Hello world здравствуй мир';
      smtp.SendMail;
      MemoText.Lines.Add('Сообщение отослано');
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
finally
   smtp.Free;
end;
end;

procedure TFormMain.BitBtnTemplatesClick(Sender: TObject);
begin
if (FormNewTemplate=nil) then
  begin
  FormNewTemplate:=TFormNewTemplate.Create(Self);
  end;
FormNewTemplate.ShowModal;
end;

procedure TFormMain.BitBtnDeleteTagClick(Sender: TObject);
begin
if MessageDlg('Подтвердите удаление', MtWarning, [mbYes,mbNo],0)=mrYes
  then FDTableTags.Delete;
FDTableTags.Refresh;
end;

procedure TFormMain.BitBtnOpenMailboxClick(Sender: TObject);
begin
FDConnectionIB.Connected:=true;
FDTableEmails.Active:=true;
FDTableTags.Active:=true;
end;

procedure TFormMain.BitBtnCheckClick(Sender: TObject);
begin
if FileResumeTarget<>'' then ShellExecute(Handle, 'open', PWideChar(FileResumeTarget), nil, nil, SW_SHOWNORMAL) ;
end;

procedure TFormMain.BitBtnGoClick(Sender: TObject);
var
FileResumeTemplate, FileCVTemplate, FileCLTemplate:string;
TemplatesAreReady:boolean;
begin
WarningFired:=false;
SetValues;
ShowValues;
TemplatesAreReady:=true;
//FileResumeTemplate:=MainFolder+'\'+Resume+'\R Template '+Template+'.docx';
//FileCVTemplate:=MainFolder+'\'+CV+'\CV Template '+Template+'.docx';
//FileLetterTemplate:=MainFolder+'\'+CoverLetter+'\CL Template '+Template+'.docx';
//
//FileResumeTarget:=MainFolder+'\'+Resume+'\R '+Position+' '+Template+'.docx';
//FileCVTarget:=MainFolder+'\'+CV+'\CV '+Position+' '+Template+'.docx';
//FileLetterTarget:=MainFolder+'\'+CoverLetter+'\CL '+Position+' '+Template+'.docx';
//
//FileResumePDF:=MainFolder+'\'+Resume+'\R '+Position+' '+Template+'.pdf';
//FileCVPDF:=MainFolder+'\'+CV+'\CV '+Position+' '+Template+'.pdf';
//FileLetterPDF:=MainFolder+'\'+CoverLetter+'\CL '+Position+' '+Template+'.pdf';
FileResumeTemplate:=MainFolder+'\Template\R Template '+Group+'.docx';
FileCVTemplate:=MainFolder+'\Template\CV Template '+Group+'.docx';
FileCLTemplate:=MainFolder+'\Template\CL Template '+Group+'.docx';

FileResumeTarget:=MainFolder+'\!Resume\R '+Position+' '+Group+'.docx';
FileCVTarget:=MainFolder+'\CV\CV '+Position+' '+Group+'.docx';
FileCLTarget:=MainFolder+'\CL\CL '+Position+' '+Group+'.docx';

FileResumePDF:=MainFolder+'\PDF\R '+Position+' '+Group+'.pdf';
FileCVPDF:=MainFolder+'\PDF\CV '+Position+' '+Group+'.pdf';
FileCLPDF:=MainFolder+'\PDF\CL '+Position+' '+Group+'.pdf';
//if not FileExists(FileResumeTemplate) then
//  begin
//    Warning('File not found: '+FileResumeTemplate);
//    TemplatesAreReady:=false;
//  end;
//if not FileExists(FileResumeTemplate) then
//  begin
//    Warning('File not found: '+FileCVTemplate);
//    TemplatesAreReady:=false;
//  end;
//if not FileExists(FileLetterTemplate) then
//  begin
//    Warning('File not found: '+FileLetterTemplate);
//    TemplatesAreReady:=false;
//  end;
//if not TemplatesAreReady
//  then
//  begin
//    Warning('Template DOCX files not exists, exit');
//    exit;
//  end;
try
if FileExists(FileResumeTarget) then
    DeleteFile(FileResumeTarget);
if FileExists(FileCVTarget) then
    DeleteFile(FileCVTarget);
if FileExists(FileCLTarget) then
    DeleteFile(FileCLTarget);
if length(Trim(EditPosition.Text))<5 then
  begin
    Warning('Должность не указана или менее 5 символов, exit');
    exit;
  end;

if not OLE_FileReplace(FileResumeTemplate, FileResumeTarget)
then
  begin
    Warning('Сбой при обработке шаблона Резюме "'+FileResumeTemplate+'"');
  exit;
  end;

if not OLE_FileReplace(FileCVTemplate, FileCVTarget)
then
  begin
    Warning('Сбой при обработке шаблона CV "'+FileCVTemplate+'"');
  exit;
  end;
if not OLE_FileReplace(FileCLTemplate, FileCLTarget)
then
  begin
    Warning('Сбой при обработке шаблона CL "'+FileCLTemplate+'"');
  exit;
  end;
//if not TMS_FileReplace(FileCVTarget)
//then
//  begin
//    Warning('Сбой при обработке CV "'+FileCVTarget+'"');
//  exit;
//  end;
//
//if not TMS_FileReplace(FileLetterTarget)
//then
//  begin
//    Warning('Сбой при обработке Cover Letter "'+FileLetterTarget+'"');
//  exit;
//  end;
//if not TMS_FileReplace(FileResumeTarget)
//then
//  begin
//    Warning('Сбой при обработке Резюме "'+FileResumeTarget+'"');
//  exit;
//  end;


MemoText.Lines.Add('Шаблоны успешно обработаны, резюме готово: '+EditPosition.Text);
MemoLog.Lines.Add('CL="'+FileCLTarget+'"');
MemoLog.Lines.Add('CV="'+FileCVTarget+'"');
MemoLog.Lines.Add(' R="'+FileResumeTarget+'"');
except on E:Exception do
  Warning('Error message: '+E.Message);
end;

end;

procedure TFormMain.BitBtnKeywordClick(Sender: TObject);
begin
if length(trim(EditTag.Text))=0
then
  begin
  Warning('Указан пустой keyword');
  exit;
  end;
InsertOrUpdateTag(trim(EditTag.Text));
end;

procedure TFormMain.BitBtnLetterClick(Sender: TObject);
begin
if FileCLTarget<>'' then ShellExecute(Handle, 'open', PWideChar(FileCLTarget), nil, nil, SW_SHOWNORMAL) ;
end;

procedure TFormMain.CalendarPickerB1Change(Sender: TObject);
begin
Edit1Dates.Text:=GetMonthByMask(CalendarPickerB1.Date)+'-'+GetMonthByMask(CalendarPickerE1.Date);
end;

procedure TFormMain.CalendarPickerB2Change(Sender: TObject);
begin
Edit2Dates.Text:=GetMonthByMask(CalendarPickerB2.Date)+'-'+GetMonthByMask(CalendarPickerE2.Date);
end;

procedure TFormMain.CalendarPickerB3Change(Sender: TObject);
begin
Edit3Dates.Text:=GetMonthByMask(CalendarPickerB3.Date)+'-'+GetMonthByMask(CalendarPickerE3.Date);
end;

procedure TFormMain.CalendarPickerB4Change(Sender: TObject);
begin
Edit4Dates.Text:=GetMonthByMask(CalendarPickerB4.Date)+'-'+GetMonthByMask(CalendarPickerE4.Date);
end;

procedure TFormMain.CalendarPickerB5Change(Sender: TObject);
begin
Edit5Dates.Text:=GetMonthByMask(CalendarPickerB5.Date)+'-'+GetMonthByMask(CalendarPickerE5.Date);
end;

procedure TFormMain.CalendarPickerB6Change(Sender: TObject);
begin
Edit6Dates.Text:=GetMonthByMask(CalendarPickerB6.Date)+'-'+GetMonthByMask(CalendarPickerE6.Date);
end;

procedure TFormMain.CalendarPickerB7Change(Sender: TObject);
begin
Edit7Dates.Text:=GetMonthByMask(CalendarPickerB7.Date)+'-'+GetMonthByMask(CalendarPickerE7.Date);
end;

procedure TFormMain.CalendarPickerB8Change(Sender: TObject);
begin
Edit8Dates.Text:=GetMonthByMask(CalendarPickerB8.Date)+'-'+GetMonthByMask(CalendarPickerE8.Date);
end;

procedure TFormMain.CalendarPickerB9Change(Sender: TObject);
begin
Edit9Dates.Text:=GetMonthByMask(CalendarPickerB9.Date)+'-'+GetMonthByMask(CalendarPickerE9.Date);
end;

procedure TFormMain.CBTemplateExit(Sender: TObject);
begin
Group:=CBTemplate.Text;
MemoLog.Lines.Add('Group="'+Group+'"');
end;

procedure TFormMain.CheckBoxWordWrapClick(Sender: TObject);
begin
WordWrap:=(CheckBoxWordWrap.Checked);
MemoHeader.WordWrap:=WordWrap;
MemoHeader_Ukr.WordWrap:=WordWrap;
MemoSkills.WordWrap:=WordWrap;
MemoSkills_Ukr.WordWrap:=WordWrap;
end;

procedure TFormMain.ComboBoxCountryChange(Sender: TObject);
begin
Country:=ComboBoxCountry.Text;
if (ComputerName()='LAPTOP-PTERIK')
  then MainFolder:='D:\Мой диск\Поиск работы\Поиск работы '+Country
  else
  if (ComputerName()='VESTA')
    then MainFolder:='c:\Users\vital\Documents\Поиск работы\DEV\Templates\'
    else MainFolder:='??';
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

procedure TFormMain.EditPositionExit(Sender: TObject);
begin
EditPosition.Text:=ReplaceStr(EditPosition.Text, '\','');
EditPosition.Text:=ReplaceStr(EditPosition.Text, '/','');
EditPosition.Text:=ReplaceStr(EditPosition.Text, ':','');
Position:=EditPosition.Text;
end;

procedure TFormMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if FDOneTag.Active then FDOneTag.Close;
if FDTableTags.Active then FDTableTags.Close;
if FDTableEmails.Active then FDTableEmails.Close;
if FDInsertTag.Active then FDInsertTag.Close;
if FDOneEmail.Active then FDOneEmail.Close;
if FDInsertEmail.Active then FDInsertEmail.Close;
if FDConnectionIB.Connected then FDConnectionIB.Close;
end;

procedure TFormMain.FormCreate(Sender: TObject);
begin
WordWrap:=false;
FDConnectionIB.Connected:=false;
FileResumeTarget:='';
FileCVTarget:='';
FileCLTarget:='';
FileResumePDF:='';
FileCVPDF:='';
FileCLPDF:='';
ComboBoxCountry.Text:='Украина';
Country:=ComboBoxCountry.Text;
MainFolder:='??';
if (ComputerName()='LAPTOP-PTERIK')
  then MainFolder:='D:\Мой диск\Поиск работы\Поиск работы '+Country
  else
  if (ComputerName()='VESTA')
    then MainFolder:='e:\Jobsearch\'
    else MainFolder:='??';
EditMainFolder.Text:=MainFolder;
Country:=ComboBoxCountry.Text;
Position:=EditPosition.Text;
ComboBoxDateFormat.ItemIndex:=0;
DateSeparator:=[Dot];
PresetJobValues;
try
  WApp1:=CreateOleObject('Word.Application');
except
  Warning('Ошибка запуска MS Word. Проверьте установку Microsoft Office');
end;

end;

procedure TFormMain.FormDestroy(Sender: TObject);
begin
FDConnectionIB.Destroy;
end;

function TFormMain.GetMonthByMask(const D: TDatetime): string;
var
Year, Month, Day: Word;
begin
Result:='';
DecodeDate(D, Year, Month, Day);
case ComboBoxDateFormat.ItemIndex of
-1:
  begin
  Result:='';
  end;
0:
  begin
  DateSeparator:=[Dot];
  Result:=IntToStr(Month)+'.'+IntToStr(Year);
  end;
1:
  begin
  DateSeparator:=[Slash];
  Result:=IntToStr(Month)+'/'+IntToStr(Year);
  end;
2:  begin
  DateSeparator:=[Minus];
  Result:=IntToStr(Month)+'-'+IntToStr(Year);
  end;
end;
end;

procedure TFormMain.InsertOrUpdateTag(const Value: string);
begin
FDOneTag.Close;
FDOneTag.Params.ParamByName('tag').Value:=trim(lowercase(Value));
FDOneTag.Open();
if (FDOneTag['cntr']=0) then
  begin
  FDInsertTag.Prepare;
  FDInsertTag.Params.ParamByName('tag').Value:=trim(lowercase(Value));
  FDInsertTag.Execute();
  end;
end;

procedure TFormMain.InsertOrUpdateEmail(const Value: string);
begin
FDOneEmail.Close;
FDOneEmail.Params.ParamByName('Email').Value:=trim(lowercase(Value));
FDOneEmail.Open();
if (FDOneEmail['cntr']=0) then
  begin
  FDInsertEmail.Close;
  FDInsertEmail.Params.ParamByName('email').Value:=trim(lowercase(Value));
  FDInsertEmail.Execute();
  end;
end;

procedure TFormMain.Label1DblClick(Sender: TObject);
begin
EditMainFolder.ReadOnly:=false;
end;

procedure TFormMain.ListEmails;
begin

end;

procedure TFormMain.ListTags;
begin

end;

function TFormMain.OLE_FileReplace(FWordFrom, FWordTo: TFileName): boolean;
var
I,J:integer;
Fs : TFileStream;
WordDoc1: OleVariant;
WordSel:OleVariant;
begin
Result:=true;
//SetValues();
if not FileExists(FWordFrom) then
  begin
    ShowMessage('Document not found: '+FWordFrom);
    Result:=false;
    Exit;
  end;
if FileExists(FWordTo) then
  begin
    Fs:=nil;
    try
    Fs:=TFileStream.Create(FWordTo, fmOpenReadWrite, fmShareExclusive);
    Fs.Free;
    DeleteFile(FWordTo);
    except on E:Exception do
      begin
      Warning('Unable to delete target file: '+FWordTo+' Message='+E.Message);
      if not(Fs=nil) then Fs.Free;
      Result:=false;
      exit;
      end;
    end;

  end;
TFile.Copy(FWordFrom,FWordTo);
try
    WApp1 := CreateOLEObject('Word.Application');
  except
    on E: Exception do
    begin
      E.Message := 'Word application is not available.';
      raise;
    end;
  end;
try
WApp1.Visible := False;
WApp1.Options.CheckSpellingAsYouType := False;
WApp1.Options.CheckGrammarAsYouType := False;
WordDoc1:=WApp1.Documents.Open(Filename:=OleVariant(FWordTo));
MemoText.Lines.Add('Word opened');
//WordDocument1.ConnectTo(WordApplication1.ActiveDocument);
WApp1.ActiveDocument.Select;
WApp1.Selection.Find.ClearFormatting;
WApp1.Selection.Find.Forward := True;
WApp1.Selection.Find.Wrap := wdFindContinue;
WApp1.Selection.Find.Format := False;
WApp1.Selection.Find.MatchCase := False;
WApp1.Selection.Find.MatchWholeWord := False;
WApp1.Selection.Find.MatchWildcards := False;
WApp1.Selection.Find.MatchSoundsLike := False;
WApp1.Selection.Find.MatchAllWordForms := False;
for I := Low(WordRecords) to High(WordRecords) do
  begin
  if WordRecords[I].Active then
  begin
  MemoLog.Lines.Add('Low '+IntToStr(Low(WordRecords))+'High '+IntToStr(High(WordRecords))+'Next '+IntToStr(I));
  WApp1.ActiveDocument.Select;
//  if (WordRecords[i].WordType=[wtImage]) then
//    begin
//     TODO: Вставка картинки не включена
//    Warning('Replace Image: '+WordRecords[i].Key+' to size '+IntToStr(WordRecords[i].WordImage.Height)+'x'+IntToStr(WordRecords[i].WordImage.Width)+':File:'+FWordTarget);
//    W.Selection.Find.Text := WordRecords[i].Key;
//    W.Selection.Find.Replacement.Text := WordRecords[i].WordImage;
//    end;
  if (WordRecords[i].WordType=[wtLink]) or (WordRecords[i].WordType=[wtEmail]) then
    begin
//    WordApplication1.Selection.Find.Text := WordRecords[i].Key;
//    WordApplication1.Selection.Find.Replacement.Text :=WordRecords[i].StringValue;
//    WordApplication1.Selection.Find.Execute(Replace := wdReplaceOne);
//    sel := W.Selection.Range;
//    if WordRecords[i].WordType=[wtEmail] then
//      WordApplication1.ActiveDocument.Hyperlinks.Add(Anchor := sel, Address :='mailto:'+WordRecords[i].StringValue,
//            ScreenTip:= 'mailto:'+WordRecords[i].StringValue, TextToDisplay:='mailto:'+WordRecords[i].StringValue,
//            Target:='Your%20CV%20delivered', Subaddress:='');
//    if WordRecords[i].WordType=[wtLink] then
//      WordApplication1.ActiveDocument.Hyperlinks.Add(Anchor := sel, Address :='http://'+WordRecords[i].StringValue,
//            ScreenTip:= 'http://'+WordRecords[i].StringValue, TextToDisplay:='http://'+WordRecords[i].StringValue,
//            Target:='', Subaddress:='');
    end;
  if (WordRecords[i].WordType=[wtEdit]) then
    begin
      WApp1.Selection.Find.Execute(Replace := wdReplaceOne);
      WApp1.Execute(Format:=True, Replace:=wdReplaceAll);
      WApp1.Selection.Find.Execute(  ReplacementText:=WordRecords[i].Key);
      WApp1.Selection.Find.Text := WordRecords[i].Key;
      WApp1.Selection.Find.Replacement.Text := WordRecords[i].StringValue;
      WApp1.Selection.Find.Execute(Replace := wdReplaceOne);
    end;
  if (WordRecords[i].WordType=[wtMemo]) and WordRecords[i].Active then
    begin
    // TODO: Поиск шаблона в документе должен быть успешным
    MemoLog.Lines.Add('Replacetext = "'+WordRecords[i].ReplaceText[0]+'"');
    WApp1.Selection.Find.Text := WordRecords[i].Key;
    WApp1.Selection.Find.Replacement.Text :=WordRecords[i].ReplaceText[0];
    WApp1.Selection.Find.Execute(Replace := wdReplaceOne);
    MemoLog.Lines.Add('Key='+ WordRecords[i].Key+' Replace memo:' +IntToStr(length(WApp1.Selection.Range.Text))+' 2)'+IntToStr(WApp1.Selection.Range.End-WApp1.Selection.Range.Start));
    if ((length(WApp1.Selection.Range.Text)>0) or (WApp1.Selection.Range.End-WApp1.Selection.Range.Start>0)) then
      for J := 1 to WordRecords[i].ReplaceTextCount-1 do
          if length(WordRecords[i].ReplaceText[j])>0 then
            begin
            WApp1.Selection.InsertParagraphAfter;
            WApp1.Selection.InsertAfter(WordRecords[i].ReplaceText[j]);
            end;
      end;
  end;
  end;
WApp1.Documents.Save(NoPrompt:=True);
WApp1.Documents.Close(wdSaveChanges);
finally
    WApp1.Quit;
    WApp1:= Unassigned;
  end;
end;

procedure TFormMain.PresetJobValues;
begin
Edit1Name.Text:='IT support specialist';
Edit1Dates.Text:='Sep 2022 – Aug 2023';
Edit1Company.Text:='Freelance websites';
Memo1Resp.Lines.Clear;
Memo1Resp.Lines.Add('Responsibilities:');
Memo1Resp.Lines.Add('On freelance sites, I find jobs to develop and maintain websites and databases. '+
  'The most popular technologies in such projects are Python and Java, MySQL and Postgres databases.'+
  ' The main advantage of such projects is concrete and quick results. It is necessary to complete the '+
  'task within a few days and correctly understand the requirements of the Customer.');
Edit1Benefits.Text:='';
Edit1Skills.Text:='';
Memo1Footer.Lines.Clear;
Memo1Footer.Lines.Add('========================================================');

Edit2Name.Text:='ETL Database developer (remote)';
Edit2Dates.Text:='Oct 2021 – Aug 2022';
Edit2Company.Text:='Company Codegenix (USA, Texas). Outsource person for company GlueUp.';
Memo2Resp.Lines.Clear;
Memo2Resp.Lines.Add('Responsibilities:');
Memo2Resp.Lines.Add('Several heterogeneous databases of the company are in Production use (Oracle, MySQL,'+
  ' MongoDB). To create analytical and financial reports, it is necessary to expand DWH database and create'+
  ' several workflows for constant data transfer to the DWH storage. My responsibility was to create and'+
  ' implement ETL workflows. Some workflows were created using ETL Talend, as well as using Python scripts.'+
  ' After several months of implementation, the workflows were created and tested. They fulfill all the'+
  ' necessary requirements, and the leaders were satisfied with the work performed.');
Edit2Benefits.Text:='Benefits: Experience with NoSQL database (MongoDB, JSON structures). ';
Edit2Skills.Text:='Skills: Data Migration · Database Development · SQL Tuning · Mongo database · Business Intelligence (BI) · Python · Talend · Java · SQL · ETL';
Memo2Footer.Lines.Clear;
Memo2Footer.Lines.Add('Recommendation letter: https://bit.ly/3ITcypl');
Memo2Footer.Lines.Add('Reason for leaving: War in Ukraine.');
Memo2Footer.Lines.Add('========================================================');

Edit3Name.Text:='BI analyst, DWH developer (remote)';
Edit3Dates.Text:='April 2019 – March 2021';
Edit3Company.Text:='Company Emergn (Ukraine).  Outsource Person for company Mercer (USA).';
Memo3Resp.Lines.Clear;
Memo3Resp.Lines.Add('Responsibilities:');
Memo3Resp.Lines.Add('The customer of the project is the insurance company Mercer, USA.'+
  ' Emergn is a outsourcing company based in Ukraine. My responsibilities in the project'+
  ' - database developer and BI analyst. The goal of the project is the daily data workflows'+
  ' from the Oracle Premise database to the Azure cloud, the Microsoft SQL database.'+
  ' This database was a DWH, and analytical reports were run in it. Talend workflows'+
  ' were used to transfer data and generate reports. At the initial stages, SQL queries'+
  ' had problems with low SQL performance, they were successfully eliminated. ');
Edit3Benefits.Text:='';
Edit3Skills.Text:='Skills: Microsoft Azure · MS SQL Server · Oracle · Talend';
Memo3Footer.Lines.Clear;
Memo3Footer.Text:='========================================================';

Edit4Name.Text:='Database developer';
Edit4Dates.Text:='May 2018 – January 2019';
Edit4Company.Text:='Company Mede Analytics (Ukraine)';
Memo4Resp.Lines.Clear;
Memo4Resp.Lines.Add('Responsibilities:');
Memo4Resp.Lines.Add('Company Mede-Analytics develops software for US health insurance'+
  ' payments. The company clients are MEDICARE, MEDICAID, about 200 companies in the USA.'+
  ' Health insurance documents go through a full financial cycle: uploading, checking,'+
  ' storing in a storage system, displaying financial documents and other reports on websites.'+
  ' This cycle is based on MS SQL, SSIS and OLAP Cube (MDX) technology. I was part of the'+
  ' development team. The team was engaged in DWH support, development of analytical reports.');
Edit4Benefits.Text:='Skills: Microsoft Azure · MS SQL Server · Oracle · Informatica Power Center';
Edit4Skills.Text:='';
Memo4Footer.Lines.Clear;
Memo4Footer.Lines.Add('========================================================');

Edit5Name.Text:='IT Support Engineer (remote)';
Edit5Dates.Text:='January 2016 – February 2018';
Edit5Company.Text:='Company Jaspersoft (owned by Tibco USA)';
Memo5Resp.Lines.Clear;
Memo5Resp.Lines.Add('Responsibilities:');
Memo5Resp.Lines.Add('Technical support for Jaspersoft Java applications - JasperReport'+
  ' Server and ETL Talend Studio. Jaspersoft servers can work with different databases'+
  ' with data sources from different databases - Postgres, Oracle, MS SQL, and MySQL.'+
  ' My responsibility is to assist users in installing and configuring Jaspersoft & and'+
  ' Talend Java applications and assist in finding and managing found errors.');
Edit5Benefits.Text:='Benefits: These Java applications work on all platforms (Windows, Unix, MacOS)'+
  ' and with different databases. I have gained hands-on experience with different OS'+
  ' as well as all relational databases.';
Edit5Skills.Text:='Skills: Jasper Reports · Talend Studio · Oracle · MS SQL · MySQL · CentOS · Ubuntu · Bash scripts';
Memo5Footer.Lines.Clear;
Memo5Footer.Text:='========================================================';

Edit6Name.Text:='ETL database consultant';
Edit6Dates.Text:='May 2013– April 2015';
Edit6Company.Text:='Company Miratech (Poland)';
Memo6Resp.Lines.Clear;
Memo6Resp.Lines.Add('Responsibilities:');
Memo6Resp.Lines.Add('Development of ETL workflows for Lindorff (Sweden). Data migration'+
  ' project from Oracle DWH to Microsoft SQL. My responsibilities were to analyze,'+
  ' create and deploy the newest requirements for DWH by using Informatica Power Center. ');
Edit6Benefits.Text:='';
Edit6Skills.Text:='Skills: Informatica Power Center · Microsoft SQL server · Visual Studio · SQL Management Studio.';
Memo6Footer.Lines.Clear;
Memo6Footer.Lines.Add('========================================================');

Edit7Name.Text:='Oracle Database developer';
Edit7Dates.Text:='May 2011– Mar 2013';
Edit7Company.Text:='Company Luxoft (Ukraine). Technical support for European bank.';
Memo7Resp.Lines.Clear;
Memo7Resp.Lines.Add('Responsibilities:');
Memo7Resp.Lines.Add('Part of the Team for supporting the huge DWH at an investment bank,'+
  ' an Oracle database. The source code was written in Java and PL/SQL, and workflows'+
  ' use Informatica PC. Our team supported the daily runs for workflows, we supported'+
  ' the generation of reports for the external bank audit. The software in the banks'+
  ' must be free of errors and failures, and therefore the entire program code was'+
  ' checked several times, including QA automated tests.');
Edit7Benefits.Text:='';
Edit7Skills.Text:='Skills: Oracle · DWH · Database Development · SQL Tuning · Java · PL/SQL · Performance Tuning · Oracle SQL Developer · Informatica PowerCenter';
Memo7Footer.Lines.Clear;

Edit8Name.Text:='';
Edit8Dates.Text:='';
Edit8Company.Text:='';
Memo8Resp.Lines.Clear;
Edit8Benefits.Text:='';
Edit8Skills.Text:='';
Memo8Footer.Lines.Clear;

Edit9Name.Text:='';
Edit9Dates.Text:='';
Edit9Company.Text:='';
Edit9Benefits.Text:='';
Edit9Skills.Text:='';
Memo9Resp.Lines.Clear;
Memo9Footer.Lines.Clear;

Edit10Name.Text:='';
Edit10Dates.Text:='';
Edit10Company.Text:='';
Edit10Benefits.Text:='';
Edit10Skills.Text:='';
Memo10Resp.Lines.Clear;
Memo10Footer.Lines.Clear;
end;

procedure TFormMain.SetValues;
var I:integer;
begin
Position:=EditPosition.Text;
Group:=CBTemplate.Text;
if (ComputerName()='VESTA') or (ComputerName()='LAPTOP-PTERIK')
  then MainFolder:='D:\Мой диск\Поиск работы\'+Country
  else MainFolder:='??';
EditMainFolder.Text:=MainFolder;

SetLength(WordRecords,81);

SetWordRecord(0,'[POSITION]', [wtEdit],EditPosition);
SetWordRecord(1,'[POSITION_UKR]', [wtEdit],EditPosition_UKR);
SetWordRecord(2,'[RECOMMENDATION_LINK]', [wtLink], CONST_URL_RECOMMENDATION);
SetWordRecord(3,'[HEADER]', [wtMemo],MemoHeader);
SetWordRecord(4,'[HEADER_UKR]', [wtMemo],MemoHeader_Ukr);
SetWordRecord(5,'[SKILLS]', [wtMemo],MemoSkills);
SetWordRecord(6,'[SKILLS_UKR]', [wtMemo],MemoSkills_Ukr);
SetWordRecord(7,'[EMAIL]', [wtEMAIL],CONST_EMAIL);
SetWordRecord(8,'[EMPTY8]', [wtEdit],'');
SetWordRecord(9,'[EMPTY9]', [wtEdit],'');
SetWordRecord(10,'[EMPTY10]', [wtEdit],'');
SetWordRecord(11,'[JOB1DATES]', [wtEdit],Edit1Dates);
SetWordRecord(12,'[JOB2DATES]', [wtEdit],Edit2Dates);
SetWordRecord(13,'[JOB3DATES]', [wtEdit],Edit3Dates);
SetWordRecord(14,'[JOB4DATES]', [wtEdit],Edit4Dates);
SetWordRecord(15,'[JOB5DATES]', [wtEdit],Edit5Dates);
SetWordRecord(16,'[JOB6DATES]', [wtEdit],Edit6Dates);
SetWordRecord(17,'[JOB7DATES]', [wtEdit],Edit7Dates);
SetWordRecord(18,'[JOB8DATES]', [wtEdit],Edit8Dates);
SetWordRecord(19,'[JOB9DATES]', [wtEdit],Edit9Dates);
SetWordRecord(20,'[JOB10DATES]', [wtEdit],Edit10Dates);
SetWordRecord(21,'[JOB1NAME]', [wtEdit],Edit1Name);
SetWordRecord(22,'[JOB2NAME]', [wtEdit],Edit2Name);
SetWordRecord(23,'[JOB3NAME]', [wtEdit],Edit3Name);
SetWordRecord(24,'[JOB4NAME]', [wtEdit],Edit4Name);
SetWordRecord(25,'[JOB5NAME]', [wtEdit],Edit5Name);
SetWordRecord(26,'[JOB6NAME]', [wtEdit],Edit6Name);
SetWordRecord(27,'[JOB7NAME]', [wtEdit],Edit7Name);
SetWordRecord(28,'[JOB8NAME]', [wtEdit],Edit8Name);
SetWordRecord(29,'[JOB9NAME]', [wtEdit],Edit9Name);
SetWordRecord(30,'[JOB10NAME]', [wtEdit],Edit10Name);
SetWordRecord(31,'[JOB1COMPANY]', [wtEdit],Edit1Company);
SetWordRecord(32,'[JOB2COMPANY]', [wtEdit],Edit2Company);
SetWordRecord(33,'[JOB3COMPANY]', [wtEdit],Edit3Company);
SetWordRecord(34,'[JOB4COMPANY]', [wtEdit],Edit4Company);
SetWordRecord(35,'[JOB5COMPANY]', [wtEdit],Edit5Company);
SetWordRecord(36,'[JOB6COMPANY]', [wtEdit],Edit6Company);
SetWordRecord(37,'[JOB7COMPANY]', [wtEdit],Edit7Company);
SetWordRecord(38,'[JOB8COMPANY]', [wtEdit],Edit8Company);
SetWordRecord(39,'[JOB9COMPANY]', [wtEdit],Edit9Company);
SetWordRecord(40,'[JOB10COMPANY]',[wtEdit],Edit10Company);
SetWordRecord(41,'[JOB1RESP]', [wtMemo],Memo1RESP);
SetWordRecord(42,'[JOB2RESP]', [wtMemo],Memo2RESP);
SetWordRecord(43,'[JOB3RESP]', [wtMemo],Memo3RESP);
SetWordRecord(44,'[JOB4RESP]', [wtMemo],Memo4RESP);
SetWordRecord(45,'[JOB5RESP]', [wtMemo],Memo5RESP);
SetWordRecord(46,'[JOB6RESP]', [wtMemo],Memo6RESP);
SetWordRecord(47,'[JOB7RESP]', [wtMemo],Memo7RESP);
SetWordRecord(48,'[JOB8RESP]', [wtMemo],Memo8RESP);
SetWordRecord(49,'[JOB9RESP]', [wtMemo],Memo9RESP);
SetWordRecord(50,'[JOB10RESP]',[wtMemo],Memo10RESP);
SetWordRecord(51,'[JOB1BENEFITS]', [wtEdit],Edit1BENEFITS);
SetWordRecord(52,'[JOB2BENEFITS]', [wtEdit],Edit2BENEFITS);
SetWordRecord(53,'[JOB3BENEFITS]', [wtEdit],Edit3BENEFITS);
SetWordRecord(54,'[JOB4BENEFITS]', [wtEdit],Edit4BENEFITS);
SetWordRecord(55,'[JOB5BENEFITS]', [wtEdit],Edit5BENEFITS);
SetWordRecord(56,'[JOB6BENEFITS]', [wtEdit],Edit6BENEFITS);
SetWordRecord(57,'[JOB7BENEFITS]', [wtEdit],Edit7BENEFITS);
SetWordRecord(58,'[JOB8BENEFITS]', [wtEdit],Edit8BENEFITS);
SetWordRecord(59,'[JOB9BENEFITS]', [wtEdit],Edit9BENEFITS);
SetWordRecord(60,'[JOB10BENEFITS]',[wtEdit],Edit10BENEFITS);

SetWordRecord(61,'[JOB1SKILLS]', [wtEdit],Edit1SKILLS);
SetWordRecord(62,'[JOB2SKILLS]', [wtEdit],Edit2SKILLS);
SetWordRecord(63,'[JOB3SKILLS]', [wtEdit],Edit3SKILLS);
SetWordRecord(64,'[JOB4SKILLS]', [wtEdit],Edit4SKILLS);
SetWordRecord(65,'[JOB5SKILLS]', [wtEdit],Edit5SKILLS);
SetWordRecord(66,'[JOB6SKILLS]', [wtEdit],Edit6SKILLS);
SetWordRecord(67,'[JOB7SKILLS]', [wtEdit],Edit7SKILLS);
SetWordRecord(68,'[JOB8SKILLS]', [wtEdit],Edit8SKILLS);
SetWordRecord(69,'[JOB9SKILLS]', [wtEdit],Edit9SKILLS);
SetWordRecord(70,'[JOB10SKILLS]',[wtEdit],Edit10SKILLS);

SetWordRecord(71,'[JOB1FOOTER]', [wtMemo],Memo1FOOTER);
SetWordRecord(72,'[JOB2FOOTER]', [wtMemo],Memo2FOOTER);
SetWordRecord(73,'[JOB3FOOTER]', [wtMemo],Memo3FOOTER);
SetWordRecord(74,'[JOB4FOOTER]', [wtMemo],Memo4FOOTER);
SetWordRecord(75,'[JOB5FOOTER]', [wtMemo],Memo5FOOTER);
SetWordRecord(76,'[JOB6FOOTER]', [wtMemo],Memo6FOOTER);
SetWordRecord(77,'[JOB7FOOTER]', [wtMemo],Memo7FOOTER);
SetWordRecord(78,'[JOB8FOOTER]', [wtMemo],Memo8FOOTER);
SetWordRecord(79,'[JOB9FOOTER]', [wtMemo],Memo9FOOTER);
SetWordRecord(80,'[JOB10FOOTER]',[wtMemo],Memo10FOOTER);

end;

procedure TFormMain.SetWordRecord(I: integer; Key: string; WordType: TWordRecType;
  const EditTxt:TEdit);
begin
if length(trim(EditTxt.Text))>0 then
  begin
  WordRecords[I].Key:=Key;
  WordRecords[I].WordType:=[wtEdit];
  WordRecords[I].StringValue:=trim(EditTxt.Text);
  WordRecords[I].Active:=length(trim(EditTxt.Text))>0;
  end
else WordRecords[I].Active:=false;
end;

procedure TFormMain.SetWordRecord(I: integer; Key: string; WordType: TWordRecType;
  const MemoTx: TMemo);
var J:integer;
begin
if (MemoTx.Lines.Count>0) and (length(trim(MemoTx.Text))>0) then
  begin
  WordRecords[I].Active:=true;
  WordRecords[I].Key:=Key;
  WordRecords[I].WordType:=[wtMemo];
  WordRecords[I].ReplaceTextCount:=MemoTx.Lines.Count;
  SetLength(WordRecords[I].ReplaceText,MemoTx.Lines.Count);
  for J := 0 to MemoTx.Lines.Count-1 do
    WordRecords[I].ReplaceText[J]:=MemoTx.Lines[J];
  WordRecords[I].ReplaceTextCount:=MemoTx.Lines.Count;
  end
else WordRecords[I].Active:=false;
end;

procedure TFormMain.SetWordRecord(I: integer; Key: string; WordType: TWordRecType;
  const STxt: string);
begin
if (WordType=[wtLink]) or (WordType=[wtEMAIL]) then
  begin
  WordRecords[I].Key:=Key;
  WordRecords[I].WordType:=WordType;
  WordRecords[I].StringValue:=trim(STxt);
  WordRecords[I].Active:=length(trim(STxt))>0;
  end
else WordRecords[I].Active:=false;
end;

procedure TFormMain.ShowValues;
begin
if CheckBoxExtraComment.Checked then
  begin
  MemoLog.Lines.Add('Country='+Country);
  MemoLog.Lines.Add('Position='+Position);
  MemoLog.Lines.Add('MainFolder='+MainFolder);
  MemoLog.Lines.Add('Group='+Group+'.docx');
  end;
end;

end.
