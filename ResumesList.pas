unit ResumesList;

interface

uses
	Winapi.Windows, Winapi.Messages, System.SysUtils, System.StrUtils, System.Variants,
	System.Classes, Vcl.Graphics,
	Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Buttons,
	DBAccess, Uni, MemDS, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls,
	VCL.TMSFNCWXDocx.Models, VCL.TMSFNCCustomWEBControl,
	Vcl.ComCtrls, Vcl.DBCtrls, VCL.TMSFNCTypes, VCL.TMSFNCUtils,
	VCL.TMSFNCGraphics, VCL.TMSFNCGraphicsTypes, VCL.TMSFNCCustomControl,
	VCL.TMSFNCWXDocx, VCL.TMSFNCBitmapContainer, VCL.TMSFNCWebBrowser,
	VCL.TMSFNCCustomWEBComponent, VCL.TMSFNCCustomComponent;

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
    CheckBoxExtraComment: TCheckBox;
//    WordApplication1: TWordApplication;
//    WordDocument1: TWordDocument;
//    WordRange1: TWordRange;
    UniDeleteResumeFooters: TUniQuery;
    UniDeleteExperiences: TUniQuery;
    BitBtnArchive: TBitBtn;
    UniArchiveResume: TUniQuery;
    RadioGroup: TRadioGroup;
    TMSFNCBitmapContainer1: TTMSFNCBitmapContainer;
		UniResumeFooters: TUniQuery;
    UniExperiences: TUniQuery;
    TMSFNCWXDocx1: TTMSFNCWXDocx;
    DBRichEditor: TDBRichEdit;
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
    UniResumesarchived: TBooleanField;
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
    UniExperiencesbenefits: TWideStringField;
    UniExperiencesother: TWideMemoField;
    CBWordWrap: TCheckBox;
    BitBtn1: TBitBtn;
    TMSFNCWXDocx2: TTMSFNCWXDocx;
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
    procedure TMSFNCWXDocx2DownloadAsFile(Sender: TObject; FileName: string);
  private
    FileRDOCX, FileCVDOCX, FileCLDOCX,FileRPDF, FileCVPDF, FileCLPDF:string;
		WarningFired:boolean;
		function WX_R_FileGenerate(const resume_id: integer; const FileName:string): boolean;
		function WX_R_PDF_Generate(const resume_id: integer; const FileName:string): boolean;

		procedure EditResume;
		procedure R_DOC_AddTable(var section:TTMSFNCWXDocxSection);
		procedure R_DOC_AddFooter(var section:TTMSFNCWXDocxSection; resume_id:integer);
		procedure R_DOC_AddJob(var section:TTMSFNCWXDocxSection);
		procedure R_DOC_RichText(var paragraph: TTMSFNCWXDocxParagraph; const SourceText: string; var Alignment:TTMSFNCWXDocxTextAlignment; var Res:string);
		procedure LocateTagA(const SourceText: string; var TagBegin, TagEnd:integer; var isFound:boolean);
		procedure LocateTagB(const SourceText: string; var TagBegin, TagEnd: integer; var isFound: boolean);
		procedure LocateTagU(const SourceText: string; var TagBegin, TagEnd: integer; var isFound: boolean);
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
var
  section: TTMSFNCWXDocxSection;
  paragraph:  TTMSFNCWXDocxParagraph;
	text: TTMSFNCWXDocxText;
	URL:TTMSFNCWXDocxExternalHyperlink;
//  table: TTMSFNCWXDocxTable;
//  tableCell: TTMSFNCWXDocxTableCell;
//  TableRow: TTMSFNCWXDocxTableRow;
  i, j: Integer;
  toc: TTMSFNCWXDocxTableOfContents;
  internalHyperlink: TTMSFNCWXDocxInternalHyperLink;
	externalHyperlink: TTMSFNCWXDocxExternalHyperlink;
begin
//	TMSFNCWXDocx1.Document.Features.UpdateFields := true;
	section := TMSFNCWXDocx1.Document.AddSection;
	paragraph := section.AddParagraph;
	externalHyperlink := paragraph.AddExternalHyperlink('https://www.tmssoftware.com','link to tmssoftware page');
//	externalHyperlink.Link := 'https://www.tmssoftware.com';
	text := externalHyperlink.AddText;
	text.Text := 'link to tmssoftware page';
	toc := section.AddTableOfContents;
	TMSFNCWXDocx1.GetDocxAsFile(TPath.Combine(TPath.GetDocumentsPath,'AdvancedDocx.docx'));

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
TTMSFNCUtils.OpenFile(TPath.Combine(TPath.GetDocumentsPath,'AdvancedDocx.docx'));
//if FileRDocX<>'' then ShellExecute(Handle, 'open', PWideChar(FileRDocX), nil, nil, SW_SHOWNORMAL)
//else ShowMessage('R-DOCX файл не згенерований');
end;

procedure TFormListResumes.BitBtnCloseClick(Sender: TObject);
begin
Close;
end;

procedure TFormListResumes.BitBtnCVClick(Sender: TObject);
begin
if FileCVDocX<>'' then ShellExecute(Handle, 'open', PWideChar(FileCVDocX), nil, nil, SW_SHOWNORMAL)
else ShowMessage('CV-DOCX файл не згенерований');
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
//TemplatesAreReady:boolean;
FName:string;
begin
if VarIsNull(UniResumes['id']) then
	begin
	raise Exception.Create('Оберіть резюме із списка');
	exit;
	end;
WarningFired:=false;
//TemplatesAreReady:=true;
FName:=lowercase(ReplaceStr(UniResumes['name'],' ','-'))+'-'+lowercase(UniResumes['lang']);
if not DirectoryExists(FormMain.Main_Folder+'\'+UniResumes['country']+'\r') then ForceDirectories(FormMain.Main_Folder+'\'+UniResumes['country']+'\r');
if not DirectoryExists(FormMain.Main_Folder+'\'+UniResumes['country']+'\cv') then ForceDirectories(FormMain.Main_Folder+'\'+UniResumes['country']+'\cv');
if not DirectoryExists(FormMain.Main_Folder+'\'+UniResumes['country']+'\cl') then ForceDirectories(FormMain.Main_Folder+'\'+UniResumes['country']+'\cl');
FileRDocX:=FormMain.Main_Folder+'\'+UniResumes['country']+'\r\r-'+FName+'.docx';
FileCVDocX:=FormMain.Main_Folder+'\'+UniResumes['country']+'\cv\'+FName+'.docx';
FileCLDocX:=FormMain.Main_Folder+'\'+UniResumes['country']+'\cl\'+FName+'.docx';
FileRPDF:=FormMain.Main_Folder+'\'+UniResumes['country']+'\r\'+FName+'.pdf';
FileCVPDF:=FormMain.Main_Folder+'\'+UniResumes['country']+'\cv\'+FName+'.pdf';
FileCLPDF:=FormMain.Main_Folder+'\'+UniResumes['country']+'\cl\'+FName+'.pdf';
try
	if FileExists(FileRDocx) then
		DeleteFile(FileRDocx);
if FileExists(FileCVDocx) then
		DeleteFile(FileCVDocx);
if FileExists(FileCLDocx) then
		DeleteFile(FileCLDocx);

if not WX_R_FileGenerate(UniResumes['id'],FileRDocx)
then
	begin
		ShowMessage('Сбой при обработке DOCX Резюме "'+intToStr(UniResumes['id'])+'"');
	exit;
	end;
if not WX_R_PDF_Generate(UniResumes['id'],FileRPDF)
then
	begin
		ShowMessage('Сбой при обработке PDF Резюме "'+intToStr(UniResumes['id'])+'"');
  exit;
  end;
//CreateWordDoc;
ShowMessage('Шаблоны успешно обработаны, резюме готово: '+UniResumes['name']);
except on E:EFCreateError do
	begin
	ShowMessage('Сбой при удалении файла "'+FileRDocx+'": '+E.Message);
  exit;
	end;
on E:Exception do
  FormMain.Warning('Error message: '+E.Message);
end;
end;

procedure TFormListResumes.CBWordWrapClick(Sender: TObject);
begin
if CBWordWrap.Checked
then
	begin
	DBRichEditor.ScrollBars:=ssVertical;
	DBRichEditor.WordWrap:=true;
	end
else
	begin
	DBRichEditor.ScrollBars:=ssBoth;
	DBRichEditor.WordWrap:=false;
	end;
end;

procedure TFormListResumes.DBGrid1DblClick(Sender: TObject);
begin
EditResume;
end;

procedure TFormListResumes.FormCreate(Sender: TObject);
begin
Radiogroup.ItemIndex:=0;
DBRichEditor.ScrollBars:=ssVertical;
DBRichEditor.WordWrap:=true;
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
if FileCLDocx<>'' then ShellExecute(Handle, 'open', PWideChar(FileCLDocx), nil, nil, SW_SHOWNORMAL) ;
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

procedure TFormListResumes.BitBtnOpenResumeClick(Sender: TObject);
begin
// TODO: В начале документа отображается POsition - должно быть слово в зависимости от языка.
// TODO: Расположение ключевых слов, которые выводятся в DOCX. Вставлять их в текст или добавлять автоматически?
// TODO: Указать размеры таблицы и ячеек таблицы, исправить цвет полей на белый или невидимый
// TODO: Сделать отступ абзацев согласно стандартам языка.
// TODO: Сделать общую высоту строки 1.5 - не смог найти
// TODO: Поставить текст по ширине
// TODO: Досвід роботи другим шрифтом, надо Times
// TODO: Полное название месяцев в R версии документа
// TODO: Если в тексте указаны тег <a> то делаем URL
// TODO: Если в тексте указаны тег <b> то выделяем болдом
// TODO: В поле "Компания" нужно выделять слово USA болдом.


if (FIleRDocx='')  then
   begin
   ShowMessage('Файл ещё не создан');
   exit;
   end;

if (FIleRDocx<>'')
   then
   begin
   FormMain.Warning('Открываем файл '+FileRDocx);
   ShellExecute(Handle, 'open', PWideChar(FileRDocx), nil, nil, SW_SHOWNORMAL);
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
Doc1 := Word1.Documents.Open(FileCLDocx);
Doc1.ExportAsFixedFormat(FileCLPDF, wdExportFormatPDF);
finally
  Doc1.Close;
  Word1.Quit;
  Word1 := Unassigned;
end;
try
Word2 := CreateOLEObject('Word.Application');
Doc2 := Word2.Documents.Open(FileCVDocx);
Doc2.ExportAsFixedFormat(FileCVPDF, wdExportFormatPDF);
finally
  Doc2.Close;
  Word2.Quit;
  Word2 := Unassigned;
end;
try
Word3 := CreateOLEObject('Word.Application');
Doc3 := Word3.Documents.Open(FileRDocx);
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

procedure TFormListResumes.TMSFNCWXDocx2DownloadAsFile(Sender: TObject;
  FileName: string);
begin
    TTMSFNCUtils.OpenFile(FileName);
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

procedure TFormListResumes.R_DOC_AddFooter(var section: TTMSFNCWXDocxSection; resume_id:integer);
var paragraph: TTMSFNCWXDocxParagraph;
StringList,StringList2:TStringList;
i:integer;
FooterText : TTMSFNCWXDocxText;
Alignment:TTMSFNCWXDocxTextAlignment;
Res:string;
begin
StringList:=TStringList.Create();
paragraph := section.AddParagraph;
Paragraph.Spacing.Line:=400;
Paragraph.Spacing.LineRule:=lrAuto;

if not VarIsNull(UniResumes['resume_introduction']) then
	begin
	StringList.Text := UniResumes.FieldByName('resume_introduction').AsString;
	for i:=0 to StringList.Count-1 do
		begin
			paragraph := section.AddParagraph;
			paragraph.Alignment:=taJustified;
			Paragraph.Spacing.Line:=400;
			Paragraph.Spacing.LineRule:=lrAuto;
			Alignment:=taJustified;
			R_DOC_RichText(paragraph, StringList[i], Alignment, Res);
		end;
	end;
UniResumeFooters.Close;
UniResumeFooters.ParamByName('p_resume_id').Value:=resume_id;
UniResumeFooters.Open;
while not UniResumeFooters.Eof do
	begin
	paragraph := section.AddParagraph;
	Paragraph.Spacing.Line:=400;
	Paragraph.Spacing.LineRule:=lrAuto;
	FooterText:=paragraph.AddText(UniResumeFooters['footer_header']);
	paragraph.Alignment := taLeft;
	FooterText.Font.Size := 12;
	FooterText.Font.Name:='Times New Roman';
	FooterText.Font.Style := [fsBold];
//	paragraph := section.AddParagraph;
//	Paragraph.Spacing.Line:=400;
//	Paragraph.Spacing.LineRule:=lrAuto;
//Разложить footer_text на отдельные строки
//	FooterText:=paragraph.AddText(UniResumeFooters['footer_text']);
	StringList2:=TStringList.Create();
	StringList2.Text := UniResumeFooters.FieldByName('footer_text').AsString;
	for i:=0 to StringList2.Count-1 do
    if not FormMain.IsEmpty(StringList2[i]) then
		begin
			paragraph := section.AddParagraph;
			Paragraph.Spacing.Line:=400;
			Paragraph.Spacing.LineRule:=lrAuto;
//			paragraph.Alignment := taLeft;
			FooterText.Font.Size := 12;
			FooterText.Font.Name:='Times New Roman';
			Alignment:=taJustified;
			R_DOC_RichText(paragraph, StringList2[i], Alignment, Res);
		end;
//	FooterText:=paragraph.AddText(UniResumeFooters['footer_text']);
//	paragraph.Alignment := taLeft;
//	FooterText.Font.Size := 12;
//	FooterText.Font.Name:='Times New Roman';
	UniResumeFooters.Next;
	end;
StringList.Destroy();
StringList2.Destroy();
end;

procedure TFormListResumes.R_DOC_AddJob(var section: TTMSFNCWXDocxSection);
var
i:integer;
paragraph: TTMSFNCWXDocxParagraph;
JobText : TTMSFNCWXDocxText;
Postn:integer;
Res:string;
StringList3:TStringList;
Alignment:TTMSFNCWXDocxTextAlignment;
begin
paragraph := section.AddParagraph;
Paragraph.Spacing.Line:=400;
Paragraph.Spacing.LineRule:=lrAuto;
paragraph.Alignment := taLeft;
JobText:=paragraph.AddText(UniExperiences['job_position']);
JobText.Font.Size := 12;
JobText.Font.Name:='Times New Roman';
JobText.Font.Style := [fsBold];

paragraph := section.AddParagraph;
Paragraph.Spacing.Line:=400;
Paragraph.Spacing.LineRule:=lrAuto;
paragraph.Alignment := taLeft;
Postn:=Pos('USA',UpperCase(UniExperiences['employer']));
if Postn>0
then
	begin
		JobText:=paragraph.AddText(Copy(UniExperiences['employer'],1,Postn-1));
		JobText.Font.Size := 12;
		JobText.Font.Name:='Times New Roman';
		JobText:=paragraph.AddText('USA');
		JobText.Font.Size := 12;
		JobText.Font.Name:='Times New Roman';
		JobText.Font.Style:=[fsBold];
		JobText:=paragraph.AddText(Copy(UniExperiences['employer'],Postn+3,length(UniExperiences['employer'])));
		JobText.Font.Size := 12;
		JobText.Font.Name:='Times New Roman';
	end
else
	begin
		JobText:=paragraph.AddText(UniExperiences['employer']);
		JobText.Font.Size := 12;
		JobText.Font.Name:='Times New Roman';
	end;

paragraph := section.AddParagraph;
Paragraph.Spacing.Line:=400;
Paragraph.Spacing.LineRule:=lrAuto;
paragraph.Alignment := taLeft;
JobText:=paragraph.AddText(FormMain.GetFullMonthByRegion(UniExperiences['start_date'], UniResumes['region_id'])+	' - '+	FormMain.GetFullMonthByRegion(UniExperiences['end_date'], UniResumes['region_id']));
JobText.Font.Size := 12;
JobText.Font.Name:='Times New Roman';

//paragraph := section.AddParagraph;
//Paragraph.Spacing.Line:=400;
//Paragraph.Spacing.LineRule:=lrAuto;
//R_DOC_Richtext(paragraph,UniExperiences['responsibilities'],Res);
//paragraph.Alignment := taJustified;
//Res не должна иметь 0 в начале - тогда содержит текст ошибки
StringList3:=TStringList.Create();
StringList3.Text := UniExperiences.FieldByName('responsibilities').AsString;
	for i:=0 to StringList3.Count-1 do
		begin
			paragraph := section.AddParagraph;
			paragraph.Alignment:=taJustified;
			Paragraph.Spacing.Line:=400;
			Paragraph.Spacing.LineRule:=lrAuto;
			Alignment:=taJustified;
			R_DOC_RichText(paragraph, StringList3[i],Alignment, Res);
			if not (Copy(Res,1,1)='0') then
				begin
				FormMain.Warning(Res);
				exit;
				end;
		end;
if not FormMain.IsEmpty(UniExperiences['benefits']) then
	begin
		paragraph := section.AddParagraph;
		Paragraph.Spacing.Line:=400;
		Paragraph.Spacing.LineRule:=lrAuto;
		paragraph.Alignment := taLeft;
		JobText:=paragraph.AddText(LocalTranslate('Преимущества'));
		JobText.Font.Size := 12;
		JobText.Font.Style := [fsUnderline];
		JobText.Font.Name:='Times New Roman';
		JobText:=paragraph.AddText(': '+UniExperiences['benefits']);
		JobText.Font.Size := 12;
		JobText.Font.Name:='Times New Roman';
		JobText.Font.Style := [];
	end;

if not FormMain.IsEmpty(UniExperiences['other']) then
	begin
//		paragraph := section.AddParagraph;
//		Paragraph.Spacing.Line:=400;
//		Paragraph.Spacing.LineRule:=lrAuto;
		Alignment := taJustified;
		R_DOC_RichText(paragraph,UniExperiences['other'], Alignment,Res);
		if not (Copy(Res,1,1)='0') then
			begin
			FormMain.Warning(Res);
			exit;
			end;
	end;
UniSkillsID.Close;
UniSkillsID.ParamByName('p_experience_id').AsInteger:=UniExperiences['id'];
UniSkillsID.Open;
if not VarIsNull(UniSkillsID['skill_id']) then
	begin
	paragraph := section.AddParagraph;
	Paragraph.Spacing.Line:=400;
	Paragraph.Spacing.LineRule:=lrAuto;
	paragraph.Alignment := taJustified;
	JobText:=paragraph.AddText(LocalTranslate('Навыки')+': ');
	JobText.Font.Size := 12;
	JobText.Font.Style := [fsBold];
	JobText.Font.Name:='Times New Roman';
	end;
while not UniSkillsID.Eof do
	begin
	JobText:=paragraph.AddText(UniSkillsID['skill']);
	JobText.Font.Size := 12;
	JobText.Font.Name:='Times New Roman';
	UniSkillsID.Next;
	if not UniSkillsID.Eof then
		begin
		JobText:=paragraph.AddText(' · ');
		JobText.Font.Size := 12;
		JobText.Font.Name:='Times New Roman';
		end;
	end;
StringList3.Destroy();
end;

procedure TFormListResumes.R_DOC_AddTable(var section:TTMSFNCWXDocxSection);
var
paragraph: TTMSFNCWXDocxParagraph;
doctext     : TTMSFNCWXDocxText;
table    : TTMSFNCWXDocxTable;
tableRow : TTMSFNCWXDocxTableRow;
tableCell: TTMSFNCWXDocxTableCell;
externalHyperlink:TTMSFNCWXDocxExternalHyperlink;
Alignment:TTMSFNCWXDocxTextAlignment;
Res:string;
begin
table := section.AddTable;
table.Width.Size:=100;
table.Width.WidthType:=wtPercentage;
tableRow := Table.AddRow;

tableCell := tableRow.AddCell;
tableCell.Width.Size:=5;
tableCell.Width.WidthType := wtPercentage;

// Перенести ячейку Віддалена робота в конец таблицы
paragraph := TableCell.AddParagraph;
Paragraph.Spacing.After:=180;
Paragraph.Spacing.Before:=180;
Paragraph.Spacing.Line:=180;
paragraph.AddImage(TMSFNCBitmapContainer1.Bitmaps[1],20,20);
Paragraph.Alignment:=taCenter;

tableCell := tableRow.AddCell;
tableCell.Width.Size:=95;
tableCell.Width.WidthType := wtPercentage;

paragraph := TableCell.AddParagraph;
Paragraph.Spacing.After:=180;
Paragraph.Spacing.Before:=180;
Paragraph.Spacing.Line:=180;
Paragraph.Spacing.LineRule:=lrExactly;
doctext := paragraph.AddText(UniResumes['phone_numbers_text']);
Paragraph.Alignment:=taLeft;
Doctext.Font.Color := clBlack;
Doctext.Font.Size := 12;
DocText.Font.Name:='Times New Roman';

tableRow := Table.AddRow;

tableCell := tableRow.AddCell;
//  tableCell.Width.WidthType = (wtAuto, wtDxa, wtNil, wtPercentage);
tableCell.Borders.Top.Value:=bsNone;

paragraph := TableCell.AddParagraph;
Paragraph.Spacing.After:=180;
Paragraph.Spacing.Before:=180;
Paragraph.Spacing.Line:=180;
Paragraph.Spacing.LineRule:=lrExactly;
paragraph.AddImage(TMSFNCBitmapContainer1.Bitmaps[0],20,20);
Paragraph.Alignment:=taCenter;
// Добавляем телефонный номер
tableCell := tableRow.AddCell;
paragraph := TableCell.AddParagraph;
Paragraph.Spacing.After:=180;
Paragraph.Spacing.Before:=180;
Paragraph.Spacing.Line:=180;
Paragraph.Spacing.LineRule:=lrExactly;

Doctext := paragraph.AddText(UniResumes['job_place']);
Paragraph.Alignment:=taLeft;
Doctext.Font.Color := clBlack;
Doctext.Font.Size := 12;
DocText.Font.Name:='Times New Roman';

tableRow := Table.AddRow;
tableCell := tableRow.AddCell;
paragraph := TableCell.AddParagraph;
Paragraph.Spacing.After:=180;
Paragraph.Spacing.Before:=180;
Paragraph.Spacing.Line:=180;
Paragraph.Spacing.LineRule:=lrExactly;

paragraph.AddImage(TMSFNCBitmapContainer1.Bitmaps[2],20,20);
Paragraph.Alignment:=taCenter;

tableCell := tableRow.AddCell;
paragraph := TableCell.AddParagraph;
Paragraph.Spacing.After:=180;
Paragraph.Spacing.Before:=180;
Paragraph.Spacing.Line:=180;
Paragraph.Spacing.LineRule:=lrExactly;

Doctext := paragraph.AddText(FormMain.Email);
Paragraph.Alignment:=taLeft;
Doctext.Font.Color := clBlack;
Doctext.Font.Size := 12;
DocText.Font.Name:='Times New Roman';

tableRow := Table.AddRow;
tableCell := tableRow.AddCell;
paragraph := TableCell.AddParagraph;
Paragraph.Spacing.After:=180;
Paragraph.Spacing.Before:=180;
Paragraph.Spacing.Line:=180;
Paragraph.Spacing.LineRule:=lrExactly;
paragraph.AddImage(TMSFNCBitmapContainer1.Bitmaps[3],20,20);
Paragraph.Alignment:=taCenter;

tableCell := tableRow.AddCell;
paragraph := TableCell.AddParagraph;
Paragraph.Spacing.After:=180;
Paragraph.Spacing.Before:=180;
Paragraph.Spacing.Line:=180;
Paragraph.Spacing.LineRule:=lrExactly;
Alignment:=taLeft;
R_DOC_RichText(paragraph,LocalTranslate('Рекомендательное письмо')+' <a>'+FormMain.RecommendationLink+'</a>', Alignment,Res);
end;

procedure TFormListResumes.R_DOC_RichText(var paragraph: TTMSFNCWXDocxParagraph; const SourceText: string; var Alignment:TTMSFNCWXDocxTextAlignment;var Res:string);
var I, TagBeginA, TagEndA, TagBeginB, TagEndB, TagBeginU, TagEndU :integer;
isFoundA,isFoundB,isFoundU:boolean;
FirstSymbol:integer;
TagText:TTMSFNCWXDocxText;
externalHyperlink:TTMSFNCWXDocxExternalHyperlink;
SText:string;
begin
Res:='0';
try
LocateTagA(SourceText, TagBeginA, TagEndA, isFoundA);
LocateTagB(SourceText, TagBeginB, TagEndB, isFoundB);
LocateTagU(SourceText, TagBeginU, TagEndU, isFoundU);
FirstSymbol:=TagBeginA+TagBeginB+TagBeginU;
if isFoundA then FirstSymbol:=TagBeginA;
if isFoundB then FirstSymbol:=System.Math.Min(FirstSymbol,TagBeginB);
if isFoundU then FirstSymbol:=System.Math.Min(FirstSymbol,TagBeginU);
SText:=Copy(SourceText,FirstSymbol,length(Sourcetext));
TagText:=paragraph.AddText(Copy(SourceText,1,FirstSymbol-1));
TagText.Font.Size := 12;
TagText.Font.Name:='Times New Roman';
i:=0;
while isFoundA or isFoundB or isFoundU do
	begin
	inc(i);
	LocateTagA(SText, TagBeginA, TagEndA, isFoundA);
	LocateTagB(SText, TagBeginB, TagEndB, isFoundB);
	LocateTagU(SText, TagBeginU, TagEndU, isFoundU);
	FirstSymbol:=TagBeginA+TagBeginB+TagBeginU;
	if isFoundA then FirstSymbol:=TagBeginA;
	if isFoundB then FirstSymbol:=System.Math.Min(FirstSymbol,TagBeginB);
	if isFoundU then FirstSymbol:=System.Math.Min(FirstSymbol,TagBeginU);
	if isFoundA and (FirstSymbol=TagBeginA) then
		begin
		TagText:=paragraph.AddText(Copy(SText,4,TagEndA-4));
		TagText.Font.Size := 12;
		TagText.Font.Name:='Times New Roman';
		TagText.Font.Style:=[fsBold, fsUnderline];
		TagText.Font.Color:=clBlue;
		externalHyperlink := paragraph.AddExternalHyperlink;
		externalHyperlink.Link := Copy(SText,4,TagEndA-4);
		SText:=Copy(Stext,TagEndA+4,length(SText));
		end;
	if isFoundB and (FirstSymbol=TagBeginB) then
		begin
		TagText:=paragraph.AddText(Copy(SText,4,TagEndB-4));
		TagText.Font.Size := 12;
		TagText.Font.Name:='Times New Roman';
		TagText.Font.Style:=[fsBold];
		SText:=Copy(Stext,TagEndB+4,length(SText));
		end;
	if isFoundU and (FirstSymbol=TagBeginU) then
		begin
		TagText:=paragraph.AddText(Copy(SText,4,TagEndU-4));
		TagText.Font.Size := 12;
		TagText.Font.Name:='Times New Roman';
		TagText.Font.Style:=[fsUnderline];
		SText:=Copy(Stext,TagEndU+4,length(SText));
		end;
	if i>100 then Break;
	end;
TagText:=paragraph.AddText(SText);
if Alignment = taLeft then Paragraph.Alignment:=taLeft;
if Alignment = taJustified then Paragraph.Alignment:=taJustified;
TagText.Font.Size := 12;
TagText.Font.Name:='Times New Roman';
except on e:Exception do
	begin
	FormMain.Warning('Ошибка в процедуре R_DOC_RichText '+E.Message);
	Res:='Ошибка в процедуре R_DOC_RichText '+E.Message;
	end;
end;
end;

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


function TFormListResumes.WX_R_FileGenerate(const resume_id:integer; const FileName:string): boolean;
var
section  : TTMSFNCWXDocxSection;
paragraph: TTMSFNCWXDocxParagraph;
DocXText     : TTMSFNCWXDocxText;
externalHyperlink: TTMSFNCWXDocxExternalHyperlink;
break:TTMSFNCWXDocxPageBreak;
begin
TMSFNCWXDocx1.Document.Sections.Clear;
section := TMSFNCWXDocx1.Document.AddSection;
section.Page.Orientation := poPortrait;

// Добавляем Фамилию имя
paragraph := section.AddParagraph;
paragraph.Spacing.Before:=120;
paragraph.Spacing.After:=120;
Paragraph.Spacing.Line:=600;
DocXText:=paragraph.AddText(FormMain.FullName);
paragraph.Heading := hlHeading1;
paragraph.Alignment := taLeft;
DocXText.Font.Size := 22;
DocXText.Font.Style := [fsBold];
DocXText.Font.Name:='Times New Roman';

// Добавляем должность
paragraph := section.AddParagraph;
Paragraph.Spacing.Line:=400;
paragraph.Spacing.After:=480;
DocXtext := paragraph.AddText(LocalTranslate('Должность')+' ');
DocXtext.Font.Color := clBlack;
DocXtext.Font.Size := 12;
DocXText.Font.Style := [fsBold];
DocXText.Font.Name:='Times New Roman';
DocXtext := paragraph.AddText(UniResumes['name']);
DocXtext.Font.Size := 12;
DocXText.Font.Name:='Times New Roman';

R_DOC_AddTable(section);
R_DOC_AddFooter(section, resume_id);
paragraph := section.AddParagraph;
Break:=Paragraph.AddBreak;
Paragraph.Spacing.Line:=400;
Paragraph.Spacing.LineRule:=lrAuto;
DocXtext := paragraph.AddText(LocalTranslate('Опыт работы'));
DocXText.Font.Size := 18;
DocXText.Font.Name:='Times New Roman';
DocXText.Font.Style := [fsBold];
UniExperiences.Close;
UniExperiences.ParamByName('p_resume_id').Value:=resume_id;
UniExperiences.Open;
while not UniExperiences.Eof do
	begin
	R_DOC_AddJob(section);
	UniExperiences.Next;
	if not UniExperiences.Eof then
		begin
		paragraph := section.AddParagraph;
		paragraph.Alignment := taJustified;
		Paragraph.Spacing.Line:=400;
		Paragraph.Spacing.LineRule:=lrAuto;
		DocXtext:=paragraph.AddText('========================================================');
		DocXText.Font.Size := 12;
		DocXText.Font.Name:='Times New Roman';
		end;
	end;
try
TMSFNCWXDocx1.GetDocxAsFile(FileName);
Result:=true;
except on E:Exception do
	begin
	ShowMessage('Ошибка создания файла: '+E.Message);
	Result:=false;
	end;
end;
end;


function TFormListResumes.WX_R_PDF_Generate(const resume_id: integer;
  const FileName: string): boolean;
begin
Result:=true;
end;

end.
