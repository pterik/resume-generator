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
  private
    FileRDOCX, FileCVDOCX, FileCLDOCX,FileRPDF, FileCVPDF, FileCLPDF:string;
		WarningFired:boolean;
		function WX_R_FileGenerate(const resume_id: integer; const FileName:string): boolean;
		function WX_R_PDF_Generate(const resume_id: integer; const FileName:string): boolean;

		procedure EditResume;
		procedure R_DOC_AddTable(var section:TTMSFNCWXDocxSection);
		procedure R_DOC_AddFooter(var section:TTMSFNCWXDocxSection; resume_id:integer);
		procedure R_DOC_AddJob(var section:TTMSFNCWXDocxSection);
		procedure R_DOC_URL(var paragraph: TTMSFNCWXDocxParagraph; const SourceText: string);
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

uses System.UITypes, System.IOUtils, Winapi.ShellAPI, Parameters, System.Win.ComObj,
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
if FileRDocX<>'' then ShellExecute(Handle, 'open', PWideChar(FileRDocX), nil, nil, SW_SHOWNORMAL)
else ShowMessage('R-DOCX файл не згенерований');
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
    FormMain.Warning('Сбой при обработке DOCX Резюме "'+intToStr(UniResumes['id'])+'"');
  exit;
  end;
if not WX_R_PDF_Generate(UniResumes['id'],FileRPDF)
then
  begin
    FormMain.Warning('Сбой при обработке PDF Резюме "'+intToStr(UniResumes['id'])+'"');
  exit;
  end;
//CreateWordDoc;

FormMain.Warning('Шаблоны успешно обработаны, резюме готово: '+UniResumes['name']);
except on E:Exception do
  FormMain.Warning('Error message: '+E.Message);
end;
end;

procedure TFormListResumes.DBGrid1DblClick(Sender: TObject);
begin
EditResume;
end;

procedure TFormListResumes.FormCreate(Sender: TObject);
begin
Radiogroup.ItemIndex:=0;
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
StringList:TStringList;
i:integer;
FooterText : TTMSFNCWXDocxText;
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
			FooterText:=paragraph.AddText(StringList[i]);
			FooterText.Font.Size := 12;
			FooterText.Font.Name:='Times New Roman';
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
	paragraph := section.AddParagraph;
	Paragraph.Spacing.Line:=400;
	Paragraph.Spacing.LineRule:=lrAuto;
	FooterText:=paragraph.AddText(UniResumeFooters['footer_text']);
	paragraph.Alignment := taLeft;
	FooterText.Font.Size := 12;
	FooterText.Font.Name:='Times New Roman';
	UniResumeFooters.Next;
	end;
end;

procedure TFormListResumes.R_DOC_AddJob(var section: TTMSFNCWXDocxSection);
var paragraph: TTMSFNCWXDocxParagraph;
JobText : TTMSFNCWXDocxText;
Postn:integer;
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
JobText:=paragraph.AddText(FormMain.GetFullMonthByRegion(UniExperiences['start_date'], UniResumes['region_id'])+	' - '+	FormMain.GetFullMonthByRegion(UniExperiences['end_date'], UniResumes['region_id']));
JobText.Font.Size := 12;
JobText.Font.Name:='Times New Roman';

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
paragraph.Alignment := taJustified;
R_DOC_URL(paragraph,UniExperiences['responsibilities']);


if not FormMain.IsEmpty(UniExperiences['benefits']) then
	begin
		paragraph := section.AddParagraph;
		Paragraph.Spacing.Line:=400;
		Paragraph.Spacing.LineRule:=lrAuto;
		paragraph.Alignment := taLeft;
		JobText:=paragraph.AddText(UniExperiences['benefits']);
		JobText.Font.Size := 12;
		JobText.Font.Name:='Times New Roman';
	end;

if not FormMain.IsEmpty(UniExperiences['other']) then
	begin
		paragraph := section.AddParagraph;
		Paragraph.Spacing.Line:=400;
		Paragraph.Spacing.LineRule:=lrAuto;
		paragraph.Alignment := taJustified;
		R_DOC_URL(paragraph,UniExperiences['other']);
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
end;

procedure TFormListResumes.R_DOC_AddTable(var section:TTMSFNCWXDocxSection);
var
paragraph: TTMSFNCWXDocxParagraph;
doctext     : TTMSFNCWXDocxText;
table    : TTMSFNCWXDocxTable;
tableRow : TTMSFNCWXDocxTableRow;
tableCell: TTMSFNCWXDocxTableCell;
begin
table := section.AddTable;
tableRow := Table.AddRow;

tableCell := tableRow.AddCell;

// Перенести ячейку Віддалена робота в конец таблицы
paragraph := TableCell.AddParagraph;
paragraph.AddText('  ');
paragraph.AddImage(TMSFNCBitmapContainer1.Bitmaps[0],50,50);
paragraph.AddText('  ');

tableCell := tableRow.AddCell;

paragraph := TableCell.AddParagraph;
Paragraph.Spacing.After:=120;
Paragraph.Spacing.Before:=120;
Paragraph.Spacing.Line:=240;
doctext := paragraph.AddText(UniResumes['job_place']);
Doctext.Font.Color := clBlack;
Doctext.Font.Size := 12;
DocText.Font.Name:='Times New Roman';

tableRow := Table.AddRow;

tableCell := tableRow.AddCell;

paragraph := TableCell.AddParagraph;
Paragraph.Spacing.After:=120;
Paragraph.Spacing.Before:=120;
Paragraph.Spacing.Line:=240;
paragraph.AddText('  ');
paragraph.AddImage(TMSFNCBitmapContainer1.Bitmaps[1],50,50);
paragraph.AddText('  ');

// Добавляем телефонный номер
tableCell := tableRow.AddCell;
paragraph := TableCell.AddParagraph;
Paragraph.Spacing.After:=120;
Paragraph.Spacing.Before:=120;
Paragraph.Spacing.Line:=240;

Doctext := paragraph.AddText(UniResumes['phone_numbers_text']);
Doctext.Font.Color := clBlack;
Doctext.Font.Size := 12;
DocText.Font.Name:='Times New Roman';

tableRow := Table.AddRow;
tableCell := tableRow.AddCell;
paragraph := TableCell.AddParagraph;
Paragraph.Spacing.After:=120;
Paragraph.Spacing.Before:=120;
Paragraph.Spacing.Line:=240;
paragraph.AddText('  ');
paragraph.AddImage(TMSFNCBitmapContainer1.Bitmaps[2],50,50);
paragraph.AddText('  ');

tableCell := tableRow.AddCell;
paragraph := TableCell.AddParagraph;
Paragraph.Spacing.After:=120;
Paragraph.Spacing.Before:=120;
Paragraph.Spacing.Line:=240;
Doctext := paragraph.AddText(FormMain.Email);
Doctext.Font.Color := clBlack;
Doctext.Font.Size := 12;
DocText.Font.Name:='Times New Roman';

tableRow := Table.AddRow;
tableCell := tableRow.AddCell;
paragraph := TableCell.AddParagraph;
Paragraph.Spacing.After:=120;
Paragraph.Spacing.Before:=120;
Paragraph.Spacing.Line:=240;
paragraph.AddText('  ');
paragraph.AddImage(TMSFNCBitmapContainer1.Bitmaps[3],50,50);
paragraph.AddText('  ');

tableCell := tableRow.AddCell;
paragraph := TableCell.AddParagraph;
Paragraph.Spacing.After:=120;
Paragraph.Spacing.Before:=120;
Paragraph.Spacing.Line:=240;
Doctext := paragraph.AddText(LocalTranslate('Рекомендательное письмо')+'  '+FormMain.RecommendationLink);
Doctext.Font.Color := clBlack;
Doctext.Font.Size := 12;
DocText.Font.Name:='Times New Roman';
end;

procedure TFormListResumes.R_DOC_URL(var paragraph: TTMSFNCWXDocxParagraph; const SourceText: string);
var Postn1, Postn2:integer;
SText:string;
URLText:TTMSFNCWXDocxText;
begin
if ((Pos('<a>',lowercase(SourceText))=0) and (Pos('</a>',lowercase(SourceText))=0))
then
	begin
	URLText:=paragraph.AddText(SourceText);
	URLText.Font.Size := 12;
	URLText.Font.Name:='Times New Roman';
	exit;
	end;
SText:=SourceText;
repeat
	Postn1:=Pos('<a>',lowercase(SText));
	Postn2:=Pos('</a>',lowercase(SText));
	if (Postn1=0) or (Postn2=0) or (Postn1>Postn2) then
		begin
			SText:=StringReplace(SText,'<a>','',[rfIgnoreCase]);
			SText:=StringReplace(Stext,'</a>','',[rfIgnoreCase]);
			URLText:=paragraph.AddText(SText);
			URLText.Font.Size := 12;
			URLText.Font.Name:='Times New Roman';
			exit;
		end;
	URLText:=paragraph.AddText(Copy(SText,1,Postn1-1));
	URLText.Font.Size := 12;
	URLText.Font.Name:='Times New Roman';
	URLText:=paragraph.AddText(Copy(SText,Postn1+3,Postn2-Postn1-3));
	URLText.Font.Size := 12;
	URLText.Font.Color:=clBlue;
	URLText.Font.Style:=[fsUnderline];
	URLText.Font.Name:='Times New Roman';
	URLText:=paragraph.AddText(Copy(SText,Postn2+5,length(SText)));
	URLText.Font.Size := 12;
	URLText.Font.Name:='Times New Roman';
	SText:=StringReplace(SText,'<a>','',[rfIgnoreCase]);
	SText:=StringReplace(SText,'</a>','',[rfIgnoreCase]);
until (Postn1=0) or (Postn2=0);
end;

function TFormListResumes.WX_R_FileGenerate(const resume_id:integer; const FileName:string): boolean;
var
section  : TTMSFNCWXDocxSection;
paragraph: TTMSFNCWXDocxParagraph;
DocXText     : TTMSFNCWXDocxText;
//table    : TTMSFNCWXDocxTable;
//tableRow : TTMSFNCWXDocxTableRow;
//tableCell: TTMSFNCWXDocxTableCell;
//StringList:TStringList;
begin
//StringList:=TStringList.Create();
TMSFNCWXDocx1.Document.Sections.Clear;
section := TMSFNCWXDocx1.Document.AddSection;
section.Page.Orientation := poLandscape;

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
TMSFNCWXDocx1.GetDocxAsFile(FileName);
Result:=true;
end;


function TFormListResumes.WX_R_PDF_Generate(const resume_id: integer;
  const FileName: string): boolean;
begin
Result:=true;
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
//procedure TFormListResumes.CreateWordDoc;
//var
//  section: TTMSFNCWXDocxSection;
//  paragraph: TTMSFNCWXDocxParagraph;
//  table: TTMSFNCWXDocxTable;
//  tableCell: TTMSFNCWXDocxTableCell;
//  TableRow: TTMSFNCWXDocxTableRow;
//  parText: TTMSFNCWXDocxText;
//  H1Font: TTMSFNCGraphicsFont;
//  h2font: TTMSFNCGraphicsFont;
//  i, j: Integer;
//  parfont: TTMSFNCGraphicsFont;
//begin
//  H1Font := TTMSFNCGraphicsFont.Create;
//  H1Font.Size := 14;
//  H1Font.Style := H1Font.Style + [fsBold];
//  H1Font.Name := 'calibri';
//
//  h2font := TTMSFNCGraphicsFont.Create;
//  h2font.Size := 10;
//  h2font.Style := H1Font.Style + [fsBold];
//  h2font.Name := 'calibri';
//
//  parfont := TTMSFNCGraphicsFont.Create;
//  parfont.Size := 10;
//  parfont.Name := 'calibri';
//
//  TMSFNCWXDocx1.Document.Sections.Clear;
//  section := TMSFNCWXDocx1.Document.AddSection;
//  section.Page.Orientation := poPortrait;
//
//  section.Headers.EnableHeaders := [htDefault];
//  paragraph := section.Headers.DefaultHeader.AddParagraph;
//  paragraph.Alignment := taRight;
//  paragraph.AddText('www.nutritional-software.at :: Online Rezept Rechner :: ' +
//    FormatDateTime('dd.MM.yyyy hh:mm', now));
//  // How to add a bottom line?
//  paragraph.Border.Borders := [boBottom];
//  paragraph.Border.Bottom.Value := bsSingle;
//
//  section.Footers.EnableFooters := [htDefault];
//  paragraph := section.Footers.DefaultFooter.AddParagraph;
//  paragraph.Alignment := taRight;
//  paragraph.AddText('Seite ');
//  paragraph.AddPageNumber();
//  // How to add a top line?
//  paragraph.Border.Borders := [boTop];
//
//  //
//  paragraph := section.AddParagraph;
//  SetH1Paragraph(paragraph);
//  paragraph.AddText('Rezeptname').Font := H1Font;
//
//  //
//  paragraph := section.AddParagraph;
//  SetH2Paragraph(paragraph);
//  paragraph.AddText('Über das Rezept:').Font := h2font;
//  table := section.AddTable;
//  table.Width.Size := 50;
//  table.Width.WidthType := wtPercentage;
//  for i := 0 to 3 do begin
//      TableRow := table.AddRow;
//      tableCell := TableRow.AddCell;
//      // How to remove the lines?
//      tableCell.Borders.Borders:=[];
//      tableCell.Borders.Left.Size:=0;
//      tableCell.Width.WidthType := wtPercentage;
//      tableCell.Width.Size:=60;
//      paragraph := tableCell.AddParagraph;
//      paragraph.AddText('row ' + IntToStr(i) + ' cell ' + IntToStr(j));
//
//      tableCell := TableRow.AddCell;
//      tableCell.Width.WidthType := wtPercentage;
//      tableCell.Width.Size:=40;
//      paragraph := tableCell.AddParagraph;
//      paragraph.AddText('row ' + IntToStr(i) + ' cell ' + IntToStr(j));
//  end;
//
//  //
//  paragraph := section.AddParagraph;
//  SetH2Paragraph(paragraph);
//  paragraph.AddText('Zutaten:').Font := h2font;
//
//  //
//  paragraph := section.AddParagraph;
//  SetH2Paragraph(paragraph);
//  paragraph.AddText('Anleitung:').Font := h2font;
//  paragraph := section.AddParagraph;
//  SetTextParagraph(paragraph);
//  paragraph.AddText('lkifds vldkfj vlkedrf jvoef jvoefj voe').Font := parfont;
//
//  //
//  paragraph := section.AddParagraph;
//  SetH2Paragraph(paragraph);
//  paragraph.AddText('Nährwerte:').Font := h2font;
//
//  paragraph := section.AddParagraph;
//  paragraph.Heading := hlNone;
//  paragraph.AddText('Text Text').Font := parfont;
//  paragraph.AddText('Text1 Text1').Font := parfont;
//  paragraph.AddText('Text2 Text2').Font := parfont;
//
//  paragraph := section.AddParagraph;
//  paragraph.AddText('Text2 Text2').Font := parfont;
//
//  paragraph := section.AddParagraph;
//  table := section.AddTable;
//  table.Width.Size := 100;
//  table.Width.WidthType := wtPercentage;
//  for i := 0 to 3 do begin
//    TableRow := table.AddRow;
//    for j := 0 to 3 do begin
//      tableCell := TableRow.AddCell;
//      paragraph := tableCell.AddParagraph;
//      paragraph.AddText('row ' + IntToStr(i) + ' cell ' + IntToStr(j));
//    end;
//  end;
//
//  TMSFNCWXDocx1.GetDocxAsFile(FileCVDOCX);
//end;

end.
