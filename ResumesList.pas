unit ResumesList;

interface

uses
	Winapi.Windows, Winapi.Messages, System.SysUtils, System.StrUtils, System.Variants,
	System.Classes, Vcl.Graphics,
	Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Buttons,
	DBAccess, Uni, MemDS, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.DBCtrls;
//	VCL.TMSFNCWXDocx.Models, VCL.TMSFNCCustomWEBControl,
//	Vcl.ComCtrls, Vcl.DBCtrls, VCL.TMSFNCTypes, VCL.TMSFNCUtils,
//	VCL.TMSFNCGraphics, VCL.TMSFNCGraphicsTypes, VCL.TMSFNCCustomControl,
//	VCL.TMSFNCWXDocx, VCL.TMSFNCBitmapContainer, VCL.TMSFNCWebBrowser,
//	VCL.TMSFNCCustomWEBComponent, VCL.TMSFNCCustomComponent;

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
    BitBtnOpenResume: TBitBtn;
    BitBtnSaveResume: TBitBtn;
//    WordApplication1: TWordApplication;
//    WordDocument1: TWordDocument;
//    WordRange1: TWordRange;
    UniDeleteResumeFooters: TUniQuery;
    UniDeleteExperiences: TUniQuery;
    BitBtnArchive: TBitBtn;
    UniArchiveResume: TUniQuery;
    RadioGroup: TRadioGroup;
//    TMSFNCBitmapContainer1: TTMSFNCBitmapContainer;
		UniResumeFooters: TUniQuery;
    UniExperiences: TUniQuery;
//    TMSFNCWXDocx1: TTMSFNCWXDocx;
//    DBRichEditor: TDBRichEdit;
    UniSkillsID: TUniQuery;
    UniResumesid: TIntegerField;
    UniResumeslang: TWideStringField;
    UniResumesregion_id: TWideStringField;
    UniResumescountry: TWideStringField;
    UniResumescntr_exp: TLargeintField;
    UniResumescntr_skills: TLargeintField;
    UniResumesname: TWideStringField;
    UniResumesjob_opportunity: TWideStringField;
    UniResumesjob_place: TWideStringField;
    UniResumesphone_numbers_text: TWideStringField;
    UniResumesresume_introduction: TWideMemoField;
    UniResumescreated: TDateTimeField;
    UniResumesupdated: TDateTimeField;
    UniSkillsIDskill_id: TIntegerField;
    UniSkillsIDskill: TWideStringField;
    UniResumeFootersid: TIntegerField;
    UniResumeFootersresume_id: TIntegerField;
    UniResumeFootersfooter_header: TWideStringField;
    UniResumeFootersfooter_text: TWideMemoField;
    UniResumeFootersfooter_order: TIntegerField;
    UniExperiencesid: TIntegerField;
    UniExperiencesresume_id: TIntegerField;
    UniExperiencestemplate_id: TIntegerField;
    UniExperiencesjob_order: TLargeintField;
    UniExperiencesjob_position: TWideStringField;
    UniExperiencesstart_date: TDateField;
    UniExperiencesend_date: TDateField;
    UniExperiencesemployer: TWideStringField;
    UniExperiencesresponsibilities: TWideMemoField;
    UniExperiencesother: TWideMemoField;
    CBWordWrap: TCheckBox;
    BitBtn1: TBitBtn;
//    TMSFNCWXDocx2: TTMSFNCWXDocx;
//    DBFilePath: TDBRichEdit;
    UniSPUpdateFilepathes: TUniStoredProc;
    UniResumesresume_pdf_filepath: TWideStringField;
    UniResumescv_pdf_filepath: TWideStringField;
    UniResumescl_pdf_filepath: TWideStringField;
    UniResumesresume_doc_filepath: TWideStringField;
    UniResumescv_doc_filepath: TWideStringField;
    UniResumescl_doc_filepath: TWideStringField;
    UniResumescv_introduction: TWideMemoField;
    UniResumesarchived: TBooleanField;
    UniResumeFooterscv_include_footer: TBooleanField;
    UniResumescl_text: TWideMemoField;
    UniExperiencesbenefits: TWideMemoField;
    procedure BitBtnCloseClick(Sender: TObject);
		procedure BitBtnNewResumeClick(Sender: TObject);
		procedure BitBtnDeleteResumeClick(Sender: TObject);
		procedure BitBtnSaveResumeClick(Sender: TObject);
		procedure BitBtnOpenResumeClick(Sender: TObject);
		procedure BitBtnLetterClick(Sender: TObject);
		procedure BitBtnPDFClick(Sender: TObject);
		procedure BitBtnCheckClick(Sender: TObject);
    procedure BitBtnCVClick(Sender: TObject);
    procedure BitBtnEditResumeClick(Sender: TObject);
    procedure BitBtnArchiveClick(Sender: TObject);
		procedure RadioGroupClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure UniResumesCalcFields(DataSet: TDataSet);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure CBWordWrapClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
//    procedure TMSFNCWXDocx2DownloadAsFile(Sender: TObject; FileName: string);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBRichEditorSaveClipboard(Sender: TObject; NumObjects,
      NumChars: Integer; var SaveClipboard: Boolean);
    procedure BitBtnNewResumeKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    FileRDOC, FileCVDOC, FileCLDOC,FileRPDF, FileCVPDF, FileCLPDF:string;
		WarningFired:boolean;
		procedure File_R_DOC_Generate(const resume_id: integer; const FileName:string; var isDone: boolean);
    procedure File_CV_DOC_Generate(const resume_id: integer; const FileName:string; var isDone: boolean);
		procedure File_CL_DOC_Generate(const resume_id: integer; const FileName:string; var isDone: boolean);
		procedure File_R_PDF_Generate(const resume_id: integer; const FileName:string; var isDone: boolean);
		procedure File_CL_PDF_Generate(const resume_id: integer; const FileName:string; var isDone: boolean);
		procedure File_CV_PDF_Generate(const resume_id: integer; const FileName:string; var isDone: boolean);
//		procedure WX_R_DOC_Generate(const resume_id: integer; const FileName:string; var isDone: boolean);
//    procedure WX_CV_DOC_Generate(const resume_id: integer; const FileName:string; var isDone: boolean);
//    procedure WX_CL_DOC_Generate(const resume_id: integer; const FileName:string; var isDone: boolean);

		procedure EditResume;
//		procedure R_DOC_AddTable(var section:TTMSFNCWXDocxSection);
//		procedure R_DOC_AddFooter(var section:TTMSFNCWXDocxSection; resume_id:integer);
//		procedure R_DOC_AddJob(var section:TTMSFNCWXDocxSection);
//		procedure R_DOC_RichText(var paragraph: TTMSFNCWXDocxParagraph; const SourceText: string; var Alignment:TTMSFNCWXDocxTextAlignment; var Res:string);
		procedure LocateTagA(const SourceText: string; var TagBegin, TagEnd:integer; var isFound:boolean);
		procedure LocateTagB(const SourceText: string; var TagBegin, TagEnd: integer; var isFound: boolean);
		procedure LocateTagU(const SourceText: string; var TagBegin, TagEnd: integer; var isFound: boolean);
//    procedure WX_CL_PDF_Generate(const resume_id: integer;
//      const FileName: string; var isDone: boolean);
//    procedure WX_CV_PDF_Generate(const resume_id: integer;
//      const FileName: string; var isDone: boolean);
//    procedure WX_R_PDF_Generate(const resume_id: integer;
//      const FileName: string; var isDone: boolean);
//    procedure R_CV_Add_Job(var section: TTMSFNCWXDocxSection);
//		procedure R_CV_AddHeader(var section:TTMSFNCWXDocxSection);
//    procedure R_CV_AddFooter(var section: TTMSFNCWXDocxSection; resume_id: integer);

	public
		procedure SetFormValues;
		function LocalTranslate(Word:UnicodeString):UnicodeString;
		function LocalTranslateLang(Word:UnicodeString; Lang:string):UnicodeString;
//    function OLE_FileReplace(FWordFrom, FWordTo:TFileName):boolean;

  end;

var
  FormListResumes: TFormListResumes;

implementation

{$R *.dfm}

uses System.Math, System.UITypes, System.IOUtils, Winapi.ShellAPI, Parameters, System.Win.ComObj,
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

procedure TFormListResumes.BitBtn1Click(Sender: TObject);
//var
//  section: TTMSFNCWXDocxSection;
//  paragraph:  TTMSFNCWXDocxParagraph;
//	text: TTMSFNCWXDocxText;
//  toc: TTMSFNCWXDocxTableOfContents;
//	externalHyperlink: TTMSFNCWXDocxExternalHyperlink;
begin
//	section := TMSFNCWXDocx1.Document.AddSection;
//	paragraph := section.AddParagraph;
//	externalHyperlink := paragraph.AddExternalHyperlink('https://www.tmssoftware.com','link to tmssoftware page');
//	text := externalHyperlink.AddText;
//	text.Text := 'link to tmssoftware page';
//	toc := section.AddTableOfContents;
//	TMSFNCWXDocx1.GetDocxAsFile(TPath.Combine(TPath.GetDocumentsPath,'AdvancedDocx.docx'));
end;

procedure TFormListResumes.BitBtnArchiveClick(Sender: TObject);
begin
if VarIsNull(UniResumes['id']) then  ShowMessage('Оберіть резюме')
	else
    begin
    if MessageDlg( 'Підтвердіть переміщення резюме у архив', mtConfirmation, [mbYes,mbNo],0)=mrNo then exit;
		UniArchiveResume.Prepare;
		UniArchiveResume.ParamByName('p_id').AsInteger:=UniResumes['id'];
    UniArchiveResume.ExecSQL;
    UniResumes.Refresh;
    end
end;

procedure TFormListResumes.BitBtnCheckClick(Sender: TObject);
begin
//TTMSFNCUtils.OpenFile(TPath.Combine(TPath.GetDocumentsPath,'AdvancedDocx.docx'));
if FileRDoc<>'' then ShellExecute(Handle, 'open', PWideChar(FileRDoc), nil, nil, SW_SHOWNORMAL)
else ShowMessage('R-DOCX файл не згенерований');
end;

procedure TFormListResumes.BitBtnCloseClick(Sender: TObject);
begin
Close;
end;

procedure TFormListResumes.BitBtnCVClick(Sender: TObject);
begin
if FileCVDoc<>'' then ShellExecute(Handle, 'open', PWideChar(FileCVDoc), nil, nil, SW_SHOWNORMAL)
else ShowMessage('CV-Doc файл не згенерований');
end;

procedure TFormListResumes.BitBtnDeleteResumeClick(Sender: TObject);
begin
if not VarIsNull(UniResumes['id'])
  then
    begin
    if MessageDlg( 'Підтвердіть видалення резюме', mtConfirmation, [mbYes,mbNo],0)=mrNo then exit;
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
  else ShowMessage('Оберіте резюме');
end;

procedure TFormListResumes.BitBtnEditResumeClick(Sender: TObject);
begin
EditResume;
end;

procedure TFormListResumes.EditResume;
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
IsErrorRDOC, IsErrorCVDOC, IsErrorCLDOC, IsErrorRPDF, IsErrorCVPDF, IsErrorCLPDF, IsDone, isErrorHappens:boolean;
FName:string;
begin
if VarIsNull(UniResumes['id']) then
	begin
	raise Exception.Create('Оберіть резюме із списка');
	exit;
	end;
IsDone:=true;
isErrorHappens:=false;
WarningFired:=false;
//TemplatesAreReady:=true;
FName:=lowercase(ReplaceStr(UniResumes['name'],' ','-'))+'-'+lowercase(UniResumes['lang']);
try
if not DirectoryExists(FormMain.Main_Folder+'\'+UniResumes['country']+'\r') then ForceDirectories(FormMain.Main_Folder+'\'+UniResumes['country']+'\r');
if not DirectoryExists(FormMain.Main_Folder+'\'+UniResumes['country']+'\cv') then ForceDirectories(FormMain.Main_Folder+'\'+UniResumes['country']+'\cv');
if not DirectoryExists(FormMain.Main_Folder+'\'+UniResumes['country']+'\cl') then ForceDirectories(FormMain.Main_Folder+'\'+UniResumes['country']+'\cl');
except on E:Exception do
  begin
  FormMain.Warning('Помилка під час створення папок');
  isErrorHappens:=true;
  exit;
  end;
end;
//======================  R DOC  ======================
IsErrorRDOC:=false;
if VarIsNull(UniResumes['resume_doc_filepath'])
  then FileRDoc:=FormMain.Main_Folder+'\'+UniResumes['country']+'\r\r-'+FName+'.docx'
  else FileRDoc:=UniResumes['resume_doc_filepath'];
try
	if not IsErrorRDOC and FileExists(FileRDoc) then
    if not DeleteFile(FileRDoc) then
    begin
  	FormMain.Warning('Збій при видаленні файла "'+ExtractFileName(FileRDoc)+'. Повідомлення: '+SysErrorMessage(GetLastError));
    IsErrorRDOC:=true;
    isErrorHappens:=true;
  	end;
except
  on E:EFCreateError do
	begin
	FormMain.Warning('Збій при видаленні файла "'+ExtractFileName(FileRDoc)+'": '+E.Message);
  IsErrorRDOC:=true;
  isErrorHappens:=false;
	end;
  on E:Exception do
  begin
  FormMain.Warning('Текст помилки: '+E.Message);
  IsErrorRDOC:=true;
  isErrorHappens:=true;
  end;
end;
if not IsErrorRDoc
  then File_R_DOC_Generate(UniResumes['id'],FileRDoc, IsDone)
  else FormMain.Warning('Файл "'+ExtractFileName(FileRDoc)+'" не буде сформований через попередні помилки');
if not IsDone then
	begin
  FormMain.Warning('Збій при обробці резюме DOCX "'+intToStr(UniResumes['id'])+'"');
	IsErrorRDOC:=true;
  IsDone:=false;
  isErrorHappens:=true;
	end;
//======================  R PDF  ======================
IsErrorRPDF:=IsErrorRDOC;
if VarIsNull(UniResumes['resume_doc_filepath'])
  then FileRPDF:=FormMain.Main_Folder+'\'+UniResumes['country']+'\r\r-'+FName+'.pdf'
  else FileRPDF:=UniResumes['resume_pdf_filepath'];
try
  if not IsErrorRPDF and FileExists(FileRPDF) then
    if not DeleteFile(FileRPDF) then
    begin
  	FormMain.Warning('Збій при видаленні файла "'+ExtractFileName(FileRPDF)+'. Повідомлення: '+SysErrorMessage(GetLastError));
    IsErrorRPDF:=true;
    isErrorHappens:=true;
  	end;

except
  on E:EFCreateError do
	begin
	FormMain.Warning('Збый при видаленні файла "'+ExtractFileName(FileRPDF)+'" можливо він відкритий у програмі WORD ');
  IsErrorRPDF:=true;
  IsErrorHappens:=true;
	end;
  on E:Exception do
  begin
  FormMain.Warning('Текст помилки: '+E.Message);
  IsErrorRPDF:=true;
  IsErrorHappens:=true;
  end;
end;
if not IsErrorRPDF
  then File_R_PDF_Generate(UniResumes['id'],FileRPDF, isDone)
  else FormMain.Warning('Файл "'+ExtractFileName(FileRPDF)+'" не буде сформований через попередні помилки');
if not isDone then
	begin
	FormMain.Warning('Збій при обробці Резюме PDF"'+intToStr(UniResumes['id'])+'"');
  IsErrorRPDF:=true;
  IsErrorHappens:=true;
  end;
//======================  CV DOC  ======================
IsErrorCVDOC:=false;
if VarIsNull(UniResumes['cv_doc_filepath'])
  then FileCVDoc:=FormMain.Main_Folder+'\'+UniResumes['country']+'\cv\cv-'+FName+'.docx'
  else FileCVDoc:=UniResumes['cv_doc_filepath'];
try
	if not IsErrorCVDOC and FileExists(FileCVDoc) then
    if not DeleteFile(FileCVDoc) then
    begin
  	FormMain.Warning('Збій при видаленні файла "'+ExtractFileName(FileCVDoc)+'. Повідомлення: '+SysErrorMessage(GetLastError));
    IsErrorCVDOC:=true;
    isErrorHappens:=true;
  	end;
except
  on E:EFCreateError do
	begin
	FormMain.Warning('Збій при видаленні файла "'+FileCVDoc+'" можливо він відкритий у програмі Word');
  IsErrorCVDOC:=true;
  isErrorHappens:=true;
	end;
  on E:Exception do
  begin
  FormMain.Warning('Текст помилки: '+E.Message);
  IsErrorCVDOC:=true;
  isErrorHappens:=true;
  end;
end;
if not IsErrorCVDOC
  then File_CV_DOC_Generate(UniResumes['id'],FileCVDoc,isDone)
  else FormMain.Warning('Файл "'+ExtractFileName(FileCVDoc)+'" не буде сформований через попередні помилки');
if not isDone then
	begin
	FormMain.Warning('Збій при обробці CV DOCX "'+intToStr(UniResumes['id'])+'"');
  IsErrorCVDOC:=true;
  isErrorHappens:=true;
	end;
//======================  CV PDF  ======================
IsErrorCVPDF:=IsErrorCVDOC;
if VarIsNull(UniResumes['cv_pdf_filepath'])
  then FileCVPDF:=FormMain.Main_Folder+'\'+UniResumes['country']+'\cv\cv-'+FName+'.pdf'
  else FileCVPDF:=UniResumes['cv_pdf_filepath'];
try
if not IsErrorCVPDF and FileExists(FileCVPDF) then
  if not DeleteFile(FileCVPDF) then
    begin
  	FormMain.Warning('Збій при видаленні файла "'+ExtractFileName(FileCVPDF)+'. Повідомлення: '+SysErrorMessage(GetLastError));
    IsErrorCVPDF:=true;
    isErrorHappens:=true;
  	end;
except
  on E:EFCreateError do
	begin
	FormMain.Warning('Збій при видаленні файла "'+FileCVPDF+'" можливо він відкритий у програмі Word');
  IsErrorCVPDF:=false;
  isErrorHappens:=true;
	end;
  on E:Exception do
  begin
  FormMain.Warning('Текст помилки: '+E.Message);
  IsErrorCVPDF:=false;
  isErrorHappens:=true;
  end;
end;
if not IsErrorCVDOC
  then File_CV_PDF_Generate(UniResumes['id'],FileCVPDF, IsDone)
  else FormMain.Warning('Файл "'+ExtractFileName(FileCVPDF)+'" не буде сформований через попередні помилки');
if not isDone
then
	begin
	FormMain.Warning('Збій при обробці CV PDF "'+intToStr(UniResumes['id'])+'"');
  IsErrorCVPDF:=false;
  isErrorHappens:=true;
  end;
//======================  CL DOC  ======================
IsErrorCLDOC:=false;
if VarIsNull(UniResumes['cl_doc_filepath'])
  then FileCLDoc:=FormMain.Main_Folder+'\'+UniResumes['country']+'\cl\cl-'+FName+'.docx'
  else FileCLDoc:=UniResumes['cl_doc_filepath'];
try
	if not IsErrorCLDOC and FileExists(FileCLDoc) then
    if not DeleteFile(FileCLDoc) then
    begin
  	FormMain.Warning('Збій при видаленні файла "'+ExtractFileName(FileCLDoc)+'. Повідомлення: '+SysErrorMessage(GetLastError));
    IsErrorCLDOC:=true;
    isErrorHappens:=true;
  	end;
except
  on E:EFCreateError do
	begin
	FormMain.Warning('Збій при видаленні файла "'+FileCLDoc+'", можливо він відкритий у програмі Word');
  IsErrorCLDOC:=true;
  isErrorHappens:=true;
	end;
  on E:Exception do
  begin
  FormMain.Warning('Текст помилки: '+E.Message);
  IsErrorCLDOC:=true;
  isErrorHappens:=true;
  end;
end;
if not IsErrorCLDOC
  then File_CL_DOC_Generate(UniResumes['id'],FileCLDoc, IsDone)
  else FormMain.Warning('Файл "'+ExtractFileName(FileCLDoc)+'" не буде сформований через попередні помилки');
if not isDone then
	begin
	FormMain.Warning('Збій при обробці CoverLetter DOCX "'+intToStr(UniResumes['id'])+'"');
  IsErrorCLDOC:=true;
  isErrorHappens:=true;
	end;
//======================  CL PDF  ======================
IsErrorCLPDF:=IsErrorCLDOC;
if VarIsNull(UniResumes['cl_pdf_filepath'])
  then FileCLPDF:=FormMain.Main_Folder+'\'+UniResumes['country']+'\cl\cl-'+FName+'.pdf'
  else FileCLPDF:=UniResumes['cl_pdf_filepath'];
try
if not IsErrorCLPDF and FileExists(FileCLPDF) then
  if not DeleteFile(FileCLPDF) then
  begin
  FormMain.Warning('Збій при видаленні файла "'+ExtractFileName(FileCLPDF)+'. Повідомлення: '+SysErrorMessage(GetLastError));
  IsErrorCLPDF:=true;
  isErrorHappens:=true;
  end;
except
  on E:EFCreateError do
	begin
	FormMain.Warning('Збій при видаленні файла "'+FileCLPDF+'", можливо він відкритий у програмі Word');
  IsErrorCLPDF:=true;
  isErrorHappens:=true;
	end;
  on E:Exception do
  begin
  FormMain.Warning('Текст помилки: '+E.Message);
  IsErrorCLPDF:=true;
  isErrorHappens:=true;
  end;
end;
if not IsErrorCLPDF
  then File_CL_PDF_Generate(UniResumes['id'],FileCLPDF, isDone)
  else FormMain.Warning('Файл "'+ExtractFileName(FileCLPDF)+'" не буде сформований через попередні помилки');
if not isDone then
	begin
	FormMain.Warning('Збій при обробці CoverLetter PDF "'+intToStr(UniResumes['id'])+'"');
  IsErrorCLPDF:=true;
  isErrorHappens:=true;
  end;
//=======================================================
if not IsErrorHappens then
  begin
  UniSPUpdateFilepathes.Prepare;
  UniSPUpdateFilepathes.ParamByName('p_name').AsString  := trim(UniResumes['name']);
  UniSPUpdateFilepathes.ParamByName('p_region_id').AsString := UniResumes['region_id'];
  UniSPUpdateFilepathes.ParamByName('p_resume_doc_filepath').AsString := FileRDoc;
  UniSPUpdateFilepathes.ParamByName('p_cv_doc_filepath').AsString := FileCVDoc;
  UniSPUpdateFilepathes.ParamByName('p_cl_doc_filepath').AsString := FileCLDoc;
  UniSPUpdateFilepathes.ParamByName('p_resume_pdf_filepath').AsString := FileRPDF;
  UniSPUpdateFilepathes.ParamByName('p_cv_pdf_filepath').AsString := FileCVPDF;
  UniSPUpdateFilepathes.ParamByName('p_cl_pdf_filepath').AsString := FileCLPDF;
  UniSPUpdateFilepathes.ExecSQL;
  ShowMessage('Шаблони успішно оброблені, резюме готове: '+UniResumes['name']);
  end
  else ShowMessage('Шаблони не оброблені до кінця, деякі файли не сформовані');
end;

procedure TFormListResumes.CBWordWrapClick(Sender: TObject);
begin
{ TODO : Заменить DBRichEditor }
//if CBWordWrap.Checked
//then
//	begin
//	DBRichEditor.ScrollBars:=ssVertical;
//	DBRichEditor.WordWrap:=true;
//	end
//else
//	begin
//	DBRichEditor.ScrollBars:=ssBoth;
//	DBRichEditor.WordWrap:=false;
//	end;
end;

procedure TFormListResumes.DBGrid1DblClick(Sender: TObject);
begin
EditResume;
end;

procedure TFormListResumes.DBRichEditorSaveClipboard(Sender: TObject;
  NumObjects, NumChars: Integer; var SaveClipboard: Boolean);
begin
ShowMessage('Save Clipboard');
end;

procedure TFormListResumes.File_CL_DOC_Generate(const resume_id: integer;
  const FileName: string; var isDone: boolean);
begin
//
end;

procedure TFormListResumes.File_CL_PDF_Generate(const resume_id: integer;
  const FileName: string; var isDone: boolean);
begin
//
end;

procedure TFormListResumes.File_CV_DOC_Generate(const resume_id: integer;
  const FileName: string; var isDone: boolean);
begin
//
end;

procedure TFormListResumes.File_CV_PDF_Generate(const resume_id: integer;
  const FileName: string; var isDone: boolean);
begin
//
end;

procedure TFormListResumes.File_R_DOC_Generate(const resume_id: integer;
  const FileName: string; var isDone: boolean);
begin
//
end;

procedure TFormListResumes.File_R_PDF_Generate(const resume_id: integer;
  const FileName: string; var isDone: boolean);
begin
//
end;

procedure TFormListResumes.FormCreate(Sender: TObject);
begin
Radiogroup.ItemIndex:=0;
{ TODO : Заменить DBRichEditor }
//DBRichEditor.ScrollBars:=ssVertical;
//DBRichEditor.WordWrap:=true;
end;

procedure TFormListResumes.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key = VK_F2 then BitBtnEditResume.Click();
if Key = VK_F4 then BitBtnNewResume.Click();
if Key = VK_F8 then BitBtnArchive.Click();
if Key = VK_F8 then BitBtnSaveResume.Click();
end;

function TFormListResumes.LocalTranslate(Word:Unicodestring): UnicodeString;
begin
Result:='';
FormMain.UniLocalTranslate.Close;
FormMain.UniLocalTranslate.ParamByName('p_word').Value:=Trim(Word);
FormMain.UniLocalTranslate.ParamByName('p_word').National := true;
FormMain.UniLocalTranslate.Open;
if VarIsNull(FormMain.UniLocalTranslate['id']) then
	 begin
	 Result:='N/A';
	 exit;
	 end;
if UniResumes['lang']='RU' then
	 begin
	 Result:=FormMain.UniLocalTranslate['RU'];
	 end;
if UniResumes['lang']='UA' then
	 begin
	 Result:=FormMain.UniLocalTranslate['UA'];
	 end;
if UniResumes['lang']='EN' then
	 begin
	 Result:=FormMain.UniLocalTranslate['EN'];
	 end;
if UniResumes['lang']='DE' then
	 begin
	 Result:=FormMain.UniLocalTranslate['DE'];
	 end;
if UniResumes['lang']='PL' then
	 begin
	 Result:=FormMain.UniLocalTranslate['PL'];
	 end;
if UniResumes['lang']='HR' then
	 begin
	 Result:=FormMain.UniLocalTranslate['HR'];
	 end;
end;

function TFormListResumes.LocalTranslateLang(Word:UnicodeString; Lang: string): Unicodestring;
begin
Result:='';
FormMain.UniLocalTranslate.Close;
FormMain.UniLocalTranslate.ParamByName('p_word').Value:=Trim(Word);
FormMain.UniLocalTranslate.Open;
if VarIsNull(FormMain.UniLocalTranslate['id']) then
	 begin
	 Result:='N/A';
	 exit;
	 end;
if lang='RU' then
	 begin
	 Result:=FormMain.UniLocalTranslate['RU'];
	 end;
if lang='UA' then
	 begin
	 Result:=FormMain.UniLocalTranslate['UA'];
	 end;
if lang='EN' then
	 begin
	 Result:=FormMain.UniLocalTranslate['EN'];
	 end;
if lang='DE' then
	 begin
	 Result:=FormMain.UniLocalTranslate['DE'];
	 end;
if lang='PL' then
	 begin
	 Result:=FormMain.UniLocalTranslate['PL'];
	 end;
if lang='HR' then
	 begin
	 Result:=FormMain.UniLocalTranslate['HR'];
	 end;
end;

procedure TFormListResumes.BitBtnLetterClick(Sender: TObject);
begin
if FileCLDoc<>'' then ShellExecute(Handle, 'open', PWideChar(FileCLDoc), nil, nil, SW_SHOWNORMAL) ;
end;

procedure TFormListResumes.BitBtnNewResumeClick(Sender: TObject);
var rid, tid:integer;
sid:string;
begin
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

procedure TFormListResumes.BitBtnNewResumeKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if Key = VK_F3 then BitBtnNewResume.Click();
	if Key = VK_F4 then BitBtnEditResume.Click();
	if Key = VK_F7 then BitBtnArchive.Click();
	if Key = VK_F8 then BitBtnDeleteResume.Click();
	if Key = VK_F9 then BitBtnSaveResume.Click();
end;

procedure TFormListResumes.BitBtnOpenResumeClick(Sender: TObject);
begin
if (FIleRDoc='')  then
   begin
   ShowMessage('Файл ещё не создан');
   exit;
   end;

if (FIleRDoc<>'')
   then
   begin
//   FormMain.Warning('Открываем файл '+FileRDoc);
   ShellExecute(Handle, 'open', PWideChar(FileRDoc), nil, nil, SW_SHOWNORMAL);
   end
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
if (trim(FileCLPDF)+trim(FileCVPDF)+trim(FileRPDF)='')   then
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
if FileExists(FileRPDF) then
  begin
    Hf3 := FileOpen(FileRPDF, fmOpenReadWrite or fmShareExclusive);
    if Hf3 = -1
      then
      begin
        FormMain.Warning('Файл открыт в другой программе: '+FileRPDF);
        exit;
      end
      else
        begin
          FileClose(Hf3);
          DeleteFile(FileRPDF);
        end;
  end;
try
Word1 := CreateOLEObject('Word.Application');
Doc1 := Word1.Documents.Open(FileCLDoc);
Doc1.ExportAsFixedFormat(FileCLPDF, wdExportFormatPDF);
finally
  Doc1.Close;
  Word1.Quit;
  Word1 := Unassigned;
end;
try
Word2 := CreateOLEObject('Word.Application');
Doc2 := Word2.Documents.Open(FileCVDoc);
Doc2.ExportAsFixedFormat(FileCVPDF, wdExportFormatPDF);
finally
  Doc2.Close;
  Word2.Quit;
  Word2 := Unassigned;
end;
try
Word3 := CreateOLEObject('Word.Application');
Doc3 := Word3.Documents.Open(FileRDoc);
Doc3.ExportAsFixedFormat(FileRPDF, wdExportFormatPDF);
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

//procedure TFormListResumes.TMSFNCWXDocx2DownloadAsFile(Sender: TObject;
//  FileName: string);
//begin
//    TTMSFNCUtils.OpenFile(FileName);
//end;

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

//procedure TFormListResumes.R_DOC_AddFooter(var section: TTMSFNCWXDocxSection; resume_id:integer);
//var paragraph: TTMSFNCWXDocxParagraph;
//StringList,StringList2:TStringList;
//i:integer;
//FooterText : TTMSFNCWXDocxText;
//Alignment:TTMSFNCWXDocxTextAlignment;
//Res:string;
//begin
//StringList:=TStringList.Create();
//paragraph := section.AddParagraph;
//Paragraph.Spacing.Line:=400;
//Paragraph.Spacing.LineRule:=lrAuto;
//
//if  not VarIsNull(UniResumes['resume_introduction']) then
//	begin
//	StringList.Text := UniResumes.FieldByName('resume_introduction').AsString;
//	for i:=0 to StringList.Count-1 do
//		begin
//			paragraph := section.AddParagraph;
//			paragraph.Alignment:=taJustified;
//			Paragraph.Spacing.Line:=400;
//			Paragraph.Spacing.LineRule:=lrAuto;
//			Alignment:=taJustified;
//			R_DOC_RichText(paragraph, StringList[i], Alignment, Res);
//		end;
//	end;
//UniResumeFooters.Close;
//UniResumeFooters.ParamByName('p_resume_id').Value:=resume_id;
//UniResumeFooters.Open;
//while not UniResumeFooters.Eof do
//	begin
//    paragraph := section.AddParagraph;
//    Paragraph.Spacing.Line:=400;
//    Paragraph.Spacing.LineRule:=lrAuto;
//    FooterText:=paragraph.AddText(UniResumeFooters['footer_header']);
//    paragraph.Alignment := taLeft;
//    FooterText.Font.Size := 12;
//    FooterText.Font.Name:='Times New Roman';
//    FooterText.Font.Style := [fsBold];
//    StringList2:=TStringList.Create();
//    StringList2.Text := UniResumeFooters.FieldByName('footer_text').AsString;
//    for i:=0 to StringList2.Count-1 do
//      if not FormMain.IsEmpty(StringList2[i]) then
//      begin
//        paragraph := section.AddParagraph;
//        Paragraph.Spacing.Line:=400;
//        Paragraph.Spacing.LineRule:=lrAuto;
//        FooterText.Font.Size := 12;
//        FooterText.Font.Name:='Times New Roman';
//        Alignment:=taJustified;
//        R_DOC_RichText(paragraph, StringList2[i], Alignment, Res);
//      end;
//    StringList2.Destroy();
//  UniResumeFooters.Next;
//	end;
//StringList.Destroy();
//end;

//procedure TFormListResumes.R_CV_AddFooter(var section: TTMSFNCWXDocxSection; resume_id:integer);
//var paragraph: TTMSFNCWXDocxParagraph;
//StringList,StringList2:TStringList;
//i:integer;
//FooterText : TTMSFNCWXDocxText;
//Alignment:TTMSFNCWXDocxTextAlignment;
//Res:string;
//begin
//StringList:=TStringList.Create();
//paragraph := section.AddParagraph;
//Paragraph.Spacing.Line:=400;
//Paragraph.Spacing.LineRule:=lrAuto;
//
//if not VarIsNull(UniResumes['cv_introduction']) then
//	begin
//	StringList.Text := UniResumes.FieldByName('cv_introduction').AsString;
//	for i:=0 to StringList.Count-1 do
//		begin
//			paragraph := section.AddParagraph;
//			paragraph.Alignment:=taJustified;
//			Paragraph.Spacing.Line:=400;
//			Paragraph.Spacing.LineRule:=lrAuto;
//			Alignment:=taJustified;
//			R_DOC_RichText(paragraph, StringList[i], Alignment, Res);
//		end;
//	end;
//UniResumeFooters.Close;
//UniResumeFooters.ParamByName('p_resume_id').Value:=resume_id;
//UniResumeFooters.Open;
//while not UniResumeFooters.Eof do
//	begin
//  if UniResumeFooters.FieldByName('cv_include_footer').AsBoolean and not FormMain.IsEmpty(UniResumeFooters['footer_header']) then
//    begin
//  	paragraph := section.AddParagraph;
//	  Paragraph.Spacing.Line:=400;
//  	Paragraph.Spacing.LineRule:=lrAuto;
//	  FooterText:=paragraph.AddText(UniResumeFooters['footer_header']);
//  	paragraph.Alignment := taLeft;
//	  FooterText.Font.Size := 12;
//  	FooterText.Font.Name:='Times New Roman';
//	  FooterText.Font.Style := [fsBold];
//  end;
//	StringList2:=TStringList.Create();
//	StringList2.Text := UniResumeFooters.FieldByName('footer_text').AsString;
//	for i:=0 to StringList2.Count-1 do
//    if not FormMain.IsEmpty(StringList2[i]) then
//		begin
//			paragraph := section.AddParagraph;
//			Paragraph.Spacing.Line:=400;
//			Paragraph.Spacing.LineRule:=lrAuto;
//			FooterText.Font.Size := 12;
//			FooterText.Font.Name:='Times New Roman';
//			Alignment:=taJustified;
//			R_DOC_RichText(paragraph, StringList2[i], Alignment, Res);
//		end;
//	UniResumeFooters.Next;
//	end;
//StringList.Destroy();
//StringList2.Destroy();
//end;

//procedure TFormListResumes.R_CV_AddHeader(var section: TTMSFNCWXDocxSection);
//var
//paragraph: TTMSFNCWXDocxParagraph;
//doctext     : TTMSFNCWXDocxText;
//Alignment:TTMSFNCWXDocxTextAlignment;
//Res:string;
//begin
//paragraph := section.AddParagraph;
//Paragraph.Spacing.Line:=180;
//paragraph.AddImage(TMSFNCBitmapContainer1.Bitmaps[1],20,20);
//doctext := paragraph.AddText('     '+UniResumes['phone_numbers_text']);
//Paragraph.Alignment:=taLeft;
//Doctext.Font.Size := 12;
//DocText.Font.Name:='Times New Roman';
//paragraph := section.AddParagraph;
//Paragraph.Spacing.Line:=180;
//paragraph.AddImage(TMSFNCBitmapContainer1.Bitmaps[0],20,20);
//Doctext := paragraph.AddText('     '+UniResumes['job_place']);
//Doctext.Font.Size := 12;
//DocText.Font.Name:='Times New Roman';
//paragraph := section.AddParagraph;
//Paragraph.Spacing.Line:=180;
//paragraph.AddImage(TMSFNCBitmapContainer1.Bitmaps[2],20,20);
//Doctext := paragraph.AddText('     '+FormMain.Email);
//Doctext.Font.Color := clBlack;
//Doctext.Font.Size := 12;
//DocText.Font.Name:='Times New Roman';
//paragraph := section.AddParagraph;
//Paragraph.Spacing.Line:=180;
//paragraph.AddImage(TMSFNCBitmapContainer1.Bitmaps[3],20,20);
//Doctext := paragraph.AddText('     ');
//Doctext.Font.Color := clBlack;
//Doctext.Font.Size := 12;
//DocText.Font.Name:='Times New Roman';
//R_DOC_RichText(paragraph,LocalTranslate('Рекомендательное письмо')+' <a>'+FormMain.RecommendationLink+'</a>', Alignment,Res);
//Doctext.Font.Color := clBlack;
//Doctext.Font.Size := 12;
//DocText.Font.Name:='Times New Roman';
//end;

//procedure TFormListResumes.R_DOC_AddJob(var section: TTMSFNCWXDocxSection);
//var
//i:integer;
//paragraph: TTMSFNCWXDocxParagraph;
//JobText : TTMSFNCWXDocxText;
//Postn:integer;
//Res:string;
//StringList3:TStringList;
//Alignment:TTMSFNCWXDocxTextAlignment;
//begin
//paragraph := section.AddParagraph;
//Paragraph.Spacing.Line:=400;
//Paragraph.Spacing.LineRule:=lrAuto;
//paragraph.Alignment := taLeft;
//JobText:=paragraph.AddText(UniExperiences['job_position']);
//JobText.Font.Size := 12;
//JobText.Font.Name:='Times New Roman';
//JobText.Font.Style := [fsBold];
//
//paragraph := section.AddParagraph;
//Paragraph.Spacing.Line:=400;
//Paragraph.Spacing.LineRule:=lrAuto;
//paragraph.Alignment := taLeft;
//Postn:=Pos('USA',UpperCase(UniExperiences['employer']));
//if Postn>0
//then
//	begin
//		JobText:=paragraph.AddText(Copy(UniExperiences['employer'],1,Postn-1));
//		JobText.Font.Size := 12;
//		JobText.Font.Name:='Times New Roman';
//		JobText:=paragraph.AddText('USA');
//		JobText.Font.Size := 12;
//		JobText.Font.Name:='Times New Roman';
//		JobText.Font.Style:=[fsBold];
//		JobText:=paragraph.AddText(Copy(UniExperiences['employer'],Postn+3,length(UniExperiences['employer'])));
//		JobText.Font.Size := 12;
//		JobText.Font.Name:='Times New Roman';
//	end
//else
//	begin
//		JobText:=paragraph.AddText(UniExperiences['employer']);
//		JobText.Font.Size := 12;
//		JobText.Font.Name:='Times New Roman';
//	end;
//
//paragraph := section.AddParagraph;
//Paragraph.Spacing.Line:=400;
//Paragraph.Spacing.LineRule:=lrAuto;
//paragraph.Alignment := taLeft;
//JobText:=paragraph.AddText(FormMain.GetFullMonthByRegion(UniExperiences['start_date'], UniResumes['region_id'])+	' - '+	FormMain.GetFullMonthByRegion(UniExperiences['end_date'], UniResumes['region_id']));
//JobText.Font.Size := 12;
//JobText.Font.Name:='Times New Roman';
//StringList3:=TStringList.Create();
//StringList3.Text := UniExperiences.FieldByName('responsibilities').AsString;
//	for i:=0 to StringList3.Count-1 do
//		begin
//			paragraph := section.AddParagraph;
//			paragraph.Alignment:=taJustified;
//			Paragraph.Spacing.Line:=400;
//			Paragraph.Spacing.LineRule:=lrAuto;
//			Alignment:=taJustified;
//			R_DOC_RichText(paragraph, StringList3[i],Alignment, Res);
//			if not (Copy(Res,1,1)='0') then
//				begin
//				FormMain.Warning(Res);
//				exit;
//				end;
//		end;
//if not FormMain.IsEmpty(UniExperiences['benefits']) then
//	begin
//		paragraph := section.AddParagraph;
//		Paragraph.Spacing.Line:=400;
//		Paragraph.Spacing.LineRule:=lrAuto;
//		paragraph.Alignment := taLeft;
//		JobText:=paragraph.AddText(LocalTranslate('Преимущества'));
//		JobText.Font.Size := 12;
//		JobText.Font.Style := [fsUnderline];
//		JobText.Font.Name:='Times New Roman';
//		JobText:=paragraph.AddText(': '+UniExperiences['benefits']);
//		JobText.Font.Size := 12;
//		JobText.Font.Name:='Times New Roman';
//		JobText.Font.Style := [];
//	end;
//
//if not FormMain.IsEmpty(UniExperiences['other']) then
//	begin
//		Alignment := taJustified;
//		R_DOC_RichText(paragraph,UniExperiences['other'], Alignment,Res);
//		if not (Copy(Res,1,1)='0') then
//			begin
//			FormMain.Warning(Res);
//			exit;
//			end;
//	end;
//UniSkillsID.Close;
//UniSkillsID.ParamByName('p_experience_id').AsInteger:=UniExperiences['id'];
//UniSkillsID.Open;
//if not VarIsNull(UniSkillsID['skill_id']) then
//	begin
//	paragraph := section.AddParagraph;
//	Paragraph.Spacing.Line:=400;
//	Paragraph.Spacing.LineRule:=lrAuto;
//	paragraph.Alignment := taJustified;
//	JobText:=paragraph.AddText(LocalTranslate('Навыки')+': ');
//	JobText.Font.Size := 12;
//	JobText.Font.Style := [fsBold];
//	JobText.Font.Name:='Times New Roman';
//	end;
//while not UniSkillsID.Eof do
//	begin
//	JobText:=paragraph.AddText(UniSkillsID['skill']);
//	JobText.Font.Size := 12;
//	JobText.Font.Name:='Times New Roman';
//	UniSkillsID.Next;
//	if not UniSkillsID.Eof then
//		begin
//		JobText:=paragraph.AddText(' · ');
//		JobText.Font.Size := 12;
//		JobText.Font.Name:='Times New Roman';
//		end;
//	end;
//StringList3.Destroy();
//end;

//procedure TFormListResumes.R_CV_Add_Job(var section: TTMSFNCWXDocxSection);
//var
//paragraph: TTMSFNCWXDocxParagraph;
//JobText : TTMSFNCWXDocxText;
//Postn:integer;
//begin
//paragraph := section.AddParagraph;
//Paragraph.Spacing.Line:=400;
//Paragraph.Spacing.LineRule:=lrAuto;
//paragraph.Alignment := taLeft;
//JobText:=paragraph.AddText(UniExperiences['job_position']);
//JobText.Font.Size := 12;
//JobText.Font.Name:='Times New Roman';
//JobText.Font.Style := [fsBold];
//JobText:=paragraph.AddText('        ');
//JobText.Font.Size := 12;
//JobText.Font.Name:='Times New Roman';
//JobText:=paragraph.AddText(FormMain.GetFullMonthByRegion(UniExperiences['start_date'], UniResumes['region_id'])+	' - '+	FormMain.GetFullMonthByRegion(UniExperiences['end_date'], UniResumes['region_id']));
//JobText.Font.Size := 12;
//JobText.Font.Name:='Times New Roman';
//JobText:=paragraph.AddText('        ');
//JobText.Font.Size := 12;
//JobText.Font.Name:='Times New Roman';
//Postn:=Pos('USA',UpperCase(UniExperiences['employer']));
//if Postn>0
//then
//	begin
//		JobText:=paragraph.AddText('Company '+Copy(UniExperiences['employer'],1,Postn-1));
//		JobText.Font.Size := 12;
//		JobText.Font.Name:='Times New Roman';
//		JobText:=paragraph.AddText('USA');
//		JobText.Font.Size := 12;
//		JobText.Font.Name:='Times New Roman';
//		JobText:=paragraph.AddText(Copy(UniExperiences['employer'],Postn+3,length(UniExperiences['employer'])));
//		JobText.Font.Size := 12;
//		JobText.Font.Name:='Times New Roman';
//	end
//else
//	begin
//		JobText:=paragraph.AddText(UniExperiences['employer']);
//		JobText.Font.Size := 12;
//		JobText.Font.Name:='Times New Roman';
//	end;
//UniSkillsID.Close;
//UniSkillsID.ParamByName('p_experience_id').AsInteger:=UniExperiences['id'];
//UniSkillsID.Open;
//if not VarIsNull(UniSkillsID['skill_id']) then
//	begin
//	paragraph := section.AddParagraph;
//	Paragraph.Spacing.Line:=400;
//	Paragraph.Spacing.LineRule:=lrAuto;
//	paragraph.Alignment := taJustified;
//	JobText:=paragraph.AddText(LocalTranslate('Навыки')+': ');
//	JobText.Font.Size := 12;
//	JobText.Font.Name:='Times New Roman';
//	end;
//while not UniSkillsID.Eof do
//	begin
//	JobText:=paragraph.AddText(UniSkillsID['skill']);
//	JobText.Font.Size := 12;
//	JobText.Font.Name:='Times New Roman';
//	UniSkillsID.Next;
//	if not UniSkillsID.Eof then
//		begin
//		JobText:=paragraph.AddText(' · ');
//		JobText.Font.Size := 12;
//		JobText.Font.Name:='Times New Roman';
//		end;
//	end;
//end;
//
//procedure TFormListResumes.R_DOC_AddTable(var section:TTMSFNCWXDocxSection);
//var
//paragraph: TTMSFNCWXDocxParagraph;
//doctext     : TTMSFNCWXDocxText;
//table    : TTMSFNCWXDocxTable;
//tableRow : TTMSFNCWXDocxTableRow;
//tableCell: TTMSFNCWXDocxTableCell;
//Alignment:TTMSFNCWXDocxTextAlignment;
//Res:string;
//begin
//table := section.AddTable;
//table.Width.Size:=100;
//table.Width.WidthType:=wtPercentage;
//tableRow := Table.AddRow;
//
//tableCell := tableRow.AddCell;
//tableCell.Width.Size:=5;
//tableCell.Width.WidthType := wtPercentage;
//tableCell.Borders.Top.Value:=bsNil;
//tableCell.Borders.Bottom.Value:=bsNil;
//tableCell.Borders.Left.Value:=bsNil;
//tableCell.Borders.Right.Value:=bsNil;
//
//
//// Перенести ячейку Віддалена робота в конец таблицы
//paragraph := TableCell.AddParagraph;
//Paragraph.Spacing.After:=180;
//Paragraph.Spacing.Before:=180;
//Paragraph.Spacing.Line:=180;
//paragraph.AddImage(TMSFNCBitmapContainer1.Bitmaps[1],20,20);
//Paragraph.Alignment:=taCenter;
//
//tableCell := tableRow.AddCell;
//tableCell.Width.Size:=95;
//tableCell.Width.WidthType := wtPercentage;
//tableCell.Borders.Top.Value:=bsNil;
//tableCell.Borders.Bottom.Value:=bsNil;
//tableCell.Borders.Left.Value:=bsNil;
//tableCell.Borders.Right.Value:=bsNil;
//
//
//paragraph := TableCell.AddParagraph;
//Paragraph.Spacing.After:=180;
//Paragraph.Spacing.Before:=180;
//Paragraph.Spacing.Line:=180;
//Paragraph.Spacing.LineRule:=lrExactly;
//doctext := paragraph.AddText(UniResumes['phone_numbers_text']);
//Paragraph.Alignment:=taLeft;
//Doctext.Font.Color := clBlack;
//Doctext.Font.Size := 12;
//DocText.Font.Name:='Times New Roman';
//
//tableRow := Table.AddRow;
//
//tableCell := tableRow.AddCell;
//tableCell.Borders.Top.Value:=bsNil;
//tableCell.Borders.Bottom.Value:=bsNil;
//tableCell.Borders.Left.Value:=bsNil;
//tableCell.Borders.Right.Value:=bsNil;
//
//paragraph := TableCell.AddParagraph;
//Paragraph.Spacing.After:=180;
//Paragraph.Spacing.Before:=180;
//Paragraph.Spacing.Line:=180;
//Paragraph.Spacing.LineRule:=lrExactly;
//paragraph.AddImage(TMSFNCBitmapContainer1.Bitmaps[0],20,20);
//Paragraph.Alignment:=taCenter;
//// Добавляем телефонный номер
//tableCell := tableRow.AddCell;
//tableCell.Borders.Top.Value:=bsNil;
//tableCell.Borders.Bottom.Value:=bsNil;
//tableCell.Borders.Left.Value:=bsNil;
//tableCell.Borders.Right.Value:=bsNil;
//
//paragraph := TableCell.AddParagraph;
//Paragraph.Spacing.After:=180;
//Paragraph.Spacing.Before:=180;
//Paragraph.Spacing.Line:=180;
//Paragraph.Spacing.LineRule:=lrExactly;
//
//Doctext := paragraph.AddText(UniResumes['job_place']);
//Paragraph.Alignment:=taLeft;
//Doctext.Font.Color := clBlack;
//Doctext.Font.Size := 12;
//DocText.Font.Name:='Times New Roman';
//
//tableRow := Table.AddRow;
//tableCell := tableRow.AddCell;
//tableCell.Borders.Top.Value:=bsNil;
//tableCell.Borders.Bottom.Value:=bsNil;
//tableCell.Borders.Left.Value:=bsNil;
//tableCell.Borders.Right.Value:=bsNil;
//
//paragraph := TableCell.AddParagraph;
//Paragraph.Spacing.After:=180;
//Paragraph.Spacing.Before:=180;
//Paragraph.Spacing.Line:=180;
//Paragraph.Spacing.LineRule:=lrExactly;
//
//paragraph.AddImage(TMSFNCBitmapContainer1.Bitmaps[2],20,20);
//Paragraph.Alignment:=taCenter;
//
//tableCell := tableRow.AddCell;
//tableCell.Borders.Top.Value:=bsNil;
//tableCell.Borders.Bottom.Value:=bsNil;
//tableCell.Borders.Left.Value:=bsNil;
//tableCell.Borders.Right.Value:=bsNil;
//
//paragraph := TableCell.AddParagraph;
//Paragraph.Spacing.After:=180;
//Paragraph.Spacing.Before:=180;
//Paragraph.Spacing.Line:=180;
//Paragraph.Spacing.LineRule:=lrExactly;
//
//Doctext := paragraph.AddText(FormMain.Email);
//Paragraph.Alignment:=taLeft;
//Doctext.Font.Color := clBlack;
//Doctext.Font.Size := 12;
//DocText.Font.Name:='Times New Roman';
//
//tableRow := Table.AddRow;
//tableCell := tableRow.AddCell;
//tableCell.Borders.Top.Value:=bsNil;
//tableCell.Borders.Bottom.Value:=bsNil;
//tableCell.Borders.Left.Value:=bsNil;
//tableCell.Borders.Right.Value:=bsNil;
//
//paragraph := TableCell.AddParagraph;
//Paragraph.Spacing.After:=180;
//Paragraph.Spacing.Before:=180;
//Paragraph.Spacing.Line:=180;
//Paragraph.Spacing.LineRule:=lrExactly;
//paragraph.AddImage(TMSFNCBitmapContainer1.Bitmaps[3],20,20);
//Paragraph.Alignment:=taCenter;
//
//tableCell := tableRow.AddCell;
//tableCell.Borders.Top.Value:=bsNil;
//tableCell.Borders.Bottom.Value:=bsNil;
//tableCell.Borders.Left.Value:=bsNil;
//tableCell.Borders.Right.Value:=bsNil;
//
//paragraph := TableCell.AddParagraph;
//Paragraph.Spacing.After:=180;
//Paragraph.Spacing.Before:=180;
//Paragraph.Spacing.Line:=180;
//Paragraph.Spacing.LineRule:=lrExactly;
//Alignment:=taLeft;
//R_DOC_RichText(paragraph,LocalTranslate('Рекомендательное письмо')+' <a>'+FormMain.RecommendationLink+'</a>', Alignment,Res);
//end;

//procedure TFormListResumes.R_DOC_RichText(var paragraph: TTMSFNCWXDocxParagraph; const SourceText:
//        string; var Alignment:TTMSFNCWXDocxTextAlignment;var Res:string);
//var I, TagBeginA, TagEndA, TagBeginB, TagEndB, TagBeginU, TagEndU :integer;
//isFoundA,isFoundB,isFoundU:boolean;
//FirstSymbol:integer;
//TagText:TTMSFNCWXDocxText;
//externalHyperlink:TTMSFNCWXDocxExternalHyperlink;
//SText:string;
//begin
//Res:='0';
//try
//LocateTagA(SourceText, TagBeginA, TagEndA, isFoundA);
//LocateTagB(SourceText, TagBeginB, TagEndB, isFoundB);
//LocateTagU(SourceText, TagBeginU, TagEndU, isFoundU);
//FirstSymbol:=TagBeginA+TagBeginB+TagBeginU;
//if isFoundA then FirstSymbol:=TagBeginA;
//if isFoundB then FirstSymbol:=System.Math.Min(FirstSymbol,TagBeginB);
//if isFoundU then FirstSymbol:=System.Math.Min(FirstSymbol,TagBeginU);
//SText:=Copy(SourceText,FirstSymbol,length(Sourcetext));
//TagText:=paragraph.AddText(Copy(SourceText,1,FirstSymbol-1));
//TagText.Font.Size := 12;
//TagText.Font.Name:='Times New Roman';
//i:=0;
//while isFoundA or isFoundB or isFoundU do
//	begin
//	inc(i);
//	LocateTagA(SText, TagBeginA, TagEndA, isFoundA);
//	LocateTagB(SText, TagBeginB, TagEndB, isFoundB);
//	LocateTagU(SText, TagBeginU, TagEndU, isFoundU);
//	FirstSymbol:=TagBeginA+TagBeginB+TagBeginU;
//	if isFoundA then FirstSymbol:=TagBeginA;
//	if isFoundB then FirstSymbol:=System.Math.Min(FirstSymbol,TagBeginB);
//	if isFoundU then FirstSymbol:=System.Math.Min(FirstSymbol,TagBeginU);
//	if isFoundA and (FirstSymbol=TagBeginA) then
//		begin
//		TagText:=paragraph.AddText(Copy(SText,4,TagEndA-4));
//		TagText.Font.Size := 12;
//		TagText.Font.Name:='Times New Roman';
//		TagText.Font.Style:=[fsBold, fsUnderline];
//		TagText.Font.Color:=clBlue;
//		externalHyperlink := paragraph.AddExternalHyperlink;
//		externalHyperlink.Link := Copy(SText,4,TagEndA-4);
//		SText:=Copy(Stext,TagEndA+4,length(SText));
//		end;
//	if isFoundB and (FirstSymbol=TagBeginB) then
//		begin
//		TagText:=paragraph.AddText(Copy(SText,4,TagEndB-4));
//		TagText.Font.Size := 12;
//		TagText.Font.Name:='Times New Roman';
//		TagText.Font.Style:=[fsBold];
//		SText:=Copy(Stext,TagEndB+4,length(SText));
//		end;
//	if isFoundU and (FirstSymbol=TagBeginU) then
//		begin
//		TagText:=paragraph.AddText(Copy(SText,4,TagEndU-4));
//		TagText.Font.Size := 12;
//		TagText.Font.Name:='Times New Roman';
//		TagText.Font.Style:=[fsUnderline];
//		SText:=Copy(Stext,TagEndU+4,length(SText));
//		end;
//	if i>100 then Break;
//	end;
//TagText:=paragraph.AddText(SText);
//if Alignment = taLeft then Paragraph.Alignment:=taLeft;
//if Alignment = taJustified then Paragraph.Alignment:=taJustified;
//TagText.Font.Size := 12;
//TagText.Font.Name:='Times New Roman';
//except on e:Exception do
//	begin
//	FormMain.Warning('Ошибка в процедуре R_DOC_RichText '+E.Message);
//	Res:='Ошибка в процедуре R_DOC_RichText '+E.Message;
//	end;
//end;
//end;

procedure TFormListResumes.LocateTagA(const SourceText: string; var TagBegin:integer; var TagEnd:integer; var isFound:boolean);
begin
isFound:=false;
TagBegin:=Pos('<a>',Lowercase(SourceText));
TagEnd:=Pos('</a>',Lowercase(SourceText));
if TagBegin+TagEnd>0 then isFound:=true;
end;

procedure TFormListResumes.LocateTagB(const SourceText: string; var TagBegin:integer; var TagEnd:integer; var isFound:boolean);
begin
isFound:=false;
TagBegin:=Pos('<b>',Lowercase(SourceText));
TagEnd:=Pos('</b>',Lowercase(SourceText));
if TagBegin+TagEnd>0 then isFound:=true;
end;

procedure TFormListResumes.LocateTagU(const SourceText: string; var TagBegin:integer; var TagEnd:integer; var isFound:boolean);
begin
isFound:=false;
TagBegin:=Pos('<u>',Lowercase(SourceText));
TagEnd:=Pos('</u>',Lowercase(SourceText));
if TagBegin+TagEnd>0 then isFound:=true;
end;

//procedure TFormListResumes.WX_R_DOC_Generate(const resume_id: integer; const FileName:string; var isDone: boolean);
//var
//section  : TTMSFNCWXDocxSection;
//paragraph: TTMSFNCWXDocxParagraph;
//DocXText     : TTMSFNCWXDocxText;
//PageBreak:TTMSFNCWXDocxPageBreak;
//begin
//TMSFNCWXDocx1.Document.Sections.Clear;
//section := TMSFNCWXDocx1.Document.AddSection;
//// Добавляем Фамилию имя
//paragraph := section.AddParagraph;
//paragraph.Spacing.Before:=120;
//paragraph.Spacing.After:=120;
//Paragraph.Spacing.Line:=600;
//DocXText:=paragraph.AddText(FormMain.FullName);
//paragraph.Heading := hlHeading1;
//paragraph.Alignment := taLeft;
//DocXText.Font.Size := 22;
//DocXText.Font.Style := [fsBold];
//DocXText.Font.Name:='Times New Roman';
//
//// Добавляем должность
//paragraph := section.AddParagraph;
//Paragraph.Spacing.Line:=400;
//paragraph.Spacing.After:=480;
//DocXtext := paragraph.AddText(LocalTranslate('Должность')+' ');
//DocXtext.Font.Color := clBlack;
//DocXtext.Font.Size := 12;
//DocXText.Font.Style := [fsBold];
//DocXText.Font.Name:='Times New Roman';
//DocXtext := paragraph.AddText(UniResumes['job_opportunity']);
//DocXtext.Font.Size := 12;
//DocXText.Font.Name:='Times New Roman';
//
//R_DOC_AddTable(section);
//R_DOC_AddFooter(section, resume_id);
//paragraph := section.AddParagraph;
//PageBreak:=Paragraph.AddBreak;
//Paragraph.Spacing.Line:=400;
//Paragraph.Spacing.LineRule:=lrAuto;
//DocXtext := paragraph.AddText(LocalTranslate('Опыт работы'));
//DocXText.Font.Size := 18;
//DocXText.Font.Name:='Times New Roman';
//DocXText.Font.Style := [fsBold];
//UniExperiences.Close;
//UniExperiences.ParamByName('p_resume_id').Value:=resume_id;
//UniExperiences.Open;
//while not UniExperiences.Eof do
//	begin
//	R_DOC_AddJob(section);
//	UniExperiences.Next;
//	if not UniExperiences.Eof then
//		begin
//		paragraph := section.AddParagraph;
//		paragraph.Alignment := taJustified;
//		Paragraph.Spacing.Line:=400;
//		Paragraph.Spacing.LineRule:=lrAuto;
//		DocXtext:=paragraph.AddText('========================================================');
//		DocXText.Font.Size := 12;
//		DocXText.Font.Name:='Times New Roman';
//		end;
//	end;
//try
//TMSFNCWXDocx1.GetDocxAsFile(FileName);
//isDone:=true;
//except on E:Exception do
//	begin
//	ShowMessage('Ошибка создания файла: '+E.Message);
//	IsDone:=false;
//	end;
//end;
//end;
//
//procedure TFormListResumes.WX_CL_DOC_Generate(const resume_id: integer; const FileName: string; var isDone: boolean);
//var
//i:integer;
//section  : TTMSFNCWXDocxSection;
//paragraph: TTMSFNCWXDocxParagraph;
//StringList:TStringList;
//Alignment:TTMSFNCWXDocxTextAlignment;
//Res:string;
//begin
//StringList:=TStringList.Create();
//TMSFNCWXDocx1.Document.Sections.Clear;
//section := TMSFNCWXDocx1.Document.AddSection;
//if not VarIsNull(UniResumes['cl_text']) then
//	begin
//	StringList.Text := UniResumes.FieldByName('cl_text').AsString;
//	for i:=0 to StringList.Count-1 do
//		begin
//			paragraph := section.AddParagraph;
//			paragraph.Alignment:=taJustified;
//			Paragraph.Spacing.Line:=400;
//			Paragraph.Spacing.LineRule:=lrAuto;
//			Alignment:=taJustified;
//      StringList[i]:=ReplaceStr(StringList[i],'[/opportunity]',UniResumes['job_opportunity']);
//			R_DOC_RichText(paragraph, StringList[i], Alignment, Res);
//		end;
//	end;
//
//try
//TMSFNCWXDocx1.GetDocxAsFile(FileName);
//IsDone:=true;
//except on E:Exception do
//	begin
//	ShowMessage('Помилка під час створення файлу: '+E.Message);
//	isDone:=false;
//	end;
//end;
//StringList.Destroy();
//end;
//
//procedure TFormListResumes.WX_CV_DOC_Generate(const resume_id:integer; const FileName:string; var isDone: boolean);
//var
//section  : TTMSFNCWXDocxSection;
//paragraph: TTMSFNCWXDocxParagraph;
//DocXText     : TTMSFNCWXDocxText;
//PageBreak:TTMSFNCWXDocxPageBreak;
//begin
//TMSFNCWXDocx1.Document.Sections.Clear;
//section := TMSFNCWXDocx1.Document.AddSection;
//// Добавляем Фамилию имя
//paragraph := section.AddParagraph;
//paragraph.Spacing.Before:=120;
//paragraph.Spacing.After:=120;
//Paragraph.Spacing.Line:=600;
//DocXText:=paragraph.AddText(FormMain.FullName);
//paragraph.Heading := hlHeading1;
//paragraph.Alignment := taLeft;
//DocXText.Font.Size := 16;
//DocXText.Font.Style := [fsBold];
//DocXText.Font.Name:='Times New Roman';
//
//// Добавляем должность
//paragraph := section.AddParagraph;
//Paragraph.Spacing.Line:=400;
//paragraph.Spacing.After:=480;
//DocXtext := paragraph.AddText(LocalTranslate('Должность')+' ');
//DocXtext.Font.Color := clBlack;
//DocXtext.Font.Size := 12;
//DocXText.Font.Style := [fsBold];
//DocXText.Font.Name:='Times New Roman';
//DocXtext := paragraph.AddText(UniResumes['job_opportunity']);
//DocXtext.Font.Size := 12;
//DocXText.Font.Name:='Times New Roman';
////cv_introduction
//R_CV_AddHeader(section);
//R_CV_AddFooter(section, resume_id);
//paragraph := section.AddParagraph;
//PageBreak:=Paragraph.AddBreak;
//UniExperiences.Close;
//UniExperiences.ParamByName('p_resume_id').Value:=resume_id;
//UniExperiences.Open;
//while not UniExperiences.Eof do
//	begin
//	R_CV_Add_Job(section);
//	UniExperiences.Next;
//	if not UniExperiences.Eof then
//		begin
//		paragraph := section.AddParagraph;
//		paragraph.Alignment := taJustified;
//		Paragraph.Spacing.Line:=400;
//		Paragraph.Spacing.LineRule:=lrAuto;
//		DocXtext:=paragraph.AddText('');
//		DocXText.Font.Size := 12;
//		DocXText.Font.Name:='Times New Roman';
//		end;
//	end;
//try
//TMSFNCWXDocx1.GetDocxAsFile(FileName);
//IsDone:=true;
//except on E:Exception do
//	begin
//	ShowMessage('Ошибка создания файла: '+E.Message);
//	IsDone:=false;
//	end;
//end;
//end;


end.
