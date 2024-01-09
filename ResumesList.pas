unit ResumesList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Buttons,
  DBAccess, Uni, MemDS, Vcl.Grids, Vcl.DBGrids, WordCS;

type
  TWordReplaceFlags = set of (wrfReplaceAll, wrfMatchCase, wrfMatchWildcards);
  TWordDateSeparator = set of (Minus, Dot, Slash);
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
  TFormListResumes = class(TForm)
    DBGrid1: TDBGrid;
    UniResumes: TUniQuery;
    UniResumesid: TIntegerField;
    UniResumesname: TStringField;
    UniResumesjob_opportunity: TStringField;
    UniResumesjob_place: TStringField;
    UniResumesphone_numbers_text: TStringField;
    UniResumesresume_introduction: TStringField;
    UniResumescreated: TDateTimeField;
    UniResumesupdated: TDateTimeField;
    UniDSResumes: TUniDataSource;
    UniDeleteResume: TUniQuery;
    BitBtnEditResume: TBitBtn;
    BitBtnDeleteResume: TBitBtn;
    BitBtnNewUkrResume: TBitBtn;
    BitBtnClose: TBitBtn;
    BitBtnNewTranslation: TBitBtn;
    UniResumeslang: TStringField;
    UniResumescv_docx_url: TStringField;
    UniResumescv_pdf_url: TStringField;
    Label4: TLabel;
    EditCopyNumber: TEdit;
    BitBtnCheck: TBitBtn;
    BitBtnCV: TBitBtn;
    BitBtnLetter: TBitBtn;
    BitBtnPDF: TBitBtn;
    BitBtnOpenTmpl: TBitBtn;
    BitBtnGo: TBitBtn;
    CheckBoxExtraComment: TCheckBox;
    WordApplication1: TWordApplication;
    WordDocument1: TWordDocument;
    WordRange1: TWordRange;
    UniDeleteResumeFooters: TUniQuery;
    UniDeleteExperiences: TUniQuery;
    BitBtnArchive: TBitBtn;
    UniArchiveResume: TUniQuery;
    procedure BitBtnCloseClick(Sender: TObject);
    procedure BitBtnNewUkrResumeClick(Sender: TObject);
    procedure BitBtnDeleteResumeClick(Sender: TObject);
    procedure BitBtnNewTranslationClick(Sender: TObject);
    procedure BitBtnGoClick(Sender: TObject);
    procedure BitBtnOpenTmplClick(Sender: TObject);
    procedure BitBtnLetterClick(Sender: TObject);
    procedure BitBtnPDFClick(Sender: TObject);
    procedure BitBtnCheckClick(Sender: TObject);
    procedure BitBtnCVClick(Sender: TObject);
    procedure BitBtnEditResumeClick(Sender: TObject);
    procedure BitBtnArchiveClick(Sender: TObject);
  private
    FileResumeTarget, FileCVTarget, FileCLTarget,FileResumePDF, FileCVPDF, FileCLPDF:string;
//    WordRecords:TWordRecords;
    WarningFired:boolean;
    Country, Position, Language, MainFolder:string;
//    Region:string;
//    WApp1:OLEVariant;
//    WordWrap:boolean;
//    DateSeparator:TWordDateSeparator;
    procedure SetValues;
    procedure ShowValues;
    function RichView_FileGenerate(resume_id: integer): boolean;
//    procedure SetWordRecord(I:integer; Key:string;WordType:TWordRecType; const EditTxt:TEdit); overload;
//    procedure SetWordRecord(I:integer; Key:string;WordType:TWordRecType; const STxt:String); overload;
//    procedure SetWordRecord(I: integer; Key: string; WordType: TWordRecType; const MemoTx: TMemo);overload;

  public
    procedure SetFormValues;
//    function OLE_FileReplace(FWordFrom, FWordTo:TFileName):boolean;

  end;

var
  FormListResumes: TFormListResumes;

implementation

{$R *.dfm}

uses System.UITypes, NewResumeTranslation, Winapi.ShellAPI, Parameters, System.Win.ComObj,
  UpdateResume, MainForm, NewUkrainianResume;

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

procedure TFormListResumes.BitBtnNewTranslationClick(Sender: TObject);
begin
if FormNewResumeTranslation=nil then Application.CreateForm(TFormNewResumeTranslation, FormNewResumeTranslation);
FormNewResumeTranslation.SetFormValues;
FormNewResumeTranslation.SetEmptyResumeUA;
FormNewResumeTranslation.SetEmptyResumeTR;
FormNewResumeTranslation.SetValuesFromResume(UniResumes['id']);
FormNewResumeTranslation.ShowModal;
UniResumes.Refresh;
end;

procedure TFormListResumes.BitBtnArchiveClick(Sender: TObject);
begin
if not VarIsNull(UniResumes['id'])
  then
    begin
    if MessageDlg( 'Подтвердите перемещение резюме в архив', mtConfirmation, [mbYes,mbNo],0)=mrNo then exit;
    UniArchiveResume.Prepare;
    UniArchiveResume.ParamByName('p_id').AsInteger:=UniResumes['id'];
    UniArchiveResume.ExecSQL;
    UniResumes.Refresh;
    end
  else ShowMessage('Выберите запись');
end;

procedure TFormListResumes.BitBtnCheckClick(Sender: TObject);
begin
if FileResumeTarget<>'' then ShellExecute(Handle, 'open', PWideChar(FileResumeTarget), nil, nil, SW_SHOWNORMAL) ;

end;

procedure TFormListResumes.BitBtnCloseClick(Sender: TObject);
begin
Close;
end;

procedure TFormListResumes.BitBtnCVClick(Sender: TObject);
begin
if FileCVTarget<>'' then ShellExecute(Handle, 'open', PWideChar(FileCVTarget), nil, nil, SW_SHOWNORMAL) ;

end;

procedure TFormListResumes.BitBtnDeleteResumeClick(Sender: TObject);
begin
if not VarIsNull(UniResumes['id'])
  then
    begin
    if MessageDlg( 'Подтвердите удаление резюме', mtConfirmation, [mbYes,mbNo],0)=mrNo then exit;
    UniDeleteExperiences.Prepare;
    UniDeleteExperiences.ParamByName('p_resume_id').AsInteger:=UniResumes['id'];
    UniDeleteExperiences.ExecSQL;
    UniDeleteResumeFooters.Prepare;
    UniDeleteResumeFooters.ParamByName('p_resume_id').AsInteger:=UniResumes['id'];
    UniDeleteResumeFooters.ExecSQL;
    UniDeleteResume.Prepare;
    UniDeleteResume.ParamByName('p_id').AsInteger:=UniResumes['id'];
    UniDeleteResume.ExecSQL;
    UniResumes.Refresh;
    end
  else ShowMessage('Выберите запись');
end;

procedure TFormListResumes.BitBtnEditResumeClick(Sender: TObject);
begin
if FormUpdateResume=nil then Application.CreateForm(TFormUpdateResume, FormUpdateResume);
FormUpdateResume.SetFormValues;
FormUpdateResume.SetValuesFromResume(UniResumes['id']);
FormUpdateResume.ShowModal;
UniResumes.Refresh;
end;

procedure TFormListResumes.BitBtnGoClick(Sender: TObject);
var
FileResumeTemplate, FileCVTemplate, FileCLTemplate:string;
TemplatesAreReady:boolean;
Resume_id:integer;
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
FileResumeTemplate:=MainFolder+'\Template\R Template '+Language+'.docx';
FileCVTemplate:=MainFolder+'\Template\CV Template '+Language+'.docx';
FileCLTemplate:=MainFolder+'\Template\CL Template '+Language+'.docx';

FileResumeTarget:=MainFolder+'\!Resume\R '+Position+' '+Language+'.docx';
FileCVTarget:=MainFolder+'\CV\CV '+Position+' '+Language+'.docx';
FileCLTarget:=MainFolder+'\CL\CL '+Position+' '+Language+'.docx';

FileResumePDF:=MainFolder+'\PDF\R '+Position+' '+Language+'.pdf';
FileCVPDF:=MainFolder+'\PDF\CV '+Position+' '+Language+'.pdf';
FileCLPDF:=MainFolder+'\PDF\CL '+Position+' '+Language+'.pdf';
//if not FileExists(FileResumeTemplate) then
//  begin
//    FormMain.Warning('File not found: '+FileResumeTemplate);
//    TemplatesAreReady:=false;
//  end;
//if not FileExists(FileResumeTemplate) then
//  begin
//    FormMain.Warning('File not found: '+FileCVTemplate);
//    TemplatesAreReady:=false;
//  end;
//if not FileExists(FileLetterTemplate) then
//  begin
//    FormMain.Warning('File not found: '+FileLetterTemplate);
//    TemplatesAreReady:=false;
//  end;
//if not TemplatesAreReady
//  then
//  begin
//    FormMain.Warning('Template DOCX files not exists, exit');
//    exit;
//  end;
try
if FileExists(FileResumeTarget) then
    DeleteFile(FileResumeTarget);
if FileExists(FileCVTarget) then
    DeleteFile(FileCVTarget);
if FileExists(FileCLTarget) then
    DeleteFile(FileCLTarget);
if length(Trim(UniResumes['name']))<5 then
  begin
    FormMain.Warning('Должность не указана или менее 5 символов, exit');
    exit;
  end;

if not RichView_FileGenerate(resume_id)
then
  begin
    FormMain.Warning('Сбой при обработке Резюме "'+intToStr(Resume_id)+'"');
  exit;
  end;

FormMain.Warning('Шаблоны успешно обработаны, резюме готово: '+UniResumes['name']);
except on E:Exception do
  FormMain.Warning('Error message: '+E.Message);
end;
end;

procedure TFormListResumes.BitBtnLetterClick(Sender: TObject);
begin
if FileCLTarget<>'' then ShellExecute(Handle, 'open', PWideChar(FileCLTarget), nil, nil, SW_SHOWNORMAL) ;
end;

procedure TFormListResumes.BitBtnNewUkrResumeClick(Sender: TObject);
var rid, tid:integer;
sid:string;
begin
if FormNewUkrainianResume=nil then Application.CreateForm(TFormNewUkrainianResume, FormNewUkrainianResume);
FormNewUkrainianResume.SetFormValues;

if length(Trim(EditCopyNumber.Text))=0
then
  begin
  FormNewUkrainianResume.SetEmptyResume;
  end
else
  begin
  if Pos('t',Trim(EditCopyNumber.Text))=1 then
    begin
    tid:=0;
    sid:=Trim(EditCopyNumber.Text);
    sid:=Copy(sid,2,length(sid));
    if TryStrToInt(sid,tid)
      then FormNewUkrainianResume.SetValuesFromTemplate(tid);
    end;
  if Pos('r',Trim(EditCopyNumber.Text))=1 then
    begin
    rid:=0;
    sid:=Trim(EditCopyNumber.Text);
    sid:=Copy(sid,2,length(sid));
    if TryStrToInt(sid,rid)
      then FormNewUkrainianResume.SetValuesFromResume(rid);
    end;
  end;
if (tid=0) and (rid=0) then
  begin
  ShowMessage('Копирование не удалось, ставим нулевое значение');
  FormNewUkrainianResume.SetEmptyResume;
  end;
FormNewUkrainianResume.ShowModal;
UniResumes.Refresh;
end;

procedure TFormListResumes.BitBtnOpenTmplClick(Sender: TObject);
begin
if FIleResumeTarget<>'' then ShellExecute(Handle, 'open', PWideChar(FileResumeTarget), nil, nil, SW_SHOWNORMAL) ;
end;

procedure TFormListResumes.BitBtnPDFClick(Sender: TObject);
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
    FormMain.Warning('Нажмите Go, создайте DOCX файлы');
    exit;
  end;
if FileExists(FileCLPDF) then
  begin
    Hf1 := FileOpen(FileCLPDF, fmOpenReadWrite or fmShareExclusive);
    if Hf1 = -1
      then
      begin
        FormMain.Warning('Файл открыт в другой программе: '+FileCLPDF);
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
        FormMain.Warning('Файл открыт в другой программе: '+FileCVPDF);
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
        FormMain.Warning('Файл открыт в другой программе: '+FileResumePDF);
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

procedure TFormListResumes.SetFormValues;
begin
//
end;

procedure TFormListResumes.SetValues;
//var I:integer;
begin
FormParameters.SetFormValues;
//Position:=EditPosition.Text;
if (ComputerName()='VESTA') or (ComputerName()='LAPTOP-PTERIK')
  then MainFolder:='D:\Мой диск\Поиск работы\'+Country
  else MainFolder:='??';

//SetLength(WordRecords,81);
//
//SetWordRecord(0,'[POSITION]', [wtEdit],EditPosition);
//SetWordRecord(1,'[POSITION_UKR]', [wtEdit],EditPosition_UKR);
//SetWordRecord(2,'[RECOMMENDATION_LINK]', [wtLink], FormParameters.Recommendationlink);
//SetWordRecord(3,'[HEADER]', [wtMemo],MemoHeader);
//SetWordRecord(4,'[HEADER_UKR]', [wtMemo],MemoHeader_Ukr);
//SetWordRecord(5,'[SKILLS]', [wtMemo],MemoSkills);
//SetWordRecord(6,'[SKILLS_UKR]', [wtMemo],MemoSkills_Ukr);
//SetWordRecord(7,'[EMAIL]', [wtEMAIL],FormParameters.Email);
//SetWordRecord(8,'[EMPTY8]', [wtEdit],'');
//SetWordRecord(9,'[EMPTY9]', [wtEdit],'');
//SetWordRecord(10,'[EMPTY10]', [wtEdit],'');
//SetWordRecord(11,'[JOB1DATES]', [wtEdit],Edit1Dates);
//SetWordRecord(12,'[JOB2DATES]', [wtEdit],Edit2Dates);
//SetWordRecord(13,'[JOB3DATES]', [wtEdit],Edit3Dates);
//SetWordRecord(14,'[JOB4DATES]', [wtEdit],Edit4Dates);
//SetWordRecord(15,'[JOB5DATES]', [wtEdit],Edit5Dates);
//SetWordRecord(16,'[JOB6DATES]', [wtEdit],Edit6Dates);
//SetWordRecord(17,'[JOB7DATES]', [wtEdit],Edit7Dates);
//SetWordRecord(18,'[JOB8DATES]', [wtEdit],Edit8Dates);
//SetWordRecord(19,'[JOB9DATES]', [wtEdit],Edit9Dates);
//SetWordRecord(20,'[JOB10DATES]', [wtEdit],Edit10Dates);
//SetWordRecord(21,'[JOB1NAME]', [wtEdit],Edit1Name);
//SetWordRecord(22,'[JOB2NAME]', [wtEdit],Edit2Name);
//SetWordRecord(23,'[JOB3NAME]', [wtEdit],Edit3Name);
//SetWordRecord(24,'[JOB4NAME]', [wtEdit],Edit4Name);
//SetWordRecord(25,'[JOB5NAME]', [wtEdit],Edit5Name);
//SetWordRecord(26,'[JOB6NAME]', [wtEdit],Edit6Name);
//SetWordRecord(27,'[JOB7NAME]', [wtEdit],Edit7Name);
//SetWordRecord(28,'[JOB8NAME]', [wtEdit],Edit8Name);
//SetWordRecord(29,'[JOB9NAME]', [wtEdit],Edit9Name);
//SetWordRecord(30,'[JOB10NAME]', [wtEdit],Edit10Name);
//SetWordRecord(31,'[JOB1COMPANY]', [wtEdit],Edit1Company);
//SetWordRecord(32,'[JOB2COMPANY]', [wtEdit],Edit2Company);
//SetWordRecord(33,'[JOB3COMPANY]', [wtEdit],Edit3Company);
//SetWordRecord(34,'[JOB4COMPANY]', [wtEdit],Edit4Company);
//SetWordRecord(35,'[JOB5COMPANY]', [wtEdit],Edit5Company);
//SetWordRecord(36,'[JOB6COMPANY]', [wtEdit],Edit6Company);
//SetWordRecord(37,'[JOB7COMPANY]', [wtEdit],Edit7Company);
//SetWordRecord(38,'[JOB8COMPANY]', [wtEdit],Edit8Company);
//SetWordRecord(39,'[JOB9COMPANY]', [wtEdit],Edit9Company);
//SetWordRecord(40,'[JOB10COMPANY]',[wtEdit],Edit10Company);
//SetWordRecord(41,'[JOB1RESP]', [wtMemo],Memo1RESP);
//SetWordRecord(42,'[JOB2RESP]', [wtMemo],Memo2RESP);
//SetWordRecord(43,'[JOB3RESP]', [wtMemo],Memo3RESP);
//SetWordRecord(44,'[JOB4RESP]', [wtMemo],Memo4RESP);
//SetWordRecord(45,'[JOB5RESP]', [wtMemo],Memo5RESP);
//SetWordRecord(46,'[JOB6RESP]', [wtMemo],Memo6RESP);
//SetWordRecord(47,'[JOB7RESP]', [wtMemo],Memo7RESP);
//SetWordRecord(48,'[JOB8RESP]', [wtMemo],Memo8RESP);
//SetWordRecord(49,'[JOB9RESP]', [wtMemo],Memo9RESP);
//SetWordRecord(50,'[JOB10RESP]',[wtMemo],Memo10RESP);
//SetWordRecord(51,'[JOB1BENEFITS]', [wtEdit],Edit1BENEFITS);
//SetWordRecord(52,'[JOB2BENEFITS]', [wtEdit],Edit2BENEFITS);
//SetWordRecord(53,'[JOB3BENEFITS]', [wtEdit],Edit3BENEFITS);
//SetWordRecord(54,'[JOB4BENEFITS]', [wtEdit],Edit4BENEFITS);
//SetWordRecord(55,'[JOB5BENEFITS]', [wtEdit],Edit5BENEFITS);
//SetWordRecord(56,'[JOB6BENEFITS]', [wtEdit],Edit6BENEFITS);
//SetWordRecord(57,'[JOB7BENEFITS]', [wtEdit],Edit7BENEFITS);
//SetWordRecord(58,'[JOB8BENEFITS]', [wtEdit],Edit8BENEFITS);
//SetWordRecord(59,'[JOB9BENEFITS]', [wtEdit],Edit9BENEFITS);
//SetWordRecord(60,'[JOB10BENEFITS]',[wtEdit],Edit10BENEFITS);
//
//SetWordRecord(61,'[JOB1SKILLS]', [wtEdit],Edit1SKILLS);
//SetWordRecord(62,'[JOB2SKILLS]', [wtEdit],Edit2SKILLS);
//SetWordRecord(63,'[JOB3SKILLS]', [wtEdit],Edit3SKILLS);
//SetWordRecord(64,'[JOB4SKILLS]', [wtEdit],Edit4SKILLS);
//SetWordRecord(65,'[JOB5SKILLS]', [wtEdit],Edit5SKILLS);
//SetWordRecord(66,'[JOB6SKILLS]', [wtEdit],Edit6SKILLS);
//SetWordRecord(67,'[JOB7SKILLS]', [wtEdit],Edit7SKILLS);
//SetWordRecord(68,'[JOB8SKILLS]', [wtEdit],Edit8SKILLS);
//SetWordRecord(69,'[JOB9SKILLS]', [wtEdit],Edit9SKILLS);
//SetWordRecord(70,'[JOB10SKILLS]',[wtEdit],Edit10SKILLS);
//
//SetWordRecord(71,'[JOB1FOOTER]', [wtMemo],Memo1FOOTER);
//SetWordRecord(72,'[JOB2FOOTER]', [wtMemo],Memo2FOOTER);
//SetWordRecord(73,'[JOB3FOOTER]', [wtMemo],Memo3FOOTER);
//SetWordRecord(74,'[JOB4FOOTER]', [wtMemo],Memo4FOOTER);
//SetWordRecord(75,'[JOB5FOOTER]', [wtMemo],Memo5FOOTER);
//SetWordRecord(76,'[JOB6FOOTER]', [wtMemo],Memo6FOOTER);
//SetWordRecord(77,'[JOB7FOOTER]', [wtMemo],Memo7FOOTER);
//SetWordRecord(78,'[JOB8FOOTER]', [wtMemo],Memo8FOOTER);
//SetWordRecord(79,'[JOB9FOOTER]', [wtMemo],Memo9FOOTER);
//SetWordRecord(80,'[JOB10FOOTER]',[wtMemo],Memo10FOOTER);

end;


//procedure TFormListResumes.Warning(const s: string);
//begin
//FormMain.MemoLog.Lines.Add(S);
//if not FormMain.WarningFired then
//  begin
//  ShowMessage(S);
//  FormMain.WarningFired :=true;
//  end;
//end;

procedure TFormListResumes.ShowValues;
begin
if CheckBoxExtraComment.Checked then
  begin
  FormMain.Warning('Country='+Country);
  FormMain.Warning('Position='+Position);
  FormMain.Warning('MainFolder='+MainFolder);
  FormMain.Warning('Language='+Language);
  end;
end;

function TFormListResumes.RichView_FileGenerate(resume_id:integer): boolean;
begin
  Result:=false;

end;


//function TFormListResumes.OLE_FileReplace(FWordFrom, FWordTo: TFileName): boolean;
//var
//I,J:integer;
//Fs : TFileStream;
//WordDoc1: OleVariant;
//WordSel:OleVariant;
//begin
//Result:=true;
////SetValues();
//if not FileExists(FWordFrom) then
//  begin
//    ShowMessage('Document not found: '+FWordFrom);
//    Result:=false;
//    Exit;
//  end;
//if FileExists(FWordTo) then
//  begin
//    Fs:=nil;
//    try
//    Fs:=TFileStream.Create(FWordTo, fmOpenReadWrite, fmShareExclusive);
//    Fs.Free;
//    DeleteFile(FWordTo);
//    except on E:Exception do
//      begin
//      FormMain.Warning('Unable to delete target file: '+FWordTo+' Message='+E.Message);
//      if not(Fs=nil) then Fs.Free;
//      Result:=false;
//      exit;
//      end;
//    end;
//
//  end;
//TFile.Copy(FWordFrom,FWordTo);
//try
//    WApp1 := CreateOLEObject('Word.Application');
//  except
//    on E: Exception do
//    begin
//      E.Message := 'Word application is not available.';
//      raise;
//    end;
//  end;
//try
//WApp1.Visible := False;
//WApp1.Options.CheckSpellingAsYouType := False;
//WApp1.Options.CheckGrammarAsYouType := False;
//WordDoc1:=WApp1.Documents.Open(Filename:=OleVariant(FWordTo));
//MemoLog.Lines.Add('Word opened');
////WordDocument1.ConnectTo(WordApplication1.ActiveDocument);
//WApp1.ActiveDocument.Select;
//WApp1.Selection.Find.ClearFormatting;
//WApp1.Selection.Find.Forward := True;
//WApp1.Selection.Find.Wrap := wdFindContinue;
//WApp1.Selection.Find.Format := False;
//WApp1.Selection.Find.MatchCase := False;
//WApp1.Selection.Find.MatchWholeWord := False;
//WApp1.Selection.Find.MatchWildcards := False;
//WApp1.Selection.Find.MatchSoundsLike := False;
//WApp1.Selection.Find.MatchAllWordForms := False;
//for I := Low(WordRecords) to High(WordRecords) do
//  begin
//  if WordRecords[I].Active then
//  begin
//  MemoLog.Lines.Add('Low '+IntToStr(Low(WordRecords))+'High '+IntToStr(High(WordRecords))+'Next '+IntToStr(I));
//  WApp1.ActiveDocument.Select;
////  if (WordRecords[i].WordType=[wtImage]) then
////    begin
////     TODO: Вставка картинки не включена
////    FormMain.Warning('Replace Image: '+WordRecords[i].Key+' to size '+IntToStr(WordRecords[i].WordImage.Height)+'x'+IntToStr(WordRecords[i].WordImage.Width)+':File:'+FWordTarget);
////    W.Selection.Find.Text := WordRecords[i].Key;
////    W.Selection.Find.Replacement.Text := WordRecords[i].WordImage;
////    end;
//  if (WordRecords[i].WordType=[wtLink]) or (WordRecords[i].WordType=[wtEmail]) then
//    begin
////    WordApplication1.Selection.Find.Text := WordRecords[i].Key;
////    WordApplication1.Selection.Find.Replacement.Text :=WordRecords[i].StringValue;
////    WordApplication1.Selection.Find.Execute(Replace := wdReplaceOne);
////    sel := W.Selection.Range;
////    if WordRecords[i].WordType=[wtEmail] then
////      WordApplication1.ActiveDocument.Hyperlinks.Add(Anchor := sel, Address :='mailto:'+WordRecords[i].StringValue,
////            ScreenTip:= 'mailto:'+WordRecords[i].StringValue, TextToDisplay:='mailto:'+WordRecords[i].StringValue,
////            Target:='Your%20CV%20delivered', Subaddress:='');
////    if WordRecords[i].WordType=[wtLink] then
////      WordApplication1.ActiveDocument.Hyperlinks.Add(Anchor := sel, Address :='http://'+WordRecords[i].StringValue,
////            ScreenTip:= 'http://'+WordRecords[i].StringValue, TextToDisplay:='http://'+WordRecords[i].StringValue,
////            Target:='', Subaddress:='');
//    end;
//  if (WordRecords[i].WordType=[wtEdit]) then
//    begin
//      WApp1.Selection.Find.Execute(Replace := wdReplaceOne);
//      WApp1.Execute(Format:=True, Replace:=wdReplaceAll);
//      WApp1.Selection.Find.Execute(  ReplacementText:=WordRecords[i].Key);
//      WApp1.Selection.Find.Text := WordRecords[i].Key;
//      WApp1.Selection.Find.Replacement.Text := WordRecords[i].StringValue;
//      WApp1.Selection.Find.Execute(Replace := wdReplaceOne);
//    end;
//  if (WordRecords[i].WordType=[wtMemo]) and WordRecords[i].Active then
//    begin
//    // TODO: Поиск шаблона в документе должен быть успешным
//    MemoLog.Lines.Add('Replacetext = "'+WordRecords[i].ReplaceText[0]+'"');
//    WApp1.Selection.Find.Text := WordRecords[i].Key;
//    WApp1.Selection.Find.Replacement.Text :=WordRecords[i].ReplaceText[0];
//    WApp1.Selection.Find.Execute(Replace := wdReplaceOne);
//    MemoLog.Lines.Add('Key='+ WordRecords[i].Key+' Replace memo:' +IntToStr(length(WApp1.Selection.Range.Text))+' 2)'+IntToStr(WApp1.Selection.Range.End-WApp1.Selection.Range.Start));
//    if ((length(WApp1.Selection.Range.Text)>0) or (WApp1.Selection.Range.End-WApp1.Selection.Range.Start>0)) then
//      for J := 1 to WordRecords[i].ReplaceTextCount-1 do
//          if length(WordRecords[i].ReplaceText[j])>0 then
//            begin
//            WApp1.Selection.InsertParagraphAfter;
//            WApp1.Selection.InsertAfter(WordRecords[i].ReplaceText[j]);
//            end;
//      end;
//  end;
//  end;
//WApp1.Documents.Save(NoPrompt:=True);
//WApp1.Documents.Close(wdSaveChanges);
//finally
//    WApp1.Quit;
//    WApp1:= Unassigned;
//  end;
//end;

//function TFormListResumes.OLE_FileReplace(FWordFrom, FWordTo: TFileName): boolean;
//var
//I,J:integer;
//Fs : TFileStream;
//WordDoc1: OleVariant;
//WordSel:OleVariant;
//begin
//Result:=true;
////SetValues();
//if not FileExists(FWordFrom) then
//  begin
//    ShowMessage('Document not found: '+FWordFrom);
//    Result:=false;
//    Exit;
//  end;
//if FileExists(FWordTo) then
//  begin
//    Fs:=nil;
//    try
//    Fs:=TFileStream.Create(FWordTo, fmOpenReadWrite, fmShareExclusive);
//    Fs.Free;
//    DeleteFile(FWordTo);
//    except on E:Exception do
//      begin
//      FormMain.Warning('Unable to delete target file: '+FWordTo+' Message='+E.Message);
//      if not(Fs=nil) then Fs.Free;
//      Result:=false;
//      exit;
//      end;
//    end;
//
//  end;
//TFile.Copy(FWordFrom,FWordTo);
//try
//    WApp1 := CreateOLEObject('Word.Application');
//  except
//    on E: Exception do
//    begin
//      E.Message := 'Word application is not available.';
//      raise;
//    end;
//  end;
//try
//WApp1.Visible := False;
//WApp1.Options.CheckSpellingAsYouType := False;
//WApp1.Options.CheckGrammarAsYouType := False;
//WordDoc1:=WApp1.Documents.Open(Filename:=OleVariant(FWordTo));
//MemoLog.Lines.Add('Word opened');
////WordDocument1.ConnectTo(WordApplication1.ActiveDocument);
//WApp1.ActiveDocument.Select;
//WApp1.Selection.Find.ClearFormatting;
//WApp1.Selection.Find.Forward := True;
//WApp1.Selection.Find.Wrap := wdFindContinue;
//WApp1.Selection.Find.Format := False;
//WApp1.Selection.Find.MatchCase := False;
//WApp1.Selection.Find.MatchWholeWord := False;
//WApp1.Selection.Find.MatchWildcards := False;
//WApp1.Selection.Find.MatchSoundsLike := False;
//WApp1.Selection.Find.MatchAllWordForms := False;
//for I := Low(WordRecords) to High(WordRecords) do
//  begin
//  if WordRecords[I].Active then
//  begin
//  MemoLog.Lines.Add('Low '+IntToStr(Low(WordRecords))+'High '+IntToStr(High(WordRecords))+'Next '+IntToStr(I));
//  WApp1.ActiveDocument.Select;
////  if (WordRecords[i].WordType=[wtImage]) then
////    begin
////     TODO: Вставка картинки не включена
////    FormMain.Warning('Replace Image: '+WordRecords[i].Key+' to size '+IntToStr(WordRecords[i].WordImage.Height)+'x'+IntToStr(WordRecords[i].WordImage.Width)+':File:'+FWordTarget);
////    W.Selection.Find.Text := WordRecords[i].Key;
////    W.Selection.Find.Replacement.Text := WordRecords[i].WordImage;
////    end;
//  if (WordRecords[i].WordType=[wtLink]) or (WordRecords[i].WordType=[wtEmail]) then
//    begin
////    WordApplication1.Selection.Find.Text := WordRecords[i].Key;
////    WordApplication1.Selection.Find.Replacement.Text :=WordRecords[i].StringValue;
////    WordApplication1.Selection.Find.Execute(Replace := wdReplaceOne);
////    sel := W.Selection.Range;
////    if WordRecords[i].WordType=[wtEmail] then
////      WordApplication1.ActiveDocument.Hyperlinks.Add(Anchor := sel, Address :='mailto:'+WordRecords[i].StringValue,
////            ScreenTip:= 'mailto:'+WordRecords[i].StringValue, TextToDisplay:='mailto:'+WordRecords[i].StringValue,
////            Target:='Your%20CV%20delivered', Subaddress:='');
////    if WordRecords[i].WordType=[wtLink] then
////      WordApplication1.ActiveDocument.Hyperlinks.Add(Anchor := sel, Address :='http://'+WordRecords[i].StringValue,
////            ScreenTip:= 'http://'+WordRecords[i].StringValue, TextToDisplay:='http://'+WordRecords[i].StringValue,
////            Target:='', Subaddress:='');
//    end;
//  if (WordRecords[i].WordType=[wtEdit]) then
//    begin
//      WApp1.Selection.Find.Execute(Replace := wdReplaceOne);
//      WApp1.Execute(Format:=True, Replace:=wdReplaceAll);
//      WApp1.Selection.Find.Execute(  ReplacementText:=WordRecords[i].Key);
//      WApp1.Selection.Find.Text := WordRecords[i].Key;
//      WApp1.Selection.Find.Replacement.Text := WordRecords[i].StringValue;
//      WApp1.Selection.Find.Execute(Replace := wdReplaceOne);
//    end;
//  if (WordRecords[i].WordType=[wtMemo]) and WordRecords[i].Active then
//    begin
//    // TODO: Поиск шаблона в документе должен быть успешным
//    MemoLog.Lines.Add('Replacetext = "'+WordRecords[i].ReplaceText[0]+'"');
//    WApp1.Selection.Find.Text := WordRecords[i].Key;
//    WApp1.Selection.Find.Replacement.Text :=WordRecords[i].ReplaceText[0];
//    WApp1.Selection.Find.Execute(Replace := wdReplaceOne);
//    MemoLog.Lines.Add('Key='+ WordRecords[i].Key+' Replace memo:' +IntToStr(length(WApp1.Selection.Range.Text))+' 2)'+IntToStr(WApp1.Selection.Range.End-WApp1.Selection.Range.Start));
//    if ((length(WApp1.Selection.Range.Text)>0) or (WApp1.Selection.Range.End-WApp1.Selection.Range.Start>0)) then
//      for J := 1 to WordRecords[i].ReplaceTextCount-1 do
//          if length(WordRecords[i].ReplaceText[j])>0 then
//            begin
//            WApp1.Selection.InsertParagraphAfter;
//            WApp1.Selection.InsertAfter(WordRecords[i].ReplaceText[j]);
//            end;
//      end;
//  end;
//  end;
//WApp1.Documents.Save(NoPrompt:=True);
//WApp1.Documents.Close(wdSaveChanges);
//finally
//    WApp1.Quit;
//    WApp1:= Unassigned;
//  end;
//end;

//procedure TFormListResumes.SetWordRecord(I: integer; Key: string; WordType: TWordRecType;
//  const EditTxt:TEdit);
//begin
//if length(trim(EditTxt.Text))>0 then
//  begin
//  WordRecords[I].Key:=Key;
//  WordRecords[I].WordType:=[wtEdit];
//  WordRecords[I].StringValue:=trim(EditTxt.Text);
//  WordRecords[I].Active:=length(trim(EditTxt.Text))>0;
//  end
//else WordRecords[I].Active:=false;
//end;
//
//procedure TFormListResumes.SetWordRecord(I: integer; Key: string; WordType: TWordRecType;
//  const MemoTx: TMemo);
//var J:integer;
//begin
//if (MemoTx.Lines.Count>0) and (length(trim(MemoTx.Text))>0) then
//  begin
//  WordRecords[I].Active:=true;
//  WordRecords[I].Key:=Key;
//  WordRecords[I].WordType:=[wtMemo];
//  WordRecords[I].ReplaceTextCount:=MemoTx.Lines.Count;
//  SetLength(WordRecords[I].ReplaceText,MemoTx.Lines.Count);
//  for J := 0 to MemoTx.Lines.Count-1 do
//    WordRecords[I].ReplaceText[J]:=MemoTx.Lines[J];
//  WordRecords[I].ReplaceTextCount:=MemoTx.Lines.Count;
//  end
//else WordRecords[I].Active:=false;
//end;
//
//procedure TFormListResumes.SetWordRecord(I: integer; Key: string; WordType: TWordRecType;
//  const STxt: string);
//begin
//if (WordType=[wtLink]) or (WordType=[wtEMAIL]) then
//  begin
//  WordRecords[I].Key:=Key;
//  WordRecords[I].WordType:=WordType;
//  WordRecords[I].StringValue:=trim(STxt);
//  WordRecords[I].Active:=length(trim(STxt))>0;
//  end
//else WordRecords[I].Active:=false;
//end;

end.
