unit ResumesList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Buttons,
//  WordCS,
  DBAccess, Uni, MemDS, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls;

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
    UniDSResumes: TUniDataSource;
    UniDeleteResume: TUniQuery;
    BitBtnEditResume: TBitBtn;
    BitBtnDeleteResume: TBitBtn;
    BitBtnNewResume: TBitBtn;
    BitBtnClose: TBitBtn;
    Label4: TLabel;
    EditCopyNumber: TEdit;
    BitBtnCheck: TBitBtn;
    BitBtnCV: TBitBtn;
    BitBtnLetter: TBitBtn;
    BitBtnPDF: TBitBtn;
    BitBtnOpenTmpl: TBitBtn;
    BitBtnSaveResume: TBitBtn;
    CheckBoxExtraComment: TCheckBox;
//    WordApplication1: TWordApplication;
//    WordDocument1: TWordDocument;
//    WordRange1: TWordRange;
    UniDeleteResumeFooters: TUniQuery;
    UniDeleteExperiences: TUniQuery;
    BitBtnArchive: TBitBtn;
    UniArchiveResume: TUniQuery;
    UniResumesid: TIntegerField;
    UniResumescntr_exp: TLargeintField;
    UniResumescntr_skills: TLargeintField;
    UniResumesname: TStringField;
    UniResumesjob_opportunity: TStringField;
    UniResumesjob_place: TStringField;
    UniResumesphone_numbers_text: TStringField;
    UniResumesresume_introduction: TStringField;
    UniResumesarchived: TBooleanField;
    UniResumescreated: TDateTimeField;
    UniResumesupdated: TDateTimeField;
    UniResumeslang: TStringField;
    UniResumesregion_id: TStringField;
    RadioGroup: TRadioGroup;
    UniResumesarchive: TStringField;
    procedure BitBtnCloseClick(Sender: TObject);
    procedure BitBtnNewResumeClick(Sender: TObject);
    procedure BitBtnDeleteResumeClick(Sender: TObject);
    procedure BitBtnSaveResumeClick(Sender: TObject);
    procedure BitBtnOpenTmplClick(Sender: TObject);
    procedure BitBtnLetterClick(Sender: TObject);
    procedure BitBtnPDFClick(Sender: TObject);
    procedure BitBtnCheckClick(Sender: TObject);
    procedure BitBtnCVClick(Sender: TObject);
    procedure BitBtnEditResumeClick(Sender: TObject);
    procedure BitBtnArchiveClick(Sender: TObject);
    procedure RadioGroupClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure UniResumesCalcFields(DataSet: TDataSet);
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

uses System.UITypes, Winapi.ShellAPI, Parameters, System.Win.ComObj,
  UpdateResume, MainForm, NewResume;

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

procedure TFormListResumes.BitBtnArchiveClick(Sender: TObject);
begin
if VarIsNull(UniResumes['id']) then  ShowMessage('Выберите запись')
  else
    begin
    if MessageDlg( 'Подтвердите перемещение резюме в архив', mtConfirmation, [mbYes,mbNo],0)=mrNo then exit;
    UniArchiveResume.Prepare;
    UniArchiveResume.ParamByName('p_id').AsInteger:=UniResumes['id'];
    UniArchiveResume.ExecSQL;
    UniResumes.Refresh;
    end
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
if VarIsNull(UniResumes['id']) then ShowMessage('Оберіть резюме для редагування')
else
  begin
  if FormUpdateResume=nil then Application.CreateForm(TFormUpdateResume, FormUpdateResume);
  FormUpdateResume.SetFormValues;
  FormUpdateResume.SetID(UniResumes['id']);
  FormUpdateResume.ShowModal;
  UniResumes.Refresh;
  end;
end;

procedure TFormListResumes.BitBtnSaveResumeClick(Sender: TObject);
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

if not RichView_FileGenerate(UniResumes['id'])
then
  begin
    FormMain.Warning('Сбой при обработке Резюме "'+intToStr(UniResumes['id'])+'"');
  exit;
  end;

FormMain.Warning('Шаблоны успешно обработаны, резюме готово: '+UniResumes['name']);
except on E:Exception do
  FormMain.Warning('Error message: '+E.Message);
end;
end;

procedure TFormListResumes.FormCreate(Sender: TObject);
begin
Radiogroup.ItemIndex:=0;
end;

procedure TFormListResumes.BitBtnLetterClick(Sender: TObject);
begin
if FileCLTarget<>'' then ShellExecute(Handle, 'open', PWideChar(FileCLTarget), nil, nil, SW_SHOWNORMAL) ;
end;

procedure TFormListResumes.BitBtnNewResumeClick(Sender: TObject);
var rid, tid:integer;
sid:string;
begin
if VarisNull(UniResumes['id']) then
  begin
    ShowMessage('Выберите резюме из списка');
    exit;
  end;
if FormNewResume=nil then Application.CreateForm(TFormNewResume, FormNewResume);
FormNewResume.SetFormValues;
if Pos('t',Trim(EditCopyNumber.Text))=1 then
  begin
    tid:=0;
    sid:=Trim(EditCopyNumber.Text);
    sid:=Copy(sid,2,length(sid));
  if TryStrToInt(sid,tid)
    then FormNewResume.GetValuesFromTemplate(tid);
  end;
if Pos('r',Trim(EditCopyNumber.Text))=1 then
  begin
    rid:=0;
    sid:=Trim(EditCopyNumber.Text);
    sid:=Copy(sid,2,length(sid));
  if TryStrToInt(sid,rid)
    then FormNewResume.GetValuesFromResume(rid);
  end;
FormNewResume.ShowModal;
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
RadioGroup.ItemIndex:=0;
UniResumes.Close;
UniResumes.ParamByName('p_rg').AsInteger:=RadioGroup.ItemIndex;
UniResumes.Open;
end;

procedure TFormListResumes.SetValues;
//var I:integer;
begin
FormParameters.SetFormValues;
//Position:=EditPosition.Text;
if (ComputerName()='VESTA') or (ComputerName()='LAPTOP-PTERIK')
  then MainFolder:='D:\Мой диск\Поиск работы\'+Country
  else MainFolder:='??';
end;

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

procedure TFormListResumes.UniResumesCalcFields(DataSet: TDataSet);
begin
if not UniResumes['archived']
then UniResumes['archive']:='Ні'
else
  if UniResumes['archived'] then UniResumes['archive']:='Так'
  else UniResumes['archive']:='';
end;

procedure TFormListResumes.RadioGroupClick(Sender: TObject);
begin
UniResumes.Close;
UniResumes.ParamByName('p_rg').AsInteger:=RadioGroup.ItemIndex;
UniResumes.Open;
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
