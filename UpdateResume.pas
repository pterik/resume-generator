unit UpdateResume;

interface

uses
	Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
	Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, MemDS, DBAccess, Uni,
	Vcl.WinXCalendars, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Buttons, VCL.TMSFNCTypes;

type
	TFormUpdateResume = class(TForm)
		BitBtnClose: TBitBtn;
		BitBtnSave: TBitBtn;
		PageControlRU: TPageControl;
		TabSheetMainRU: TTabSheet;
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
		TabSheetFooterRU: TTabSheet;
		Label7: TLabel;
		Label9: TLabel;
		Label10: TLabel;
		StaticText1: TStaticText;
		EditArticle1: TEdit;
		EditArticle2: TEdit;
		EditArticle3: TEdit;
		EditArticle4: TEdit;
		TabSheetJob1RU: TTabSheet;
		Label1: TLabel;
		Label2: TLabel;
		Label3: TLabel;
		Label4: TLabel;
		Label5: TLabel;
		Label6: TLabel;
		Edit1Dates: TEdit;
		Edit1Name: TEdit;
		Edit1Company: TEdit;
		Edit1Benefits: TEdit;
    Edit1Others: TEdit;
		Memo1Skills: TMemo;
		CalendarPickerB1: TCalendarPicker;
		CalendarPickerE1: TCalendarPicker;
		TabSheetJob2RU: TTabSheet;
		Label14: TLabel;
		Label15: TLabel;
		Label16: TLabel;
		Label17: TLabel;
		Label18: TLabel;
		Label19: TLabel;
		Edit2Dates: TEdit;
		Edit2Name: TEdit;
		Edit2Company: TEdit;
		Edit2Benefits: TEdit;
		Edit2Bottom: TEdit;
		Memo2Skills: TMemo;
		CalendarPickerB2: TCalendarPicker;
		CalendarPickerE2: TCalendarPicker;
		TabSheetJob3RU: TTabSheet;
		Label20: TLabel;
		Label21: TLabel;
		Label22: TLabel;
		Label23: TLabel;
		Label24: TLabel;
		Label25: TLabel;
		Edit3Dates: TEdit;
		Edit3Name: TEdit;
		Edit3Company: TEdit;
		Edit3Benefits: TEdit;
		Edit3Bottom: TEdit;
		Memo3Skills: TMemo;
		CalendarPickerB3: TCalendarPicker;
		CalendarPickerE3: TCalendarPicker;
		TabSheetJob4RU: TTabSheet;
		Label26: TLabel;
		Label27: TLabel;
		Label28: TLabel;
		Label29: TLabel;
		Label30: TLabel;
		Label31: TLabel;
		Edit4Dates: TEdit;
		Edit4Name: TEdit;
		Edit4Company: TEdit;
		Edit4Benefits: TEdit;
		Edit4Bottom: TEdit;
		Memo4Skills: TMemo;
		CalendarPickerB4: TCalendarPicker;
		CalendarPickerE4: TCalendarPicker;
		TabSheetJob5RU: TTabSheet;
		Label32: TLabel;
		Label33: TLabel;
		Label34: TLabel;
		Label35: TLabel;
		Label36: TLabel;
		Label37: TLabel;
		Edit5Dates: TEdit;
		Edit5Name: TEdit;
		Edit5Company: TEdit;
		Edit5Benefits: TEdit;
		Edit5Bottom: TEdit;
		Memo5Skills: TMemo;
		CalendarPickerB5: TCalendarPicker;
		CalendarPickerE5: TCalendarPicker;
		TabSheetJob6RU: TTabSheet;
		Label38: TLabel;
		Label39: TLabel;
		Label40: TLabel;
		Label41: TLabel;
		Label42: TLabel;
		Label43: TLabel;
		Edit6Benefits: TEdit;
		Edit6Bottom: TEdit;
		Edit6Dates: TEdit;
		Edit6Name: TEdit;
		Edit6Company: TEdit;
		Memo6Skills: TMemo;
		CalendarPickerB6: TCalendarPicker;
		CalendarPickerE6: TCalendarPicker;
		TabSheetJob7RU: TTabSheet;
		Label44: TLabel;
		Label45: TLabel;
		Label46: TLabel;
		Label47: TLabel;
		Label48: TLabel;
		Label49: TLabel;
		Edit7Benefits: TEdit;
		Edit7Bottom: TEdit;
		Edit7Dates: TEdit;
		Edit7Name: TEdit;
		Edit7Company: TEdit;
		Memo7Skills: TMemo;
		CalendarPickerB7: TCalendarPicker;
		CalendarPickerE7: TCalendarPicker;
		TabSheetJob8RU: TTabSheet;
		Label50: TLabel;
		Label51: TLabel;
		Label52: TLabel;
		Label53: TLabel;
		Label54: TLabel;
		Label55: TLabel;
		Edit8Benefits: TEdit;
		Edit8Bottom: TEdit;
		Edit8Dates: TEdit;
		Edit8Name: TEdit;
		Edit8Company: TEdit;
		Memo8Skills: TMemo;
		CalendarPickerB8: TCalendarPicker;
		CalendarPickerE8: TCalendarPicker;
		TabSheetJob9RU: TTabSheet;
		Label56: TLabel;
		Label57: TLabel;
		Label58: TLabel;
		Label59: TLabel;
		Label60: TLabel;
		Label61: TLabel;
		Edit9Benefits: TEdit;
		Edit9Bottom: TEdit;
		Edit9Dates: TEdit;
		Edit9Name: TEdit;
		Edit9Company: TEdit;
		Memo9Skills: TMemo;
		CalendarPickerB9: TCalendarPicker;
		CalendarPickerE9: TCalendarPicker;
		TabSheet10RU: TTabSheet;
		Label68: TLabel;
		Label69: TLabel;
		Label70: TLabel;
		Label71: TLabel;
		Label72: TLabel;
		Label73: TLabel;
		Edit10Benefits: TEdit;
		Edit10Bottom: TEdit;
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
		UniSPInsertSkillShow: TUniStoredProc;
		UniSPDeleteSkillsShow: TUniStoredProc;
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
    UniResumeIDarchived: TBooleanField;
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
    UniExperienceIDbenefits: TWideStringField;
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
    RichEdit1Other: TRichEdit;
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
		function DeleteSkillsShow(const ResumeID:integer):boolean;
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
Edit1Benefits.Text := '';
Edit1Bottom.Text := '';
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
Edit2Benefits.Text := '';
Edit2Bottom.Text := '';
RichEdit2Other.Text:='';
end;

procedure TFormUpdateResume.Clear3;
begin
CalendarPickerB3.isEmpty:=true;
CalendarPickerE3.isEmpty:=true;
Edit3Dates.Text := '';
Edit3Name.Text := '';
Edit3Company.Text := '';
RichEdit3Resp.Text := '';
Edit3Benefits.Text := '';
Edit3Bottom.Text := '';
Memo3Skills.Clear;
end;

procedure TFormUpdateResume.Clear4;
begin
CalendarPickerB4.isEmpty:=true;
CalendarPickerE4.isEmpty:=true;
Edit4Dates.Text := '';
Edit4Name.Text := '';
Edit4Company.Text := '';
RichEdit4.Text := '';
Edit4Benefits.Text := '';
Edit4Bottom.Text := '';
Memo4Skills.Clear;
end;

procedure TFormUpdateResume.Clear5;
begin
CalendarPickerB5.isEmpty:=true;
CalendarPickerE5.isEmpty:=true;
Edit5Dates.Text := '';
Edit5Name.Text := '';
Edit5Company.Text := '';
RichEdit5.Text := '';
Edit5Benefits.Text := '';
Edit5Bottom.Text := '';
Memo5Skills.Clear;
end;

procedure TFormUpdateResume.Clear6;
begin
CalendarPickerB6.isEmpty:=true;
CalendarPickerE6.isEmpty:=true;
Edit6Dates.Text := '';
Edit6Name.Text := '';
Edit6Company.Text := '';
RichEdit6.Text := '';
Edit6Benefits.Text := '';
Edit6Bottom.Text := '';
Memo6Skills.Clear;
end;

procedure TFormUpdateResume.Clear7;
begin
CalendarPickerB7.isEmpty:=true;
CalendarPickerE7.isEmpty:=true;
Edit7Dates.Text := '';
Edit7Name.Text := '';
Edit7Company.Text := '';
RichEdit7.Text := '';
Edit7Benefits.Text := '';
Edit7Bottom.Text := '';
Memo7Skills.Clear;
end;

procedure TFormUpdateResume.Clear8;
begin
CalendarPickerB8.isEmpty:=true;
CalendarPickerE8.isEmpty:=true;
Edit8Dates.Text := '';
Edit8Name.Text := '';
Edit8Company.Text := '';
RichEdit8.Text := '';
Edit8Benefits.Text := '';
Edit8Bottom.Text := '';
Memo8Skills.Clear;
end;

procedure TFormUpdateResume.Clear9;
begin
CalendarPickerB9.isEmpty:=true;
CalendarPickerE9.isEmpty:=true;
Edit9Dates.Text := '';
Edit9Name.Text := '';
Edit9Company.Text := '';
RichEdit9.Text := '';
Edit9Benefits.Text := '';
Edit9Bottom.Text := '';
Memo9Skills.Clear;
end;

procedure TFormUpdateResume.Clear10;
begin
CalendarPickerB10.isEmpty:=true;
CalendarPickerE10.isEmpty:=true;
Edit10Dates.Text := '';
Edit10Name.Text := '';
Edit10Company.Text := '';
RichEdit10.Text := '';
Edit10Benefits.Text := '';
Edit10Bottom.Text := '';
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

Edit1Dates.Text := '';
Edit1Name.Text := '';
Edit1Company.Text := '';
RichEdit1.Text := '';
Edit1Benefits.Text := '';
Edit1Bottom.Text := '';

Edit2Dates.Text := '';
Edit2Name.Text := '';
Edit2Company.Text := '';
RichEdit2.Text := '';
Edit2Benefits.Text := '';
Edit2Bottom.Text := '';

Edit3Dates.Text := '';
Edit3Name.Text := '';
Edit3Company.Text := '';
RichEdit3.Text := '';
Edit3Benefits.Text := '';
Edit3Bottom.Text := '';

Edit4Dates.Text := '';
Edit4Name.Text := '';
Edit4Company.Text := '';
RichEdit4.Text := '';
Edit4Benefits.Text := '';
Edit4Bottom.Text := '';

Edit5Dates.Text := '';
Edit5Name.Text := '';
Edit5Company.Text := '';
RichEdit5.Text := '';
Edit5Benefits.Text := '';
Edit5Bottom.Text := '';

Edit6Dates.Text := '';
Edit6Name.Text := '';
Edit6Company.Text := '';
RichEdit6.Text := '';
Edit6Benefits.Text := '';
Edit6Bottom.Text := '';

Edit7Dates.Text := '';
Edit7Name.Text := '';
Edit7Company.Text := '';
RichEdit7.Text := '';
Edit7Benefits.Text := '';
Edit7Bottom.Text := '';

Edit8Dates.Text := '';
Edit8Name.Text := '';
Edit8Company.Text := '';
RichEdit8.Text := '';
Edit8Benefits.Text := '';
Edit8Bottom.Text := '';

Edit9Dates.Text := '';
Edit9Name.Text := '';
Edit9Company.Text := '';
RichEdit9.Text := '';
Edit9Benefits.Text := '';
Edit9Bottom.Text := '';

Edit10Dates.Text := '';
Edit10Name.Text := '';
Edit10Company.Text := '';
RichEdit10.Text := '';
Edit10Benefits.Text := '';
Edit10Bottom.Text := '';

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
PageControlRU.ActivePageIndex:=0;
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
		end;
	if UniFootersID['footer_order']=2 then
		begin
		if VarIsNull(UniFootersID['footer_header'])
			then EditArticle2.Text := ''
			else EditArticle2.Text := UniFootersID['footer_header'];
		if VarIsNull(UniFootersID['footer_text'])
			then RichEditArticle2.Text :=''
			else RichEditArticle2.Text := UniFootersID['footer_text'];
		end;
	if UniFootersID['footer_order']=3 then
		begin
		if VarIsNull(UniFootersID['footer_header'])
			then EditArticle3.Text := ''
			else EditArticle3.Text := UniFootersID['footer_header'];
		if VarIsNull(UniFootersID['footer_text'])
			then RichEditArticle3.Text :=''
      else RichEditArticle3.Text := UniFootersID['footer_text'];
		end;
	if UniFootersID['footer_order']=4 then
		begin
		if VarIsNull(UniFootersID['footer_header'])
			then EditArticle4.Text := ''
			else EditArticle4.Text := UniFootersID['footer_header'];
		if VarIsNull(UniFootersID['footer_text'])
			then RichEditArticle4.Text :=''
      else RichEditArticle4.Text := UniFootersID['footer_text'];
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
while not UniExperienceID.EOF do
	begin
		if UniExperienceID['job_order']=1 then
			begin
			CalendarPickerB1.Date:=UniExperienceID['start_date'];
			CalendarPickerE1.Date:=UniExperienceID['end_date'];
			ChangeDates1;
			Edit1Name.Text := UniExperienceID['job_position'];
			Edit1Company.Text := UniExperienceID['employer'];
			RichEdit1.Text := UniExperienceID['responsibilities'];
			Edit1Benefits.Text := UniExperienceID['benefits'];
			Edit1Bottom.Text := UniExperienceID['other'];
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
			RichEdit2.Text := UniExperienceID['responsibilities'];
			Edit2Benefits.Text := UniExperienceID['benefits'];
			Edit2Bottom.Text := UniExperienceID['other'];
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
			RichEdit3.Text := UniExperienceID['responsibilities'];
			Edit3Benefits.Text := UniExperienceID['benefits'];
			Edit3Bottom.Text := UniExperienceID['other'];
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
			RichEdit4.Text := UniExperienceID['responsibilities'];
			Edit4Benefits.Text := UniExperienceID['benefits'];
			Edit4Bottom.Text := UniExperienceID['other'];
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
			RichEdit5.Text := UniExperienceID['responsibilities'];
			Edit5Benefits.Text := UniExperienceID['benefits'];
			Edit5Bottom.Text := UniExperienceID['other'];
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
			RichEdit6.Text := UniExperienceID['responsibilities'];
			Edit6Benefits.Text := UniExperienceID['benefits'];
			Edit6Bottom.Text := UniExperienceID['other'];
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
			RichEdit7.Text := UniExperienceID['responsibilities'];
			Edit7Benefits.Text := UniExperienceID['benefits'];
			Edit7Bottom.Text := UniExperienceID['other'];
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
			RichEdit8.Text := UniExperienceID['responsibilities'];
			Edit8Benefits.Text := UniExperienceID['benefits'];
			Edit8Bottom.Text := UniExperienceID['other'];
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
			RichEdit9.Text := UniExperienceID['responsibilities'];
			Edit9Benefits.Text := UniExperienceID['benefits'];
			Edit9Bottom.Text := UniExperienceID['other'];
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
			RichEdit10.Text := UniExperienceID['responsibilities'];
			Edit10Benefits.Text := UniExperienceID['benefits'];
			Edit10Bottom.Text := UniExperienceID['other'];
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

function TFormUpdateResume.DeleteSkillsShow(const ResumeID: integer): boolean;
begin
UniExperienceID.Close;
UniExperienceID.ParamByName('p_resume_id').Value:=ResumeID;
UniExperienceID.Open;
while not UniExperienceID.EOF do
	begin
		UniSPDeleteSkillsShow.Close;
		UniSPDeleteSkillsShow.ParamByName('p_experience_id').Value:=UniExperienceID['experience_id'];
		UniSPDeleteSkillsShow.ExecSQL;
		UniExperienceID.Next;
  end;
end;

procedure TFormUpdateResume.ChangeDates10;
begin
Edit10Dates.Text := FormMain.GetFullMonthByRegion(CalendarPickerB10.Date, CBRegion.Text)
						+ '-' + FormMain.GetFullMonthByRegion(CalendarPickerE10.Date, CBRegion.Text);
end;


function TFormUpdateResume.isMainFormGood: boolean;
begin
Result:=true;
// Проверка полей основной формы
	if FormMain.IsEmpty(EditName.Text) then
	begin
		ShowMessage('Пусте поле "Посада"');
		Result := false;
		exit;
	end;
	if Length(Trim(EditName.Text))<5 then
	begin
		ShowMessage('Поле "Посада" меньше за 5 символов');
		Result := false;
		exit;
	end;

	if FormMain.IsEmpty(EditOpportunity.Text) then
	begin
		ShowMessage('Пусте поле "Посада повністю"');
		Result := false;
		exit;
	end;
	if FormMain.IsEmpty(EditPlace.Text) then
	begin
		ShowMessage('Пусте поле "Місце роботи"');
		Result := false;
		exit;
	end;
	if FormMain.IsEmpty(EditPhones.Text) then
	begin
		ShowMessage('Пусте поле "Телефони"');
		Result := false;
		exit;
	end;
	if FormMain.IsEmpty(RichEditor.Text) then
	begin
		ShowMessage('Пусте поле "Введення"');
		Result := false;
		exit;
	end;
	if FormMain.IsEmpty(EditArticle1.Text) and not FormMain.IsEmpty(RichEditArticle1.Text) then
	begin
		ShowMessage('Пусте поле "Навички 1 - Назва"');
		Result := false;
		exit;
	end;
	if FormMain.IsEmpty(RichEditArticle1.Text) and not FormMain.IsEmpty(EditArticle1.Text) then
	begin
		ShowMessage('Пусте поле "Навички 1 - Текст"');
		Result := false;
		exit;
	end;
	if FormMain.IsEmpty(EditArticle2.Text) and not FormMain.IsEmpty(RichEditArticle2.Text) then
	begin
		ShowMessage('Пусте поле "Навички 2 - Назва"');
		Result := false;
		exit;
	end;
	if FormMain.IsEmpty(RichEditArticle2.Text) and not FormMain.IsEmpty(EditArticle2.Text) then
	begin
		ShowMessage('Пусте поле "Навички 2 - Текст"');
		Result := false;
		exit;
	end;
	if FormMain.IsEmpty(EditArticle3.Text) and not FormMain.IsEmpty(RichEditArticle3.Text) then
	begin
		ShowMessage('Пусте поле "Навички 3 - Назва"');
		Result := false;
		exit;
	end;
	if FormMain.IsEmpty(RichEditArticle3.Text) and not FormMain.IsEmpty(EditArticle3.Text) then
	begin
		ShowMessage('Пусте поле "Навички 3 - Текст"');
		Result := false;
		exit;
	end;
	if FormMain.IsEmpty(EditArticle4.Text) and not FormMain.IsEmpty(RichEditArticle4.Text) then
	begin
		ShowMessage('Пусте поле "Навички 4 - Назва"');
		Result := false;
		exit;
	end;
	if FormMain.IsEmpty(RichEditArticle4.Text) and not FormMain.IsEmpty(EditArticle4.Text) then
	begin
		ShowMessage('Пусте поле "Навички 4 - Текст"');
		Result := false;
		exit;
	end;
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
		ShowMessage('Робота 1 дата початку пуста, невірна (знаходиться в майбутньому або рік дати меньший за 2000) '+DateToStr(CalendarPickerB1.Date));
		Result := false;
		exit;
	end;
if IsJob1Active and (FormMain.IsDateInvalid(CalendarPickerE1.Date) or CalendarPickerE1.IsEmpty) then
	begin
		ShowMessage('Робота 1 дата закінчення пуста, невірна (знаходиться в майбутньому або рік дати меньший за 2000) '+DateToStr(CalendarPickerE1.Date));
		Result := false;
		exit;
	end;
if IsJob2Active and (FormMain.IsDateInvalid(CalendarPickerB2.Date)or CalendarPickerB2.IsEmpty) then
	begin
		ShowMessage('Робота 2 дата початку  пуста, невірна (знаходиться в майбутньому або рік дати меньший за 2000) '+DateToStr(CalendarPickerB2.Date));
		Result := false;
		exit;
	end;
if IsJob2Active and (FormMain.IsDateInvalid(CalendarPickerE2.Date)or CalendarPickerE2.IsEmpty) then
	begin
		ShowMessage('Робота 2 дата закінчення  пуста, невірна (знаходиться в майбутньому або рік дати меньший за 2000) '+DateToStr(CalendarPickerE2.Date));
		Result := false;
		exit;
	end;
if IsJob3Active and (FormMain.IsDateInvalid(CalendarPickerB3.Date) or CalendarPickerB3.IsEmpty) then
	begin
		ShowMessage('Робота 3 дата початку пуста, невірна (знаходиться в майбутньому або рік дати меньший за 2000) '+DateToStr(CalendarPickerB3.Date));
		Result := false;
		exit;
	end;
if IsJob3Active and (FormMain.IsDateInvalid(CalendarPickerE3.Date) or CalendarPickerE3.IsEmpty) then
	begin
		ShowMessage('Робота 3 дата закінчення пуста, невірна (знаходиться в майбутньому або рік дати меньший за 2000) '+DateToStr(CalendarPickerE3.Date));
		Result := false;
		exit;
	end;
if IsJob4Active and (FormMain.IsDateInvalid(CalendarPickerB4.Date) or CalendarPickerB4.IsEmpty) then
	begin
		ShowMessage('Робота 4 дата початку пуста, невірна (знаходиться в майбутньому або рік дати меньший за 2000) '+DateToStr(CalendarPickerB4.Date));
		Result := false;
		exit;
	end;
if IsJob4Active and (FormMain.IsDateInvalid(CalendarPickerE4.Date) or CalendarPickerE4.IsEmpty) then
	begin
		ShowMessage('Робота 4 дата закінчення пуста, невірна (знаходиться в майбутньому або рік дати меньший за 2000) '+DateToStr(CalendarPickerE4.Date));
		Result := false;
		exit;
	end;
if IsJob5Active and (FormMain.IsDateInvalid(CalendarPickerB5.Date) or CalendarPickerB5.IsEmpty) then
	begin
		ShowMessage('Робота 5 дата початку пуста, невірна (знаходиться в майбутньому або рік дати меньший за 2000) '+DateToStr(CalendarPickerB5.Date));
		Result := false;
		exit;
	end;
if IsJob5Active and (FormMain.IsDateInvalid(CalendarPickerE5.Date) or CalendarPickerE5.IsEmpty) then
	begin
		ShowMessage('Робота 5 дата закінчення пуста, невірна (знаходиться в майбутньому або рік дати меньший за 2000) '+DateToStr(CalendarPickerE5.Date));
		Result := false;
		exit;
	end;
if IsJob6Active and (FormMain.IsDateInvalid(CalendarPickerB6.Date)  or CalendarPickerB6.IsEmpty) then
	begin
		ShowMessage('Робота 6 дата початку пуста, невірна (знаходиться в майбутньому або рік дати меньший за 2000) '+DateToStr(CalendarPickerB6.Date));
		Result := false;
		exit;
	end;
if IsJob6Active and (FormMain.IsDateInvalid(CalendarPickerE6.Date) or CalendarPickerE6.IsEmpty) then
	begin
		ShowMessage('Робота 6 дата закінчення пуста, невірна (знаходиться в майбутньому або рік дати меньший за 2000) '+DateToStr(CalendarPickerE6.Date));
		Result := false;
		exit;
	end;
if IsJob7Active and (FormMain.IsDateInvalid(CalendarPickerB7.Date) or CalendarPickerB7.IsEmpty) then
	begin
		ShowMessage('Робота 7 дата початку пуста, невірна (знаходиться в майбутньому або рік дати меньший за 2000) '+DateToStr(CalendarPickerB7.Date));
		Result := false;
		exit;
	end;
if IsJob7Active and (FormMain.IsDateInvalid(CalendarPickerE7.Date) or CalendarPickerE7.IsEmpty) then
	begin
		ShowMessage('Робота 7 дата закінчення пуста, невірна (знаходиться в майбутньому або рік дати меньший за 2000) '+DateToStr(CalendarPickerE7.Date));
		Result := false;
		exit;
	end;
if IsJob8Active and (FormMain.IsDateInvalid(CalendarPickerB8.Date) or CalendarPickerB8.IsEmpty) then
	begin
		ShowMessage('Робота 8 дата початку пуста, невірна (знаходиться в майбутньому або рік дати меньший за 2000) '+DateToStr(CalendarPickerB8.Date));
		Result := false;
		exit;
	end;
if IsJob8Active and (FormMain.IsDateInvalid(CalendarPickerE8.Date) or CalendarPickerE8.IsEmpty) then
	begin
		ShowMessage('Робота 8 дата закінчення пуста, невірна (знаходиться в майбутньому або рік дати меньший за 2000) '+DateToStr(CalendarPickerE8.Date));
		Result := false;
		exit;
	end;
if IsJob9Active and (FormMain.IsDateInvalid(CalendarPickerB9.Date) or CalendarPickerB9.IsEmpty) then
	begin
		ShowMessage('Робота 9 дата початку пуста, невірна (знаходиться в майбутньому або рік дати меньший за 2000) '+DateToStr(CalendarPickerB9.Date));
		Result := false;
		exit;
	end;
if IsJob9Active and (FormMain.IsDateInvalid(CalendarPickerE9.Date) or CalendarPickerE9.IsEmpty) then
	begin
		ShowMessage('Робота 9 дата закінчення пуста, невірна (знаходиться в майбутньому або рік дати меньший за 2000) '+DateToStr(CalendarPickerE9.Date));
		Result := false;
		exit;
	end;
if  IsJob10Active and (FormMain.IsDateInvalid(CalendarPickerB10.Date) or CalendarPickerB10.IsEmpty) then
	begin
		ShowMessage('Робота 10 дата початку пуста, невірна (знаходиться в майбутньому або рік дати меньший за 2000) '+DateToStr(CalendarPickerB10.Date));
		Result := false;
		exit;
	end;
if  IsJob10Active and (FormMain.IsDateInvalid(CalendarPickerE10.Date) or CalendarPickerE10.IsEmpty) then
	begin
		ShowMessage('Робота 10 дата закінчення пуста, невірна (знаходиться в майбутньому або рік дати меньший за 2000) '+DateToStr(CalendarPickerE10.Date));
		Result := false;
		exit;
	end;

// BX>=EX
	if IsJob1Active and (CalendarPickerB1.Date >=CalendarPickerE1.Date) then
	begin
    ShowMessage('Робота 1 дата закінчення '+DateToStr(CalendarPickerE1.Date)+' раніше за дату початку '+DateToStr(CalendarPickerB1.Date));
    Result := false;
    exit;
  end;

  if IsJob2Active and (CalendarPickerB2.Date >=CalendarPickerE2.Date) then
  begin
    ShowMessage('Робота 2 дата закінчення '+DateToStr(CalendarPickerE2.Date)+' раніше за дату початку '+DateToStr(CalendarPickerB2.Date));
    Result := false;
    exit;
  end;
  if IsJob3Active and (CalendarPickerB3.Date >=CalendarPickerE3.Date) then
  begin
    ShowMessage('Робота 3 дата закінчення '+DateToStr(CalendarPickerE3.Date)+' раніше за дату початку '+DateToStr(CalendarPickerB3.Date));
    Result := false;
    exit;
  end;
  if IsJob4Active and (CalendarPickerB4.Date >=CalendarPickerE4.Date) then
  begin
    ShowMessage('Робота 4 дата закінчення '+DateToStr(CalendarPickerE4.Date)+' раніше за дату початку '+DateToStr(CalendarPickerB4.Date));
    Result := false;
    exit;
  end;
  if IsJob5Active and (CalendarPickerB5.Date >=CalendarPickerE5.Date) then
  begin
    ShowMessage('Робота 5 дата закінчення '+DateToStr(CalendarPickerE5.Date)+' раніше за дату початку '+DateToStr(CalendarPickerB5.Date));
    Result := false;
    exit;
  end;
  if IsJob6Active and (CalendarPickerB6.Date >=CalendarPickerE6.Date) then
  begin
    ShowMessage('Робота 6 дата закінчення '+DateToStr(CalendarPickerE6.Date)+' раніше за дату початку '+DateToStr(CalendarPickerB6.Date));
    Result := false;
    exit;
  end;
  if IsJob7Active and (CalendarPickerB7.Date >=CalendarPickerE7.Date) then
  begin
    ShowMessage('Робота 7 дата закінчення '+DateToStr(CalendarPickerE7.Date)+' раніше за дату початку '+DateToStr(CalendarPickerB7.Date));
    Result := false;
    exit;
  end;
  if IsJob8Active and (CalendarPickerB8.Date >=CalendarPickerE8.Date) then
  begin
    ShowMessage('Робота 8 дата закінчення '+DateToStr(CalendarPickerE8.Date)+' раніше за дату початку '+DateToStr(CalendarPickerB8.Date));
    Result := false;
    exit;
  end;
  if IsJob9Active and (CalendarPickerB9.Date >=CalendarPickerE9.Date) then
  begin
    ShowMessage('Робота 9 дата закінчення '+DateToStr(CalendarPickerE9.Date)+' раніше за дату початку '+DateToStr(CalendarPickerB9.Date));
    Result := false;
    exit;
  end;
  if IsJob10Active and (CalendarPickerB10.Date >= CalendarPickerE10.Date) then
  begin
		ShowMessage('Робота 10 дата закінчення '+DateToStr(CalendarPickerE10.Date)+' раніше за дату початку '+DateToStr(CalendarPickerB10.Date));
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
		ShowMessage('Пусте поле "Назва робота 1"');
		Result := false;
		exit;
	end;
	if (IsJob1Active and FormMain.IsEmpty(Edit1Company.Text)) then
	begin
		ShowMessage('Пусте поле "Компанія робота 1"');
		Result := false;
		exit;
	end;
	if (IsJob1Active and FormMain.IsEmpty(RichEdit1.Text)) then
	begin
		ShowMessage('Пусте поле "Обов`язки робота 1"');
		Result := false;
		exit;
	end;

	/// ////
	if (IsJob2Active and FormMain.IsEmpty(Edit2Name.Text)) then
	begin
		ShowMessage('Пусте поле "Назва робота 2"');
		Result := false;
		exit;
	end;
	if (IsJob2Active and FormMain.IsEmpty(Edit2Company.Text)) then
	begin
		ShowMessage('Пусте поле "Компанія робота 2"');
		Result := false;
		exit;
	end;
	if (IsJob2Active and FormMain.IsEmpty(RichEdit2.Text)) then
	begin
		ShowMessage('Пусте поле "Обов`язки робота 2"');
		Result := false;
		exit;
	end;
	/// ////
	if (IsJob3Active and FormMain.IsEmpty(Edit3Name.Text)) then
	begin
		ShowMessage('Пусте поле "Назва робота 3"');
		Result := false;
		exit;
	end;
	if (IsJob3Active and FormMain.IsEmpty(Edit3Company.Text)) then
	begin
		ShowMessage('Пусте поле "Компанія робота 3"');
		Result := false;
		exit;
	end;
	if (IsJob3Active and FormMain.IsEmpty(RichEdit3.Text)) then
	begin
		ShowMessage('Пусте поле "Обов`язки робота 3"');
		Result := false;
		exit;
	end;
	/// ////
	if (IsJob4Active and FormMain.IsEmpty(Edit4Name.Text)) then
	begin
		ShowMessage('Пусте поле "Назва робота 4"');
		Result := false;
		exit;
	end;
	if (IsJob4Active and FormMain.IsEmpty(Edit4Company.Text)) then
	begin
		ShowMessage('Пусте поле "Компанія робота 4"');
		Result := false;
		exit;
	end;
	if (IsJob4Active and FormMain.IsEmpty(RichEdit4.Text)) then
	begin
		ShowMessage('Пусте поле "Обов`язки робота 4"');
		Result := false;
		exit;
	end;
	/// ////
	if (IsJob5Active and FormMain.IsEmpty(Edit5Name.Text)) then
	begin
		ShowMessage('Пусте поле "Назва робота 5"');
		Result := false;
		exit;
	end;
	if (IsJob5Active and FormMain.IsEmpty(Edit5Company.Text)) then
	begin
		ShowMessage('Пусте поле "Компанія робота 5"');
		Result := false;
		exit;
	end;
	if (IsJob5Active and FormMain.IsEmpty(RichEdit5.Text)) then
	begin
		ShowMessage('Пусте поле "Обов`язки робота 5"');
		Result := false;
		exit;
	end;
	/// ////
	if (IsJob6Active and FormMain.IsEmpty(Edit6Name.Text)) then
	begin
		ShowMessage('Пусте поле "Назва робота 6"');
		Result := false;
		exit;
	end;
	if (IsJob6Active and FormMain.IsEmpty(Edit6Company.Text)) then
	begin
		ShowMessage('Пусте поле "Компанія робота 6"');
		Result := false;
		exit;
	end;
	if (IsJob6Active and FormMain.IsEmpty(RichEdit6.Text)) then
	begin
		ShowMessage('Пусте поле "Обов`язки робота 6"');
		Result := false;
		exit;
	end;
	/// ////
	if (IsJob7Active and FormMain.IsEmpty(Edit7Name.Text)) then
	begin
		ShowMessage('Пусте поле "Назва робота 7"');
		Result := false;
		exit;
	end;
	if (IsJob7Active and FormMain.IsEmpty(Edit7Company.Text)) then
	begin
		ShowMessage('Пусте поле "Компанія робота 7"');
		Result := false;
		exit;
	end;
	if (IsJob7Active and FormMain.IsEmpty(RichEdit7.Text)) then
	begin
		ShowMessage('Пусте поле "Обов`язки робота 7"');
		Result := false;
		exit;
	end;
	/// ////
	if (IsJob8Active and FormMain.IsEmpty(Edit8Name.Text)) then
	begin
		ShowMessage('Пусте поле "Назва робота 8"');
		Result := false;
		exit;
	end;
	if (IsJob8Active and FormMain.IsEmpty(Edit8Company.Text)) then
	begin
		ShowMessage('Пусте поле "Компанія робота 8"');
		Result := false;
		exit;
	end;
	if (IsJob8Active and FormMain.IsEmpty(RichEdit8.Text)) then
	begin
		ShowMessage('Пусте поле "Обов`язки робота 8"');
		Result := false;
		exit;
	end;
	/// ////
	if (IsJob9Active and FormMain.IsEmpty(Edit9Name.Text)) then
	begin
		ShowMessage('Пусте поле "Назва робота 9"');
		Result := false;
		exit;
	end;
	if (IsJob9Active and FormMain.IsEmpty(Edit9Company.Text)) then
	begin
		ShowMessage('Пусте поле "Компанія робота 9"');
		Result := false;
		exit;
	end;
	if (IsJob9Active and FormMain.IsEmpty(RichEdit9.Text)) then
	begin
		ShowMessage('Пусте поле "Обов`язки робота 9"');
		Result := false;
		exit;
	end;
	/// ////
	if (IsJob10Active and FormMain.IsEmpty(Edit10Name.Text)) then
	begin
		ShowMessage('Пусте поле "Назва робота 10"');
		Result := false;
		exit;
	end;
	if (IsJob10Active and FormMain.IsEmpty(Edit10Company.Text)) then
	begin
		ShowMessage('Пусте поле "Компанія робота 10"');
		Result := false;
		exit;
	end;
	if (IsJob10Active and FormMain.IsEmpty(RichEdit10.Text)) then
	begin
		ShowMessage('Пусте поле "Обов`язки робота 10"');
		Result := false;
		exit;
	end;
end;

function TFormUpdateResume.isFormValuesGood: boolean;
begin
Result:=true;
IsJob1Active  := not(FormMain.IsEmpty(Edit1Name.Text) or FormMain.IsEmpty(Edit1Company.Text) or FormMain.IsEmpty(RichEdit1.Text));
IsJob2Active  := not(FormMain.IsEmpty(Edit2Name.Text) or FormMain.IsEmpty(Edit2Company.Text) or FormMain.IsEmpty(RichEdit2.Text));
IsJob3Active  := not(FormMain.IsEmpty(Edit3Name.Text) or FormMain.IsEmpty(Edit3Company.Text) or FormMain.IsEmpty(RichEdit3.Text));
IsJob4Active  := not(FormMain.IsEmpty(Edit4Name.Text) or FormMain.IsEmpty(Edit4Company.Text) or FormMain.IsEmpty(RichEdit4.Text));
IsJob5Active  := not(FormMain.IsEmpty(Edit5Name.Text) or FormMain.IsEmpty(Edit5Company.Text) or FormMain.IsEmpty(RichEdit5.Text));
IsJob6Active  := not(FormMain.IsEmpty(Edit6Name.Text) or FormMain.IsEmpty(Edit6Company.Text) or FormMain.IsEmpty(RichEdit6.Text));
IsJob7Active  := not(FormMain.IsEmpty(Edit7Name.Text) or FormMain.IsEmpty(Edit7Company.Text) or FormMain.IsEmpty(RichEdit7.Text));
IsJob8Active  := not(FormMain.IsEmpty(Edit8Name.Text) or FormMain.IsEmpty(Edit8Company.Text) or FormMain.IsEmpty(RichEdit8.Text));
IsJob9Active  := not(FormMain.IsEmpty(Edit9Name.Text) or FormMain.IsEmpty(Edit9Company.Text) or FormMain.IsEmpty(RichEdit9.Text));
IsJob10Active := not(FormMain.IsEmpty(Edit10Name.Text) or FormMain.IsEmpty(Edit10Company.Text) or FormMain.IsEmpty(RichEdit10.Text));

//Обязательные поля
if not isMainFormGood then
		begin
			Result:=false;
			exit;
		end;
	/// Определяем активность Job через заполненные поля
	///  Если обязательные поля в работе заполнены, тогда Job активна
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
			FormMain.Warning('Сбой при сохранении Resumes');
			Result := false;
			exit;
		end;
		if not DeleteSkillsShow(ResumeID) then
		begin
			FormMain.Warning('Сбой при сохранении jobs (experiences) NewResume');
			Result := false;
			exit;
		end;
		if not SaveJobs(ResumeID) then
		begin
			FormMain.Warning('Сбой при сохранении jobs (experiences) NewResume');
			Result := false;
			exit;
		end;
		Result := true;
	except
		on E: Exception do
		begin
			ShowMessage('Error: ' + E.Message);
			Result := false;
		end;
	end;
end;

function TFormUpdateResume.SaveResume(const ResumeID:integer):boolean;
begin
	try
		UniSPUpdateResume.Prepare;
		UniSPUpdateResume.ParamByName('p_resume_id').AsInteger := FResumeID;
		UniSPUpdateResume.ParamByName('p_name').AsString  := trim(EditName.Text);
		UniSPUpdateResume.ParamByName('p_job_opportunity').AsString := Trim(EditOpportunity.Text);
		UniSPUpdateResume.ParamByName('p_job_place').AsString := Trim(EditPlace.Text);
		UniSPUpdateResume.ParamByName('p_phone_numbers_text').AsMemo := Trim(EditPhones.Text);
		UniSPUpdateResume.ParamByName('p_resume_introduction').AsMemo := RichEditor.Text;
		UniSPUpdateResume.ParamByName('p_archived').AsBoolean := False;
		UniSPUpdateResume.ParamByName('p_footer_1_header').AsString := Trim(EditArticle1.Text);
		UniSPUpdateResume.ParamByName('p_footer_1_text').AsMemo := Trim(RichEditArticle1.Text);
		UniSPUpdateResume.ParamByName('p_footer_2_header').AsString := Trim(EditArticle2.Text);
		UniSPUpdateResume.ParamByName('p_footer_2_text').AsMemo := Trim(RichEditArticle2.Text);
		UniSPUpdateResume.ParamByName('p_footer_3_header').AsString := Trim(EditArticle3.Text);
		UniSPUpdateResume.ParamByName('p_footer_3_text').AsMemo := Trim(RichEditArticle3.Text);
		UniSPUpdateResume.ParamByName('p_footer_4_header').AsString := Trim(EditArticle4.Text);
		UniSPUpdateResume.ParamByName('p_footer_4_text').AsMemo := Trim(RichEditArticle4.Text);
		UniSPUpdateResume.ExecProc;
		if UniSPUpdateResume.ParamByName('p_result').Value=0 then Result:=true else Result:=false;
		except
		on E: Exception do
		begin
		ShowMessage('Ошибка во время вставки в Resumes: ' + E.Message);
		Result := false;
		end;
	end;
end;

function TFormUpdateResume.SaveJobs(const ResumeID:integer): boolean;
var i:integer;
//FExperienceID:array [1..10] of integer;
begin
//for i:=1 to 10 do FExperienceID[i]:=0;
try
if not DeleteSkillsShow(ResumeID) then
	begin
	ShowMessage('Ошибка во время удаления skills_show: ');
	Result := false;
	exit;
  end;
if isJob1Active then
		begin
			UniSPInsertExperiences.Close;
			UniSPInsertExperiences.ParamByName('p_flag').AsString := 'resume_id';
			UniSPInsertExperiences.ParamByName('p_resume_id').AsInteger := FResumeID;
//			UniSPInsertExperiences.ParamByName('p_job_order').AsInteger := 1;
			UniSPInsertExperiences.ParamByName('p_job_position').AsString := Edit1Name.Text;
			UniSPInsertExperiences.ParamByName('p_start_date').AsDateTime :=CalendarPickerB1.Date;
			UniSPInsertExperiences.ParamByName('p_end_date').AsDateTime := CalendarPickerE1.Date;
			UniSPInsertExperiences.ParamByName('p_employer').AsString := Edit1Company.Text;
			UniSPInsertExperiences.ParamByName('p_resp').AsMemo := RichEdit1.Text;
			UniSPInsertExperiences.ParamByName('p_benefits').AsString := Edit1Benefits.Text;
			UniSPInsertExperiences.ParamByName('p_other').AsMemo := Edit1Bottom.Text;
			UniSPInsertExperiences.ExecSQL;
			for i := 0 to Memo1Skills.Lines.Count - 1 do
				if not FormMain.IsEmpty(Memo1Skills.Lines[i]) then
					begin
					UniSPInsertSkillShow.Close;
					UniSPInsertSkillShow.ParamByName('p_experience_id').AsInteger:=UniSPInsertExperiences.ParamByName('p_experience_id').Value;
					UniSPInsertSkillShow.ParamByName('p_skill').AsString:=Memo1Skills.Lines[i];
					UniSPInsertSkillShow.ParamByName('p_skill_id').AsInteger:=null;
					UniSPInsertSkillShow.ExecSQL;
					end;
		end;
	if isJob2Active then
		begin
			UniSPInsertExperiences.Close;
			UniSPInsertExperiences.ParamByName('p_flag').AsString := 'resume_id';
			UniSPInsertExperiences.ParamByName('p_resume_id').AsInteger := FResumeID;
//			UniSPInsertExperiences.ParamByName('p_job_order').AsInteger := 2;
			UniSPInsertExperiences.ParamByName('p_job_position').AsString := Edit2Name.Text;
			UniSPInsertExperiences.ParamByName('p_start_date').AsDateTime :=CalendarPickerB2.Date;
			UniSPInsertExperiences.ParamByName('p_end_date').AsDateTime := CalendarPickerE2.Date;
			UniSPInsertExperiences.ParamByName('p_employer').AsString := Edit2Company.Text;
			UniSPInsertExperiences.ParamByName('p_resp').AsMemo := RichEdit2.Text;
			UniSPInsertExperiences.ParamByName('p_benefits').AsString := Edit2Benefits.Text;
			UniSPInsertExperiences.ParamByName('p_other').AsMemo := Edit2Bottom.Text;
			UniSPInsertExperiences.ExecSQL;
			for i := 0 to Memo1Skills.Lines.Count - 1 do
				if not FormMain.IsEmpty(Memo1Skills.Lines[i]) then
					begin
					UniSPInsertSkillShow.Close;
					UniSPInsertSkillShow.ParamByName('p_experience_id').AsInteger:=UniSPInsertExperiences.ParamByName('p_experience_id').Value;
					UniSPInsertSkillShow.ParamByName('p_skill').AsString:=Memo1Skills.Lines[i];
					UniSPInsertSkillShow.ParamByName('p_skill_id').AsInteger:=null;
					UniSPInsertSkillShow.ExecSQL;
					end;
		end;
	if isJob3Active then
		begin
			UniSPInsertExperiences.Close;
			UniSPInsertExperiences.ParamByName('p_flag').AsString := 'resume_id';
			UniSPInsertExperiences.ParamByName('p_resume_id').AsInteger := FResumeID;
//			UniSPInsertExperiences.ParamByName('p_job_order').AsInteger := 3;
			UniSPInsertExperiences.ParamByName('p_job_position').AsString := Edit3Name.Text;
			UniSPInsertExperiences.ParamByName('p_start_date').AsDateTime :=CalendarPickerB3.Date;
			UniSPInsertExperiences.ParamByName('p_end_date').AsDateTime := CalendarPickerE3.Date;
			UniSPInsertExperiences.ParamByName('p_employer').AsString := Edit3Company.Text;
			UniSPInsertExperiences.ParamByName('p_resp').AsMemo := RichEdit3.Text;
			UniSPInsertExperiences.ParamByName('p_benefits').AsString := Edit3Benefits.Text;
			UniSPInsertExperiences.ParamByName('p_other').AsMemo := Edit3Bottom.Text;
			UniSPInsertExperiences.ExecSQL;
			for i := 0 to Memo1Skills.Lines.Count - 1 do
				if not FormMain.IsEmpty(Memo1Skills.Lines[i]) then
					begin
					UniSPInsertSkillShow.Close;
					UniSPInsertSkillShow.ParamByName('p_experience_id').AsInteger:=UniSPInsertExperiences.ParamByName('p_experience_id').Value;
					UniSPInsertSkillShow.ParamByName('p_skill').AsString:=Memo1Skills.Lines[i];
					UniSPInsertSkillShow.ParamByName('p_skill_id').AsInteger:=null;
					UniSPInsertSkillShow.ExecSQL;
					end;
		end;
	if isJob4Active then
		begin
			UniSPInsertExperiences.Close;
			UniSPInsertExperiences.ParamByName('p_flag').AsString := 'resume_id';
			UniSPInsertExperiences.ParamByName('p_resume_id').AsInteger := FResumeID;
//			UniSPInsertExperiences.ParamByName('p_job_order').AsInteger := 4;
			UniSPInsertExperiences.ParamByName('p_job_position').AsString := Edit4Name.Text;
			UniSPInsertExperiences.ParamByName('p_start_date').AsDateTime :=CalendarPickerB4.Date;
			UniSPInsertExperiences.ParamByName('p_end_date').AsDateTime := CalendarPickerE4.Date;
			UniSPInsertExperiences.ParamByName('p_employer').AsString := Edit4Company.Text;
			UniSPInsertExperiences.ParamByName('p_resp').AsMemo := RichEdit4.Text;
			UniSPInsertExperiences.ParamByName('p_benefits').AsString := Edit4Benefits.Text;
			UniSPInsertExperiences.ParamByName('p_other').AsMemo := Edit4Bottom.Text;
			UniSPInsertExperiences.ExecSQL;
			for i := 0 to Memo1Skills.Lines.Count - 1 do
				if not FormMain.IsEmpty(Memo1Skills.Lines[i]) then
					begin
					UniSPInsertSkillShow.Close;
					UniSPInsertSkillShow.ParamByName('p_experience_id').AsInteger:=UniSPInsertExperiences.ParamByName('p_experience_id').Value;
					UniSPInsertSkillShow.ParamByName('p_skill').AsString:=Memo1Skills.Lines[i];
					UniSPInsertSkillShow.ParamByName('p_skill_id').AsInteger:=null;
					UniSPInsertSkillShow.ExecSQL;
					end;
		end;
	if isJob5Active then
		begin
			UniSPInsertExperiences.Close;
			UniSPInsertExperiences.ParamByName('p_flag').AsString := 'resume_id';
			UniSPInsertExperiences.ParamByName('p_resume_id').AsInteger := FResumeID;
//			UniSPInsertExperiences.ParamByName('p_job_order').AsInteger := 5;
			UniSPInsertExperiences.ParamByName('p_job_position').AsString := Edit5Name.Text;
			UniSPInsertExperiences.ParamByName('p_start_date').AsDateTime :=CalendarPickerB5.Date;
			UniSPInsertExperiences.ParamByName('p_end_date').AsDateTime := CalendarPickerE5.Date;
			UniSPInsertExperiences.ParamByName('p_employer').AsString := Edit5Company.Text;
			UniSPInsertExperiences.ParamByName('p_resp').AsMemo := RichEdit5.Text;
			UniSPInsertExperiences.ParamByName('p_benefits').AsString := Edit5Benefits.Text;
			UniSPInsertExperiences.ParamByName('p_other').AsMemo := Edit5Bottom.Text;
			UniSPInsertExperiences.ExecSQL;
			for i := 0 to Memo1Skills.Lines.Count - 1 do
				if not FormMain.IsEmpty(Memo1Skills.Lines[i]) then
					begin
					UniSPInsertSkillShow.Close;
					UniSPInsertSkillShow.ParamByName('p_experience_id').AsInteger:=UniSPInsertExperiences.ParamByName('p_experience_id').Value;
					UniSPInsertSkillShow.ParamByName('p_skill').AsString:=Memo1Skills.Lines[i];
					UniSPInsertSkillShow.ParamByName('p_skill_id').AsInteger:=null;
					UniSPInsertSkillShow.ExecSQL;
					end;
		end;
	if isJob6Active then
		begin
			UniSPInsertExperiences.Close;
			UniSPInsertExperiences.ParamByName('p_flag').AsString := 'resume_id';
			UniSPInsertExperiences.ParamByName('p_resume_id').AsInteger := FResumeID;
//			UniSPInsertExperiences.ParamByName('p_job_order').AsInteger := 6;
			UniSPInsertExperiences.ParamByName('p_job_position').AsString := Edit6Name.Text;
			UniSPInsertExperiences.ParamByName('p_start_date').AsDateTime :=CalendarPickerB6.Date;
			UniSPInsertExperiences.ParamByName('p_end_date').AsDateTime := CalendarPickerE6.Date;
			UniSPInsertExperiences.ParamByName('p_employer').AsString := Edit6Company.Text;
			UniSPInsertExperiences.ParamByName('p_resp').AsMemo := RichEdit6.Text;
			UniSPInsertExperiences.ParamByName('p_benefits').AsString := Edit6Benefits.Text;
			UniSPInsertExperiences.ParamByName('p_other').AsMemo := Edit6Bottom.Text;
			UniSPInsertExperiences.ExecSQL;
			for i := 0 to Memo1Skills.Lines.Count - 1 do
				if not FormMain.IsEmpty(Memo1Skills.Lines[i]) then
					begin
					UniSPInsertSkillShow.Close;
					UniSPInsertSkillShow.ParamByName('p_experience_id').AsInteger:=UniSPInsertExperiences.ParamByName('p_experience_id').Value;
					UniSPInsertSkillShow.ParamByName('p_skill').AsString:=Memo1Skills.Lines[i];
					UniSPInsertSkillShow.ParamByName('p_skill_id').AsInteger:=null;
					UniSPInsertSkillShow.ExecSQL;
					end;
		end;
	if isJob7Active then
		begin
			UniSPInsertExperiences.Close;
			UniSPInsertExperiences.ParamByName('p_flag').AsString := 'resume_id';
			UniSPInsertExperiences.ParamByName('p_resume_id').AsInteger := FResumeID;
//			UniSPInsertExperiences.ParamByName('p_job_order').AsInteger := 7;
			UniSPInsertExperiences.ParamByName('p_job_position').AsString := Edit7Name.Text;
			UniSPInsertExperiences.ParamByName('p_start_date').AsDateTime :=CalendarPickerB7.Date;
			UniSPInsertExperiences.ParamByName('p_end_date').AsDateTime := CalendarPickerE7.Date;
			UniSPInsertExperiences.ParamByName('p_employer').AsString := Edit7Company.Text;
			UniSPInsertExperiences.ParamByName('p_resp').AsMemo := RichEdit7.Text;
			UniSPInsertExperiences.ParamByName('p_benefits').AsString := Edit7Benefits.Text;
			UniSPInsertExperiences.ParamByName('p_other').AsMemo := Edit7Bottom.Text;
			UniSPInsertExperiences.ExecSQL;
			for i := 0 to Memo1Skills.Lines.Count - 1 do
				if not FormMain.IsEmpty(Memo1Skills.Lines[i]) then
					begin
					UniSPInsertSkillShow.Close;
					UniSPInsertSkillShow.ParamByName('p_experience_id').AsInteger:=UniSPInsertExperiences.ParamByName('p_experience_id').Value;
					UniSPInsertSkillShow.ParamByName('p_skill').AsString:=Memo1Skills.Lines[i];
					UniSPInsertSkillShow.ParamByName('p_skill_id').AsInteger:=null;
					UniSPInsertSkillShow.ExecSQL;
					end;
		end;
	if isJob8Active then
		begin
			UniSPInsertExperiences.Close;
			UniSPInsertExperiences.ParamByName('p_flag').AsString := 'resume_id';
			UniSPInsertExperiences.ParamByName('p_resume_id').AsInteger := FResumeID;
//			UniSPInsertExperiences.ParamByName('p_job_order').AsInteger := 8;
			UniSPInsertExperiences.ParamByName('p_job_position').AsString := Edit8Name.Text;
			UniSPInsertExperiences.ParamByName('p_start_date').AsDateTime :=CalendarPickerB8.Date;
			UniSPInsertExperiences.ParamByName('p_end_date').AsDateTime := CalendarPickerE8.Date;
			UniSPInsertExperiences.ParamByName('p_employer').AsString := Edit8Company.Text;
			UniSPInsertExperiences.ParamByName('p_resp').AsMemo := RichEdit8.Text;
			UniSPInsertExperiences.ParamByName('p_benefits').AsString := Edit8Benefits.Text;
			UniSPInsertExperiences.ParamByName('p_other').AsMemo := Edit8Bottom.Text;
			UniSPInsertExperiences.ExecSQL;
			for i := 0 to Memo1Skills.Lines.Count - 1 do
				if not FormMain.IsEmpty(Memo1Skills.Lines[i]) then
					begin
					UniSPInsertSkillShow.Close;
					UniSPInsertSkillShow.ParamByName('p_experience_id').AsInteger:=UniSPInsertExperiences.ParamByName('p_experience_id').Value;
					UniSPInsertSkillShow.ParamByName('p_skill').AsString:=Memo1Skills.Lines[i];
					UniSPInsertSkillShow.ParamByName('p_skill_id').AsInteger:=null;
					UniSPInsertSkillShow.ExecSQL;
					end;
		end;
	if isJob9Active then
		begin
			UniSPInsertExperiences.Close;
			UniSPInsertExperiences.ParamByName('p_flag').AsString := 'resume_id';
			UniSPInsertExperiences.ParamByName('p_resume_id').AsInteger := FResumeID;
//			UniSPInsertExperiences.ParamByName('p_job_order').AsInteger := 9;
			UniSPInsertExperiences.ParamByName('p_job_position').AsString := Edit9Name.Text;
			UniSPInsertExperiences.ParamByName('p_start_date').AsDateTime :=CalendarPickerB9.Date;
			UniSPInsertExperiences.ParamByName('p_end_date').AsDateTime := CalendarPickerE9.Date;
			UniSPInsertExperiences.ParamByName('p_employer').AsString := Edit9Company.Text;
			UniSPInsertExperiences.ParamByName('p_resp').AsMemo := RichEdit9.Text;
			UniSPInsertExperiences.ParamByName('p_benefits').AsString := Edit9Benefits.Text;
			UniSPInsertExperiences.ParamByName('p_other').AsMemo := Edit9Bottom.Text;
			UniSPInsertExperiences.ExecSQL;
			for i := 0 to Memo1Skills.Lines.Count - 1 do
				if not FormMain.IsEmpty(Memo1Skills.Lines[i]) then
					begin
					UniSPInsertSkillShow.Close;
					UniSPInsertSkillShow.ParamByName('p_experience_id').AsInteger:=UniSPInsertExperiences.ParamByName('p_experience_id').Value;
					UniSPInsertSkillShow.ParamByName('p_skill').AsString:=Memo1Skills.Lines[i];
					UniSPInsertSkillShow.ParamByName('p_skill_id').AsInteger:=null;
					UniSPInsertSkillShow.ExecSQL;
					end;
		end;
	if isJob10Active then
		begin
			UniSPInsertExperiences.Close;
			UniSPInsertExperiences.ParamByName('p_flag').AsString := 'resume_id';
			UniSPInsertExperiences.ParamByName('p_resume_id').AsInteger := FResumeID;
//			UniSPInsertExperiences.ParamByName('p_job_order').AsInteger := 10;
			UniSPInsertExperiences.ParamByName('p_job_position').AsString := Edit10Name.Text;
			UniSPInsertExperiences.ParamByName('p_start_date').AsDateTime :=CalendarPickerB10.Date;
			UniSPInsertExperiences.ParamByName('p_end_date').AsDateTime := CalendarPickerE10.Date;
			UniSPInsertExperiences.ParamByName('p_employer').AsString := Edit10Company.Text;
			UniSPInsertExperiences.ParamByName('p_resp').AsMemo := RichEdit10.Text;
			UniSPInsertExperiences.ParamByName('p_benefits').AsString := Edit10Benefits.Text;
			UniSPInsertExperiences.ParamByName('p_other').AsMemo := Edit10Bottom.Text;
			UniSPInsertExperiences.ExecSQL;
			for i := 0 to Memo1Skills.Lines.Count - 1 do
				if not FormMain.IsEmpty(Memo1Skills.Lines[i]) then
					begin
					UniSPInsertSkillShow.Close;
					UniSPInsertSkillShow.ParamByName('p_experience_id').AsInteger:=UniSPInsertExperiences.ParamByName('p_experience_id').Value;
					UniSPInsertSkillShow.ParamByName('p_skill').AsString:=Memo1Skills.Lines[i];
					UniSPInsertSkillShow.ParamByName('p_skill_id').AsInteger:=null;
					UniSPInsertSkillShow.ExecSQL;
					end;
		end;
	Result:=true;
	except
		on E: Exception do
		begin
			ShowMessage('Ошибка во время вставки в experiences: ' + E.Message);
			Result := false;
		end;
	end;
end;
end.
