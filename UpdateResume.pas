unit UpdateResume;

interface

uses
	Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
	Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, MemDS, DBAccess, Uni,
	Vcl.WinXCalendars, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Buttons;
//  VCL.TMSFNCTypes;

type
	TFormUpdateResume = class(TForm)
		BitBtnClose: TBitBtn;
		BitBtnSave: TBitBtn;
    PageControl: TPageControl;
    TabSheetMain: TTabSheet;
		Label121: TLabel;
		Label122: TLabel;
		Label123: TLabel;
		Label124: TLabel;
		Label125: TLabel;
		Label126: TLabel;
		Label127: TLabel;
		LabelResumeID: TLabel;
		EditName: TEdit;
		EditOpportunity: TEdit;
		EditPlace: TEdit;
		EditPhones: TEdit;
    TabSheetFooter: TTabSheet;
		Label7: TLabel;
		Label9: TLabel;
		Label10: TLabel;
		StaticText1: TStaticText;
		EditArticle1: TEdit;
		EditArticle2: TEdit;
		EditArticle3: TEdit;
		EditArticle4: TEdit;
    TabSheetJob1: TTabSheet;
		Label1: TLabel;
		Label2: TLabel;
		Label3: TLabel;
		Label4: TLabel;
		Label5: TLabel;
		Label6: TLabel;
		Edit1Dates: TEdit;
		Edit1Name: TEdit;
		Edit1Company: TEdit;
		Memo1Skills: TMemo;
		CalendarPickerB1: TCalendarPicker;
		CalendarPickerE1: TCalendarPicker;
    TabSheetJob2: TTabSheet;
		Label14: TLabel;
		Label15: TLabel;
		Label16: TLabel;
		Label17: TLabel;
		Label18: TLabel;
		Label19: TLabel;
		Edit2Dates: TEdit;
		Edit2Name: TEdit;
		Edit2Company: TEdit;
		Memo2Skills: TMemo;
		CalendarPickerB2: TCalendarPicker;
		CalendarPickerE2: TCalendarPicker;
    TabSheetJob3: TTabSheet;
		Label20: TLabel;
		Label21: TLabel;
		Label22: TLabel;
		Label23: TLabel;
		Label24: TLabel;
		Label25: TLabel;
		Edit3Dates: TEdit;
		Edit3Name: TEdit;
		Edit3Company: TEdit;
		Memo3Skills: TMemo;
		CalendarPickerB3: TCalendarPicker;
		CalendarPickerE3: TCalendarPicker;
    TabSheetJob4: TTabSheet;
		Label26: TLabel;
		Label27: TLabel;
		Label28: TLabel;
		Label29: TLabel;
		Label30: TLabel;
		Label31: TLabel;
		Edit4Dates: TEdit;
		Edit4Name: TEdit;
		Edit4Company: TEdit;
		Memo4Skills: TMemo;
		CalendarPickerB4: TCalendarPicker;
		CalendarPickerE4: TCalendarPicker;
    TabSheetJob5: TTabSheet;
		Label32: TLabel;
		Label33: TLabel;
		Label34: TLabel;
		Label35: TLabel;
		Label36: TLabel;
		Label37: TLabel;
		Edit5Dates: TEdit;
		Edit5Name: TEdit;
		Edit5Company: TEdit;
		Memo5Skills: TMemo;
		CalendarPickerB5: TCalendarPicker;
		CalendarPickerE5: TCalendarPicker;
    TabSheetJob6: TTabSheet;
		Label38: TLabel;
		Label39: TLabel;
		Label40: TLabel;
		Label41: TLabel;
		Label42: TLabel;
		Label43: TLabel;
		Edit6Dates: TEdit;
		Edit6Name: TEdit;
		Edit6Company: TEdit;
		Memo6Skills: TMemo;
		CalendarPickerB6: TCalendarPicker;
		CalendarPickerE6: TCalendarPicker;
    TabSheetJob7: TTabSheet;
		Label44: TLabel;
		Label45: TLabel;
		Label46: TLabel;
		Label47: TLabel;
		Label48: TLabel;
		Label49: TLabel;
		Edit7Dates: TEdit;
		Edit7Name: TEdit;
		Edit7Company: TEdit;
		Memo7Skills: TMemo;
		CalendarPickerB7: TCalendarPicker;
		CalendarPickerE7: TCalendarPicker;
    TabSheetJob8: TTabSheet;
		Label50: TLabel;
		Label51: TLabel;
		Label52: TLabel;
		Label53: TLabel;
		Label54: TLabel;
		Label55: TLabel;
		Edit8Dates: TEdit;
		Edit8Name: TEdit;
		Edit8Company: TEdit;
		Memo8Skills: TMemo;
		CalendarPickerB8: TCalendarPicker;
		CalendarPickerE8: TCalendarPicker;
    TabSheetJob9: TTabSheet;
		Label56: TLabel;
		Label57: TLabel;
		Label58: TLabel;
		Label59: TLabel;
		Label60: TLabel;
		Label61: TLabel;
		Edit9Dates: TEdit;
		Edit9Name: TEdit;
		Edit9Company: TEdit;
		Memo9Skills: TMemo;
		CalendarPickerB9: TCalendarPicker;
		CalendarPickerE9: TCalendarPicker;
    TabSheetJob10: TTabSheet;
		Label68: TLabel;
		Label69: TLabel;
		Label70: TLabel;
		Label71: TLabel;
		Label72: TLabel;
		Label73: TLabel;
		Edit10Dates: TEdit;
		Edit10Name: TEdit;
		Edit10Company: TEdit;
		Memo10Skills: TMemo;
		CalendarPickerB10: TCalendarPicker;
		CalendarPickerE10: TCalendarPicker;
		CBLang: TComboBox;
		CBRegion: TComboBox;
		UniResumeID: TUniQuery;
		UniFootersID: TUniQuery;
		UniExperienceID: TUniQuery;
		UniSkillsID: TUniQuery;
		UniSPUpdateResume: TUniStoredProc;
    UniSPInsertExperiences: TUniStoredProc;
		CBPhones: TComboBox;
		BitBtn2: TBitBtn;
		RichEditor: TRichEdit;
		CBWordWrap: TCheckBox;
    RichEditArticle1: TRichEdit;
    RichEditArticle2: TRichEdit;
    RichEditArticle3: TRichEdit;
    RichEditArticle4: TRichEdit;
    RichEdit1Resp: TRichEdit;
    RichEdit2Resp: TRichEdit;
    RichEdit3Resp: TRichEdit;
    RichEdit4Resp: TRichEdit;
    RichEdit5Resp: TRichEdit;
    RichEdit6Resp: TRichEdit;
    RichEdit7Resp: TRichEdit;
    RichEdit8Resp: TRichEdit;
    RichEdit9Resp: TRichEdit;
    RichEdit10Resp: TRichEdit;
    UniResumeIDid: TIntegerField;
    UniResumeIDname: TWideStringField;
    UniResumeIDlang: TWideStringField;
    UniResumeIDregion_id: TWideStringField;
    UniResumeIDregion: TWideStringField;
    UniResumeIDjob_opportunity: TWideStringField;
    UniResumeIDjob_place: TWideStringField;
    UniResumeIDphone_numbers_text: TWideStringField;
    UniResumeIDresume_introduction: TWideMemoField;
    UniResumeIDcreated: TDateTimeField;
    UniResumeIDupdated: TDateTimeField;
    UniFootersIDid: TIntegerField;
    UniFootersIDresume_id: TIntegerField;
    UniFootersIDfooter_header: TWideStringField;
    UniFootersIDfooter_text: TWideMemoField;
    UniFootersIDfooter_order: TIntegerField;
    UniFootersIDcreated: TDateTimeField;
    UniFootersIDupdated: TDateTimeField;
    UniExperienceIDexperience_id: TIntegerField;
    UniExperienceIDresume_id: TIntegerField;
    UniExperienceIDtemplate_id: TIntegerField;
    UniExperienceIDjob_order: TLargeintField;
    UniExperienceIDjob_position: TWideStringField;
    UniExperienceIDstart_date: TDateField;
    UniExperienceIDend_date: TDateField;
    UniExperienceIDemployer: TWideStringField;
    UniExperienceIDresponsibilities: TWideMemoField;
    UniExperienceIDother: TWideMemoField;
    UniExperienceIDcreated: TDateTimeField;
    UniExperienceIDupdated: TDateTimeField;
    UniSkillsIDskill_id: TIntegerField;
    UniSkillsIDskill: TWideStringField;
    BitBtnClear10: TBitBtn;
    BitBtnClear9: TBitBtn;
    BitBtnClear8: TBitBtn;
    BitBtnClear7: TBitBtn;
    BitBtnClear6: TBitBtn;
    BitBtnClear5: TBitBtn;
    BitBtnClear4: TBitBtn;
    BitBtnClear3: TBitBtn;
    BitBtnClear2: TBitBtn;
    BitBtnClear1: TBitBtn;
    RichEdit2Other: TRichEdit;
    RichEdit1Other: TRichEdit;
    RichEdit3Other: TRichEdit;
    RichEdit4Other: TRichEdit;
    RichEdit5Other: TRichEdit;
    RichEdit6Other: TRichEdit;
    RichEdit7Other: TRichEdit;
    RichEdit8Other: TRichEdit;
    RichEdit9Other: TRichEdit;
    RichEdit10Other: TRichEdit;
    UniSPInsertSkillShow: TUniStoredProc;
    UniSPDeleteExperiences: TUniStoredProc;
    EditResumePath: TEdit;
    Label8: TLabel;
    TabSheetCV: TTabSheet;
    RichEditCV: TRichEdit;
    Label11: TLabel;
    UniResumeIDcv_introduction: TWideMemoField;
    UniResumeIDresume_doc_filepath: TWideStringField;
    UniResumeIDcv_doc_filepath: TWideStringField;
    Label12: TLabel;
    EditCVDocFilePath: TEdit;
    CBCV_footer2: TCheckBox;
    CBCV_footer1: TCheckBox;
    CBCV_footer3: TCheckBox;
    CBCV_footer4: TCheckBox;
    UniFootersIDcv_include_footer: TBooleanField;
    TabSheetCL: TTabSheet;
    Label13: TLabel;
    RichEditCL: TRichEdit;
    Label62: TLabel;
    EditCLDocFilepath: TEdit;
    UniResumeIDcl_text: TWideMemoField;
    UniResumeIDcl_doc_filepath: TWideStringField;
    Label63: TLabel;
    RichEdit1Benefits: TRichEdit;
    RichEdit2Benefits: TRichEdit;
    RichEdit3Benefits: TRichEdit;
    RichEdit4Benefits: TRichEdit;
    RichEdit5Benefits: TRichEdit;
    RichEdit6Benefits: TRichEdit;
    RichEdit7Benefits: TRichEdit;
    RichEdit8Benefits: TRichEdit;
    RichEdit9Benefits: TRichEdit;
    RichEdit10Benefits: TRichEdit;
    UniExperienceIDbenefits: TWideMemoField;
		procedure BitBtnCloseClick(Sender: TObject);
		procedure BitBtnSaveClick(Sender: TObject);
		procedure FormCreate(Sender: TObject);
		procedure CalendarPickerB1Change(Sender: TObject);
		procedure CalendarPickerB1CloseUp(Sender: TObject);
		procedure CalendarPickerE1Change(Sender: TObject);
		procedure CalendarPickerE1CloseUp(Sender: TObject);
		procedure CalendarPickerB2Change(Sender: TObject);
		procedure CalendarPickerB2CloseUp(Sender: TObject);
		procedure CalendarPickerE2Change(Sender: TObject);
		procedure CalendarPickerE2CloseUp(Sender: TObject);
		procedure CalendarPickerB3Change(Sender: TObject);
		procedure CalendarPickerB3CloseUp(Sender: TObject);
		procedure CalendarPickerE3Change(Sender: TObject);
		procedure CalendarPickerE3CloseUp(Sender: TObject);
		procedure CalendarPickerB4Change(Sender: TObject);
		procedure CalendarPickerB4CloseUp(Sender: TObject);
		procedure CalendarPickerE4Change(Sender: TObject);
		procedure CalendarPickerE4CloseUp(Sender: TObject);
		procedure CalendarPickerB5Change(Sender: TObject);
		procedure CalendarPickerB5CloseUp(Sender: TObject);
		procedure CalendarPickerE5Change(Sender: TObject);
		procedure CalendarPickerE5CloseUp(Sender: TObject);
		procedure CalendarPickerB6Change(Sender: TObject);
		procedure CalendarPickerB6CloseUp(Sender: TObject);
		procedure CalendarPickerE6Change(Sender: TObject);
		procedure CalendarPickerE6CloseUp(Sender: TObject);
		procedure CalendarPickerB7Change(Sender: TObject);
		procedure CalendarPickerB7CloseUp(Sender: TObject);
		procedure CalendarPickerE7CloseUp(Sender: TObject);
		procedure CalendarPickerE7Change(Sender: TObject);
		procedure CalendarPickerB8Change(Sender: TObject);
		procedure CalendarPickerB8CloseUp(Sender: TObject);
		procedure CalendarPickerE8Change(Sender: TObject);
		procedure CalendarPickerE8CloseUp(Sender: TObject);
		procedure CalendarPickerB9Change(Sender: TObject);
		procedure CalendarPickerB9CloseUp(Sender: TObject);
		procedure CalendarPickerE9Change(Sender: TObject);
		procedure CalendarPickerE9CloseUp(Sender: TObject);
		procedure CalendarPickerB10Change(Sender: TObject);
		procedure CalendarPickerB10CloseUp(Sender: TObject);
		procedure CalendarPickerE10Change(Sender: TObject);
		procedure CalendarPickerE10CloseUp(Sender: TObject);
		procedure BitBtn2Click(Sender: TObject);
		procedure CBWordWrapClick(Sender: TObject);
    procedure BitBtnClear10Click(Sender: TObject);
    procedure BitBtnClear1Click(Sender: TObject);
    procedure BitBtnClear2Click(Sender: TObject);
    procedure BitBtnClear3Click(Sender: TObject);
    procedure BitBtnClear4Click(Sender: TObject);
    procedure BitBtnClear5Click(Sender: TObject);
    procedure BitBtnClear6Click(Sender: TObject);
    procedure BitBtnClear7Click(Sender: TObject);
    procedure BitBtnClear8Click(Sender: TObject);
    procedure BitBtnClear9Click(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
    procedure PageControlChange(Sender: TObject);
	private
		FResumeID:integer;
		IsJob1Active, IsJob2Active, IsJob3Active, IsJob4Active, IsJob5Active,
		IsJob6Active, IsJob7Active, IsJob8Active, IsJob9Active,
		IsJob10Active: boolean;
		procedure InitFormValues;
		procedure ChangeDates1;
		procedure SetValuesFooters(const ResumeID:integer);
		procedure SetValuesJobs(const ResumeID:integer);
		procedure ChangeDates10;
		procedure ChangeDates2;
		procedure ChangeDates3;
		procedure ChangeDates4;
		procedure ChangeDates5;
		procedure ChangeDates6;
		procedure ChangeDates7;
		procedure ChangeDates8;
		procedure ChangeDates9;
		function isFormValuesGood: boolean;
		function isMainFormGood:boolean;
		function isJobGood:boolean;
		function isJobDatesGood:boolean;
		function SaveResume(const ResumeID:integer): boolean;
		function SaveValues(const ResumeID:integer): boolean;
		function SaveJobs(const ResumeID:integer): boolean;
		function isJobPeriodsValid: boolean;
		function isJobDatesValid: boolean;
		procedure Clear10;
		procedure Clear1;
		procedure Clear2;
		procedure Clear3;
		procedure Clear4;
		procedure Clear5;
		procedure Clear6;
		procedure Clear7;
		procedure Clear8;
		procedure Clear9;
	public
		procedure SetID(const ResumeID: integer);
		procedure SetFormValues;
		procedure SetEmptyResumes;
		procedure SetValuesResumes(const ResumeID:integer);

	end;

var
	FormUpdateResume: TFormUpdateResume;

implementation

{$R *.dfm}

uses MainForm;

procedure TFormUpdateResume.BitBtnClear10Click(Sender: TObject);
begin
Clear10;
end;

procedure TFormUpdateResume.Clear1;
begin
CalendarPickerB1.isEmpty:=true;
CalendarPickerE1.isEmpty:=true;
Edit1Dates.Text := '';
Edit1Name.Text := '';
Edit1Company.Text := '';
RichEdit1Resp.Text := '';
RichEdit1Benefits.Text := '';
RichEdit1Other.Text := '';
Memo1Skills.Clear;
end;

procedure TFormUpdateResume.Clear2;
begin
CalendarPickerB2.isEmpty:=true;
CalendarPickerE2.isEmpty:=true;
Edit2Dates.Text := '';
Edit2Name.Text := '';
Edit2Company.Text := '';
RichEdit2Resp.Text := '';
RichEdit2Benefits.Text := '';
RichEdit2Other.Text:='';
Memo2Skills.Clear;
end;

procedure TFormUpdateResume.Clear3;
begin
CalendarPickerB3.isEmpty:=true;
CalendarPickerE3.isEmpty:=true;
Edit3Dates.Text := '';
Edit3Name.Text := '';
Edit3Company.Text := '';
RichEdit3Resp.Text := '';
RichEdit3Benefits.Text := '';
Memo3Skills.Clear;
end;

procedure TFormUpdateResume.Clear4;
begin
CalendarPickerB4.isEmpty:=true;
CalendarPickerE4.isEmpty:=true;
Edit4Dates.Text := '';
Edit4Name.Text := '';
Edit4Company.Text := '';
RichEdit4Resp.Text := '';
RichEdit4Benefits.Text := '';
RichEdit4Other.Text:='';
Memo4Skills.Clear;
end;

procedure TFormUpdateResume.Clear5;
begin
CalendarPickerB5.isEmpty:=true;
CalendarPickerE5.isEmpty:=true;
Edit5Dates.Text := '';
Edit5Name.Text := '';
Edit5Company.Text := '';
RichEdit5Resp.Text := '';
RichEdit5Benefits.Text := '';
RichEdit5Other.Text:='';
Memo5Skills.Clear;
end;

procedure TFormUpdateResume.Clear6;
begin
CalendarPickerB6.isEmpty:=true;
CalendarPickerE6.isEmpty:=true;
Edit6Dates.Text := '';
Edit6Name.Text := '';
Edit6Company.Text := '';
RichEdit6Resp.Text := '';
RichEdit6Benefits.Text := '';
RichEdit6Other.Text:='';
Memo6Skills.Clear;
end;

procedure TFormUpdateResume.Clear7;
begin
CalendarPickerB7.isEmpty:=true;
CalendarPickerE7.isEmpty:=true;
Edit7Dates.Text := '';
Edit7Name.Text := '';
Edit7Company.Text := '';
RichEdit7Resp.Text := '';
RichEdit7Benefits.Text := '';
RichEdit7Other.Text:='';
Memo7Skills.Clear;
end;

procedure TFormUpdateResume.Clear8;
begin
CalendarPickerB8.isEmpty:=true;
CalendarPickerE8.isEmpty:=true;
Edit8Dates.Text := '';
Edit8Name.Text := '';
Edit8Company.Text := '';
RichEdit8Resp.Text := '';
RichEdit8Benefits.Text := '';
RichEdit8Other.Text:='';
Memo8Skills.Clear;
end;

procedure TFormUpdateResume.Clear9;
begin
CalendarPickerB9.isEmpty:=true;
CalendarPickerE9.isEmpty:=true;
Edit9Dates.Text := '';
Edit9Name.Text := '';
Edit9Company.Text := '';
RichEdit9Resp.Text := '';
RichEdit9Benefits.Text := '';
RichEdit9Other.Text:='';
Memo9Skills.Clear;
end;

procedure TFormUpdateResume.Clear10;
begin
CalendarPickerB10.isEmpty:=true;
CalendarPickerE10.isEmpty:=true;
Edit10Dates.Text := '';
Edit10Name.Text := '';
Edit10Company.Text := '';
RichEdit10Resp.Text := '';
RichEdit10Benefits.Text := '';
RichEdit10Other.Text:='';
Memo10Skills.Clear;
end;

procedure TFormUpdateResume.BitBtnClear1Click(Sender: TObject);
begin
Clear1;
end;

procedure TFormUpdateResume.BitBtnClear2Click(Sender: TObject);
begin
Clear2;
end;

procedure TFormUpdateResume.BitBtnClear3Click(Sender: TObject);
begin
Clear3;
end;

procedure TFormUpdateResume.BitBtnClear4Click(Sender: TObject);
begin
Clear4;
end;

procedure TFormUpdateResume.BitBtnClear5Click(Sender: TObject);
begin
Clear5;
end;

procedure TFormUpdateResume.BitBtnClear6Click(Sender: TObject);
begin
Clear6;
end;

procedure TFormUpdateResume.BitBtnClear7Click(Sender: TObject);
begin
Clear7;
end;

procedure TFormUpdateResume.BitBtnClear8Click(Sender: TObject);
begin
Clear8;
end;

procedure TFormUpdateResume.BitBtnClear9Click(Sender: TObject);
begin
Clear9;
end;

procedure TFormUpdateResume.BitBtn1Click(Sender: TObject);
begin
RichEditor.Font.Name:='Tahoma';
end;

procedure TFormUpdateResume.BitBtn2Click(Sender: TObject);
begin
EditPhones.Text:=trim(EditPhones.Text+' '+CBPhones.Text);
end;

procedure TFormUpdateResume.BitBtnCloseClick(Sender: TObject);
begin
Close;
end;

procedure TFormUpdateResume.SetEmptyResumes;
begin
EditName.Clear;
EditOpportunity.Clear;
EditPlace.Clear;
EditPhones.Clear;
RichEditor.Clear;
CBWordWrap.Checked:=false;
CBLang.Text:='UA';
CBRegion.Text:='Ukraine';

EditName.Text:='';
EditOpportunity.Text:='';
EditPlace.Text:='';
EditPhones.Text:='';
RichEditArticle1.Text := '';
EditArticle1.Text := '';
RichEditArticle2.Text := '';
EditArticle2.Text := '';
RichEditArticle3.Text := '';
EditArticle3.Text := '';
RichEditArticle4.Text := '';
EditArticle4.Text := '';

RichEditCV.Text:='';
EditCVDocFilepath.Text:='';
RichEditCL.Text:='';
EditCLDocFilepath.Text:='';

Edit1Dates.Text := '';
Edit1Name.Text := '';
Edit1Company.Text := '';
RichEdit1Resp.Text := '';
RichEdit1Benefits.Text := '';
RichEdit1Other.Text := '';

Edit2Dates.Text := '';
Edit2Name.Text := '';
Edit2Company.Text := '';
RichEdit2Resp.Text := '';
RichEdit2Benefits.Text := '';
RichEdit2Other.Text := '';

Edit3Dates.Text := '';
Edit3Name.Text := '';
Edit3Company.Text := '';
RichEdit3Resp.Text := '';
RichEdit3Benefits.Text := '';
RichEdit3Other.Text := '';

Edit4Dates.Text := '';
Edit4Name.Text := '';
Edit4Company.Text := '';
RichEdit4Resp.Text := '';
RichEdit4Benefits.Text := '';
RichEdit4Other.Text := '';

Edit5Dates.Text := '';
Edit5Name.Text := '';
Edit5Company.Text := '';
RichEdit5Resp.Text := '';
RichEdit5Benefits.Text := '';
RichEdit5Other.Text := '';

Edit6Dates.Text := '';
Edit6Name.Text := '';
Edit6Company.Text := '';
RichEdit6Resp.Text := '';
RichEdit6Benefits.Text := '';
RichEdit6Other.Text := '';

Edit7Dates.Text := '';
Edit7Name.Text := '';
Edit7Company.Text := '';
RichEdit7Resp.Text := '';
RichEdit7Benefits.Text := '';
RichEdit7Other.Text := '';

Edit8Dates.Text := '';
Edit8Name.Text := '';
Edit8Company.Text := '';
RichEdit8Resp.Text := '';
RichEdit8Benefits.Text := '';
RichEdit8Other.Text := '';

Edit9Dates.Text := '';
Edit9Name.Text := '';
Edit9Company.Text := '';
RichEdit9Resp.Text := '';
RichEdit9Benefits.Text := '';
RichEdit9Other.Text := '';

Edit10Dates.Text := '';
Edit10Name.Text := '';
Edit10Company.Text := '';
RichEdit10Resp.Text := '';
RichEdit10Benefits.Text := '';
RichEdit10Other.Text := '';

Memo1Skills.Text := '';
Memo2Skills.Text := '';
Memo3Skills.Text := '';
Memo4Skills.Text := '';
Memo5Skills.Text := '';
Memo6Skills.Text := '';
Memo7Skills.Text := '';
Memo8Skills.Text := '';
Memo9Skills.Text := '';
Memo10Skills.Text := '';

CalendarPickerB1.isEmpty:=true;
CalendarPickerB2.isEmpty:=true;
CalendarPickerB3.isEmpty:=true;
CalendarPickerB4.isEmpty:=true;
CalendarPickerB5.isEmpty:=true;
CalendarPickerB6.isEmpty:=true;
CalendarPickerB7.isEmpty:=true;
CalendarPickerB8.isEmpty:=true;
CalendarPickerB9.isEmpty:=true;
CalendarPickerB10.isEmpty:=true;

CalendarPickerE1.isEmpty:=true;
CalendarPickerE2.isEmpty:=true;
CalendarPickerE3.isEmpty:=true;
CalendarPickerE4.isEmpty:=true;
CalendarPickerE5.isEmpty:=true;
CalendarPickerE6.isEmpty:=true;
CalendarPickerE7.isEmpty:=true;
CalendarPickerE8.isEmpty:=true;
CalendarPickerE9.isEmpty:=true;
CalendarPickerE10.isEmpty:=true;
end;


procedure TFormUpdateResume.SetFormValues;
begin
PageControl.ActivePageIndex:=0;
SetEmptyResumes;
CBPhones.Clear;
FormMain.UniTelephones.Close;
FormMain.UniTelephones.Open;
while not FormMain.UniTelephones.Eof do
	begin
		CBPhones.Items.Add(FormMain.UniTelephones['value']);
		FormMain.UniTelephones.Next;
	end;
end;

procedure TFormUpdateResume.InitFormValues;
begin
RichEditor.ScrollBars := ssVertical;
RichEditor.WordWrap:=true;
CBLang.Clear;
FormMain.UniLanguages.Close;
FormMain.UniLanguages.Open;
while not FormMain.UniLanguages.EOF do
	begin
		CBLang.Items.Add(FormMain.UniLanguages['lang']);
		FormMain.UniLanguages.Next;
	end;
CBLang.Text:='UA';
CBRegion.Clear;
FormMain.UniRegions.Close;
FormMain.UniRegions.Open;
while not FormMain.UniRegions.EOF do
	begin
		CBRegion.Items.Add(FormMain.UniRegions['ID']);
		FormMain.UniRegions.Next;
	end;
CBRegion.Text:='UA';
end;

procedure TFormUpdateResume.BitBtnSaveClick(Sender: TObject);
begin
	if isFormValuesGood then
		ModalResult := mrOK
	else
	begin
		ModalResult := mrNone;
    FormMain.Warning('Update resume: isFormValuesGood=false');
		exit;
	end;
	if SaveValues(FResumeID) then
		ModalResult := mrOK
	else
	begin
		ModalResult := mrNone;
		exit;
	end;
end;

procedure TFormUpdateResume.FormCreate(Sender: TObject);
begin
InitFormValues;
end;

procedure TFormUpdateResume.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
	if Key = VK_F2 then BitBtnSave.Click();
end;

procedure TFormUpdateResume.SetID(const ResumeID:integer);
begin
FResumeID:=ResumeID;
LabelResumeID.Caption:=IntToStr(ResumeID);
SetValuesResumes(ResumeID);
SetValuesFooters(ResumeID);
SetValuesJobs(ResumeID);
end;

procedure TFormUpdateResume.SetValuesFooters(const ResumeID:integer);
begin
UniFootersID.Close;
UniFootersID.ParamByName('p_resume_id').AsInteger:=ResumeID;
UniFootersID.Open;
while not UniFootersID.EOF  do
	begin
	if UniFootersID['footer_order']=1 then
		begin
		if VarIsNull(UniFootersID['footer_header'])
			then EditArticle1.Text := ''
			else EditArticle1.Text := UniFootersID['footer_header'];
		if VarIsNull(UniFootersID['footer_text'])
			then RichEditArticle1.Text :=''
      else RichEditArticle1.Text := UniFootersID['footer_text'];
		if VarIsNull(UniFootersID['cv_include_footer'])
			then CBCV_footer1.Checked := false
      else CBCV_footer1.Checked := not UniFootersID.FieldByName('cv_include_footer').AsBoolean;
		end;
	if UniFootersID['footer_order']=2 then
		begin
		if VarIsNull(UniFootersID['footer_header'])
			then EditArticle2.Text := ''
			else EditArticle2.Text := UniFootersID['footer_header'];
		if VarIsNull(UniFootersID['footer_text'])
			then RichEditArticle2.Text :=''
			else RichEditArticle2.Text := UniFootersID['footer_text'];
		if VarIsNull(UniFootersID['cv_include_footer'])
			then CBCV_footer2.Checked :=false
      else CBCV_footer2.Checked := not UniFootersID.FieldByName('cv_include_footer').AsBoolean;
		end;
	if UniFootersID['footer_order']=3 then
		begin
		if VarIsNull(UniFootersID['footer_header'])
			then EditArticle3.Text := ''
			else EditArticle3.Text := UniFootersID['footer_header'];
		if VarIsNull(UniFootersID['footer_text'])
			then RichEditArticle3.Text :=''
      else RichEditArticle3.Text := UniFootersID['footer_text'];
		if VarIsNull(UniFootersID['cv_include_footer'])
			then CBCV_footer3.Checked :=false
      else CBCV_footer3.Checked := not UniFootersID.FieldByName('cv_include_footer').AsBoolean;
		end;
	if UniFootersID['footer_order']=4 then
		begin
		if VarIsNull(UniFootersID['footer_header'])
			then EditArticle4.Text := ''
			else EditArticle4.Text := UniFootersID['footer_header'];
		if VarIsNull(UniFootersID['footer_text'])
			then RichEditArticle4.Text :=''
      else RichEditArticle4.Text := UniFootersID['footer_text'];
		if VarIsNull(UniFootersID['cv_include_footer'])
			then CBCV_footer4.Checked :=false
      else CBCV_footer4.Checked := not UniFootersID.FieldByName('cv_include_footer').AsBoolean;
		end;
	UniFootersID.Next;
	end;
end;

procedure TFormUpdateResume.SetValuesResumes(const ResumeID:integer);
begin
UniResumeID.Close;
UniResumeID.ParamByName('P_ID').AsInteger:=ResumeID;
UniResumeID.Open;
EditName.Text:=VarToStr(UniResumeID['name']);
CBLang.Text:=VarToStr(UniResumeID['lang']);
CBRegion.Text:=VarToStr(UniResumeID['region']);
EditOpportunity.Text:=VarToStr(UniResumeID['job_opportunity']);
EditPlace.Text:=VarToStr(UniResumeID['job_place']);
EditPhones.Text:=VarToStr(UniResumeID['phone_numbers_text']);
RichEditor.Text:=VarToStr(UniResumeID['resume_introduction']);
RichEditCV.Text:=VarToStr(UniResumeID['cv_introduction']);
RichEditCL.Text:=VarToStr(UniResumeID['cl_text']);
EditResumePath.Text:=VarToStr(UniResumeID['resume_doc_filepath']);
EditCVDocFilePath.Text:=VarToStr(UniResumeID['cv_doc_filepath']);
EditCLDocFilePath.Text:=VarToStr(UniResumeID['cl_doc_filepath']);
end;

procedure TFormUpdateResume.SetValuesJobs(const ResumeID:integer);
begin
Memo1Skills.Text := '';
Memo2Skills.Text := '';
Memo3Skills.Text := '';
Memo4Skills.Text := '';
Memo5Skills.Text := '';
Memo6Skills.Text := '';
Memo7Skills.Text := '';
Memo8Skills.Text := '';
Memo9Skills.Text := '';
Memo10Skills.Text := '';

UniExperienceID.Close;
UniExperienceID.ParamByName('p_resume_id').AsInteger:=ResumeID;
UniExperienceID.Open;

TabSheetMain.Highlighted:=false;
TabSheetFooter.Highlighted:=false;
TabSheetCL.Highlighted:=false;
TabSheetCV.Highlighted:=false;
TabSheetJob1.Highlighted:=false;
TabSheetJob2.Highlighted:=false;
TabSheetJob3.Highlighted:=false;
TabSheetJob4.Highlighted:=false;
TabSheetJob5.Highlighted:=false;
TabSheetJob6.Highlighted:=false;
TabSheetJob7.Highlighted:=false;
TabSheetJob8.Highlighted:=false;
TabSheetJob9.Highlighted:=false;
TabSheetJob10.Highlighted:=false;

while not UniExperienceID.EOF do
	begin
    if UniExperienceID['job_order']=1 then
    begin
    CalendarPickerB1.Date:=UniExperienceID['start_date'];
    CalendarPickerE1.Date:=UniExperienceID['end_date'];
    ChangeDates1;
    Edit1Name.Text := UniExperienceID['job_position'];
    Edit1Company.Text := UniExperienceID['employer'];
    RichEdit1Resp.Text := UniExperienceID['responsibilities'];
    RichEdit1Benefits.Text := UniExperienceID['benefits'];
    RichEdit1Other.Text := UniExperienceID['other'];
    UniSkillsID.Close;
    UniSkillsID.ParamByName('p_experience_id').AsInteger:=UniExperienceID['experience_id'];
    UniSkillsID.Open;
    Memo1Skills.Clear;
    while not UniSkillsID.EOF do
      begin
        if not FormMain.IsEmpty(UniSkillsID['skill']) then Memo1Skills.Lines.Add(UniSkillsID['skill']);
        UniSkillsID.Next;
      end;
    end;

		if UniExperienceID['job_order']=2 then
			begin
			CalendarPickerB2.Date:=UniExperienceID['start_date'];
			CalendarPickerE2.Date:=UniExperienceID['end_date'];
			ChangeDates2;
			Edit2Name.Text := UniExperienceID['job_position'];
			Edit2Company.Text := UniExperienceID['employer'];
			RichEdit2Resp.Text := UniExperienceID['responsibilities'];
			RichEdit2Benefits.Text := UniExperienceID['benefits'];
			RichEdit2Other.Text := UniExperienceID['other'];
  		UniSkillsID.Close;
			UniSkillsID.ParamByName('p_experience_id').AsInteger:=UniExperienceID['experience_id'];
			UniSkillsID.Open;
			Memo2Skills.Clear;
			while not UniSkillsID.EOF do
				begin
					if not FormMain.IsEmpty(UniSkillsID['skill']) then Memo2Skills.Lines.Add(UniSkillsID['skill']);
					UniSkillsID.Next;
				end;
			end;

		if UniExperienceID['job_order']=3 then
			begin
			CalendarPickerB3.Date:=UniExperienceID['start_date'];
			CalendarPickerE3.Date:=UniExperienceID['end_date'];
			ChangeDates3;
			Edit3Name.Text := UniExperienceID['job_position'];
			Edit3Company.Text := UniExperienceID['employer'];
			RichEdit3Resp.Text := UniExperienceID['responsibilities'];
			RichEdit3Benefits.Text := UniExperienceID['benefits'];
			RichEdit3Other.Text := UniExperienceID['other'];
			UniSkillsID.Close;
			UniSkillsID.ParamByName('p_experience_id').AsInteger:=UniExperienceID['experience_id'];
			UniSkillsID.Open;
			Memo3Skills.Clear;
			while not UniSkillsID.EOF do
				begin
					if not FormMain.IsEmpty(UniSkillsID['skill']) then Memo3Skills.Lines.Add(UniSkillsID['skill']);
					UniSkillsID.Next;
				end;
			end;

		if UniExperienceID['job_order']=4 then
			begin
			CalendarPickerB4.Date:=UniExperienceID['start_date'];
			CalendarPickerE4.Date:=UniExperienceID['end_date'];
			ChangeDates4;
			Edit4Name.Text := UniExperienceID['job_position'];
			Edit4Company.Text := UniExperienceID['employer'];
			RichEdit4Resp.Text := UniExperienceID['responsibilities'];
			RichEdit4Benefits.Text := UniExperienceID['benefits'];
			RichEdit4Other.Text := UniExperienceID['other'];
			UniSkillsID.Close;
			UniSkillsID.ParamByName('p_experience_id').AsInteger:=UniExperienceID['experience_id'];
			UniSkillsID.Open;
			Memo4Skills.Clear;
			while not UniSkillsID.EOF do
				begin
					if not FormMain.IsEmpty(UniSkillsID['skill']) then Memo4Skills.Lines.Add(UniSkillsID['skill']);
					UniSkillsID.Next;
				end;
			end;

		if UniExperienceID['job_order']=5 then
			begin
			CalendarPickerB5.Date:=UniExperienceID['start_date'];
			CalendarPickerE5.Date:=UniExperienceID['end_date'];
			ChangeDates5;
			Edit5Name.Text := UniExperienceID['job_position'];
			Edit5Company.Text := UniExperienceID['employer'];
			RichEdit5Resp.Text := UniExperienceID['responsibilities'];
			RichEdit5Benefits.Text := UniExperienceID['benefits'];
			RichEdit5Other.Text := UniExperienceID['other'];
			UniSkillsID.Close;
			UniSkillsID.ParamByName('p_experience_id').AsInteger:=UniExperienceID['experience_id'];
			UniSkillsID.Open;
			Memo5Skills.Clear;
			while not UniSkillsID.EOF do
				begin
					if not FormMain.IsEmpty(UniSkillsID['skill']) then Memo5Skills.Lines.Add(UniSkillsID['skill']);
					UniSkillsID.Next;
				end;
			end;

		if UniExperienceID['job_order']=6 then
			begin
			CalendarPickerB6.Date:=UniExperienceID['start_date'];
			CalendarPickerE6.Date:=UniExperienceID['end_date'];
			ChangeDates6;
			Edit6Name.Text := UniExperienceID['job_position'];
			Edit6Company.Text := UniExperienceID['employer'];
			RichEdit6Resp.Text := UniExperienceID['responsibilities'];
			RichEdit6Benefits.Text := UniExperienceID['benefits'];
			RichEdit6Other.Text := UniExperienceID['other'];
			UniSkillsID.Close;
			UniSkillsID.ParamByName('p_experience_id').AsInteger:=UniExperienceID['experience_id'];
			UniSkillsID.Open;
			Memo6Skills.Clear;
			while not UniSkillsID.EOF do
				begin
					if not FormMain.IsEmpty(UniSkillsID['skill']) then Memo6Skills.Lines.Add(UniSkillsID['skill']);
					UniSkillsID.Next;
				end;
			end;

		if UniExperienceID['job_order']=7 then
			begin
			CalendarPickerB7.Date:=UniExperienceID['start_date'];
			CalendarPickerE7.Date:=UniExperienceID['end_date'];
			ChangeDates7;
			Edit7Name.Text := UniExperienceID['job_position'];
			Edit7Company.Text := UniExperienceID['employer'];
			RichEdit7Resp.Text := UniExperienceID['responsibilities'];
			RichEdit7Benefits.Text := UniExperienceID['benefits'];
			RichEdit7Other.Text := UniExperienceID['other'];
			UniSkillsID.Close;
			UniSkillsID.ParamByName('p_experience_id').AsInteger:=UniExperienceID['experience_id'];
			UniSkillsID.Open;
			Memo7Skills.Clear;
			while not UniSkillsID.EOF do
				begin
					if not FormMain.IsEmpty(UniSkillsID['skill']) then Memo7Skills.Lines.Add(UniSkillsID['skill']);
					UniSkillsID.Next;
				end;
			end;

		if UniExperienceID['job_order']=8 then
			begin
			CalendarPickerB8.Date:=UniExperienceID['start_date'];
			CalendarPickerE8.Date:=UniExperienceID['end_date'];
			ChangeDates8;
			Edit8Name.Text := UniExperienceID['job_position'];
			Edit8Company.Text := UniExperienceID['employer'];
			RichEdit8Resp.Text := UniExperienceID['responsibilities'];
			RichEdit8Benefits.Text := UniExperienceID['benefits'];
			RichEdit8Other.Text := UniExperienceID['other'];
			UniSkillsID.Close;
			UniSkillsID.ParamByName('p_experience_id').AsInteger:=UniExperienceID['experience_id'];
			UniSkillsID.Open;
			Memo8Skills.Clear;
			while not UniSkillsID.EOF do
				begin
					if not FormMain.IsEmpty(UniSkillsID['skill']) then Memo8Skills.Lines.Add(UniSkillsID['skill']);
					UniSkillsID.Next;
				end;
			end;

		if UniExperienceID['job_order']=9 then
			begin
			CalendarPickerB9.Date:=UniExperienceID['start_date'];
			CalendarPickerE9.Date:=UniExperienceID['end_date'];
			ChangeDates9;
			Edit9Name.Text := UniExperienceID['job_position'];
			Edit9Company.Text := UniExperienceID['employer'];
			RichEdit9Resp.Text := UniExperienceID['responsibilities'];
			RichEdit9Benefits.Text := UniExperienceID['benefits'];
			RichEdit9Other.Text := UniExperienceID['other'];
			UniSkillsID.Close;
			UniSkillsID.ParamByName('p_experience_id').AsInteger:=UniExperienceID['experience_id'];
			UniSkillsID.Open;
			Memo9Skills.Clear;
			while not UniSkillsID.EOF do
				begin
					if not FormMain.IsEmpty(UniSkillsID['skill']) then Memo9Skills.Lines.Add(UniSkillsID['skill']);
					UniSkillsID.Next;
				end;
			end;

		if UniExperienceID['job_order']=10 then
			begin
			CalendarPickerB10.Date:=UniExperienceID['start_date'];
			CalendarPickerE10.Date:=UniExperienceID['end_date'];
			ChangeDates10;
			Edit10Name.Text := UniExperienceID['job_position'];
			Edit10Company.Text := UniExperienceID['employer'];
			RichEdit10Resp.Text := UniExperienceID['responsibilities'];
			RichEdit10Benefits.Text := UniExperienceID['benefits'];
			RichEdit10Other.Text := UniExperienceID['other'];
			UniSkillsID.Close;
			UniSkillsID.ParamByName('p_experience_id').AsInteger:=UniExperienceID['experience_id'];
			UniSkillsID.Open;
			Memo10Skills.Clear;
			while not UniSkillsID.EOF do
				begin
					if not FormMain.IsEmpty(UniSkillsID['skill']) then Memo10Skills.Lines.Add(UniSkillsID['skill']);
					UniSkillsID.Next;
				end;
			end;
		UniExperienceID.Next;
	end;
if not FormMain.IsEmpty(EditName.Text) or
   not FormMain.IsEmpty(EditPlace.Text) or
   not FormMain.IsEmpty(RichEditor.Text)
then TabSheetMain.Highlighted:=true
else TabSheetMain.Highlighted:=false;
if not FormMain.IsEmpty(RichEditArticle1.Text) or
   not FormMain.IsEmpty(RichEditArticle2.Text) or
   not FormMain.IsEmpty(RichEditArticle3.Text) or
   not FormMain.IsEmpty(RichEditArticle4.Text)
then TabSheetFooter.Highlighted:=true
else TabSheetFooter.Highlighted:=false;
if not FormMain.IsEmpty(RichEditCV.Text)
then TabSheetCV.Highlighted:=true
else TabSheetCV.Highlighted:=false;
if not FormMain.IsEmpty(RichEditCL.Text)
then TabSheetCL.Highlighted:=true
else TabSheetCL.Highlighted:=false;
if not FormMain.IsEmpty(Edit1Name.Text) or
   not FormMain.IsEmpty(Edit1Company.Text) or
   not FormMain.IsEmpty(RichEdit1Resp.Text)
then TabSheetJob1.Highlighted:=true
else TabSheetJob1.Highlighted:=false;
if not FormMain.IsEmpty(Edit2Name.Text) or
  not FormMain.IsEmpty(Edit2Company.Text) or
  not FormMain.IsEmpty(RichEdit2Resp.Text)
then TabSheetJob2.Highlighted:=true
else TabSheetJob2.Highlighted:=false;
if not FormMain.IsEmpty(Edit3Name.Text) or
  not FormMain.IsEmpty(Edit3Company.Text) or
  not FormMain.IsEmpty(RichEdit3Resp.Text)
then TabSheetJob3.Highlighted:=true
else TabSheetJob3.Highlighted:=false;
if not FormMain.IsEmpty(Edit4Name.Text) or
  not FormMain.IsEmpty(Edit4Company.Text) or
  not FormMain.IsEmpty(RichEdit4Resp.Text)
then TabSheetJob4.Highlighted:=true
else TabSheetJob4.Highlighted:=false;
if not FormMain.IsEmpty(Edit5Name.Text) or
  not FormMain.IsEmpty(Edit5Company.Text) or
  not FormMain.IsEmpty(RichEdit5Resp.Text)
then TabSheetJob5.Highlighted:=true
else TabSheetJob5.Highlighted:=false;
if not FormMain.IsEmpty(Edit6Name.Text) or
  not FormMain.IsEmpty(Edit6Company.Text) or
  not FormMain.IsEmpty(RichEdit6Resp.Text)
then TabSheetJob6.Highlighted:=true
else TabSheetJob6.Highlighted:=false;
if not FormMain.IsEmpty(Edit7Name.Text) or
  not FormMain.IsEmpty(Edit7Company.Text) or
  not FormMain.IsEmpty(RichEdit7Resp.Text)
then TabSheetJob7.Highlighted:=true
else TabSheetJob7.Highlighted:=false;
if not FormMain.IsEmpty(Edit8Name.Text) or
   not FormMain.IsEmpty(Edit8Company.Text) or
   not FormMain.IsEmpty(RichEdit8Resp.Text)
then TabSheetJob8.Highlighted:=true
else TabSheetJob8.Highlighted:=false;
if not FormMain.IsEmpty(Edit9Name.Text) or
   not FormMain.IsEmpty(Edit9Company.Text) or
   not FormMain.IsEmpty(RichEdit9Resp.Text)
then TabSheetJob9.Highlighted:=true
else TabSheetJob9.Highlighted:=false;
if not FormMain.IsEmpty(Edit10Name.Text) or
   not FormMain.IsEmpty(Edit10Company.Text) or
   not FormMain.IsEmpty(RichEdit10Resp.Text)
then TabSheetJob10.Highlighted:=true
else TabSheetJob10.Highlighted:=false;
end;

procedure TFormUpdateResume.CalendarPickerB10Change(Sender: TObject);
begin
ChangeDates10;
end;

procedure TFormUpdateResume.CalendarPickerB10CloseUp(Sender: TObject);
begin
ChangeDates10;
end;

procedure TFormUpdateResume.CalendarPickerB1Change(Sender: TObject);
begin
ChangeDates1;
end;

procedure TFormUpdateResume.CalendarPickerB1CloseUp(Sender: TObject);
begin
ChangeDates1;
end;

procedure TFormUpdateResume.CalendarPickerB2Change(Sender: TObject);
begin
ChangeDates2;
end;

procedure TFormUpdateResume.CalendarPickerB2CloseUp(Sender: TObject);
begin
ChangeDates2;
end;

procedure TFormUpdateResume.CalendarPickerB3Change(Sender: TObject);
begin
ChangeDates3;
end;

procedure TFormUpdateResume.CalendarPickerB3CloseUp(Sender: TObject);
begin
ChangeDates3;
end;

procedure TFormUpdateResume.CalendarPickerB4Change(Sender: TObject);
begin
ChangeDates4;
end;

procedure TFormUpdateResume.CalendarPickerB4CloseUp(Sender: TObject);
begin
ChangeDates4;
end;

procedure TFormUpdateResume.CalendarPickerB5Change(Sender: TObject);
begin
ChangeDates5;
end;

procedure TFormUpdateResume.CalendarPickerB5CloseUp(Sender: TObject);
begin
ChangeDates5;
end;

procedure TFormUpdateResume.CalendarPickerB6Change(Sender: TObject);
begin
ChangeDates6;
end;

procedure TFormUpdateResume.CalendarPickerB6CloseUp(Sender: TObject);
begin
ChangeDates6;
end;

procedure TFormUpdateResume.CalendarPickerB7Change(Sender: TObject);
begin
ChangeDates7;
end;

procedure TFormUpdateResume.CalendarPickerB7CloseUp(Sender: TObject);
begin
ChangeDates7;
end;

procedure TFormUpdateResume.CalendarPickerB8Change(Sender: TObject);
begin
ChangeDates8;
end;

procedure TFormUpdateResume.CalendarPickerB8CloseUp(Sender: TObject);
begin
ChangeDates8;
end;

procedure TFormUpdateResume.CalendarPickerB9Change(Sender: TObject);
begin
ChangeDates9;
end;

procedure TFormUpdateResume.CalendarPickerB9CloseUp(Sender: TObject);
begin
ChangeDates9;
end;

procedure TFormUpdateResume.CalendarPickerE10Change(Sender: TObject);
begin
ChangeDates10;
end;

procedure TFormUpdateResume.CalendarPickerE10CloseUp(Sender: TObject);
begin
ChangeDates10;
end;

procedure TFormUpdateResume.CalendarPickerE1Change(Sender: TObject);
begin
ChangeDates1;
end;

procedure TFormUpdateResume.CalendarPickerE1CloseUp(Sender: TObject);
begin
ChangeDates1;
end;

procedure TFormUpdateResume.CalendarPickerE2Change(Sender: TObject);
begin
ChangeDates2;
end;

procedure TFormUpdateResume.CalendarPickerE2CloseUp(Sender: TObject);
begin
ChangeDates2;
end;

procedure TFormUpdateResume.CalendarPickerE3Change(Sender: TObject);
begin
ChangeDates3;
end;

procedure TFormUpdateResume.CalendarPickerE3CloseUp(Sender: TObject);
begin
ChangeDates3;
end;

procedure TFormUpdateResume.CalendarPickerE4Change(Sender: TObject);
begin
ChangeDates4;
end;

procedure TFormUpdateResume.CalendarPickerE4CloseUp(Sender: TObject);
begin
ChangeDates4;
end;

procedure TFormUpdateResume.CalendarPickerE5Change(Sender: TObject);
begin
ChangeDates5;
end;

procedure TFormUpdateResume.CalendarPickerE5CloseUp(Sender: TObject);
begin
ChangeDates5;
end;

procedure TFormUpdateResume.CalendarPickerE6Change(Sender: TObject);
begin
ChangeDates6;
end;

procedure TFormUpdateResume.CalendarPickerE6CloseUp(Sender: TObject);
begin
ChangeDates6;
end;

procedure TFormUpdateResume.CalendarPickerE7Change(Sender: TObject);
begin
ChangeDates7;
end;

procedure TFormUpdateResume.CalendarPickerE7CloseUp(Sender: TObject);
begin
ChangeDates7;
end;

procedure TFormUpdateResume.CalendarPickerE8Change(Sender: TObject);
begin
ChangeDates8;
end;

procedure TFormUpdateResume.CalendarPickerE8CloseUp(Sender: TObject);
begin
ChangeDates8;
end;

procedure TFormUpdateResume.CalendarPickerE9Change(Sender: TObject);
begin
ChangeDates9;
end;

procedure TFormUpdateResume.CalendarPickerE9CloseUp(Sender: TObject);
begin
ChangeDates9;
end;

procedure TFormUpdateResume.CBWordWrapClick(Sender: TObject);
begin
if CBWordWrap.Checked
then
	begin
	RichEditor.ScrollBars:=ssVertical;
	RichEditor.WordWrap:=true;
	end
else
	begin
	RichEditor.ScrollBars:=ssBoth;
	RichEditor.WordWrap:=false;
	end;
end;

procedure TFormUpdateResume.ChangeDates1;
begin
Edit1Dates.Text := FormMain.GetFullMonthByRegion(CalendarPickerB1.Date, CBRegion.Text)
					 + '-' + FormMain.GetFullMonthByRegion(CalendarPickerE1.Date, CBRegion.Text);
end;

procedure TFormUpdateResume.ChangeDates2;
begin
Edit2Dates.Text := FormMain.GetFullMonthByRegion(CalendarPickerB2.Date, CBRegion.Text)
					 + '-' + FormMain.GetFullMonthByRegion(CalendarPickerE2.Date, CBRegion.Text);
end;

procedure TFormUpdateResume.ChangeDates3;
begin
Edit3Dates.Text := FormMain.GetFullMonthByRegion(CalendarPickerB3.Date, CBRegion.Text)
					 + '-' + FormMain.GetFullMonthByRegion(CalendarPickerE3.Date, CBRegion.Text);
end;

procedure TFormUpdateResume.ChangeDates4;
begin
Edit4Dates.Text := FormMain.GetFullMonthByRegion(CalendarPickerB4.Date, CBRegion.Text)
					 + '-' + FormMain.GetFullMonthByRegion(CalendarPickerE4.Date, CBRegion.Text);
end;

procedure TFormUpdateResume.ChangeDates5;
begin
Edit5Dates.Text := FormMain.GetFullMonthByRegion(CalendarPickerB5.Date, CBRegion.Text)
					 + '-' + FormMain.GetFullMonthByRegion(CalendarPickerE5.Date, CBRegion.Text);
end;

procedure TFormUpdateResume.ChangeDates6;
begin
Edit6Dates.Text := FormMain.GetFullMonthByRegion(CalendarPickerB6.Date, CBRegion.Text)
					 + '-' + FormMain.GetFullMonthByRegion(CalendarPickerE6.Date, CBRegion.Text);
end;

procedure TFormUpdateResume.ChangeDates7;
begin
Edit7Dates.Text := FormMain.GetFullMonthByRegion(CalendarPickerB7.Date, CBRegion.Text)
					 + '-' + FormMain.GetFullMonthByRegion(CalendarPickerE7.Date, CBRegion.Text);
end;

procedure TFormUpdateResume.ChangeDates8;
begin
Edit8Dates.Text := FormMain.GetFullMonthByRegion(CalendarPickerB8.Date, CBRegion.Text)
					 + '-' + FormMain.GetFullMonthByRegion(CalendarPickerE8.Date, CBRegion.Text);
end;

procedure TFormUpdateResume.ChangeDates9;
begin
Edit9Dates.Text := FormMain.GetFullMonthByRegion(CalendarPickerB9.Date, CBRegion.Text)
					 + '-' + FormMain.GetFullMonthByRegion(CalendarPickerE9.Date, CBRegion.Text);
end;

procedure TFormUpdateResume.ChangeDates10;
begin
Edit10Dates.Text := FormMain.GetFullMonthByRegion(CalendarPickerB10.Date, CBRegion.Text)
						+ '-' + FormMain.GetFullMonthByRegion(CalendarPickerE10.Date, CBRegion.Text);
end;


function TFormUpdateResume.isMainFormGood: boolean;
begin
Result:=true;
// �������� ����� �������� �����
	if FormMain.IsEmpty(EditName.Text) then
	begin
		ShowMessage('����� ���� "������"');
		Result := false;
		exit;
	end;
	if Length(Trim(EditName.Text))<5 then
	begin
		ShowMessage('���� "������" ������ �� 5 ��������');
		Result := false;
		exit;
	end;

	if FormMain.IsEmpty(EditOpportunity.Text) then
	begin
		ShowMessage('����� ���� "������ ��������"');
		Result := false;
		exit;
	end;
	if FormMain.IsEmpty(EditPlace.Text) then
	begin
		ShowMessage('����� ���� "̳��� ������"');
		Result := false;
		exit;
	end;
	if FormMain.IsEmpty(EditPhones.Text) then
	begin
		ShowMessage('����� ���� "��������"');
		Result := false;
		exit;
	end;
	if FormMain.IsEmpty(RichEditor.Text) then
	begin
		ShowMessage('����� ���� "��������"');
		Result := false;
		exit;
	end;
	if FormMain.IsEmpty(EditArticle1.Text) and not FormMain.IsEmpty(RichEditArticle1.Text) then
	begin
		ShowMessage('����� ���� "������� 1 - �����"');
		Result := false;
		exit;
	end;
	if FormMain.IsEmpty(RichEditArticle1.Text) and not FormMain.IsEmpty(EditArticle1.Text) then
	begin
		ShowMessage('����� ���� "������� 1 - �����"');
		Result := false;
		exit;
	end;
	if FormMain.IsEmpty(EditArticle2.Text) and not FormMain.IsEmpty(RichEditArticle2.Text) then
	begin
		ShowMessage('����� ���� "������� 2 - �����"');
		Result := false;
		exit;
	end;
	if FormMain.IsEmpty(RichEditArticle2.Text) and not FormMain.IsEmpty(EditArticle2.Text) then
	begin
		ShowMessage('����� ���� "������� 2 - �����"');
		Result := false;
		exit;
	end;
	if FormMain.IsEmpty(EditArticle3.Text) and not FormMain.IsEmpty(RichEditArticle3.Text) then
	begin
		ShowMessage('����� ���� "������� 3 - �����"');
		Result := false;
		exit;
	end;
	if FormMain.IsEmpty(RichEditArticle3.Text) and not FormMain.IsEmpty(EditArticle3.Text) then
	begin
		ShowMessage('����� ���� "������� 3 - �����"');
		Result := false;
		exit;
	end;
	if FormMain.IsEmpty(EditArticle4.Text) and not FormMain.IsEmpty(RichEditArticle4.Text) then
	begin
		ShowMessage('����� ���� "������� 4 - �����"');
		Result := false;
		exit;
	end;
	if FormMain.IsEmpty(RichEditArticle4.Text) and not FormMain.IsEmpty(EditArticle4.Text) then
	begin
		ShowMessage('����� ���� "������� 4 - �����"');
		Result := false;
		exit;
	end;
end;


procedure TFormUpdateResume.PageControlChange(Sender: TObject);
begin
if not FormMain.IsEmpty(EditName.Text) or
   not FormMain.IsEmpty(EditPlace.Text) or
   not FormMain.IsEmpty(RichEditor.Text)
then TabSheetMain.Highlighted:=true
else TabSheetMain.Highlighted:=false;
if not FormMain.IsEmpty(RichEditArticle1.Text) or
   not FormMain.IsEmpty(RichEditArticle2.Text) or
   not FormMain.IsEmpty(RichEditArticle3.Text) or
   not FormMain.IsEmpty(RichEditArticle4.Text)
then TabSheetFooter.Highlighted:=true
else TabSheetFooter.Highlighted:=false;
if not FormMain.IsEmpty(RichEditCV.Text)
then TabSheetCV.Highlighted:=true
else TabSheetCV.Highlighted:=false;
if not FormMain.IsEmpty(RichEditCL.Text)
then TabSheetCL.Highlighted:=true
else TabSheetCL.Highlighted:=false;
if not FormMain.IsEmpty(Edit1Name.Text) or
   not FormMain.IsEmpty(Edit1Company.Text) or
   not FormMain.IsEmpty(RichEdit1Resp.Text)
then TabSheetJob1.Highlighted:=true
else TabSheetJob1.Highlighted:=false;
if not FormMain.IsEmpty(Edit2Name.Text) or
  not FormMain.IsEmpty(Edit2Company.Text) or
  not FormMain.IsEmpty(RichEdit2Resp.Text)
then TabSheetJob2.Highlighted:=true
else TabSheetJob2.Highlighted:=false;
if not FormMain.IsEmpty(Edit3Name.Text) or
  not FormMain.IsEmpty(Edit3Company.Text) or
  not FormMain.IsEmpty(RichEdit3Resp.Text)
then TabSheetJob3.Highlighted:=true
else TabSheetJob3.Highlighted:=false;
if not FormMain.IsEmpty(Edit4Name.Text) or
  not FormMain.IsEmpty(Edit4Company.Text) or
  not FormMain.IsEmpty(RichEdit4Resp.Text)
then TabSheetJob4.Highlighted:=true
else TabSheetJob4.Highlighted:=false;
if not FormMain.IsEmpty(Edit5Name.Text) or
  not FormMain.IsEmpty(Edit5Company.Text) or
  not FormMain.IsEmpty(RichEdit5Resp.Text)
then TabSheetJob5.Highlighted:=true
else TabSheetJob5.Highlighted:=false;
if not FormMain.IsEmpty(Edit6Name.Text) or
  not FormMain.IsEmpty(Edit6Company.Text) or
  not FormMain.IsEmpty(RichEdit6Resp.Text)
then TabSheetJob6.Highlighted:=true
else TabSheetJob6.Highlighted:=false;
if not FormMain.IsEmpty(Edit7Name.Text) or
  not FormMain.IsEmpty(Edit7Company.Text) or
  not FormMain.IsEmpty(RichEdit7Resp.Text)
then TabSheetJob7.Highlighted:=true
else TabSheetJob7.Highlighted:=false;
if not FormMain.IsEmpty(Edit8Name.Text) or
   not FormMain.IsEmpty(Edit8Company.Text) or
   not FormMain.IsEmpty(RichEdit8Resp.Text)
then TabSheetJob8.Highlighted:=true
else TabSheetJob8.Highlighted:=false;
if not FormMain.IsEmpty(Edit9Name.Text) or
   not FormMain.IsEmpty(Edit9Company.Text) or
   not FormMain.IsEmpty(RichEdit9Resp.Text)
then TabSheetJob9.Highlighted:=true
else TabSheetJob9.Highlighted:=false;
if not FormMain.IsEmpty(Edit10Name.Text) or
   not FormMain.IsEmpty(Edit10Company.Text) or
   not FormMain.IsEmpty(RichEdit10Resp.Text)
then TabSheetJob10.Highlighted:=true
else TabSheetJob10.Highlighted:=false;
end;

function TFormUpdateResume.isJobDatesGood: boolean;
begin
Result:=true;
if not IsJobDatesValid then
	begin
	Result:=false;
	exit;
	end;
if not IsJobPeriodsValid then
	begin
	Result:=false;
	exit;
	end;
end;

function TFormUpdateResume.isJobDatesValid: boolean;
begin
Result:=true;
if IsJob1Active and (FormMain.IsDateInvalid(CalendarPickerB1.Date) or CalendarPickerB1.IsEmpty) then
	begin
		ShowMessage('������ 1 ���� ������� �����, ������ (����������� � ����������� ��� �� ���� ������� �� 2000) '+DateToStr(CalendarPickerB1.Date));
		Result := false;
		exit;
	end;
if IsJob1Active and (FormMain.IsDateInvalid(CalendarPickerE1.Date) or CalendarPickerE1.IsEmpty) then
	begin
		ShowMessage('������ 1 ���� ��������� �����, ������ (����������� � ����������� ��� �� ���� ������� �� 2000) '+DateToStr(CalendarPickerE1.Date));
		Result := false;
		exit;
	end;
if IsJob2Active and (FormMain.IsDateInvalid(CalendarPickerB2.Date)or CalendarPickerB2.IsEmpty) then
	begin
		ShowMessage('������ 2 ���� �������  �����, ������ (����������� � ����������� ��� �� ���� ������� �� 2000) '+DateToStr(CalendarPickerB2.Date));
		Result := false;
		exit;
	end;
if IsJob2Active and (FormMain.IsDateInvalid(CalendarPickerE2.Date)or CalendarPickerE2.IsEmpty) then
	begin
		ShowMessage('������ 2 ���� ���������  �����, ������ (����������� � ����������� ��� �� ���� ������� �� 2000) '+DateToStr(CalendarPickerE2.Date));
		Result := false;
		exit;
	end;
if IsJob3Active and (FormMain.IsDateInvalid(CalendarPickerB3.Date) or CalendarPickerB3.IsEmpty) then
	begin
		ShowMessage('������ 3 ���� ������� �����, ������ (����������� � ����������� ��� �� ���� ������� �� 2000) '+DateToStr(CalendarPickerB3.Date));
		Result := false;
		exit;
	end;
if IsJob3Active and (FormMain.IsDateInvalid(CalendarPickerE3.Date) or CalendarPickerE3.IsEmpty) then
	begin
		ShowMessage('������ 3 ���� ��������� �����, ������ (����������� � ����������� ��� �� ���� ������� �� 2000) '+DateToStr(CalendarPickerE3.Date));
		Result := false;
		exit;
	end;
if IsJob4Active and (FormMain.IsDateInvalid(CalendarPickerB4.Date) or CalendarPickerB4.IsEmpty) then
	begin
		ShowMessage('������ 4 ���� ������� �����, ������ (����������� � ����������� ��� �� ���� ������� �� 2000) '+DateToStr(CalendarPickerB4.Date));
		Result := false;
		exit;
	end;
if IsJob4Active and (FormMain.IsDateInvalid(CalendarPickerE4.Date) or CalendarPickerE4.IsEmpty) then
	begin
		ShowMessage('������ 4 ���� ��������� �����, ������ (����������� � ����������� ��� �� ���� ������� �� 2000) '+DateToStr(CalendarPickerE4.Date));
		Result := false;
		exit;
	end;
if IsJob5Active and (FormMain.IsDateInvalid(CalendarPickerB5.Date) or CalendarPickerB5.IsEmpty) then
	begin
		ShowMessage('������ 5 ���� ������� �����, ������ (����������� � ����������� ��� �� ���� ������� �� 2000) '+DateToStr(CalendarPickerB5.Date));
		Result := false;
		exit;
	end;
if IsJob5Active and (FormMain.IsDateInvalid(CalendarPickerE5.Date) or CalendarPickerE5.IsEmpty) then
	begin
		ShowMessage('������ 5 ���� ��������� �����, ������ (����������� � ����������� ��� �� ���� ������� �� 2000) '+DateToStr(CalendarPickerE5.Date));
		Result := false;
		exit;
	end;
if IsJob6Active and (FormMain.IsDateInvalid(CalendarPickerB6.Date)  or CalendarPickerB6.IsEmpty) then
	begin
		ShowMessage('������ 6 ���� ������� �����, ������ (����������� � ����������� ��� �� ���� ������� �� 2000) '+DateToStr(CalendarPickerB6.Date));
		Result := false;
		exit;
	end;
if IsJob6Active and (FormMain.IsDateInvalid(CalendarPickerE6.Date) or CalendarPickerE6.IsEmpty) then
	begin
		ShowMessage('������ 6 ���� ��������� �����, ������ (����������� � ����������� ��� �� ���� ������� �� 2000) '+DateToStr(CalendarPickerE6.Date));
		Result := false;
		exit;
	end;
if IsJob7Active and (FormMain.IsDateInvalid(CalendarPickerB7.Date) or CalendarPickerB7.IsEmpty) then
	begin
		ShowMessage('������ 7 ���� ������� �����, ������ (����������� � ����������� ��� �� ���� ������� �� 2000) '+DateToStr(CalendarPickerB7.Date));
		Result := false;
		exit;
	end;
if IsJob7Active and (FormMain.IsDateInvalid(CalendarPickerE7.Date) or CalendarPickerE7.IsEmpty) then
	begin
		ShowMessage('������ 7 ���� ��������� �����, ������ (����������� � ����������� ��� �� ���� ������� �� 2000) '+DateToStr(CalendarPickerE7.Date));
		Result := false;
		exit;
	end;
if IsJob8Active and (FormMain.IsDateInvalid(CalendarPickerB8.Date) or CalendarPickerB8.IsEmpty) then
	begin
		ShowMessage('������ 8 ���� ������� �����, ������ (����������� � ����������� ��� �� ���� ������� �� 2000) '+DateToStr(CalendarPickerB8.Date));
		Result := false;
		exit;
	end;
if IsJob8Active and (FormMain.IsDateInvalid(CalendarPickerE8.Date) or CalendarPickerE8.IsEmpty) then
	begin
		ShowMessage('������ 8 ���� ��������� �����, ������ (����������� � ����������� ��� �� ���� ������� �� 2000) '+DateToStr(CalendarPickerE8.Date));
		Result := false;
		exit;
	end;
if IsJob9Active and (FormMain.IsDateInvalid(CalendarPickerB9.Date) or CalendarPickerB9.IsEmpty) then
	begin
		ShowMessage('������ 9 ���� ������� �����, ������ (����������� � ����������� ��� �� ���� ������� �� 2000) '+DateToStr(CalendarPickerB9.Date));
		Result := false;
		exit;
	end;
if IsJob9Active and (FormMain.IsDateInvalid(CalendarPickerE9.Date) or CalendarPickerE9.IsEmpty) then
	begin
		ShowMessage('������ 9 ���� ��������� �����, ������ (����������� � ����������� ��� �� ���� ������� �� 2000) '+DateToStr(CalendarPickerE9.Date));
		Result := false;
		exit;
	end;
if  IsJob10Active and (FormMain.IsDateInvalid(CalendarPickerB10.Date) or CalendarPickerB10.IsEmpty) then
	begin
		ShowMessage('������ 10 ���� ������� �����, ������ (����������� � ����������� ��� �� ���� ������� �� 2000) '+DateToStr(CalendarPickerB10.Date));
		Result := false;
		exit;
	end;
if  IsJob10Active and (FormMain.IsDateInvalid(CalendarPickerE10.Date) or CalendarPickerE10.IsEmpty) then
	begin
		ShowMessage('������ 10 ���� ��������� �����, ������ (����������� � ����������� ��� �� ���� ������� �� 2000) '+DateToStr(CalendarPickerE10.Date));
		Result := false;
		exit;
	end;

// BX>=EX
	if IsJob1Active and (CalendarPickerB1.Date >=CalendarPickerE1.Date) then
	begin
    ShowMessage('������ 1 ���� ��������� '+DateToStr(CalendarPickerE1.Date)+' ������ �� ���� ������� '+DateToStr(CalendarPickerB1.Date));
    Result := false;
    exit;
  end;

  if IsJob2Active and (CalendarPickerB2.Date >=CalendarPickerE2.Date) then
  begin
    ShowMessage('������ 2 ���� ��������� '+DateToStr(CalendarPickerE2.Date)+' ������ �� ���� ������� '+DateToStr(CalendarPickerB2.Date));
    Result := false;
    exit;
  end;
  if IsJob3Active and (CalendarPickerB3.Date >=CalendarPickerE3.Date) then
  begin
    ShowMessage('������ 3 ���� ��������� '+DateToStr(CalendarPickerE3.Date)+' ������ �� ���� ������� '+DateToStr(CalendarPickerB3.Date));
    Result := false;
    exit;
  end;
  if IsJob4Active and (CalendarPickerB4.Date >=CalendarPickerE4.Date) then
  begin
    ShowMessage('������ 4 ���� ��������� '+DateToStr(CalendarPickerE4.Date)+' ������ �� ���� ������� '+DateToStr(CalendarPickerB4.Date));
    Result := false;
    exit;
  end;
  if IsJob5Active and (CalendarPickerB5.Date >=CalendarPickerE5.Date) then
  begin
    ShowMessage('������ 5 ���� ��������� '+DateToStr(CalendarPickerE5.Date)+' ������ �� ���� ������� '+DateToStr(CalendarPickerB5.Date));
    Result := false;
    exit;
  end;
  if IsJob6Active and (CalendarPickerB6.Date >=CalendarPickerE6.Date) then
  begin
    ShowMessage('������ 6 ���� ��������� '+DateToStr(CalendarPickerE6.Date)+' ������ �� ���� ������� '+DateToStr(CalendarPickerB6.Date));
    Result := false;
    exit;
  end;
  if IsJob7Active and (CalendarPickerB7.Date >=CalendarPickerE7.Date) then
  begin
    ShowMessage('������ 7 ���� ��������� '+DateToStr(CalendarPickerE7.Date)+' ������ �� ���� ������� '+DateToStr(CalendarPickerB7.Date));
    Result := false;
    exit;
  end;
  if IsJob8Active and (CalendarPickerB8.Date >=CalendarPickerE8.Date) then
  begin
    ShowMessage('������ 8 ���� ��������� '+DateToStr(CalendarPickerE8.Date)+' ������ �� ���� ������� '+DateToStr(CalendarPickerB8.Date));
    Result := false;
    exit;
  end;
  if IsJob9Active and (CalendarPickerB9.Date >=CalendarPickerE9.Date) then
  begin
    ShowMessage('������ 9 ���� ��������� '+DateToStr(CalendarPickerE9.Date)+' ������ �� ���� ������� '+DateToStr(CalendarPickerB9.Date));
    Result := false;
    exit;
  end;
  if IsJob10Active and (CalendarPickerB10.Date >= CalendarPickerE10.Date) then
  begin
		ShowMessage('������ 10 ���� ��������� '+DateToStr(CalendarPickerE10.Date)+' ������ �� ���� ������� '+DateToStr(CalendarPickerB10.Date));
		Result := false;
		exit;
	end;
end;

function TFormUpdateResume.isJobPeriodsValid: boolean;
begin
Result:=true;
end;

function TFormUpdateResume.isJobGood: boolean;
begin
Result:=true;
	if (IsJob1Active and FormMain.IsEmpty(Edit1Name.Text)) then
	begin
		ShowMessage('����� ���� "����� ������ 1"');
		Result := false;
		exit;
	end;
	if (IsJob1Active and FormMain.IsEmpty(Edit1Company.Text)) then
	begin
		ShowMessage('����� ���� "�������� ������ 1"');
		Result := false;
		exit;
	end;
	if (IsJob1Active and FormMain.IsEmpty(RichEdit1Resp.Text)) then
	begin
		ShowMessage('����� ���� "����`���� ������ 1"');
		Result := false;
		exit;
	end;

	/// ////
	if (IsJob2Active and FormMain.IsEmpty(Edit2Name.Text)) then
	begin
		ShowMessage('����� ���� "����� ������ 2"');
		Result := false;
		exit;
	end;
	if (IsJob2Active and FormMain.IsEmpty(Edit2Company.Text)) then
	begin
		ShowMessage('����� ���� "�������� ������ 2"');
		Result := false;
		exit;
	end;
	if (IsJob2Active and FormMain.IsEmpty(RichEdit2Resp.Text)) then
	begin
		ShowMessage('����� ���� "����`���� ������ 2"');
		Result := false;
		exit;
	end;
	/// ////
	if (IsJob3Active and FormMain.IsEmpty(Edit3Name.Text)) then
	begin
		ShowMessage('����� ���� "����� ������ 3"');
		Result := false;
		exit;
	end;
	if (IsJob3Active and FormMain.IsEmpty(Edit3Company.Text)) then
	begin
		ShowMessage('����� ���� "�������� ������ 3"');
		Result := false;
		exit;
	end;
	if (IsJob3Active and FormMain.IsEmpty(RichEdit3Resp.Text)) then
	begin
		ShowMessage('����� ���� "����`���� ������ 3"');
		Result := false;
		exit;
	end;
	/// ////
	if (IsJob4Active and FormMain.IsEmpty(Edit4Name.Text)) then
	begin
		ShowMessage('����� ���� "����� ������ 4"');
		Result := false;
		exit;
	end;
	if (IsJob4Active and FormMain.IsEmpty(Edit4Company.Text)) then
	begin
		ShowMessage('����� ���� "�������� ������ 4"');
		Result := false;
		exit;
	end;
	if (IsJob4Active and FormMain.IsEmpty(RichEdit4Resp.Text)) then
	begin
		ShowMessage('����� ���� "����`���� ������ 4"');
		Result := false;
		exit;
	end;
	/// ////
	if (IsJob5Active and FormMain.IsEmpty(Edit5Name.Text)) then
	begin
		ShowMessage('����� ���� "����� ������ 5"');
		Result := false;
		exit;
	end;
	if (IsJob5Active and FormMain.IsEmpty(Edit5Company.Text)) then
	begin
		ShowMessage('����� ���� "�������� ������ 5"');
		Result := false;
		exit;
	end;
	if (IsJob5Active and FormMain.IsEmpty(RichEdit5Resp.Text)) then
	begin
		ShowMessage('����� ���� "����`���� ������ 5"');
		Result := false;
		exit;
	end;
	/// ////
	if (IsJob6Active and FormMain.IsEmpty(Edit6Name.Text)) then
	begin
		ShowMessage('����� ���� "����� ������ 6"');
		Result := false;
		exit;
	end;
	if (IsJob6Active and FormMain.IsEmpty(Edit6Company.Text)) then
	begin
		ShowMessage('����� ���� "�������� ������ 6"');
		Result := false;
		exit;
	end;
	if (IsJob6Active and FormMain.IsEmpty(RichEdit6Resp.Text)) then
	begin
		ShowMessage('����� ���� "����`���� ������ 6"');
		Result := false;
		exit;
	end;
	/// ////
	if (IsJob7Active and FormMain.IsEmpty(Edit7Name.Text)) then
	begin
		ShowMessage('����� ���� "����� ������ 7"');
		Result := false;
		exit;
	end;
	if (IsJob7Active and FormMain.IsEmpty(Edit7Company.Text)) then
	begin
		ShowMessage('����� ���� "�������� ������ 7"');
		Result := false;
		exit;
	end;
	if (IsJob7Active and FormMain.IsEmpty(RichEdit7Resp.Text)) then
	begin
		ShowMessage('����� ���� "����`���� ������ 7"');
		Result := false;
		exit;
	end;
	/// ////
	if (IsJob8Active and FormMain.IsEmpty(Edit8Name.Text)) then
	begin
		ShowMessage('����� ���� "����� ������ 8"');
		Result := false;
		exit;
	end;
	if (IsJob8Active and FormMain.IsEmpty(Edit8Company.Text)) then
	begin
		ShowMessage('����� ���� "�������� ������ 8"');
		Result := false;
		exit;
	end;
	if (IsJob8Active and FormMain.IsEmpty(RichEdit8Resp.Text)) then
	begin
		ShowMessage('����� ���� "����`���� ������ 8"');
		Result := false;
		exit;
	end;
	/// ////
	if (IsJob9Active and FormMain.IsEmpty(Edit9Name.Text)) then
	begin
		ShowMessage('����� ���� "����� ������ 9"');
		Result := false;
		exit;
	end;
	if (IsJob9Active and FormMain.IsEmpty(Edit9Company.Text)) then
	begin
		ShowMessage('����� ���� "�������� ������ 9"');
		Result := false;
		exit;
	end;
	if (IsJob9Active and FormMain.IsEmpty(RichEdit9Resp.Text)) then
	begin
		ShowMessage('����� ���� "����`���� ������ 9"');
		Result := false;
		exit;
	end;
	/// ////
	if (IsJob10Active and FormMain.IsEmpty(Edit10Name.Text)) then
	begin
		ShowMessage('����� ���� "����� ������ 10"');
		Result := false;
		exit;
	end;
	if (IsJob10Active and FormMain.IsEmpty(Edit10Company.Text)) then
	begin
		ShowMessage('����� ���� "�������� ������ 10"');
		Result := false;
		exit;
	end;
	if (IsJob10Active and FormMain.IsEmpty(RichEdit10Resp.Text)) then
	begin
		ShowMessage('����� ���� "����`���� ������ 10"');
		Result := false;
		exit;
	end;
end;

function TFormUpdateResume.isFormValuesGood: boolean;
begin
Result:=true;
IsJob1Active  := not(FormMain.IsEmpty(Edit1Name.Text) or FormMain.IsEmpty(Edit1Company.Text) or FormMain.IsEmpty(RichEdit1Resp.Text));
IsJob2Active  := not(FormMain.IsEmpty(Edit2Name.Text) or FormMain.IsEmpty(Edit2Company.Text) or FormMain.IsEmpty(RichEdit2Resp.Text));
IsJob3Active  := not(FormMain.IsEmpty(Edit3Name.Text) or FormMain.IsEmpty(Edit3Company.Text) or FormMain.IsEmpty(RichEdit3Resp.Text));
IsJob4Active  := not(FormMain.IsEmpty(Edit4Name.Text) or FormMain.IsEmpty(Edit4Company.Text) or FormMain.IsEmpty(RichEdit4Resp.Text));
IsJob5Active  := not(FormMain.IsEmpty(Edit5Name.Text) or FormMain.IsEmpty(Edit5Company.Text) or FormMain.IsEmpty(RichEdit5Resp.Text));
IsJob6Active  := not(FormMain.IsEmpty(Edit6Name.Text) or FormMain.IsEmpty(Edit6Company.Text) or FormMain.IsEmpty(RichEdit6Resp.Text));
IsJob7Active  := not(FormMain.IsEmpty(Edit7Name.Text) or FormMain.IsEmpty(Edit7Company.Text) or FormMain.IsEmpty(RichEdit7Resp.Text));
IsJob8Active  := not(FormMain.IsEmpty(Edit8Name.Text) or FormMain.IsEmpty(Edit8Company.Text) or FormMain.IsEmpty(RichEdit8Resp.Text));
IsJob9Active  := not(FormMain.IsEmpty(Edit9Name.Text) or FormMain.IsEmpty(Edit9Company.Text) or FormMain.IsEmpty(RichEdit9Resp.Text));
IsJob10Active := not(FormMain.IsEmpty(Edit10Name.Text) or FormMain.IsEmpty(Edit10Company.Text) or FormMain.IsEmpty(RichEdit10Resp.Text));

//������������ ����
if not isMainFormGood then
		begin
			Result:=false;
			exit;
		end;
	/// ���������� ���������� Job ����� ����������� ����
	///  ���� ������������ ���� � ������ ���������, ����� Job �������
if not IsJobGood then
		begin
			Result:=false;
			exit;
		end;
if not isJobDatesGood then
		begin
			Result:=false;
			exit;
		end;
end;

function TFormUpdateResume.SaveValues(const ResumeID:integer): boolean;
var ExperienceID:integer;
begin
	try
	if not SaveResume(ResumeID) then
		begin
			FormMain.Warning('���� ��� ���������� Resumes');
			Result := false;
			exit;
		end;
		if not SaveJobs(ResumeID) then
		begin
			FormMain.Warning('���� ��� ���������� jobs (experiences) NewResume');
			Result := false;
			exit;
		end;
		Result := true;
	except
		on E: Exception do
		begin
			FormMain.Warning('Error: ' + E.Message);
			Result := false;
		end;
	end;
end;

function TFormUpdateResume.SaveResume(const ResumeID:integer):boolean;
begin
	try
		UniSPUpdateResume.Prepare;
		UniSPUpdateResume.ParamByName('p_resume_id').AsInteger := ResumeID;
		UniSPUpdateResume.ParamByName('p_name').AsString  := trim(EditName.Text);
		UniSPUpdateResume.ParamByName('p_job_opportunity').AsString := Trim(EditOpportunity.Text);
		UniSPUpdateResume.ParamByName('p_job_place').AsString := Trim(EditPlace.Text);
		UniSPUpdateResume.ParamByName('p_phone_numbers_text').AsMemo := Trim(EditPhones.Text);
		UniSPUpdateResume.ParamByName('p_resume_introduction').AsMemo := RichEditor.Text;
		UniSPUpdateResume.ParamByName('p_cv_introduction').AsMemo := RichEditCV.Text;
		UniSPUpdateResume.ParamByName('p_cl_text').AsMemo := RichEditCL.Text;
		UniSPUpdateResume.ParamByName('p_archived').AsBoolean := False;
		UniSPUpdateResume.ParamByName('p_footer_1_header').AsString := Trim(EditArticle1.Text);
		UniSPUpdateResume.ParamByName('p_footer_1_text').AsMemo := Trim(RichEditArticle1.Text);
		UniSPUpdateResume.ParamByName('p_footer_2_header').AsString := Trim(EditArticle2.Text);
		UniSPUpdateResume.ParamByName('p_footer_2_text').AsMemo := Trim(RichEditArticle2.Text);
		UniSPUpdateResume.ParamByName('p_footer_3_header').AsString := Trim(EditArticle3.Text);
		UniSPUpdateResume.ParamByName('p_footer_3_text').AsMemo := Trim(RichEditArticle3.Text);
		UniSPUpdateResume.ParamByName('p_footer_4_header').AsString := Trim(EditArticle4.Text);
		UniSPUpdateResume.ParamByName('p_footer_4_text').AsMemo := Trim(RichEditArticle4.Text);
		UniSPUpdateResume.ParamByName('p_cv_include_footer1').AsBoolean := not CBCV_footer1.Checked;
		UniSPUpdateResume.ParamByName('p_cv_include_footer2').AsBoolean := not CBCV_footer2.Checked;
		UniSPUpdateResume.ParamByName('p_cv_include_footer3').AsBoolean := not CBCV_footer3.Checked;
		UniSPUpdateResume.ParamByName('p_cv_include_footer4').AsBoolean := not CBCV_footer4.Checked;
		UniSPUpdateResume.ExecProc;
		if UniSPUpdateResume.ParamByName('p_result').Value=0 then Result:=true else Result:=false;
		except
		on E: Exception do
		begin
		FormMain.Warning('������ �� ����� ������� � Resumes: ' + E.Message);
		Result := false;
		end;
	end;
end;

function TFormUpdateResume.SaveJobs(const ResumeID:integer): boolean;
var i, LExperienceID:integer;
begin
try
UniSPDeleteExperiences.Close;
UniSPDeleteExperiences.ParamByName('p_flag').AsString := 'resume_id';
UniSPDeleteExperiences.ParamByName('p_resume_id').AsInteger := ResumeID;
UniSPDeleteExperiences.ParamByName('p_template_id').AsInteger := 0;
UniSPDeleteExperiences.ExecSQL;
if isJob1Active then
		begin
			UniSPInsertExperiences.Close;
			UniSPInsertExperiences.ParamByName('p_flag').AsString := 'resume_id';
			UniSPInsertExperiences.ParamByName('p_resume_id').AsInteger := ResumeID;
			UniSPInsertExperiences.ParamByName('p_template_id').AsInteger := 0;
			UniSPInsertExperiences.ParamByName('p_job_order').AsInteger := 1;
			UniSPInsertExperiences.ParamByName('p_job_position').AsString := Edit1Name.Text;
			UniSPInsertExperiences.ParamByName('p_start_date').AsDateTime :=CalendarPickerB1.Date;
			UniSPInsertExperiences.ParamByName('p_end_date').AsDateTime := CalendarPickerE1.Date;
			UniSPInsertExperiences.ParamByName('p_employer').AsString := Edit1Company.Text;
			UniSPInsertExperiences.ParamByName('p_resp').AsMemo := RichEdit1Resp.Text;
			UniSPInsertExperiences.ParamByName('p_benefits').AsString := RichEdit1Benefits.Text;
			UniSPInsertExperiences.ParamByName('p_other').AsMemo := RichEdit1Other.Text;
			UniSPInsertExperiences.ExecSQL;
      LExperienceID:=UniSPInsertExperiences.ParamByName('p_experience_id').Value;
			for i := 0 to Memo1Skills.Lines.Count - 1 do
				if not FormMain.IsEmpty(Memo1Skills.Lines[i]) then
					begin
					UniSPInsertSkillShow.Close;
					UniSPInsertSkillShow.ParamByName('p_experience_id').AsInteger:=LexperienceID;
					UniSPInsertSkillShow.ParamByName('p_skill').AsString:=Memo1Skills.Lines[i];
					UniSPInsertSkillShow.ExecSQL;
					end;
		end;
	if isJob2Active then
		begin
			UniSPInsertExperiences.Close;
			UniSPInsertExperiences.ParamByName('p_flag').AsString := 'resume_id';
			UniSPInsertExperiences.ParamByName('p_resume_id').AsInteger := ResumeID;
			UniSPInsertExperiences.ParamByName('p_template_id').AsInteger := 0;
			UniSPInsertExperiences.ParamByName('p_job_order').AsInteger := 2;
			UniSPInsertExperiences.ParamByName('p_job_position').AsString := Edit2Name.Text;
			UniSPInsertExperiences.ParamByName('p_start_date').AsDateTime :=CalendarPickerB2.Date;
			UniSPInsertExperiences.ParamByName('p_end_date').AsDateTime := CalendarPickerE2.Date;
			UniSPInsertExperiences.ParamByName('p_employer').AsString := Edit2Company.Text;
			UniSPInsertExperiences.ParamByName('p_resp').AsMemo := RichEdit2Resp.Text;
			UniSPInsertExperiences.ParamByName('p_benefits').AsString := RichEdit2Benefits.Text;
			UniSPInsertExperiences.ParamByName('p_other').AsMemo := RichEdit2Other.Text;
			UniSPInsertExperiences.ExecSQL;
      LExperienceID:=UniSPInsertExperiences.ParamByName('p_experience_id').Value;
			for i := 0 to Memo2Skills.Lines.Count - 1 do
				if not FormMain.IsEmpty(Memo1Skills.Lines[i]) then
					begin
					UniSPInsertSkillShow.Close;
					UniSPInsertSkillShow.ParamByName('p_experience_id').AsInteger:=LExperienceID;
					UniSPInsertSkillShow.ParamByName('p_skill').AsString:=Memo2Skills.Lines[i];
					UniSPInsertSkillShow.ExecSQL;
					end;
		end;
	if isJob3Active then
		begin
			UniSPInsertExperiences.Close;
			UniSPInsertExperiences.ParamByName('p_flag').AsString := 'resume_id';
			UniSPInsertExperiences.ParamByName('p_resume_id').AsInteger := ResumeID;
			UniSPInsertExperiences.ParamByName('p_template_id').AsInteger := 0;
			UniSPInsertExperiences.ParamByName('p_job_order').AsInteger := 3;
			UniSPInsertExperiences.ParamByName('p_job_position').AsString := Edit3Name.Text;
			UniSPInsertExperiences.ParamByName('p_start_date').AsDateTime :=CalendarPickerB3.Date;
			UniSPInsertExperiences.ParamByName('p_end_date').AsDateTime := CalendarPickerE3.Date;
			UniSPInsertExperiences.ParamByName('p_employer').AsString := Edit3Company.Text;
			UniSPInsertExperiences.ParamByName('p_resp').AsMemo := RichEdit3Resp.Text;
			UniSPInsertExperiences.ParamByName('p_benefits').AsString := RichEdit3Benefits.Text;
			UniSPInsertExperiences.ParamByName('p_other').AsMemo := RichEdit3Other.Text;
			UniSPInsertExperiences.ExecSQL;
      LExperienceID:=UniSPInsertExperiences.ParamByName('p_experience_id').Value;
			for i := 0 to Memo3Skills.Lines.Count - 1 do
				if not FormMain.IsEmpty(Memo1Skills.Lines[i]) then
					begin
					UniSPInsertSkillShow.Close;
					UniSPInsertSkillShow.ParamByName('p_experience_id').AsInteger:=LExperienceID;
					UniSPInsertSkillShow.ParamByName('p_skill').AsString:=Memo3Skills.Lines[i];
					UniSPInsertSkillShow.ExecSQL;
					end;
		end;
	if isJob4Active then
		begin
			UniSPInsertExperiences.Close;
			UniSPInsertExperiences.ParamByName('p_flag').AsString := 'resume_id';
			UniSPInsertExperiences.ParamByName('p_resume_id').AsInteger := ResumeID;
			UniSPInsertExperiences.ParamByName('p_template_id').AsInteger := 0;
			UniSPInsertExperiences.ParamByName('p_job_order').AsInteger := 4;
			UniSPInsertExperiences.ParamByName('p_job_position').AsString := Edit4Name.Text;
			UniSPInsertExperiences.ParamByName('p_start_date').AsDateTime :=CalendarPickerB4.Date;
			UniSPInsertExperiences.ParamByName('p_end_date').AsDateTime := CalendarPickerE4.Date;
			UniSPInsertExperiences.ParamByName('p_employer').AsString := Edit4Company.Text;
			UniSPInsertExperiences.ParamByName('p_resp').AsMemo := RichEdit4Resp.Text;
			UniSPInsertExperiences.ParamByName('p_benefits').AsString := RichEdit4Benefits.Text;
			UniSPInsertExperiences.ParamByName('p_other').AsMemo := RichEdit4Other.Text;
			UniSPInsertExperiences.ExecSQL;
      LExperienceID:=UniSPInsertExperiences.ParamByName('p_experience_id').Value;
			for i := 0 to Memo4Skills.Lines.Count - 1 do
				if not FormMain.IsEmpty(Memo1Skills.Lines[i]) then
					begin
					UniSPInsertSkillShow.Close;
					UniSPInsertSkillShow.ParamByName('p_experience_id').AsInteger:=LExperienceID;
					UniSPInsertSkillShow.ParamByName('p_skill').AsString:=Memo4Skills.Lines[i];
					UniSPInsertSkillShow.ExecSQL;
					end;
		end;
	if isJob5Active then
		begin
			UniSPInsertExperiences.Close;
			UniSPInsertExperiences.ParamByName('p_flag').AsString := 'resume_id';
			UniSPInsertExperiences.ParamByName('p_resume_id').AsInteger := ResumeID;
			UniSPInsertExperiences.ParamByName('p_template_id').AsInteger := 0;
			UniSPInsertExperiences.ParamByName('p_job_order').AsInteger := 5;
			UniSPInsertExperiences.ParamByName('p_job_position').AsString := Edit5Name.Text;
			UniSPInsertExperiences.ParamByName('p_start_date').AsDateTime :=CalendarPickerB5.Date;
			UniSPInsertExperiences.ParamByName('p_end_date').AsDateTime := CalendarPickerE5.Date;
			UniSPInsertExperiences.ParamByName('p_employer').AsString := Edit5Company.Text;
			UniSPInsertExperiences.ParamByName('p_resp').AsMemo := RichEdit5Resp.Text;
			UniSPInsertExperiences.ParamByName('p_benefits').AsString := RichEdit5Benefits.Text;
			UniSPInsertExperiences.ParamByName('p_other').AsMemo := RichEdit5Other.Text;
			UniSPInsertExperiences.ExecSQL;
      LExperienceID:=UniSPInsertExperiences.ParamByName('p_experience_id').Value;
			for i := 0 to Memo5Skills.Lines.Count - 1 do
				if not FormMain.IsEmpty(Memo1Skills.Lines[i]) then
					begin
					UniSPInsertSkillShow.Close;
					UniSPInsertSkillShow.ParamByName('p_experience_id').AsInteger:=LExperienceID;
					UniSPInsertSkillShow.ParamByName('p_skill').AsString:=Memo5Skills.Lines[i];
					UniSPInsertSkillShow.ExecSQL;
					end;
		end;
	if isJob6Active then
		begin
			UniSPInsertExperiences.Close;
			UniSPInsertExperiences.ParamByName('p_flag').AsString := 'resume_id';
			UniSPInsertExperiences.ParamByName('p_resume_id').AsInteger := ResumeID;
			UniSPInsertExperiences.ParamByName('p_template_id').AsInteger := 0;
			UniSPInsertExperiences.ParamByName('p_job_order').AsInteger := 6;
			UniSPInsertExperiences.ParamByName('p_job_position').AsString := Edit6Name.Text;
			UniSPInsertExperiences.ParamByName('p_start_date').AsDateTime :=CalendarPickerB6.Date;
			UniSPInsertExperiences.ParamByName('p_end_date').AsDateTime := CalendarPickerE6.Date;
			UniSPInsertExperiences.ParamByName('p_employer').AsString := Edit6Company.Text;
			UniSPInsertExperiences.ParamByName('p_resp').AsMemo := RichEdit6Resp.Text;
			UniSPInsertExperiences.ParamByName('p_benefits').AsString := RichEdit6Benefits.Text;
			UniSPInsertExperiences.ParamByName('p_other').AsMemo := RichEdit6Other.Text;
			UniSPInsertExperiences.ExecSQL;
      LExperienceID:=UniSPInsertExperiences.ParamByName('p_experience_id').Value;
			for i := 0 to Memo6Skills.Lines.Count - 1 do
				if not FormMain.IsEmpty(Memo1Skills.Lines[i]) then
					begin
					UniSPInsertSkillShow.Close;
					UniSPInsertSkillShow.ParamByName('p_experience_id').AsInteger:=LExperienceID;
					UniSPInsertSkillShow.ParamByName('p_skill').AsString:=Memo6Skills.Lines[i];
					UniSPInsertSkillShow.ExecSQL;
					end;
		end;
	if isJob7Active then
		begin
			UniSPInsertExperiences.Close;
			UniSPInsertExperiences.ParamByName('p_flag').AsString := 'resume_id';
			UniSPInsertExperiences.ParamByName('p_resume_id').AsInteger := ResumeID;
			UniSPInsertExperiences.ParamByName('p_template_id').AsInteger := 0;
			UniSPInsertExperiences.ParamByName('p_job_order').AsInteger := 7;
			UniSPInsertExperiences.ParamByName('p_job_position').AsString := Edit7Name.Text;
			UniSPInsertExperiences.ParamByName('p_start_date').AsDateTime :=CalendarPickerB7.Date;
			UniSPInsertExperiences.ParamByName('p_end_date').AsDateTime := CalendarPickerE7.Date;
			UniSPInsertExperiences.ParamByName('p_employer').AsString := Edit7Company.Text;
			UniSPInsertExperiences.ParamByName('p_resp').AsMemo := RichEdit7Resp.Text;
			UniSPInsertExperiences.ParamByName('p_benefits').AsString := RichEdit7Benefits.Text;
			UniSPInsertExperiences.ParamByName('p_other').AsMemo := RichEdit7Other.Text;
			UniSPInsertExperiences.ExecSQL;
      LExperienceID:=UniSPInsertExperiences.ParamByName('p_experience_id').Value;
			for i := 0 to Memo7Skills.Lines.Count - 1 do
				if not FormMain.IsEmpty(Memo1Skills.Lines[i]) then
					begin
					UniSPInsertSkillShow.Close;
					UniSPInsertSkillShow.ParamByName('p_experience_id').AsInteger:=LExperienceID;
					UniSPInsertSkillShow.ParamByName('p_skill').AsString:=Memo7Skills.Lines[i];
					UniSPInsertSkillShow.ExecSQL;
					end;
		end;
	if isJob8Active then
		begin
			UniSPInsertExperiences.Close;
			UniSPInsertExperiences.ParamByName('p_flag').AsString := 'resume_id';
			UniSPInsertExperiences.ParamByName('p_resume_id').AsInteger := ResumeID;
			UniSPInsertExperiences.ParamByName('p_template_id').AsInteger := 0;
			UniSPInsertExperiences.ParamByName('p_job_order').AsInteger := 8;
			UniSPInsertExperiences.ParamByName('p_job_position').AsString := Edit8Name.Text;
			UniSPInsertExperiences.ParamByName('p_start_date').AsDateTime :=CalendarPickerB8.Date;
			UniSPInsertExperiences.ParamByName('p_end_date').AsDateTime := CalendarPickerE8.Date;
			UniSPInsertExperiences.ParamByName('p_employer').AsString := Edit8Company.Text;
			UniSPInsertExperiences.ParamByName('p_resp').AsMemo := RichEdit8Resp.Text;
			UniSPInsertExperiences.ParamByName('p_benefits').AsString := RichEdit8Benefits.Text;
			UniSPInsertExperiences.ParamByName('p_other').AsMemo := RichEdit8Other.Text;
			UniSPInsertExperiences.ExecSQL;
      LExperienceID:=UniSPInsertExperiences.ParamByName('p_experience_id').Value;
			for i := 0 to Memo8Skills.Lines.Count - 1 do
				if not FormMain.IsEmpty(Memo1Skills.Lines[i]) then
					begin
					UniSPInsertSkillShow.Close;
					UniSPInsertSkillShow.ParamByName('p_experience_id').AsInteger:=LExperienceID;
					UniSPInsertSkillShow.ParamByName('p_skill').AsString:=Memo8Skills.Lines[i];
					UniSPInsertSkillShow.ExecSQL;
					end;
		end;
	if isJob9Active then
		begin
			UniSPInsertExperiences.Close;
			UniSPInsertExperiences.ParamByName('p_flag').AsString := 'resume_id';
			UniSPInsertExperiences.ParamByName('p_resume_id').AsInteger := ResumeID;
			UniSPInsertExperiences.ParamByName('p_template_id').AsInteger := 0;
			UniSPInsertExperiences.ParamByName('p_job_order').AsInteger := 9;
			UniSPInsertExperiences.ParamByName('p_job_position').AsString := Edit9Name.Text;
			UniSPInsertExperiences.ParamByName('p_start_date').AsDateTime :=CalendarPickerB9.Date;
			UniSPInsertExperiences.ParamByName('p_end_date').AsDateTime := CalendarPickerE9.Date;
			UniSPInsertExperiences.ParamByName('p_employer').AsString := Edit9Company.Text;
			UniSPInsertExperiences.ParamByName('p_resp').AsMemo := RichEdit9Resp.Text;
			UniSPInsertExperiences.ParamByName('p_benefits').AsString := RichEdit9Benefits.Text;
			UniSPInsertExperiences.ParamByName('p_other').AsMemo := RichEdit9Other.Text;
			UniSPInsertExperiences.ExecSQL;
      LExperienceID:=UniSPInsertExperiences.ParamByName('p_experience_id').Value;
			for i := 0 to Memo9Skills.Lines.Count - 1 do
				if not FormMain.IsEmpty(Memo1Skills.Lines[i]) then
					begin
					UniSPInsertSkillShow.Close;
					UniSPInsertSkillShow.ParamByName('p_experience_id').AsInteger:=LExperienceID;
					UniSPInsertSkillShow.ParamByName('p_skill').AsString:=Memo9Skills.Lines[i];
					UniSPInsertSkillShow.ExecSQL;
					end;
		end;
	if isJob10Active then
		begin
			UniSPInsertExperiences.Close;
			UniSPInsertExperiences.ParamByName('p_flag').AsString := 'resume_id';
			UniSPInsertExperiences.ParamByName('p_resume_id').AsInteger := ResumeID;
			UniSPInsertExperiences.ParamByName('p_template_id').AsInteger := 0;
			UniSPInsertExperiences.ParamByName('p_job_order').AsInteger := 10;
			UniSPInsertExperiences.ParamByName('p_job_position').AsString := Edit10Name.Text;
			UniSPInsertExperiences.ParamByName('p_start_date').AsDateTime :=CalendarPickerB10.Date;
			UniSPInsertExperiences.ParamByName('p_end_date').AsDateTime := CalendarPickerE10.Date;
			UniSPInsertExperiences.ParamByName('p_employer').AsString := Edit10Company.Text;
			UniSPInsertExperiences.ParamByName('p_resp').AsMemo := RichEdit10Resp.Text;
			UniSPInsertExperiences.ParamByName('p_benefits').AsString := RichEdit10Benefits.Text;
			UniSPInsertExperiences.ParamByName('p_other').AsMemo := RichEdit10Other.Text;
			UniSPInsertExperiences.ExecSQL;
      LExperienceID:=UniSPInsertExperiences.ParamByName('p_experience_id').Value;
			for i := 0 to Memo10Skills.Lines.Count - 1 do
				if not FormMain.IsEmpty(Memo1Skills.Lines[i]) then
					begin
					UniSPInsertSkillShow.Close;
					UniSPInsertSkillShow.ParamByName('p_experience_id').AsInteger:=LExperienceID;
					UniSPInsertSkillShow.ParamByName('p_skill').AsString:=Memo10Skills.Lines[i];
					UniSPInsertSkillShow.ExecSQL;
					end;
		end;
	Result:=true;
	except
		on E: Exception do
		begin
			FormMain.Warning('������� �� ��� ������� � ������� experiences: ' + E.Message);
			Result := false;
		end;
	end;
end;
end.
