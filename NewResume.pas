unit NewResume;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, System.DateUtils,
	Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, MemDS, DBAccess, Uni,
	Vcl.StdCtrls, Vcl.Buttons, Vcl.WinXCalendars, Vcl.ComCtrls;

type
  TFormNewResume = class(TForm)
    BitBtnClose: TBitBtn;
    BitBtnSave: TBitBtn;
    UniGetResume: TUniQuery;
    PageControlUA: TPageControl;
    TabSheetMainUA: TTabSheet;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    EditNameUA: TEdit;
    EditOpportunityUA: TEdit;
    EditPlaceUA: TEdit;
    EditPhonesUA: TEdit;
    TabSheetJob1UA: TTabSheet;
    Edit1DatesUA: TEdit;
    Edit1NameUA: TEdit;
    Edit1CompanyUA: TEdit;
    Edit1BenefitsUA: TEdit;
    Memo1SkillsUA: TMemo;
    TabSheetJob2UA: TTabSheet;
    Edit2DatesUA: TEdit;
    Edit2NameUA: TEdit;
    Edit2CompanyUA: TEdit;
    Edit2BenefitsUA: TEdit;
    Memo2SkillsUA: TMemo;
    TabSheetJob3UA: TTabSheet;
    Edit3DatesUA: TEdit;
    Edit3NameUA: TEdit;
    Edit3CompanyUA: TEdit;
    Edit3BenefitsUA: TEdit;
    Memo3SkillsUA: TMemo;
    TabSheetJob4UA: TTabSheet;
    Edit4DatesUA: TEdit;
    Edit4NameUA: TEdit;
    Edit4CompanyUA: TEdit;
    Edit4BenefitsUA: TEdit;
    Memo4SkillsUA: TMemo;
    TabSheetJob5UA: TTabSheet;
    Edit5DatesUA: TEdit;
    Edit5NameUA: TEdit;
    Edit5CompanyUA: TEdit;
    Edit5BenefitsUA: TEdit;
    Memo5SkillsUA: TMemo;
    TabSheetJob6UA: TTabSheet;
    Edit6BenefitsUA: TEdit;
    Edit6DatesUA: TEdit;
    Edit6NameUA: TEdit;
    Edit6CompanyUA: TEdit;
    Memo6SkillsUA: TMemo;
    TabSheetJob7UA: TTabSheet;
    Edit7BenefitsUA: TEdit;
    Edit7DatesUA: TEdit;
    Edit7NameUA: TEdit;
    Edit7CompanyUA: TEdit;
    Memo7SkillsUA: TMemo;
    TabSheetJob8UA: TTabSheet;
    Edit8BenefitsUA: TEdit;
    Edit8DatesUA: TEdit;
    Edit8NameUA: TEdit;
    Edit8CompanyUA: TEdit;
    Memo8SkillsUA: TMemo;
    TabSheetJob9UA: TTabSheet;
    Edit9BenefitsUA: TEdit;
    Edit9DatesUA: TEdit;
    Edit9NameUA: TEdit;
    Edit9CompanyUA: TEdit;
    Memo9SkillsUA: TMemo;
    TabSheet10UA: TTabSheet;
    Edit10BenefitsUA: TEdit;
    Edit10DatesUA: TEdit;
    Edit10NameUA: TEdit;
    Edit10CompanyUA: TEdit;
    Memo10SkillsUA: TMemo;
    PageControl: TPageControl;
    TabSheetMainTR: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label14: TLabel;
    EditName: TEdit;
    EditOpportunity: TEdit;
    EditPlace: TEdit;
    EditPhones: TEdit;
    CBRegion: TComboBox;
    CBLang: TComboBox;
    TabSheetJob1TR: TTabSheet;
    Edit1Dates: TEdit;
    Edit1Name: TEdit;
    Edit1Company: TEdit;
    CalendarPickerB1: TCalendarPicker;
    CalendarPickerE1: TCalendarPicker;
    Edit1Benefits: TEdit;
    TabSheetJob2TR: TTabSheet;
    Edit2Dates: TEdit;
    Edit2Name: TEdit;
    Edit2Company: TEdit;
    CalendarPickerB2: TCalendarPicker;
    CalendarPickerE2: TCalendarPicker;
    Edit2Benefits: TEdit;
    TabSheetJob3TR: TTabSheet;
    Edit3Dates: TEdit;
    Edit3Name: TEdit;
    Edit3Company: TEdit;
    CalendarPickerB3: TCalendarPicker;
    CalendarPickerE3: TCalendarPicker;
    Edit3Benefits: TEdit;
    TabSheetJob4TR: TTabSheet;
    Edit4Dates: TEdit;
    Edit4Name: TEdit;
    Edit4Company: TEdit;
    CalendarPickerB4: TCalendarPicker;
    CalendarPickerE4: TCalendarPicker;
    Edit4Benefits: TEdit;
    TabSheetJob5TR: TTabSheet;
    Edit5Dates: TEdit;
    Edit5Name: TEdit;
    Edit5Company: TEdit;
    CalendarPickerB5: TCalendarPicker;
    CalendarPickerE5: TCalendarPicker;
    Edit5Benefits: TEdit;
    TabSheetJob6TR: TTabSheet;
    Edit6Benefits: TEdit;
    Edit6Dates: TEdit;
    Edit6Name: TEdit;
    Edit6Company: TEdit;
    CalendarPickerB6: TCalendarPicker;
    CalendarPickerE6: TCalendarPicker;
    TabSheetJob7TR: TTabSheet;
    Edit7Benefits: TEdit;
    CalendarPickerB7: TCalendarPicker;
    CalendarPickerE7: TCalendarPicker;
    Edit7Dates: TEdit;
    Edit7Name: TEdit;
    Edit7Company: TEdit;
    TabSheetJob8TR: TTabSheet;
    Edit8Benefits: TEdit;
    CalendarPickerB8: TCalendarPicker;
    CalendarPickerE8: TCalendarPicker;
    Edit8Dates: TEdit;
    Edit8Name: TEdit;
    Edit8Company: TEdit;
    TabSheetJob9TR: TTabSheet;
    Edit9Benefits: TEdit;
    Edit9Dates: TEdit;
    CalendarPickerB9: TCalendarPicker;
    CalendarPickerE9: TCalendarPicker;
    Edit9Name: TEdit;
    Edit9Company: TEdit;
    TabSheetJob10TR: TTabSheet;
    Edit10Benefits: TEdit;
    CalendarPickerB10: TCalendarPicker;
    CalendarPickerE10: TCalendarPicker;
    Edit10Dates: TEdit;
    Edit10Name: TEdit;
    Edit10Company: TEdit;
    UniGetFooters: TUniQuery;
    TabSheetFooterUA: TTabSheet;
    StaticText1: TStaticText;
    EditArticle1UA: TEdit;
    EditArticle2UA: TEdit;
    EditArticle3UA: TEdit;
    EditArticle4UA: TEdit;
    EditArticle1: TEdit;
    EditArticle2: TEdit;
    EditArticle3: TEdit;
    EditArticle4: TEdit;
    StaticText3: TStaticText;
    Memo1Skills: TMemo;
    Memo2Skills: TMemo;
    Memo3Skills: TMemo;
    Memo4Skills: TMemo;
    Memo5Skills: TMemo;
    Memo6Skills: TMemo;
    Memo7Skills: TMemo;
    Memo8Skills: TMemo;
    Memo9Skills: TMemo;
    Memo10Skills: TMemo;
    UniGetTemplate: TUniQuery;
    UniGetSkills: TUniQuery;
    UniGetJobs: TUniQuery;
    Label11: TLabel;
    BitBtnCopy: TBitBtn;
    UniSPInsertResume: TUniStoredProc;
    UniGetCopyResumeID: TUniQuery;
    EditLangRU: TEdit;
    EditRegionRU: TEdit;
    UniSPInsertExperiences: TUniStoredProc;
    UniSPInsertSkillShow: TUniStoredProc;
    UniSPDeleteExpSkills: TUniStoredProc;
    StaticText2: TStaticText;
    StaticText4: TStaticText;
    StaticText5: TStaticText;
    StaticText6: TStaticText;
    StaticText7: TStaticText;
    StaticText8: TStaticText;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    Label77: TLabel;
    Label78: TLabel;
    Label79: TLabel;
    Label80: TLabel;
    Label81: TLabel;
    Label82: TLabel;
    Label83: TLabel;
    Label84: TLabel;
    Label85: TLabel;
    Label86: TLabel;
    Label87: TLabel;
    Label88: TLabel;
    Label89: TLabel;
    Label90: TLabel;
    Label91: TLabel;
    Label92: TLabel;
    Label93: TLabel;
    Label94: TLabel;
    Label95: TLabel;
    Label96: TLabel;
    Label97: TLabel;
    Label98: TLabel;
    Label99: TLabel;
    Label100: TLabel;
    CBPhones: TComboBox;
    BitBtn2: TBitBtn;
    UniGetTemplateFooters: TUniQuery;
    RichEditor: TRichEdit;
    CBWordWrap: TCheckBox;
    RichEdit1: TRichEdit;
    RichEdit2: TRichEdit;
    RichEdit3: TRichEdit;
    RichEdit4: TRichEdit;
    RichEdit1UA: TRichEdit;
    RichEdit2UA: TRichEdit;
    RichEdit3UA: TRichEdit;
    RichEdit4UA: TRichEdit;
    RichEdit1RespUA: TRichEdit;
    RichEdit2RespUA: TRichEdit;
    RichEdit3RespUA: TRichEdit;
    RichEdit4RespUA: TRichEdit;
    RichEdit5RespUA: TRichEdit;
    RichEdit6RespUA: TRichEdit;
    RichEdit7RespUA: TRichEdit;
    RichEdit8RespUA: TRichEdit;
    RichEdit9RespUA: TRichEdit;
    RichEdit10RespUA: TRichEdit;
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
    RichEditorUA: TRichEdit;
    CBWordWrapUA: TCheckBox;
    Label101: TLabel;
    Label102: TLabel;
    Label103: TLabel;
    Label104: TLabel;
    Label105: TLabel;
    Label106: TLabel;
    Label107: TLabel;
    Label108: TLabel;
    Label109: TLabel;
    Label110: TLabel;
    Label111: TLabel;
    Label112: TLabel;
		Label113: TLabel;
    Label114: TLabel;
    Label115: TLabel;
    Label116: TLabel;
    Label117: TLabel;
    RichEdit1Other: TRichEdit;
    RichEdit2Other: TRichEdit;
    RichEdit3Other: TRichEdit;
    RichEdit4Other: TRichEdit;
    RichEdit5Other: TRichEdit;
    RichEdit6Other: TRichEdit;
    RichEdit7Other: TRichEdit;
    RichEdit8Other: TRichEdit;
    RichEdit9Other: TRichEdit;
    RichEdit10Other: TRichEdit;
    RichEdit1OtherUA: TRichEdit;
    RichEdit2OtherUA: TRichEdit;
    RichEdit3OtherUA: TRichEdit;
    RichEdit4OtherUA: TRichEdit;
    Label118: TLabel;
    Label119: TLabel;
    RichEdit5OtherUA: TRichEdit;
    RichEdit6OtherUA: TRichEdit;
    Label120: TLabel;
    Label121: TLabel;
    Label122: TLabel;
    Label123: TLabel;
    RichEdit7OtherUA: TRichEdit;
    RichEdit8OtherUA: TRichEdit;
    RichEdit9OtherUA: TRichEdit;
    RichEdit10OtherUA: TRichEdit;
    Label124: TLabel;
    Label125: TLabel;
    Label126: TLabel;
    Label127: TLabel;
    Label128: TLabel;
    Label129: TLabel;
    Label130: TLabel;
    Label131: TLabel;
    Label132: TLabel;
    Label133: TLabel;
    Label134: TLabel;
    UniGetTemplateJobs: TUniQuery;
    UniGetCopyResumeIDID: TIntegerField;
    UniGetSkillsid: TIntegerField;
    UniGetSkillsexperience_id: TIntegerField;
    UniGetSkillsskill: TWideStringField;
    UniGetSkillscategory: TWideStringField;
    UniGetSkillscategory_id: TIntegerField;
    UniGetSkillscreated: TDateTimeField;
    UniGetSkillsupdated: TDateTimeField;
    UniGetTemplateid: TIntegerField;
    UniGetTemplatename: TWideStringField;
    UniGetTemplatejob_opportunity: TWideStringField;
    UniGetTemplatejob_place: TWideStringField;
    UniGetTemplatephone_numbers_text: TWideStringField;
    UniGetTemplatetemplate_introduction: TWideMemoField;
    UniGetTemplatearchived: TBooleanField;
    UniGetTemplatecreated: TDateTimeField;
    UniGetTemplateupdated: TDateTimeField;
    UniGetFootersid: TIntegerField;
    UniGetFootersresume_id: TIntegerField;
    UniGetFootersfooter_header: TWideStringField;
    UniGetFootersfooter_text: TWideMemoField;
    UniGetFootersfooter_order: TIntegerField;
    UniGetFooterscreated: TDateTimeField;
    UniGetFootersupdated: TDateTimeField;
    UniGetTemplateFootersid: TIntegerField;
    UniGetTemplateFooterstemplate_id: TIntegerField;
    UniGetTemplateFootersfooter_header: TWideStringField;
    UniGetTemplateFootersfooter_text: TWideMemoField;
    UniGetTemplateFootersfooter_order: TIntegerField;
    UniGetTemplateFooterscreated: TDateTimeField;
    UniGetTemplateFootersupdated: TDateTimeField;
    UniGetResumeid: TIntegerField;
    UniGetResumename: TWideStringField;
    UniGetResumelang: TWideStringField;
    UniGetResumeregion_id: TWideStringField;
    UniGetResumejob_opportunity: TWideStringField;
    UniGetResumejob_place: TWideStringField;
    UniGetResumephone_numbers_text: TWideStringField;
    UniGetResumecv_docx_url: TWideStringField;
    UniGetResumecv_pdf_url: TWideStringField;
    UniGetResumeresume_introduction: TWideMemoField;
    UniGetResumearchived: TBooleanField;
    UniGetResumecreated: TDateTimeField;
    UniGetResumeupdated: TDateTimeField;
    UniGetJobsid: TIntegerField;
    UniGetJobsjob_position: TWideStringField;
    UniGetJobsstart_date: TDateField;
    UniGetJobsend_date: TDateField;
    UniGetJobsemployer: TWideStringField;
    UniGetJobsresponsibilities: TWideMemoField;
    UniGetJobsbenefits: TWideStringField;
    UniGetJobsother: TWideMemoField;
    UniGetJobscreated: TDateTimeField;
    UniGetJobsupdated: TDateTimeField;
    UniGetJobsorder_position: TLargeintField;
    UniGetTemplateJobsid: TIntegerField;
    UniGetTemplateJobsjob_position: TWideStringField;
    UniGetTemplateJobsstart_date: TDateField;
    UniGetTemplateJobsend_date: TDateField;
    UniGetTemplateJobsemployer: TWideStringField;
    UniGetTemplateJobsresponsibilities: TWideMemoField;
    UniGetTemplateJobsbenefits: TWideStringField;
    UniGetTemplateJobsother: TWideMemoField;
    UniGetTemplateJobscreated: TDateTimeField;
    UniGetTemplateJobsupdated: TDateTimeField;
    UniGetTemplateJobsorder_position: TLargeintField;
		procedure PageControlChange(Sender: TObject);
    procedure PageControlUAChange(Sender: TObject);
    procedure BitBtnSaveClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CalendarPickerB1CloseUp(Sender: TObject);
    procedure CalendarPickerE1CloseUp(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure CalendarPickerB2CloseUp(Sender: TObject);
    procedure CalendarPickerE2CloseUp(Sender: TObject);
    procedure CalendarPickerB3CloseUp(Sender: TObject);
    procedure CalendarPickerE3CloseUp(Sender: TObject);
    procedure CalendarPickerB4CloseUp(Sender: TObject);
    procedure CalendarPickerE4CloseUp(Sender: TObject);
    procedure CalendarPickerB5CloseUp(Sender: TObject);
    procedure CalendarPickerE5CloseUp(Sender: TObject);
    procedure CalendarPickerB6CloseUp(Sender: TObject);
    procedure CalendarPickerE6CloseUp(Sender: TObject);
    procedure CalendarPickerB7CloseUp(Sender: TObject);
    procedure CalendarPickerE7CloseUp(Sender: TObject);
    procedure CalendarPickerB8CloseUp(Sender: TObject);
    procedure CalendarPickerE8CloseUp(Sender: TObject);
    procedure CalendarPickerB9CloseUp(Sender: TObject);
    procedure CalendarPickerE9CloseUp(Sender: TObject);
    procedure CalendarPickerB10CloseUp(Sender: TObject);
    procedure CalendarPickerE10CloseUp(Sender: TObject);
    procedure BitBtnCopyClick(Sender: TObject);
    procedure CalendarPickerE1Change(Sender: TObject);
    procedure CalendarPickerB2Change(Sender: TObject);
    procedure CalendarPickerE2Change(Sender: TObject);
    procedure CalendarPickerB3Change(Sender: TObject);
    procedure CalendarPickerE3Change(Sender: TObject);
    procedure CalendarPickerB4Change(Sender: TObject);
    procedure CalendarPickerE4Change(Sender: TObject);
    procedure CalendarPickerB5Change(Sender: TObject);
    procedure CalendarPickerE5Change(Sender: TObject);
    procedure CalendarPickerB7Change(Sender: TObject);
    procedure CalendarPickerB8Change(Sender: TObject);
    procedure CalendarPickerE8Change(Sender: TObject);
    procedure CalendarPickerB9Change(Sender: TObject);
    procedure CalendarPickerE9Change(Sender: TObject);
		procedure CalendarPickerB10Change(Sender: TObject);
		procedure CalendarPickerE10Change(Sender: TObject);
		procedure CBLangChange(Sender: TObject);
		procedure BitBtn2Click(Sender: TObject);
		procedure CBRegionChange(Sender: TObject);
		procedure CBWordWrapClick(Sender: TObject);
		procedure CBWordWrapUAClick(Sender: TObject);
	private
		CBLang_First_Value, CBRegion_First_Value: string;
		CBRegionTR_ID:string;
		FootersAreActive: array [1 .. 4] of boolean;
		JobsAreActive: array [1 .. 10] of boolean;
		CalendarPickerB: array [1 .. 10] of TDate;
		CalendarPickerE: array [1 .. 10] of TDate;
		FResumeID : integer;
		IsJob1Active, IsJob2Active, IsJob3Active, IsJob4Active, IsJob5Active,
		IsJob6Active, IsJob7Active, IsJob8Active, IsJob9Active,
		IsJob10Active: boolean;
		procedure ChangeDates1;
    procedure ChangeDates2;
    procedure ChangeDates3;
    procedure ChangeDates4;
    procedure ChangeDates5;
    procedure ChangeDates6;
    procedure ChangeDates7;
    procedure ChangeDates8;
		procedure ChangeDates9;
		procedure ChangeDates10;
    procedure InitCBLanguages; // Инициализация CBLangTR
    procedure InitCBRegions;   // Инициализация CBRegionsTR
    function isFormValuesGood: boolean; //Проверка значений при сохранении
    function SaveValues: boolean;  // Сохранение всех значений
    function SaveResume : boolean; // Сохранение значений Resume
		function SaveJobs: boolean;    // Сохранение значений Jobs
//    procedure GetFootersFromID; // Получить значения футера из другого резюме, указав краткое имя и язык
//    procedure GetResumefromID;       // Получить значения первого окна Resume указав ResumeID для копирования
    procedure GetResumeTRfromUA;
    procedure CopyTRfromUA;
    procedure SynchroRegionLang; // Копировать резюме с UA в . Копируются все поля одним нажатием
    function isMainFormGood:boolean;
    function isJobGood:boolean;
    function isJobDatesGood:boolean;
    function isJobDatesValid: boolean;
    function isJobPeriodsValid: boolean;
  public
    //TelephoneByName:string;
		function NVL(Value:variant):string;
		procedure SetEmpty;     // Очистить все поля для TR
    procedure SetEmptyUA;     // Очистить все поля для UA
    procedure SetFormValues;  // Установить все значения перед открытием окна
    procedure GetValuesFromTemplate(TemplateId: integer); //Получить значения из шаблона - вызов внутри модуля
    procedure GetValuesFromResume(const ResumeID:integer);
    function Translate(const S:string; const lang:string):string;
    function GoogleTranslate(const S:string; const lang:string):string;
  end;

var
  FormNewResume: TFormNewResume;

implementation

{$R *.dfm}

uses MainForm;

procedure TFormNewResume.SetFormValues;
var
  i: integer;
begin
SetEmptyUA;
SetEmpty;
PageControlUA.ActivePage := TabSheetMainUA;
PageControl.ActivePage := TabSheetMainTR;
CBLang.Text := 'UA';
CBRegion.Text := 'UA';
for i := 1 to 4 do
  FootersAreActive[i] := false;
for i := 1 to 10 do
  JobsAreActive[i] := false;
PageControl.ActivePageIndex:=0;
FormMain.UniParameterByName.Close;
FormMain.UniParameterByName.ParamByName('p_name').AsString:=CBLang.Text;
FormMain.UniParameterByName.Open;
CBPhones.Clear;
FormMain.UniTelephones.Close;
FormMain.UniTelephones.Open;
while not FormMain.UniTelephones.Eof do
  begin
    CBPhones.Items.Add(FormMain.UniTelephones['value']);
    FormMain.UniTelephones.Next;
  end;
//TelephoneByName:=FormMain.UniParameterByName['value'];
end;

procedure TFormNewResume.SynchroRegionLang;
begin
//
end;

function TFormNewResume.Translate(const S: string; const Lang:string): string;
begin
if FormMain.IsEmpty(S)
  then Result:=''
  else
		begin
		FormMain.UniTranslation.Close;
		FormMain.UniTranslation.ParamByName('p_word').AsString:=S;
		FormMain.UniTranslation.Open;
		if lang = 'UA' then
			if VarIsNull(FormMain.UniTranslation['UA']) then Result:=GoogleTranslate(S,lang) else Result:=FormMain.UniTranslation['UA'];
		if lang = 'EN' then
			if VarIsNull(FormMain.UniTranslation['EN']) then Result:=GoogleTranslate(S,lang) else Result:=FormMain.UniTranslation['EN'];
		if lang = 'HR' then
			if VarIsNull(FormMain.UniTranslation['HR']) then Result:=GoogleTranslate(S,lang) else Result:=FormMain.UniTranslation['HR'];
		if lang = 'PL' then
			if VarIsNull(FormMain.UniTranslation['PL']) then Result:=GoogleTranslate(S,lang) else Result:=FormMain.UniTranslation['PL'];
		if lang = 'DE' then
			if VarIsNull(FormMain.UniTranslation['DE']) then Result:=GoogleTranslate(S,lang) else Result:=FormMain.UniTranslation['DE'];
    Result:=S;
    end;
end;

procedure TFormNewResume.FormCreate(Sender: TObject);
begin
  PageControl.ActivePage := TabSheetMainTR;
  InitCBLanguages;
  InitCBRegions;
end;

procedure TFormNewResume.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F2 then
    BitBtnSave.Click;
end;


procedure TFormNewResume.PageControlChange(Sender: TObject);
begin
  PageControlUA.ActivePageIndex := PageControl.ActivePageIndex;
end;

procedure TFormNewResume.PageControlUAChange(Sender: TObject);
begin
  PageControl.ActivePageIndex := PageControlUA.ActivePageIndex;
end;

procedure TFormNewResume.InitCBLanguages;
begin
  CBLang.Clear;
  FormMain.UniLanguages.Close;
  FormMain.UniLanguages.Open;
  CBLang.Text := FormMain.UniLanguages['lang'];
  CBLang_First_Value := FormMain.UniLanguages['lang'];
  while not FormMain.UniLanguages.EOF do
  begin
    CBLang.Items.Add(FormMain.UniLanguages['lang']);
    FormMain.UniLanguages.Next;
  end;
  FormMain.UniLanguages.Close;
end;

procedure TFormNewResume.InitCBRegions;
begin
CBRegion.Clear;
FormMain.UniRegions.Close;
FormMain.UniRegions.Open;
CBRegion.Text := FormMain.UniRegions['region_name'];
CBRegionTR_ID:='UA';
CBRegion_First_Value := FormMain.UniRegions['region_name'];
while not FormMain.UniRegions.EOF do
  begin
    CBRegion.Items.Add(FormMain.UniRegions['region_name']);
    FormMain.UniRegions.Next;
  end;
end;

function TFormNewResume.NVL(Value: variant): string;
begin
if VarIsNull(Value) then Result:='' else Result:=Value;
end;

procedure TFormNewResume.SetEmpty;
var AF: TFormatSettings;
begin
  AF := TFormatSettings.Create('de-DE');
  AF.DateSeparator:='.';
  EditName.Text := '';
  EditOpportunity.Text := '';
  EditPlace.Text := '';
	EditPhones.Text := '';
	RichEditor.Clear;
  EditLangRU.Text := 'UA';
  EditRegionRU.Text := 'UA';

	RichEdit1.Text := '';
	RichEdit2.Text := '';
	RichEdit3.Text := '';
  RichEdit4.Text := '';
	EditArticle1.Text := '';
  EditArticle2.Text := '';
  EditArticle3.Text := '';
  EditArticle4.Text := '';

  Edit1Dates.Text := '';
  Edit1Name.Text := '';
  Edit1Company.Text := '';
  RichEdit1Resp.Text := '';
  Edit1Benefits.Text := '';
	Memo1Skills.Text := '';
	RichEdit1Other.Text := '';

  Edit2Dates.Text := '';
  Edit2Name.Text := '';
  Edit2Company.Text := '';
  RichEdit2Resp.Text := '';
  Edit2Benefits.Text := '';
	Memo2Skills.Text := '';
	RichEdit2Other.Text := '';

	Edit3Dates.Text := '';
	Edit3Name.Text := '';
	Edit3Company.Text := '';
	RichEdit3Resp.Text := '';
	Edit3Benefits.Text := '';
	Memo3Skills.Text := '';
	RichEdit3Other.Text := '';

  Edit4Dates.Text := '';
  Edit4Name.Text := '';
  Edit4Company.Text := '';
  RichEdit4Resp.Text := '';
  Edit4Benefits.Text := '';
  Memo4Skills.Text := '';
  RichEdit4Other.Text := '';

  Edit5Dates.Text := '';
  Edit5Name.Text := '';
  Edit5Company.Text := '';
  RichEdit5Resp.Text := '';
  Edit5Benefits.Text := '';
  Memo5Skills.Text := '';
  RichEdit5Other.Text := '';

  Edit6Dates.Text := '';
  Edit6Name.Text := '';
  Edit6Company.Text := '';
  RichEdit6Resp.Text := '';
  Edit6Benefits.Text := '';
  Memo6Skills.Text := '';
  RichEdit6Other.Text := '';

  Edit7Dates.Text := '';
  Edit7Name.Text := '';
  Edit7Company.Text := '';
  RichEdit7Resp.Text := '';
  Edit7Benefits.Text := '';
  Memo7Skills.Text := '';
  RichEdit7Other.Text := '';

  Edit8Dates.Text := '';
  Edit8Name.Text := '';
  Edit8Company.Text := '';
  RichEdit8Resp.Text := '';
  Edit8Benefits.Text := '';
  Memo8Skills.Text := '';
  RichEdit8Other.Text := '';

  Edit9Dates.Text := '';
  Edit9Name.Text := '';
  Edit9Company.Text := '';
  RichEdit9Resp.Text := '';
  Edit9Benefits.Text := '';
  Memo9Skills.Text := '';
  RichEdit9Other.Text := '';

  Edit10Dates.Text := '';
  Edit10Name.Text := '';
  Edit10Company.Text := '';
  RichEdit10Resp.Text := '';
  Edit10Benefits.Text := '';
  Memo10Skills.Text := '';
  RichEdit10Other.Text := '';

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

procedure TFormNewResume.SetEmptyUA;
var i:integer;
begin
  EditNameUA.Text := '';
  EditOpportunityUA.Text := '';
  EditPlaceUA.Text := '';
  EditPhonesUA.Text := '';
  RichEditorUA.Text := '';

	RichEdit1UA.Text := '';
	RichEdit2UA.Text := '';
  RichEdit3UA.Text := '';
  RichEdit4UA.Text := '';
  EditArticle1UA.Text := '';
  EditArticle2UA.Text := '';
	EditArticle3UA.Text := '';
	EditArticle4UA.Text := '';
	for i:=1 to 10 do
		begin
		CalendarPickerB[i]:=0.0;
		CalendarPickerE[i]:=0.0;
    end;
	Edit1DatesUA.Text := '';
	Edit1NameUA.Text := '';
	Edit1CompanyUA.Text := '';
	RichEdit1RespUA.Text := '';
	Edit1BenefitsUA.Text := ''; Memo1SkillsUA.Text := '';
	RichEdit1OtherUA.Text := '';

	Edit2DatesUA.Text := '';  Edit2NameUA.Text := '';  Edit2CompanyUA.Text := '';
	RichEdit2RespUA.Text := '';
	Edit2BenefitsUA.Text := '';  Memo2SkillsUA.Text := '';
	RichEdit2OtherUA.Text := '';

	Edit3DatesUA.Text := '';  Edit3NameUA.Text := '';  Edit3CompanyUA.Text := '';
	RichEdit3RespUA.Text := '';
	Edit3BenefitsUA.Text := '';  Memo3SkillsUA.Text := '';
	RichEdit3OtherUA.Text := '';

	Edit4DatesUA.Text := '';  Edit4NameUA.Text := '';  Edit4CompanyUA.Text := '';
	RichEdit4RespUA.Text := '';
  Edit4BenefitsUA.Text := '';  Memo4SkillsUA.Text := '';  RichEdit4OtherUA.Text := '';

	Edit5DatesUA.Text := '';  Edit5NameUA.Text := '';  Edit5CompanyUA.Text := '';
	RichEdit5RespUA.Text := '';
  Edit5BenefitsUA.Text := '';  Memo5SkillsUA.Text := '';  RichEdit5OtherUA.Text := '';

	Edit6DatesUA.Text := '';  Edit6NameUA.Text := '';  Edit6CompanyUA.Text := '';
	RichEdit6RespUA.Text := '';
  Edit6BenefitsUA.Text := '';  Memo6SkillsUA.Text := '';  RichEdit6OtherUA.Text := '';

	Edit7DatesUA.Text := '';  Edit7NameUA.Text := '';  Edit7CompanyUA.Text := '';
	RichEdit7RespUA.Text := '';
  Edit7BenefitsUA.Text := '';  Memo7SkillsUA.Text := '';  RichEdit7OtherUA.Text := '';

	Edit8DatesUA.Text := '';  Edit8NameUA.Text := '';  Edit8CompanyUA.Text := '';
	RichEdit8RespUA.Text := '';
  Edit8BenefitsUA.Text := '';  Memo8SkillsUA.Text := '';  RichEdit8OtherUA.Text := '';

	Edit9DatesUA.Text := '';  Edit9NameUA.Text := '';  Edit9CompanyUA.Text := '';
	RichEdit9RespUA.Text := '';
  Edit9BenefitsUA.Text := '';  Memo9SkillsUA.Text := '';  RichEdit9OtherUA.Text := '';

	Edit10DatesUA.Text := '';  Edit10NameUA.Text := '';  Edit10CompanyUA.Text := '';
	RichEdit10RespUA.Text := '';
  Edit10BenefitsUA.Text := '';  Memo10SkillsUA.Text := '';  RichEdit10OtherUA.Text := '';
end;


procedure TFormNewResume.GetResumeTRfromUA;
begin
  EditName.Text := EditNameUA.Text;
  EditOpportunity.Text := EditOpportunityUA.Text;
  EditPlace.Text := EditPlaceUA.Text;
	EditPhones.Text := EditPhonesUA.Text;
	RichEditor.Text := RichEditorUA.Text;
  EditLangRU.Text := 'UA';
  EditRegionRU.Text := 'UA';

  RichEdit1.Text := '';  RichEdit2.Text := '';  RichEdit3.Text := '';  RichEdit4.Text := '';
  EditArticle1.Text := '';  EditArticle2.Text := '';  EditArticle3.Text := '';  EditArticle4.Text := '';

  Edit1Dates.Text := '';  Edit1Name.Text := '';  Edit1Company.Text := ''; RichEdit1Resp.Text := '';
  Edit1Benefits.Text := ''; Memo1Skills.Text := ''; RichEdit1Other.Text := '';

  Edit2Dates.Text := '';  Edit2Name.Text := '';  Edit2Company.Text := '';  RichEdit2Resp.Text := '';
  Edit2Benefits.Text := '';  Memo2Skills.Text := '';  RichEdit2Other.Text := '';

  Edit3Dates.Text := '';  Edit3Name.Text := '';  Edit3Company.Text := '';  RichEdit3Resp.Text := '';
  Edit3Benefits.Text := '';  Memo3Skills.Text := '';  RichEdit3Other.Text := '';

  Edit4Dates.Text := '';  Edit4Name.Text := '';  Edit4Company.Text := '';  RichEdit4Resp.Text := '';
  Edit4Benefits.Text := '';  Memo4Skills.Text := '';  RichEdit4Other.Text := '';

  Edit5Dates.Text := '';  Edit5Name.Text := '';  Edit5Company.Text := '';  RichEdit5Resp.Text := '';
  Edit5Benefits.Text := '';  Memo5Skills.Text := '';  RichEdit5Other.Text := '';

  Edit6Dates.Text := '';  Edit6Name.Text := '';  Edit6Company.Text := '';  RichEdit6Resp.Text := '';
  Edit6Benefits.Text := '';  Memo6Skills.Text := '';  RichEdit6Other.Text := '';

  Edit7Dates.Text := '';  Edit7Name.Text := '';  Edit7Company.Text := '';  RichEdit7Resp.Text := '';
  Edit7Benefits.Text := '';  Memo7Skills.Text := '';  RichEdit7Other.Text := '';

  Edit8Dates.Text := '';  Edit8Name.Text := '';  Edit8Company.Text := '';  RichEdit8Resp.Text := '';
  Edit8Benefits.Text := '';  Memo8Skills.Text := '';  RichEdit8Other.Text := '';

  Edit9Dates.Text := '';  Edit9Name.Text := '';  Edit9Company.Text := '';  RichEdit9Resp.Text := '';
  Edit9Benefits.Text := '';  Memo9Skills.Text := '';  RichEdit9Other.Text := '';

  Edit10Dates.Text := '';  Edit10Name.Text := '';  Edit10Company.Text := '';  RichEdit10Resp.Text := '';
	Edit10Benefits.Text := '';  Memo10Skills.Text := '';  RichEdit10Other.Text := '';
end;



procedure TFormNewResume.BitBtn2Click(Sender: TObject);
begin
EditPhones.Text:=Trim(EditPhones.Text+' '+CBPhones.Text);
end;

procedure TFormNewResume.BitBtnCopyClick(Sender: TObject);
begin
EditName.Text := Translate(EditNameUA.Text,CBLang.Text);
EditOpportunity.Text := Translate(EditOpportunityUA.Text,CBLang.Text);
EditPlace.Text := Translate(EditPlaceUA.Text,CBLang.Text);
EditPhones.Text := Translate(EditPhonesUA.Text,CBLang.Text);
RichEditor.Text := Translate(RichEditorUA.Text,CBLang.Text);

EditArticle1.Text := Translate(EditArticle1UA.Text,CBLang.Text);
RichEdit1.Text := Translate(RichEdit1UA.Text,CBLang.Text);
EditArticle2.Text := Translate(EditArticle2UA.Text,CBLang.Text);
RichEdit2.Text := Translate(RichEdit2UA.Text,CBLang.Text);
EditArticle3.Text := Translate(EditArticle3UA.Text,CBLang.Text);
RichEdit3.Text := Translate(RichEdit3UA.Text,CBLang.Text);
EditArticle4.Text := Translate(EditArticle4UA.Text,CBLang.Text);
RichEdit4.Text := Translate(RichEdit4UA.Text,CBLang.Text);

Edit1Dates.Text  := Edit1DatesUA.Text;
if not (CalendarPickerB[1]=0.0) then CalendarPickerB1.Date:=CalendarPickerB[1];
if not (CalendarPickerE[1]=0.0) then CalendarPickerE1.Date:=CalendarPickerE[1];
Edit1Company.Text  := Edit1CompanyUA.Text;
Edit1Name.Text  := Edit1NameUA.Text;
RichEdit1Resp.Text  := Translate(RichEdit1RespUA.Text,CBLang.Text);
Edit1Benefits.Text := Translate(Edit1BenefitsUA.Text,CBLang.Text);
RichEdit1Other.Text := Translate(RichEdit1OtherUA.Text,CBLang.Text);
Memo1Skills.Text   :=Translate(Memo1SkillsUA.Text,CBLang.Text);

Edit2Dates.Text  := Edit2DatesUA.Text;
if not (CalendarPickerB[2]=0.0) then CalendarPickerB2.Date:=CalendarPickerB[2];
if not (CalendarPickerE[2]=0.0) then CalendarPickerE2.Date:=CalendarPickerE[2];
Edit2Company.Text  := Edit2CompanyUA.Text;
Edit2Name.Text  := Edit2NameUA.Text;
RichEdit2Resp.Text    := Translate(RichEdit2RespUA.Text,CBLang.Text);
Edit2Benefits.Text:= Translate(Edit2BenefitsUA.Text,CBLang.Text);
RichEdit2Other.Text  := Translate(RichEdit2OtherUA.Text,CBLang.Text);
Memo2Skills.Text    :=Translate(Memo2SkillsUA.Text,CBLang.Text);

Edit3Dates.Text  := Edit3DatesUA.Text;
if not (CalendarPickerB[3]=0.0) then CalendarPickerB3.Date:=CalendarPickerB[3];
if not (CalendarPickerE[3]=0.0) then CalendarPickerE3.Date:=CalendarPickerE[3];
Edit3Company.Text  := Edit3CompanyUA.Text;
Edit3Name.Text  := Edit3NameUA.Text;
RichEdit3Resp.Text    := Translate(RichEdit3RespUA.Text,CBLang.Text);
Edit3Benefits.Text:= Translate(Edit3BenefitsUA.Text,CBLang.Text);
RichEdit3Other.Text  := Translate(RichEdit3OtherUA.Text,CBLang.Text);
Memo3Skills.Text    :=Translate(Memo3SkillsUA.Text,CBLang.Text);

Edit4Dates.Text  := Edit4DatesUA.Text;
if not (CalendarPickerB[4]=0.0) then CalendarPickerB4.Date:=CalendarPickerB[4];
if not (CalendarPickerE[4]=0.0) then CalendarPickerE4.Date:=CalendarPickerE[4];
Edit4Company.Text  := Edit4CompanyUA.Text;
Edit4Name.Text  := Edit4NameUA.Text;
RichEdit4Resp.Text    := Translate(RichEdit4RespUA.Text,CBLang.Text);
Edit4Benefits.Text:= Translate(Edit4BenefitsUA.Text,CBLang.Text);
RichEdit4Other.Text  := Translate(RichEdit4OtherUA.Text,CBLang.Text);
Memo4Skills.Text    :=Translate(Memo4SkillsUA.Text,CBLang.Text);

Edit5Dates.Text  := Edit5DatesUA.Text;
if not (CalendarPickerB[5]=0.0) then CalendarPickerB5.Date:=CalendarPickerB[5];
if not (CalendarPickerE[5]=0.0) then CalendarPickerE5.Date:=CalendarPickerE[5];
Edit5Company.Text  := Edit5CompanyUA.Text;
Edit5Name.Text  := Edit5NameUA.Text;
RichEdit5Resp.Text    := Translate(RichEdit5RespUA.Text,CBLang.Text);
Edit5Benefits.Text:= Translate(Edit5BenefitsUA.Text,CBLang.Text);
RichEdit5Other.Text  := Translate(RichEdit5OtherUA.Text,CBLang.Text);
Memo5Skills.Text    :=Translate(Memo5SkillsUA.Text,CBLang.Text);

Edit6Dates.Text  := Edit6DatesUA.Text;
if not (CalendarPickerB[6]=0.0) then CalendarPickerB6.Date:=CalendarPickerB[6];
if not (CalendarPickerE[6]=0.0) then CalendarPickerE6.Date:=CalendarPickerE[6];
Edit6Company.Text  := Edit6CompanyUA.Text;
Edit6NameUA.Text  := Edit6NameUA.Text;
RichEdit6Resp.Text    := Translate(RichEdit6RespUA.Text,CBLang.Text);
Edit6Benefits.Text:= Translate(Edit6BenefitsUA.Text,CBLang.Text);
RichEdit6Other.Text  := Translate(RichEdit6OtherUA.Text,CBLang.Text);
Memo6Skills.Text    :=Translate(Memo6SkillsUA.Text,CBLang.Text);

Edit7Dates.Text  := Edit7DatesUA.Text;
if not (CalendarPickerB[7]=0.0) then CalendarPickerB7.Date:=CalendarPickerB[7];
if not (CalendarPickerE[7]=0.0) then CalendarPickerE7.Date:=CalendarPickerE[7];
Edit7Company.Text  := Edit7CompanyUA.Text;
Edit7Name.Text  := Edit7NameUA.Text;
RichEdit7Resp.Text    := Translate(RichEdit7RespUA.Text,CBLang.Text);
Edit7Benefits.Text:= Translate(Edit7BenefitsUA.Text,CBLang.Text);
RichEdit7Other.Text  := Translate(RichEdit7OtherUA.Text,CBLang.Text);
Memo7Skills.Text    :=Translate(Memo7SkillsUA.Text,CBLang.Text);

Edit8Dates.Text  := Edit8DatesUA.Text;
if not (CalendarPickerB[8]=0.0) then CalendarPickerB8.Date:=CalendarPickerB[8];
if not (CalendarPickerE[8]=0.0) then CalendarPickerE8.Date:=CalendarPickerE[8];
Edit8Company.Text  := Edit8CompanyUA.Text;
Edit8Name.Text  := Edit8NameUA.Text;
RichEdit8Resp.Text    := Translate(RichEdit8RespUA.Text,CBLang.Text);
Edit8Benefits.Text:= Translate(Edit8BenefitsUA.Text,CBLang.Text);
RichEdit8Other.Text  := Translate(RichEdit8OtherUA.Text,CBLang.Text);
Memo8Skills.Text    :=Translate(Memo8SkillsUA.Text,CBLang.Text);

Edit9Dates.Text  := Edit9DatesUA.Text;
if not (CalendarPickerB[9]=0.0) then CalendarPickerB9.Date:=CalendarPickerB[9];
if not (CalendarPickerE[9]=0.0) then CalendarPickerE9.Date:=CalendarPickerE[9];
Edit9Company.Text  := Edit9CompanyUA.Text;
Edit9Name.Text  := Edit9NameUA.Text;
RichEdit9Resp.Text    := Translate(RichEdit9RespUA.Text,CBLang.Text);
Edit9Benefits.Text:= Translate(Edit9BenefitsUA.Text,CBLang.Text);
RichEdit9Other.Text  := Translate(RichEdit9OtherUA.Text,CBLang.Text);
Memo9Skills.Text    :=Translate(Memo9SkillsUA.Text,CBLang.Text);

Edit10Dates.Text  := Edit10DatesUA.Text;
if not (CalendarPickerB[10]=0.0) then CalendarPickerB10.Date:=CalendarPickerB[10];
if not (CalendarPickerE[10]=0.0) then CalendarPickerE10.Date:=CalendarPickerE[10];
Edit10Company.Text  := Edit10CompanyUA.Text;
Edit10Name.Text  := Edit10NameUA.Text;
RichEdit10Resp.Text    := Translate(RichEdit10RespUA.Text,CBLang.Text);
Edit10Benefits.Text:= Translate(Edit10BenefitsUA.Text,CBLang.Text);
RichEdit10Other.Text  := Translate(RichEdit10OtherUA.Text,CBLang.Text);
Memo10Skills.Text    :=Translate(Memo10SkillsUA.Text,CBLang.Text);
end;

procedure TFormNewResume.BitBtnSaveClick(Sender: TObject);
begin
  if isFormValuesGood then
    ModalResult := mrOK
  else
  begin
    ModalResult := mrNone;
    exit;
  end;
  if SaveValues then
    ModalResult := mrOK
  else
  begin
    ModalResult := mrNone;
    exit;
  end;
end;

function TFormNewResume.SaveValues: boolean;
begin
CBRegionTR_ID:='UA';
FormMain.UniRegions.First;
while not FormMain.UniRegions.EOF do
  begin
    if CBRegion.Text = FormMain.UniRegions['region_name'] then CBRegionTR_ID:=FormMain.UniRegions['id'];
    FormMain.UniRegions.Next;
  end;
  try
  if not SaveResume then
    begin
      FormMain.Warning('Сбой при сохранении Resumes');
      Result := false;
      exit;
    end;
    if not SaveJobs then
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

function TFormNewResume.SaveResume:boolean;
begin
Result:=true;
try
  UniSPInsertResume.Prepare;
  UniSPInsertResume.ParamByName('p_name').AsString := trim(EditName.Text);
  UniSPInsertResume.ParamByName('p_lang').AsString := trim(CBLang.Text);
  UniSPInsertResume.ParamByName('p_region_id').AsString := CBRegionTR_ID;
  UniSPInsertResume.ParamByName('p_job_opportunity').AsString := Trim(EditOpportunity.Text);
  UniSPInsertResume.ParamByName('p_job_place').AsString := Trim(EditPlace.Text);
  UniSPInsertResume.ParamByName('p_phone_numbers_text').AsString := Trim(EditPhones.Text);
  UniSPInsertResume.ParamByName('p_resume_introduction').AsMemo := Trim(RichEditor.Text);
  UniSPInsertResume.ParamByName('p_footer_1_header').AsString := Trim(EditArticle1.Text);
	UniSPInsertResume.ParamByName('p_footer_1_text').AsMemo := Trim(RichEdit1.Text);
	UniSPInsertResume.ParamByName('p_footer_2_header').AsString := Trim(EditArticle2.Text);
	UniSPInsertResume.ParamByName('p_footer_2_text').AsMemo := Trim(RichEdit2.Text);
	UniSPInsertResume.ParamByName('p_footer_3_header').AsString := Trim(EditArticle3.Text);
	UniSPInsertResume.ParamByName('p_footer_3_text').AsMemo := Trim(RichEdit3.Text);
	UniSPInsertResume.ParamByName('p_footer_4_header').AsString := Trim(EditArticle4.Text);
  UniSPInsertResume.ParamByName('p_footer_4_text').AsMemo := Trim(RichEdit4.Text);
  UniSPInsertResume.ParamByName('p_archived').AsBoolean := false;
  UniSPInsertResume.ExecProc;
  FResumeID:=UniSPInsertResume.ParamByName('p_resume_id').AsInteger;
//  if UniSPInsertResume.ParamByName('p_result').AsInteger = 0 then Result:=true else Result:=false;
  FormMain.Warning(' Result='+BoolToStr(Result)+' resume_id = '+IntTostr(FResumeID));
  except
  on E: Exception do
    begin
      ShowMessage('Ошибка во время вставки в Resumes: ' + E.Message);
      Result := false;
    end;
end;
end;

function TFormNewResume.SaveJobs: boolean;
var i:integer;
FExperienceID:array [1..10] of integer;
begin
for i:=1 to 10 do FExperienceID[i]:=0;
try
UniSPDeleteExpSkills.Close;
UniSPDeleteExpSkills.ParamByName('p_flag').AsString := 'resume_id';
UniSPDeleteExpSkills.ParamByName('p_resume_id').AsInteger := FResumeID;
UniSPDeleteExpSkills.ExecSQL;

if isJob1Active then
      begin
      UniSPInsertExperiences.Close;
      UniSPInsertExperiences.ParamByName('p_flag').AsString := 'resume_id';
			UniSPInsertExperiences.ParamByName('p_resume_id').AsInteger := FResumeID;
//      UniSPInsertExperiences.ParamByName('p_job_order').AsInteger := 1;
      UniSPInsertExperiences.ParamByName('p_job_position').AsString := Edit1Name.Text;
      UniSPInsertExperiences.ParamByName('p_start_date').AsDateTime :=CalendarPickerB1.Date;
      UniSPInsertExperiences.ParamByName('p_end_date').AsDateTime := CalendarPickerE1.Date;
      UniSPInsertExperiences.ParamByName('p_employer').AsString := Edit1Company.Text;
      UniSPInsertExperiences.ParamByName('p_resp').AsMemo := RichEdit1Resp.Text;
      UniSPInsertExperiences.ParamByName('p_benefits').AsString := Edit1Benefits.Text;
      UniSPInsertExperiences.ParamByName('p_other').AsMemo := RichEdit1Other.Text;
      UniSPInsertExperiences.ExecSQL;
      FExperienceID[1]:=UniSPInsertExperiences.ParamByName('p_experience_id').Value;
      end;
if isJob2Active then
    begin
      UniSPInsertExperiences.Close;
      UniSPInsertExperiences.ParamByName('p_flag').AsString := 'resume_id';
      UniSPInsertExperiences.ParamByName('p_resume_id').AsInteger := FResumeID;
//      UniSPInsertExperiences.ParamByName('p_job_order').AsInteger := 2;
      UniSPInsertExperiences.ParamByName('p_job_position').AsString := Edit2Name.Text;
      UniSPInsertExperiences.ParamByName('p_start_date').AsDateTime :=CalendarPickerB2.Date;
      UniSPInsertExperiences.ParamByName('p_end_date').AsDateTime := CalendarPickerE2.Date;
      UniSPInsertExperiences.ParamByName('p_employer').AsString := Edit2Company.Text;
			UniSPInsertExperiences.ParamByName('p_resp').AsMemo := RichEdit2Resp.Text;
      UniSPInsertExperiences.ParamByName('p_benefits').AsString := Edit2Benefits.Text;
      UniSPInsertExperiences.ParamByName('p_other').AsMemo := RichEdit2Other.Text;
      UniSPInsertExperiences.ExecSQL;
      FExperienceID[2]:=UniSPInsertExperiences.ParamByName('p_experience_id').Value;
    end;
if isJob3Active then
    begin
      UniSPInsertExperiences.Close;
      UniSPInsertExperiences.ParamByName('p_flag').AsString := 'resume_id';
      UniSPInsertExperiences.ParamByName('p_resume_id').AsInteger := FResumeID;
//      UniSPInsertExperiences.ParamByName('p_job_order').AsInteger := 3;
      UniSPInsertExperiences.ParamByName('p_job_position').AsString := Edit3Name.Text;
      UniSPInsertExperiences.ParamByName('p_start_date').AsDateTime :=CalendarPickerB3.Date;
      UniSPInsertExperiences.ParamByName('p_end_date').AsDateTime := CalendarPickerE3.Date;
      UniSPInsertExperiences.ParamByName('p_employer').AsString := Edit3Company.Text;
      UniSPInsertExperiences.ParamByName('p_resp').AsMemo := RichEdit3Resp.Text;
      UniSPInsertExperiences.ParamByName('p_benefits').AsString := Edit3Benefits.Text;
			UniSPInsertExperiences.ParamByName('p_other').AsMemo := RichEdit3Other.Text;
      UniSPInsertExperiences.ExecSQL;
      FExperienceID[3]:=UniSPInsertExperiences.ParamByName('p_experience_id').Value;
    end;
if isJob4Active then
    begin
      UniSPInsertExperiences.Close;
      UniSPInsertExperiences.ParamByName('p_flag').AsString := 'resume_id';
      UniSPInsertExperiences.ParamByName('p_resume_id').AsInteger := FResumeID;
//      UniSPInsertExperiences.ParamByName('p_job_order').AsInteger := 4;
      UniSPInsertExperiences.ParamByName('p_job_position').AsString := Edit4Name.Text;
      UniSPInsertExperiences.ParamByName('p_start_date').AsDateTime :=CalendarPickerB4.Date;
      UniSPInsertExperiences.ParamByName('p_end_date').AsDateTime := CalendarPickerE4.Date;
      UniSPInsertExperiences.ParamByName('p_employer').AsString := Edit4Company.Text;
      UniSPInsertExperiences.ParamByName('p_resp').AsMemo := RichEdit4Resp.Text;
			UniSPInsertExperiences.ParamByName('p_benefits').AsString := Edit4Benefits.Text;
			UniSPInsertExperiences.ParamByName('p_other').AsMemo := RichEdit4Other.Text;
      UniSPInsertExperiences.ExecSQL;
      FExperienceID[4]:=UniSPInsertExperiences.ParamByName('p_experience_id').Value;
    end;
if isJob5Active then
    begin
      UniSPInsertExperiences.Close;
      UniSPInsertExperiences.ParamByName('p_flag').AsString := 'resume_id';
      UniSPInsertExperiences.ParamByName('p_resume_id').AsInteger := FResumeID;
//      UniSPInsertExperiences.ParamByName('p_job_order').AsInteger := 5;
      UniSPInsertExperiences.ParamByName('p_job_position').AsString := Edit5Name.Text;
      UniSPInsertExperiences.ParamByName('p_start_date').AsDateTime :=CalendarPickerB5.Date;
      UniSPInsertExperiences.ParamByName('p_end_date').AsDateTime := CalendarPickerE5.Date;
      UniSPInsertExperiences.ParamByName('p_employer').AsString := Edit5Company.Text;
			UniSPInsertExperiences.ParamByName('p_resp').AsMemo := RichEdit5Resp.Text;
			UniSPInsertExperiences.ParamByName('p_benefits').AsString := Edit5Benefits.Text;
			UniSPInsertExperiences.ParamByName('p_other').AsMemo := RichEdit5Other.Text;
			UniSPInsertExperiences.ExecSQL;
			FExperienceID[5]:=UniSPInsertExperiences.ParamByName('p_experience_id').Value;
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
      UniSPInsertExperiences.ParamByName('p_resp').AsMemo := RichEdit6Resp.Text;
      UniSPInsertExperiences.ParamByName('p_benefits').AsString := Edit6Benefits.Text;
      UniSPInsertExperiences.ParamByName('p_other').AsMemo := RichEdit6Other.Text;
      UniSPInsertExperiences.ExecSQL;
      FExperienceID[6]:=UniSPInsertExperiences.ParamByName('p_experience_id').Value;
    end;
if isJob7Active then
    begin
      UniSPInsertExperiences.Close;
      UniSPInsertExperiences.ParamByName('p_flag').AsString := 'resume_id';
      UniSPInsertExperiences.ParamByName('p_resume_id').AsInteger := FResumeID;
//      UniSPInsertExperiences.ParamByName('p_job_order').AsInteger := 7;
      UniSPInsertExperiences.ParamByName('p_job_position').AsString := Edit7Name.Text;
      UniSPInsertExperiences.ParamByName('p_start_date').AsDateTime :=CalendarPickerB7.Date;
      UniSPInsertExperiences.ParamByName('p_end_date').AsDateTime := CalendarPickerE7.Date;
      UniSPInsertExperiences.ParamByName('p_employer').AsString := Edit7Company.Text;
      UniSPInsertExperiences.ParamByName('p_resp').AsMemo := RichEdit7Resp.Text;
      UniSPInsertExperiences.ParamByName('p_benefits').AsString := Edit7Benefits.Text;
      UniSPInsertExperiences.ParamByName('p_other').AsMemo := RichEdit7Other.Text;
      UniSPInsertExperiences.ExecSQL;
      FExperienceID[7]:=UniSPInsertExperiences.ParamByName('p_experience_id').Value;
    end;
if isJob8Active then
    begin
      UniSPInsertExperiences.Close;
      UniSPInsertExperiences.ParamByName('p_flag').AsString := 'resume_id';
      UniSPInsertExperiences.ParamByName('p_resume_id').AsInteger := FResumeID;
//      UniSPInsertExperiences.ParamByName('p_job_order').AsInteger := 8;
      UniSPInsertExperiences.ParamByName('p_job_position').AsString := Edit8Name.Text;
      UniSPInsertExperiences.ParamByName('p_start_date').AsDateTime :=CalendarPickerB8.Date;
      UniSPInsertExperiences.ParamByName('p_end_date').AsDateTime := CalendarPickerE8.Date;
      UniSPInsertExperiences.ParamByName('p_employer').AsString := Edit8Company.Text;
      UniSPInsertExperiences.ParamByName('p_resp').AsMemo := RichEdit8Resp.Text;
      UniSPInsertExperiences.ParamByName('p_benefits').AsString := Edit8Benefits.Text;
      UniSPInsertExperiences.ParamByName('p_other').AsMemo := RichEdit8Other.Text;
      UniSPInsertExperiences.ExecSQL;
      FExperienceID[8]:=UniSPInsertExperiences.ParamByName('p_experience_id').Value;
    end;
if isJob9Active then
    begin
      UniSPInsertExperiences.Close;
      UniSPInsertExperiences.ParamByName('p_flag').AsString := 'resume_id';
      UniSPInsertExperiences.ParamByName('p_resume_id').AsInteger := FResumeID;
//      UniSPInsertExperiences.ParamByName('p_job_order').AsInteger := 9;
      UniSPInsertExperiences.ParamByName('p_job_position').AsString := Edit9Name.Text;
      UniSPInsertExperiences.ParamByName('p_start_date').AsDateTime :=CalendarPickerB9.Date;
      UniSPInsertExperiences.ParamByName('p_end_date').AsDateTime := CalendarPickerE9.Date;
      UniSPInsertExperiences.ParamByName('p_employer').AsString := Edit9Company.Text;
      UniSPInsertExperiences.ParamByName('p_resp').AsMemo := RichEdit9Resp.Text;
      UniSPInsertExperiences.ParamByName('p_benefits').AsString := Edit9Benefits.Text;
      UniSPInsertExperiences.ParamByName('p_other').AsMemo := RichEdit9Other.Text;
      UniSPInsertExperiences.ExecSQL;
      FExperienceID[9]:=UniSPInsertExperiences.ParamByName('p_experience_id').Value;
    end;
if isJob10Active then
    begin
      UniSPInsertExperiences.Close;
      UniSPInsertExperiences.ParamByName('p_flag').AsString := 'resume_id';
      UniSPInsertExperiences.ParamByName('p_resume_id').AsInteger := FResumeID;
//      UniSPInsertExperiences.ParamByName('p_job_order').AsInteger := 10;
      UniSPInsertExperiences.ParamByName('p_job_position').AsString := Edit10Name.Text;
      UniSPInsertExperiences.ParamByName('p_start_date').AsDateTime :=CalendarPickerB10.Date;
      UniSPInsertExperiences.ParamByName('p_end_date').AsDateTime := CalendarPickerE10.Date;
			UniSPInsertExperiences.ParamByName('p_employer').AsString := Edit10Company.Text;
			UniSPInsertExperiences.ParamByName('p_resp').AsMemo := RichEdit10Resp.Text;
      UniSPInsertExperiences.ParamByName('p_benefits').AsString := Edit10Benefits.Text;
			UniSPInsertExperiences.ParamByName('p_other').AsMemo := RichEdit10Other.Text;
      UniSPInsertExperiences.ExecSQL;
      FExperienceID[10]:=UniSPInsertExperiences.ParamByName('p_experience_id').Value;
    end;
  if FormMain.isEmpty(Edit1Name.Text) and not FormMain.isEmpty(Edit1Company.Text) then
    for i := 0 to Memo1Skills.Lines.Count - 1 do
       if not FormMain.IsEmpty(Memo1Skills.Lines[i]) then
          begin
          UniSPInsertSkillShow.Close;
          UniSPInsertSkillShow.ParamByName('p_experience_id').AsInteger:=FExperienceID[1];
          UniSPInsertSkillShow.ParamByName('p_skill').AsString:=Memo1Skills.Lines[i];
          UniSPInsertSkillShow.ExecSQL;
          end;
  if FormMain.isEmpty(Edit2Name.Text) and not FormMain.isEmpty(Edit2Company.Text) then
    for i := 0 to Memo2Skills.Lines.Count - 1 do
       if not FormMain.IsEmpty(Memo2Skills.Lines[i]) then
          begin
          UniSPInsertSkillShow.Close;
          UniSPInsertSkillShow.ParamByName('p_experience_id').AsInteger:=FExperienceID[2];
          UniSPInsertSkillShow.ParamByName('p_skill').AsString:=Memo2Skills.Lines[i];
          UniSPInsertSkillShow.ExecSQL;
          end;
if FormMain.isEmpty(Edit3Name.Text) and not FormMain.isEmpty(Edit3Company.Text) then
    for i := 0 to Memo3Skills.Lines.Count - 1 do
       if not FormMain.IsEmpty(Memo3Skills.Lines[i]) then
          begin
          UniSPInsertSkillShow.Close;
          UniSPInsertSkillShow.ParamByName('p_experience_id').AsInteger:=FExperienceID[3];
          UniSPInsertSkillShow.ParamByName('p_skill').AsString:=Memo3Skills.Lines[i];
          UniSPInsertSkillShow.ExecSQL;
          end;
if FormMain.isEmpty(Edit4Name.Text) and not FormMain.isEmpty(Edit4Company.Text) then
    for i := 0 to Memo4Skills.Lines.Count - 1 do
       if not FormMain.IsEmpty(Memo4Skills.Lines[i]) then
          begin
          UniSPInsertSkillShow.Close;
          UniSPInsertSkillShow.ParamByName('p_experience_id').AsInteger:=FExperienceID[4];
          UniSPInsertSkillShow.ParamByName('p_skill').AsString:=Memo4Skills.Lines[i];
          UniSPInsertSkillShow.ExecSQL;
          end;
if FormMain.isEmpty(Edit5Name.Text) and not FormMain.isEmpty(Edit5Company.Text) then
    for i := 0 to Memo5Skills.Lines.Count - 1 do
       if not FormMain.IsEmpty(Memo5Skills.Lines[i]) then
          begin
          UniSPInsertSkillShow.Close;
          UniSPInsertSkillShow.ParamByName('p_experience_id').AsInteger:=FExperienceID[5];
          UniSPInsertSkillShow.ParamByName('p_skill').AsString:=Memo5Skills.Lines[i];
          UniSPInsertSkillShow.ExecSQL;
          end;
if FormMain.isEmpty(Edit6Name.Text) and not FormMain.isEmpty(Edit6Company.Text) then
    for i := 0 to Memo6Skills.Lines.Count - 1 do
       if not FormMain.IsEmpty(Memo6Skills.Lines[i]) then
          begin
          UniSPInsertSkillShow.Close;
          UniSPInsertSkillShow.ParamByName('p_experience_id').AsInteger:=FExperienceID[6];
          UniSPInsertSkillShow.ParamByName('p_skill').AsString:=Memo6Skills.Lines[i];
          UniSPInsertSkillShow.ExecSQL;
          end;
if FormMain.isEmpty(Edit7Name.Text) and not FormMain.isEmpty(Edit7Company.Text) then
    for i := 0 to Memo7Skills.Lines.Count - 1 do
       if not FormMain.IsEmpty(Memo7Skills.Lines[i]) then
          begin
          UniSPInsertSkillShow.Close;
          UniSPInsertSkillShow.ParamByName('p_experience_id').AsInteger:=FExperienceID[7];
          UniSPInsertSkillShow.ParamByName('p_skill').AsString:=Memo7Skills.Lines[i];
          UniSPInsertSkillShow.ExecSQL;
          end;
if FormMain.isEmpty(Edit8Name.Text) and not FormMain.isEmpty(Edit8Company.Text) then
    for i := 0 to Memo8Skills.Lines.Count - 1 do
       if not FormMain.IsEmpty(Memo8Skills.Lines[i]) then
          begin
          UniSPInsertSkillShow.Close;
          UniSPInsertSkillShow.ParamByName('p_experience_id').AsInteger:=FExperienceID[8];
          UniSPInsertSkillShow.ParamByName('p_skill').AsString:=Memo8Skills.Lines[i];
          UniSPInsertSkillShow.ExecSQL;
          end;
if FormMain.isEmpty(Edit9Name.Text) and not FormMain.isEmpty(Edit9Company.Text) then
    for i := 0 to Memo9Skills.Lines.Count - 1 do
       if not FormMain.IsEmpty(Memo9Skills.Lines[i]) then
          begin
          UniSPInsertSkillShow.Close;
          UniSPInsertSkillShow.ParamByName('p_experience_id').AsInteger:=FExperienceID[9];
          UniSPInsertSkillShow.ParamByName('p_skill').AsString:=Memo9Skills.Lines[i];
          UniSPInsertSkillShow.ExecSQL;
          end;
if FormMain.isEmpty(Edit10Name.Text) and not FormMain.isEmpty(Edit10Company.Text) then
    for i := 0 to Memo10Skills.Lines.Count - 1 do
       if not FormMain.IsEmpty(Memo10Skills.Lines[i]) then
          begin
          UniSPInsertSkillShow.Close;
          UniSPInsertSkillShow.ParamByName('p_experience_id').AsInteger:=FExperienceID[10];
          UniSPInsertSkillShow.ParamByName('p_skill').AsString:=Memo10Skills.Lines[i];
					UniSPInsertSkillShow.ExecSQL;
          end;
  Result:=true;
  except
    on E: Exception do
    begin
      ShowMessage('Ошибка во время вставки в процедуре SaveJobs: ' + E.Message);
      Result := false;
    end;
  end;
end;


function TFormNewResume.isFormValuesGood: boolean;
begin
IsJob1Active := not(FormMain.IsEmpty(Edit1Name.Text) or FormMain.IsEmpty(Edit1Company.Text) or FormMain.IsEmpty(RichEdit1Resp.Text));
IsJob2Active := not(FormMain.IsEmpty(Edit2Name.Text) or FormMain.IsEmpty(Edit2Company.Text) or FormMain.IsEmpty(RichEdit2Resp.Text));
IsJob3Active := not(FormMain.IsEmpty(Edit3Name.Text) or FormMain.IsEmpty(Edit3Company.Text) or FormMain.IsEmpty(RichEdit3Resp.Text));
IsJob4Active := not(FormMain.IsEmpty(Edit4Name.Text) or FormMain.IsEmpty(Edit4Company.Text) or FormMain.IsEmpty(RichEdit4Resp.Text));
IsJob5Active := not(FormMain.IsEmpty(Edit5Name.Text) or FormMain.IsEmpty(Edit5Company.Text) or FormMain.IsEmpty(RichEdit5Resp.Text));
IsJob6Active := not(FormMain.IsEmpty(Edit6Name.Text) or FormMain.IsEmpty(Edit6Company.Text) or FormMain.IsEmpty(RichEdit6Resp.Text));
IsJob7Active := not(FormMain.IsEmpty(Edit7Name.Text) or FormMain.IsEmpty(Edit7Company.Text) or FormMain.IsEmpty(RichEdit7Resp.Text));
IsJob8Active := not(FormMain.IsEmpty(Edit8Name.Text) or FormMain.IsEmpty(Edit8Company.Text) or FormMain.IsEmpty(RichEdit8Resp.Text));
IsJob9Active := not(FormMain.IsEmpty(Edit9Name.Text) or FormMain.IsEmpty(Edit9Company.Text) or FormMain.IsEmpty(RichEdit9Resp.Text));
IsJob10Active := not(FormMain.IsEmpty(Edit10Name.Text) or FormMain.IsEmpty(Edit10Company.Text) or FormMain.IsEmpty(RichEdit10Resp.Text));
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
  Result := true;
end;

procedure TFormNewResume.CopyTRfromUA;
begin
	if FormMain.IsEmpty(EditName.Text) then EditName.Text := EditNameUA.Text;
  if FormMain.IsEmpty(EditOpportunity.Text) then EditOpportunity.Text := EditOpportunityUA.Text;
	if FormMain.IsEmpty(EditPlace.Text) then EditPlace.Text := EditPlaceUA.Text;
	if FormMain.IsEmpty(EditPhones.Text) then EditPhones.Text := EditPhonesUA.Text;
	if FormMain.IsEmpty(RichEditor.Text) then RichEditor.Text := RichEditorUA.Text;

	if  FormMain.IsEmpty(EditArticle1.Text) then EditArticle1.Text := EditArticle1UA.Text;
	if  FormMain.IsEmpty(RichEdit1.Text) then RichEdit1.Text := RichEdit1UA.Text;
	if  FormMain.IsEmpty(EditArticle2.Text) then EditArticle2.Text := EditArticle2UA.Text;
	if  FormMain.IsEmpty(RichEdit2.Text) then RichEdit2.Text := RichEdit2UA.Text;
	if  FormMain.IsEmpty(EditArticle3.Text) then EditArticle3.Text := EditArticle3UA.Text;
	if  FormMain.IsEmpty(RichEdit3.Text) then RichEdit3.Text := RichEdit3UA.Text;
	if  FormMain.IsEmpty(EditArticle4.Text) then EditArticle4.Text := EditArticle4UA.Text;
	if  FormMain.IsEmpty(RichEdit4.Text) then RichEdit4.Text := RichEdit4UA.Text;

	if  FormMain.IsEmpty(Edit1Dates.Text) then Edit1Dates.Text := Edit1DatesUA.Text;
	if  FormMain.IsEmpty(Edit1Name.Text) then Edit1Name.Text := Edit1NameUA.Text;
	if  FormMain.IsEmpty(Edit1Company.Text) then Edit1Company.Text := Edit1CompanyUA.Text;
	if  FormMain.IsEmpty(RichEdit1Resp.Text) then RichEdit1Resp.Text := RichEdit1RespUA.Text;
	if  FormMain.IsEmpty(Edit1Benefits.Text) then Edit1Benefits.Text := Edit1BenefitsUA.Text;
	if  FormMain.IsEmpty(RichEdit1Other.Text) then RichEdit1Other.Text := RichEdit1OtherUA.Text;

	if  FormMain.IsEmpty(Edit2Dates.Text) then Edit2Dates.Text := Edit2DatesUA.Text;
	if  FormMain.IsEmpty(Edit2Name.Text) then Edit2Name.Text := Edit2NameUA.Text;
	if  FormMain.IsEmpty(Edit2Company.Text) then Edit2Company.Text := Edit2CompanyUA.Text;
	if  FormMain.IsEmpty(RichEdit2Resp.Text) then RichEdit2Resp.Text := RichEdit2RespUA.Text;
	if  FormMain.IsEmpty(Edit2Benefits.Text) then Edit2Benefits.Text := Edit2BenefitsUA.Text;
	if  FormMain.IsEmpty(RichEdit2Other.Text) then RichEdit2Other.Text := RichEdit2OtherUA.Text;

	if  FormMain.IsEmpty(Edit3Dates.Text) then Edit3Dates.Text := Edit3DatesUA.Text;
	if  FormMain.IsEmpty(Edit3Name.Text) then Edit3Name.Text := Edit3NameUA.Text;
	if  FormMain.IsEmpty(Edit3Company.Text) then Edit3Company.Text := Edit3CompanyUA.Text;
	if  FormMain.IsEmpty(RichEdit3Resp.Text) then RichEdit3Resp.Text := RichEdit3RespUA.Text;
	if  FormMain.IsEmpty(Edit3Benefits.Text) then Edit3Benefits.Text := Edit3BenefitsUA.Text;
	if  FormMain.IsEmpty(RichEdit3Other.Text) then RichEdit3Other.Text := RichEdit3OtherUA.Text;

	if  FormMain.IsEmpty(Edit4Dates.Text) then Edit4Dates.Text := Edit4DatesUA.Text;
	if  FormMain.IsEmpty(Edit4Name.Text) then Edit4Name.Text := Edit4NameUA.Text;
	if  FormMain.IsEmpty(Edit4Company.Text) then Edit4Company.Text := Edit4CompanyUA.Text;
	if  FormMain.IsEmpty(RichEdit4Resp.Text) then RichEdit4Resp.Text := RichEdit4RespUA.Text;
	if  FormMain.IsEmpty(Edit4Benefits.Text) then Edit4Benefits.Text := Edit4BenefitsUA.Text;
	if  FormMain.IsEmpty(RichEdit4Other.Text) then RichEdit4Other.Text := RichEdit4OtherUA.Text;

  if  FormMain.IsEmpty(Edit5Dates.Text) then Edit5Dates.Text := Edit5DatesUA.Text;
  if  FormMain.IsEmpty(Edit5Name.Text) then Edit5Name.Text := Edit5NameUA.Text;
  if  FormMain.IsEmpty(Edit5Company.Text) then Edit5Company.Text := Edit5CompanyUA.Text;
	if  FormMain.IsEmpty(RichEdit5Resp.Text) then RichEdit5Resp.Text := RichEdit5RespUA.Text;
  if  FormMain.IsEmpty(Edit5Benefits.Text) then Edit5Benefits.Text := Edit5BenefitsUA.Text;
	if  FormMain.IsEmpty(RichEdit5Other.Text) then RichEdit5Other.Text := RichEdit5OtherUA.Text;

  if  FormMain.IsEmpty(Edit6Dates.Text) then Edit6Dates.Text := Edit6DatesUA.Text;
	if  FormMain.IsEmpty(Edit6Name.Text) then Edit6Name.Text := Edit6NameUA.Text;
  if  FormMain.IsEmpty(Edit6Company.Text) then Edit6Company.Text := Edit6CompanyUA.Text;
  if  FormMain.IsEmpty(RichEdit6Resp.Text) then RichEdit6Resp.Text := RichEdit6RespUA.Text;
	if  FormMain.IsEmpty(Edit6Benefits.Text) then Edit6Benefits.Text := Edit6BenefitsUA.Text;
	if  FormMain.IsEmpty(RichEdit6Other.Text) then RichEdit6Other.Text := RichEdit6OtherUA.Text;

	if  FormMain.IsEmpty(Edit7Dates.Text) then Edit7Dates.Text := Edit7DatesUA.Text;
  if  FormMain.IsEmpty(Edit7Name.Text) then Edit7Name.Text := Edit7NameUA.Text;
	if  FormMain.IsEmpty(Edit7Company.Text) then Edit7Company.Text := Edit7CompanyUA.Text;
  if  FormMain.IsEmpty(RichEdit7Resp.Text) then RichEdit7Resp.Text := RichEdit7RespUA.Text;
	if  FormMain.IsEmpty(Edit7Benefits.Text) then Edit7Benefits.Text := Edit7BenefitsUA.Text;
	if  FormMain.IsEmpty(RichEdit7Other.Text) then RichEdit7Other.Text := RichEdit7OtherUA.Text;

  if  FormMain.IsEmpty(Edit8Dates.Text) then Edit8Dates.Text := Edit8DatesUA.Text;
  if  FormMain.IsEmpty(Edit8Name.Text) then Edit8Name.Text := Edit8NameUA.Text;
	if  FormMain.IsEmpty(Edit8Company.Text) then Edit8Company.Text := Edit8CompanyUA.Text;
	if  FormMain.IsEmpty(RichEdit8Resp.Text) then RichEdit8Resp.Text := RichEdit8RespUA.Text;
	if  FormMain.IsEmpty(Edit8Benefits.Text) then Edit8Benefits.Text := Edit8BenefitsUA.Text;
	if  FormMain.IsEmpty(RichEdit8Other.Text) then RichEdit8Other.Text := RichEdit8OtherUA.Text;

  if  FormMain.IsEmpty(Edit9Dates.Text) then Edit9Dates.Text := Edit9DatesUA.Text;
  if  FormMain.IsEmpty(Edit9Name.Text) then Edit9Name.Text := Edit9NameUA.Text;
  if  FormMain.IsEmpty(Edit9Company.Text) then Edit9Company.Text := Edit9CompanyUA.Text;
	if  FormMain.IsEmpty(RichEdit9Resp.Text) then RichEdit9Resp.Text := RichEdit9RespUA.Text;
  if  FormMain.IsEmpty(Edit9Benefits.Text) then Edit9Benefits.Text := Edit9BenefitsUA.Text;
	if  FormMain.IsEmpty(RichEdit9Other.Text) then RichEdit9Other.Text := RichEdit9OtherUA.Text;

  if  FormMain.IsEmpty(Edit10Dates.Text) then Edit10Dates.Text := Edit10DatesUA.Text;
  if  FormMain.IsEmpty(Edit10Name.Text) then Edit10Name.Text := Edit10NameUA.Text;
  if  FormMain.IsEmpty(Edit10Company.Text) then Edit10Company.Text := Edit10CompanyUA.Text;
	if  FormMain.IsEmpty(RichEdit10Resp.Text) then RichEdit10Resp.Text := RichEdit10RespUA.Text;
	if  FormMain.IsEmpty(Edit10Benefits.Text) then Edit10Benefits.Text := Edit10BenefitsUA.Text;
	if  FormMain.IsEmpty(RichEdit10Other.Text) then RichEdit10Other.Text := RichEdit10OtherUA.Text;
end;

procedure TFormNewResume.GetValuesFromTemplate(TemplateId: integer);
begin
UniGetTemplate.Close;
UniGetTemplate.ParamByName('p_id').AsInteger := TemplateId;
UniGetTemplate.Open;
if VarIsNull(UniGetTemplate['name']) then EditNameUA.Text := ''
else EditNameUA.Text := UniGetTemplate['name'];
if VarIsNull(UniGetTemplate['job_opportunity']) then EditOpportunityUA.Text := ''
else EditOpportunityUA.Text := UniGetTemplate['job_opportunity'];
if VarIsNull(UniGetTemplate['job_place']) then EditPlaceUA.Text := ''
else EditPlaceUA.Text := UniGetTemplate['job_place'];
if VarIsNull(UniGetTemplate['phone_numbers_text']) then EditPhonesUA.Text := ''
else EditPhonesUA.Text := UniGetTemplate['phone_numbers_text'];
if VarIsNull(UniGetTemplate['template_introduction']) then RichEditorUA.Text := ''
else RichEditorUA.Text := UniGetTemplate['template_introduction'];
UniGetTemplateFooters.Close;
UniGetTemplateFooters.ParamByName('p_template_id').AsInteger := TemplateId;
UniGetTemplateFooters.Open;
while not UniGetTemplateFooters.EOF do
  begin
  if UniGetTemplateFooters['footer_order']=1 then
    begin
    if VarIsNull(UniGetTemplateFooters['footer_header']) then EditArticle1UA.Text := ''
    else EditArticle1UA.Text := UniGetTemplateFooters['footer_header'];
    if VarIsNull(UniGetTemplateFooters['footer_text']) then RichEdit1UA.Text := ''
    else RichEdit1UA.Text := UniGetTemplateFooters['footer_text'];
    end;
  if UniGetTemplateFooters['footer_order']=2 then
    begin
    if VarIsNull(UniGetTemplateFooters['footer_header']) then EditArticle2UA.Text := ''
    else EditArticle2UA.Text := UniGetTemplateFooters['footer_header'];
    if VarIsNull(UniGetTemplateFooters['footer_text']) then RichEdit2UA.Text := ''
    else RichEdit2UA.Text := UniGetTemplateFooters['footer_text'];
    end;
  if UniGetTemplateFooters['footer_order']=3 then
    begin
    if VarIsNull(UniGetTemplateFooters['footer_header']) then EditArticle3UA.Text := ''
    else EditArticle3UA.Text := UniGetTemplateFooters['footer_header'];
    if VarIsNull(UniGetTemplateFooters['footer_text']) then RichEdit3UA.Text := ''
		else RichEdit3UA.Text := UniGetTemplateFooters['footer_text'];
		end;
	if UniGetTemplateFooters['footer_order']=4 then
		begin
    if VarIsNull(UniGetTemplateFooters['footer_header']) then EditArticle4UA.Text := ''
    else EditArticle4UA.Text := UniGetTemplateFooters['footer_header'];
    if VarIsNull(UniGetTemplateFooters['footer_text']) then RichEdit4UA.Text := ''
		else RichEdit4UA.Text := UniGetTemplateFooters['footer_text'];
    end;
	UniGetTemplateFooters.Next;
	end;
UniGetTemplateJobs.Close;
UniGetTemplateJobs.ParamByName('p_template_id').AsInteger := TemplateId;
UniGetTemplateJobs.Open;
while not UniGetTemplateJobs.EOF do
	begin
	if UniGetTemplateJobs['order_position']=1 then
		begin
		Edit1NameUA.Text:=UniGetTemplateJobs['job_position'];
		Edit1CompanyUA.Text:=UniGetTemplateJobs['employer'];
		CalendarPickerB[1]:=UniGetTemplateJobs['start_date'];
		CalendarPickerE[1]:=UniGetTemplateJobs['end_date'];
		Edit1DatesUA.Text := FormMain.GetFullMonthByRegion(UniGetTemplateJobs['start_date'], CBRegion.Text)
									+ '-' + FormMain.GetFullMonthByRegion(UniGetTemplateJobs['end_date'], CBRegion.Text);
		RichEdit1RespUA.Text:=UniGetTemplateJobs['responsibilities'];
		Edit1BenefitsUA.Text:=UniGetTemplateJobs['benefits'];
		RichEdit1OtherUA.Text:=UniGetTemplateJobs['other'];
		UniGetSkills.Close;
		UniGetSkills.ParamByName('p_experience_id').AsInteger := UniGetTemplateJobs['id'];
		UniGetSkills.Open;
		Memo1SkillsUA.Clear;
		while not UniGetSkills.EOF do
			begin
			Memo1SkillsUA.Lines.Add(UniGetSkills['skill']);
			UniGetSkills.Next;
			end;
		UniGetTemplateJobs.Next;
		end;
	if UniGetTemplateJobs['order_position']=2 then
		begin
		Edit2NameUA.Text:=UniGetTemplateJobs['job_position'];
		Edit2CompanyUA.Text:=UniGetTemplateJobs['employer'];
		CalendarPickerB[2]:=UniGetTemplateJobs['start_date'];
		CalendarPickerE[2]:=UniGetTemplateJobs['end_date'];
		Edit2DatesUA.Text := FormMain.GetFullMonthByRegion(UniGetTemplateJobs['start_date'], CBRegion.Text)
									+ '-' + FormMain.GetFullMonthByRegion(UniGetTemplateJobs['end_date'], CBRegion.Text);
		RichEdit2RespUA.Text:=UniGetTemplateJobs['responsibilities'];
		Edit2BenefitsUA.Text:=UniGetTemplateJobs['benefits'];
		RichEdit2OtherUA.Text:=UniGetTemplateJobs['other'];
		UniGetSkills.Close;
		UniGetSkills.ParamByName('p_experience_id').AsInteger := UniGetTemplateJobs['id'];
		UniGetSkills.Open;
		Memo2SkillsUA.Clear;
		while not UniGetSkills.EOF do
			begin
			Memo2SkillsUA.Lines.Add(UniGetSkills['skill']);
			UniGetSkills.Next;
			end;
		UniGetTemplateJobs.Next;
		end;
	if UniGetTemplateJobs['order_position']=3 then
		begin
		Edit3NameUA.Text:=UniGetTemplateJobs['job_position'];
		Edit3CompanyUA.Text:=UniGetTemplateJobs['employer'];
		CalendarPickerB[3]:=UniGetTemplateJobs['start_date'];
		CalendarPickerE[3]:=UniGetTemplateJobs['end_date'];
		Edit3DatesUA.Text := FormMain.GetFullMonthByRegion(UniGetTemplateJobs['start_date'], CBRegion.Text)
								 + '-' + FormMain.GetFullMonthByRegion(UniGetTemplateJobs['end_date'], CBRegion.Text);
		RichEdit3RespUA.Text:=UniGetTemplateJobs['responsibilities'];
		Edit3BenefitsUA.Text:=UniGetTemplateJobs['benefits'];
		RichEdit3OtherUA.Text:=UniGetTemplateJobs['other'];
		UniGetSkills.Close;
		UniGetSkills.ParamByName('p_experience_id').AsInteger := UniGetTemplateJobs['id'];
		UniGetSkills.Open;
		Memo3SkillsUA.Clear;
		while not UniGetSkills.EOF do
			begin
			Memo3SkillsUA.Lines.Add(UniGetSkills['skill']);
			UniGetSkills.Next;
			end;
		UniGetTemplateJobs.Next;
		end;
	if UniGetTemplateJobs['order_position']=4 then
		begin
		Edit4NameUA.Text:=UniGetTemplateJobs['job_position'];
		Edit4CompanyUA.Text:=UniGetTemplateJobs['employer'];
		CalendarPickerB[4]:=UniGetTemplateJobs['start_date'];
		CalendarPickerE[4]:=UniGetTemplateJobs['end_date'];
		Edit4DatesUA.Text := FormMain.GetFullMonthByRegion(UniGetTemplateJobs['start_date'], CBRegion.Text)
								 + '-' + FormMain.GetFullMonthByRegion(UniGetTemplateJobs['end_date'], CBRegion.Text);
		RichEdit4RespUA.Text:=UniGetTemplateJobs['responsibilities'];
		Edit4BenefitsUA.Text:=UniGetTemplateJobs['benefits'];
		RichEdit4OtherUA.Text:=UniGetTemplateJobs['other'];
		UniGetSkills.Close;
		UniGetSkills.ParamByName('p_experience_id').AsInteger := UniGetTemplateJobs['id'];
		UniGetSkills.Open;
		Memo4SkillsUA.Clear;
		while not UniGetSkills.EOF do
			begin
			Memo4SkillsUA.Lines.Add(UniGetSkills['skill']);
			UniGetSkills.Next;
			end;
		UniGetTemplateJobs.Next;
		end;
	if UniGetTemplateJobs['order_position']=5 then
		begin
		Edit5NameUA.Text:=UniGetTemplateJobs['job_position'];
		Edit5CompanyUA.Text:=UniGetTemplateJobs['employer'];
		CalendarPickerB[5]:=UniGetTemplateJobs['start_date'];
		CalendarPickerE[5]:=UniGetTemplateJobs['end_date'];
		Edit5DatesUA.Text := FormMain.GetFullMonthByRegion(UniGetTemplateJobs['start_date'], CBRegion.Text)
								 + '-' + FormMain.GetFullMonthByRegion(UniGetTemplateJobs['end_date'], CBRegion.Text);
		RichEdit5RespUA.Text:=UniGetTemplateJobs['responsibilities'];
		Edit5BenefitsUA.Text:=UniGetTemplateJobs['benefits'];
		RichEdit5OtherUA.Text:=UniGetTemplateJobs['other'];
		UniGetSkills.Close;
		UniGetSkills.ParamByName('p_experience_id').AsInteger := UniGetTemplateJobs['id'];
		UniGetSkills.Open;
		Memo5SkillsUA.Clear;
		while not UniGetSkills.EOF do
			begin
			Memo5SkillsUA.Lines.Add(UniGetSkills['skill']);
			UniGetSkills.Next;
			end;
		UniGetTemplateJobs.Next;
		end;
	if UniGetTemplateJobs['order_position']=6 then
		begin
		Edit6NameUA.Text:=UniGetTemplateJobs['job_position'];
		Edit6CompanyUA.Text:=UniGetTemplateJobs['employer'];
		CalendarPickerB[6]:=UniGetTemplateJobs['start_date'];
		CalendarPickerE[6]:=UniGetTemplateJobs['end_date'];
		Edit6DatesUA.Text := FormMain.GetFullMonthByRegion(UniGetTemplateJobs['start_date'], CBRegion.Text)
								 + '-' + FormMain.GetFullMonthByRegion(UniGetTemplateJobs['end_date'], CBRegion.Text);
		RichEdit6RespUA.Text:=UniGetTemplateJobs['responsibilities'];
		Edit6BenefitsUA.Text:=UniGetTemplateJobs['benefits'];
		RichEdit6OtherUA.Text:=UniGetTemplateJobs['other'];
		UniGetSkills.Close;
		UniGetSkills.ParamByName('p_experience_id').AsInteger := UniGetTemplateJobs['id'];
		UniGetSkills.Open;
		Memo6SkillsUA.Clear;
		while not UniGetSkills.EOF do
			begin
			Memo6SkillsUA.Lines.Add(UniGetSkills['skill']);
			UniGetSkills.Next;
			end;
		UniGetTemplateJobs.Next;
		end;
	if UniGetTemplateJobs['order_position']=7 then
		begin
		Edit7NameUA.Text:=UniGetTemplateJobs['job_position'];
		Edit7CompanyUA.Text:=UniGetTemplateJobs['employer'];
		CalendarPickerB[7]:=UniGetTemplateJobs['start_date'];
		CalendarPickerE[7]:=UniGetTemplateJobs['end_date'];
		Edit7DatesUA.Text := FormMain.GetFullMonthByRegion(UniGetTemplateJobs['start_date'], CBRegion.Text)
								 + '-' + FormMain.GetFullMonthByRegion(UniGetTemplateJobs['end_date'], CBRegion.Text);
		RichEdit7RespUA.Text:=UniGetTemplateJobs['responsibilities'];
		Edit7BenefitsUA.Text:=UniGetTemplateJobs['benefits'];
		RichEdit7OtherUA.Text:=UniGetTemplateJobs['other'];
		UniGetSkills.Close;
		UniGetSkills.ParamByName('p_experience_id').AsInteger := UniGetTemplateJobs['id'];
		UniGetSkills.Open;
		Memo7SkillsUA.Clear;
		while not UniGetSkills.EOF do
			begin
			Memo7SkillsUA.Lines.Add(UniGetSkills['skill']);
			UniGetSkills.Next;
			end;
		UniGetTemplateJobs.Next;
		end;
	if UniGetTemplateJobs['order_position']=8 then
		begin
		Edit8NameUA.Text:=UniGetTemplateJobs['job_position'];
		Edit8CompanyUA.Text:=UniGetTemplateJobs['employer'];
		CalendarPickerB[8]:=UniGetTemplateJobs['start_date'];
		CalendarPickerE[8]:=UniGetTemplateJobs['end_date'];
		Edit8DatesUA.Text := FormMain.GetFullMonthByRegion(UniGetTemplateJobs['start_date'], CBRegion.Text)
								 + '-' + FormMain.GetFullMonthByRegion(UniGetTemplateJobs['end_date'], CBRegion.Text);
		RichEdit8RespUA.Text:=UniGetTemplateJobs['responsibilities'];
		Edit8BenefitsUA.Text:=UniGetTemplateJobs['benefits'];
		RichEdit8OtherUA.Text:=UniGetTemplateJobs['other'];
		UniGetSkills.Close;
		UniGetSkills.ParamByName('p_experience_id').AsInteger := UniGetTemplateJobs['id'];
		UniGetSkills.Open;
		Memo8SkillsUA.Clear;
		while not UniGetSkills.EOF do
			begin
			Memo8SkillsUA.Lines.Add(UniGetSkills['skill']);
			UniGetSkills.Next;
			end;
		UniGetTemplateJobs.Next;
		end;
	if UniGetTemplateJobs['order_position']=9 then
		begin
		Edit9NameUA.Text:=UniGetTemplateJobs['job_position'];
		Edit9CompanyUA.Text:=UniGetTemplateJobs['employer'];
		CalendarPickerB[9]:=UniGetTemplateJobs['start_date'];
		CalendarPickerE[9]:=UniGetTemplateJobs['end_date'];
		Edit9DatesUA.Text := FormMain.GetFullMonthByRegion(UniGetTemplateJobs['start_date'], CBRegion.Text)
								 + '-' + FormMain.GetFullMonthByRegion(UniGetTemplateJobs['end_date'], CBRegion.Text);
		RichEdit9RespUA.Text:=UniGetTemplateJobs['responsibilities'];
		Edit9BenefitsUA.Text:=UniGetTemplateJobs['benefits'];
		RichEdit9OtherUA.Text:=UniGetTemplateJobs['other'];
		UniGetSkills.Close;
		UniGetSkills.ParamByName('p_experience_id').AsInteger := UniGetTemplateJobs['id'];
		UniGetSkills.Open;
		Memo9SkillsUA.Clear;
		while not UniGetSkills.EOF do
			begin
			Memo9SkillsUA.Lines.Add(UniGetSkills['skill']);
			UniGetSkills.Next;
			end;
		UniGetTemplateJobs.Next;
		end;
	if UniGetTemplateJobs['order_position']=10 then
		begin
		Edit10NameUA.Text:=UniGetTemplateJobs['job_position'];
		Edit10CompanyUA.Text:=UniGetTemplateJobs['employer'];
		CalendarPickerB[10]:=UniGetTemplateJobs['start_date'];
		CalendarPickerE[10]:=UniGetTemplateJobs['end_date'];
		Edit10DatesUA.Text := FormMain.GetFullMonthByRegion(UniGetTemplateJobs['start_date'], CBRegion.Text)
								  + '-' + FormMain.GetFullMonthByRegion(UniGetTemplateJobs['end_date'], CBRegion.Text);
		RichEdit10RespUA.Text:=UniGetTemplateJobs['responsibilities'];
		Edit10BenefitsUA.Text:=UniGetTemplateJobs['benefits'];
		RichEdit10OtherUA.Text:=UniGetTemplateJobs['other'];
		UniGetSkills.Close;
		UniGetSkills.ParamByName('p_experience_id').AsInteger := UniGetTemplateJobs['id'];
		UniGetSkills.Open;
		Memo10SkillsUA.Clear;
		while not UniGetSkills.EOF do
			begin
			Memo10SkillsUA.Lines.Add(UniGetSkills['skill']);
			UniGetSkills.Next;
			end;
		UniGetTemplateJobs.Next;
		end;
	end;
end;

function TFormNewResume.GoogleTranslate(const S, lang: string): string;
begin
Result:=S;
end;

procedure TFormNewResume.GetValuesFromResume(const ResumeID:integer);
begin
UniGetResume.Close;
UniGetResume.ParamByName('p_id').AsInteger := ResumeID;
UniGetResume.Open;
if VarIsNull(UniGetResume['name']) then EditNameUA.Text := '' else EditNameUA.Text := UniGetResume['name'];
if VarIsNull(UniGetResume['job_opportunity']) then EditOpportunityUA.Text := '' else EditOpportunityUA.Text := UniGetResume['job_opportunity'];
if VarIsNull(UniGetResume['job_place']) then EditPlaceUA.Text := '' else EditPlaceUA.Text := UniGetResume['job_place'];
if VarIsNull(UniGetResume['phone_numbers_text']) then EditPhonesUA.Text := '' else EditPhonesUA.Text := UniGetResume['phone_numbers_text'];
if VarIsNull(UniGetResume['resume_introduction']) then RichEditorUA.Text := '' else RichEditorUA.Text := UniGetResume['resume_introduction'];
UniGetFooters.Close;
UniGetFooters.ParamByName('p_id').AsInteger := ResumeID;
UniGetFooters.Open;
if VarIsNull(UniGetResume['name']) then EditNameUA.Text := '' else EditNameUA.Text := UniGetResume['name'];
if VarIsNull(UniGetResume['job_opportunity']) then EditOpportunityUA.Text := '' else EditOpportunityUA.Text := UniGetResume['job_opportunity'];
if VarIsNull(UniGetResume['job_place']) then EditPlaceUA.Text := '' else EditPlaceUA.Text := UniGetResume['job_place'];
if VarIsNull(UniGetResume['phone_numbers_text']) then EditPhonesUA.Text := '' else EditPhonesUA.Text := UniGetResume['phone_numbers_text'];
if VarIsNull(UniGetResume['resume_introduction']) then RichEditorUA.Text := '' else RichEditorUA.Text := UniGetResume['resume_introduction'];
end;

procedure TFormNewResume.ChangeDates1;
begin
Edit1Dates.Text := FormMain.GetFullMonthByRegion(CalendarPickerB1.Date, CBRegion.Text)
		 			 + '-' + FormMain.GetFullMonthByRegion(CalendarPickerE1.Date, CBRegion.Text);
end;

procedure TFormNewResume.ChangeDates2;
begin
Edit2Dates.Text := FormMain.GetFullMonthByRegion(CalendarPickerB2.Date, CBRegion.Text)
					 + '-' + FormMain.GetFullMonthByRegion(CalendarPickerE2.Date, CBRegion.Text);
end;

procedure TFormNewResume.ChangeDates3;
begin
Edit3Dates.Text := FormMain.GetFullMonthByRegion(CalendarPickerB3.Date, CBRegion.Text)
					 + '-' + FormMain.GetFullMonthByRegion(CalendarPickerE3.Date, CBRegion.Text);
end;

procedure TFormNewResume.ChangeDates4;
begin
Edit4Dates.Text := FormMain.GetFullMonthByRegion(CalendarPickerB4.Date, CBRegion.Text)
					 + '-' + FormMain.GetFullMonthByRegion(CalendarPickerE4.Date, CBRegion.Text);
end;

procedure TFormNewResume.ChangeDates5;
begin
Edit5Dates.Text := FormMain.GetFullMonthByRegion(CalendarPickerB5.Date, CBRegion.Text)
					 + '-' + FormMain.GetFullMonthByRegion(CalendarPickerE5.Date, CBRegion.Text);
end;

procedure TFormNewResume.ChangeDates6;
begin
Edit6Dates.Text := FormMain.GetFullMonthByRegion(CalendarPickerB6.Date, CBRegion.Text)
					 + '-' + FormMain.GetFullMonthByRegion(CalendarPickerE6.Date, CBRegion.Text);
end;

procedure TFormNewResume.ChangeDates7;
begin
Edit7Dates.Text := FormMain.GetFullMonthByRegion(CalendarPickerB7.Date, CBRegion.Text)
					 + '-' + FormMain.GetFullMonthByRegion(CalendarPickerE7.Date, CBRegion.Text);
end;

procedure TFormNewResume.ChangeDates8;
begin
Edit8Dates.Text := FormMain.GetFullMonthByRegion(CalendarPickerB8.Date, CBRegion.Text)
					 + '-' + FormMain.GetFullMonthByRegion(CalendarPickerE8.Date, CBRegion.Text);
end;

procedure TFormNewResume.ChangeDates9;
begin
Edit9Dates.Text := FormMain.GetFullMonthByRegion(CalendarPickerB9.Date, CBRegion.Text)
					 + '-' + FormMain.GetFullMonthByRegion(CalendarPickerE9.Date, CBRegion.Text);
end;

procedure TFormNewResume.ChangeDates10;
begin
Edit10Dates.Text := FormMain.GetFullMonthByRegion(CalendarPickerB10.Date, CBRegion.Text)
					  + '-' + FormMain.GetFullMonthByRegion(CalendarPickerE10.Date, CBRegion.Text);
end;

procedure TFormNewResume.CBWordWrapUAClick(Sender: TObject);
begin
if CBWordWrapUA.Checked
then
	begin
	RichEditorUA.ScrollBars:=ssVertical;
	RichEditorUA.WordWrap:=true;
	end
else
	begin
	RichEditorUA.ScrollBars:=ssBoth;
	RichEditorUA.WordWrap:=false;
	end;
end;

procedure TFormNewResume.CalendarPickerB10Change(Sender: TObject);
begin
	ChangeDates10;
end;

procedure TFormNewResume.CalendarPickerB10CloseUp(Sender: TObject);
begin
  ChangeDates10;
end;

procedure TFormNewResume.CalendarPickerB1CloseUp(Sender: TObject);
begin
	ChangeDates1;
end;

procedure TFormNewResume.CalendarPickerB2Change(Sender: TObject);
begin
  ChangeDates2;
end;

procedure TFormNewResume.CalendarPickerB2CloseUp(Sender: TObject);
begin
  ChangeDates2;
end;

procedure TFormNewResume.CalendarPickerB3Change(Sender: TObject);
begin
  ChangeDates3;
end;

procedure TFormNewResume.CalendarPickerB3CloseUp(Sender: TObject);
begin
  ChangeDates3;
end;

procedure TFormNewResume.CalendarPickerB4Change(Sender: TObject);
begin
  ChangeDates4;
end;

procedure TFormNewResume.CalendarPickerB4CloseUp(Sender: TObject);
begin
  ChangeDates4;
end;

procedure TFormNewResume.CalendarPickerB5Change(Sender: TObject);
begin
  ChangeDates5;
end;

procedure TFormNewResume.CalendarPickerB5CloseUp(Sender: TObject);
begin
  ChangeDates5;
end;

procedure TFormNewResume.CalendarPickerB6CloseUp(Sender: TObject);
begin
  ChangeDates6;
end;

procedure TFormNewResume.CalendarPickerB7Change(Sender: TObject);
begin
  ChangeDates7;
end;

procedure TFormNewResume.CalendarPickerB7CloseUp(Sender: TObject);
begin
  ChangeDates7;
end;

procedure TFormNewResume.CalendarPickerB8Change(Sender: TObject);
begin
  ChangeDates8;
end;

procedure TFormNewResume.CalendarPickerB8CloseUp(Sender: TObject);
begin
  ChangeDates8;
end;

procedure TFormNewResume.CalendarPickerB9Change(Sender: TObject);
begin
  ChangeDates9;
end;

procedure TFormNewResume.CalendarPickerB9CloseUp(Sender: TObject);
begin
  ChangeDates9;
end;

procedure TFormNewResume.CalendarPickerE10Change(Sender: TObject);
begin
  ChangeDates10;
end;

procedure TFormNewResume.CalendarPickerE10CloseUp(Sender: TObject);
begin
  ChangeDates10;
end;

procedure TFormNewResume.CalendarPickerE1Change(Sender: TObject);
begin
  ChangeDates1;
end;

procedure TFormNewResume.CalendarPickerE1CloseUp(Sender: TObject);
begin
  ChangeDates1;
end;

procedure TFormNewResume.CalendarPickerE2Change(Sender: TObject);
begin
  ChangeDates2;
end;

procedure TFormNewResume.CalendarPickerE2CloseUp(Sender: TObject);
begin
  ChangeDates2;
end;

procedure TFormNewResume.CalendarPickerE3Change(Sender: TObject);
begin
  ChangeDates3;
end;

procedure TFormNewResume.CalendarPickerE3CloseUp(Sender: TObject);
begin
  ChangeDates3;
end;

procedure TFormNewResume.CalendarPickerE4Change(Sender: TObject);
begin
  ChangeDates4;
end;

procedure TFormNewResume.CalendarPickerE4CloseUp(Sender: TObject);
begin
  ChangeDates4;
end;

procedure TFormNewResume.CalendarPickerE5Change(Sender: TObject);
begin
  ChangeDates5;
end;

procedure TFormNewResume.CalendarPickerE5CloseUp(Sender: TObject);
begin
  ChangeDates5;
end;

procedure TFormNewResume.CalendarPickerE6CloseUp(Sender: TObject);
begin
  ChangeDates6;
end;

procedure TFormNewResume.CalendarPickerE7CloseUp(Sender: TObject);
begin
  ChangeDates7;
end;

procedure TFormNewResume.CalendarPickerE8Change(Sender: TObject);
begin
  ChangeDates8;
end;

procedure TFormNewResume.CalendarPickerE8CloseUp(Sender: TObject);
begin
  ChangeDates8;
end;

procedure TFormNewResume.CalendarPickerE9Change(Sender: TObject);
begin
  ChangeDates9;
end;

procedure TFormNewResume.CalendarPickerE9CloseUp(Sender: TObject);
begin
  ChangeDates9;
end;

procedure TFormNewResume.CBLangChange(Sender: TObject);
begin
FormMain.UniRegions.First;
while not FormMain.UniRegions.Eof do
  begin
    if FormMain.UniRegions['id']=CBLang.Text then CBRegion.Text:=FormMain.UniRegions['region_name'];
    FormMain.UniRegions.Next;
  end;
//FormMain.Warning('Регион изменён на '+CBRegion.Text+' для '+ CBLang.Text);
end;

procedure TFormNewResume.CBRegionChange(Sender: TObject);
begin
FormMain.UniRegions.First;
while not FormMain.UniRegions.Eof do
  begin
    if FormMain.UniRegions['id']=CBLang.Text then CBRegion.Text:=FormMain.UniRegions['region_name'];
    FormMain.UniRegions.Next;
  end;
end;

procedure TFormNewResume.CBWordWrapClick(Sender: TObject);
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

function TFormNewResume.isMainFormGood: boolean;
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
  if FormMain.IsEmpty(EditArticle1.Text) and not FormMain.IsEmpty(RichEdit1.Text) then
  begin
    ShowMessage('Пусте поле "Навички 1 - Назва"');
    Result := false;
    exit;
  end;
	if FormMain.IsEmpty(RichEdit1.Text) and FormMain.IsEmpty(EditArticle1.Text) then
  begin
    ShowMessage('Пусте поле "Навички 1 - Текст"');
    Result := false;
    exit;
  end;
  if FormMain.IsEmpty(EditArticle2.Text) and not FormMain.IsEmpty(RichEdit2.Text) then
  begin
    ShowMessage('Пусте поле "Навички 2 - Назва"');
    Result := false;
    exit;
  end;
	if (Length(Trim(RichEdit2.Text)) = 0) and (Length(Trim(EditArticle2.Text)) > 0) then
  begin
    ShowMessage('Пусте поле "Навички 2 - Текст"');
    Result := false;
    exit;
  end;
  if (Length(Trim(EditArticle3.Text)) = 0) and (Length(Trim(RichEdit3.Text)) > 0) then
  begin
    ShowMessage('Пусте поле "Навички 3 - Назва"');
    Result := false;
    exit;
  end;
	if (Length(Trim(RichEdit3.Text)) = 0) and (Length(Trim(EditArticle3.Text)) > 0) then
  begin
    ShowMessage('Пусте поле "Навички 3 - Текст"');
    Result := false;
    exit;
  end;
  if (Length(Trim(EditArticle4.Text)) = 0) and (Length(Trim(RichEdit4.Text)) > 0) then
  begin
    ShowMessage('Пусте поле "Навички 4 - Назва"');
    Result := false;
    exit;
  end;
	if (Length(Trim(RichEdit4.Text)) = 0) and (Length(Trim(EditArticle4.Text)) > 0) then
  begin
    ShowMessage('Пусте поле "Навички 4 - Текст"');
    Result := false;
    exit;
  end;
end;


function TFormNewResume.isJobDatesGood: boolean;
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

function TFormNewResume.isJobPeriodsValid: boolean;
begin
Result:=true;
end;

function TFormNewResume.isJobDatesValid: boolean;
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


function TFormNewResume.isJobGood: boolean;
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
	if (IsJob1Active and FormMain.IsEmpty(RichEdit1Resp.Text)) then
  begin
    ShowMessage('Пусте поле "Обов`язки робота 1"');
    Result := false;
    exit;
  end;
  if (IsJob1Active and FormMain.IsEmpty(Memo1Skills.Text)) then
  begin
    ShowMessage('Пусте поле Скіли робота 1"');
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
  if (IsJob2Active and FormMain.IsEmpty(RichEdit2Resp.Text)) then
  begin
    ShowMessage('Пусте поле "Обов`язки робота 2"');
    Result := false;
    exit;
  end;
  if (IsJob2Active and FormMain.IsEmpty(Memo2Skills.Text)) then
  begin
    ShowMessage('Пусте поле Скіли робота 2"');
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
  if (IsJob3Active and FormMain.IsEmpty(RichEdit3Resp.Text)) then
  begin
    ShowMessage('Пусте поле "Обов`язки робота 3"');
    Result := false;
    exit;
  end;
  if (IsJob3Active and FormMain.IsEmpty(Memo3Skills.Text)) then
  begin
    ShowMessage('Пусте поле Скіли робота 3"');
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
	if (IsJob4Active and FormMain.IsEmpty(RichEdit4Resp.Text)) then
  begin
    ShowMessage('Пусте поле "Обов`язки робота 4"');
    Result := false;
    exit;
  end;
  if (IsJob4Active and FormMain.IsEmpty(Memo4Skills.Text)) then
  begin
    ShowMessage('Пусте поле Скіли робота 4"');
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
  if (IsJob5Active and FormMain.IsEmpty(RichEdit5Resp.Text)) then
  begin
    ShowMessage('Пусте поле "Обов`язки робота 5"');
    Result := false;
    exit;
  end;
  if (IsJob5Active and FormMain.IsEmpty(Memo5Skills.Text)) then
  begin
    ShowMessage('Пусте поле Скіли робота 5"');
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
	if (IsJob6Active and FormMain.IsEmpty(RichEdit6Resp.Text)) then
  begin
    ShowMessage('Пусте поле "Обов`язки робота 6"');
    Result := false;
    exit;
  end;
  if (IsJob6Active and FormMain.IsEmpty(Memo6Skills.Text)) then
  begin
    ShowMessage('Пусте поле Скіли робота 6"');
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
	if (IsJob7Active and FormMain.IsEmpty(RichEdit7Resp.Text)) then
  begin
    ShowMessage('Пусте поле "Обов`язки робота 7"');
    Result := false;
    exit;
  end;
  if (IsJob7Active and FormMain.IsEmpty(Memo7Skills.Text)) then
  begin
    ShowMessage('Пусте поле Скіли робота 7"');
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
	if (IsJob8Active and FormMain.IsEmpty(RichEdit8Resp.Text)) then
  begin
    ShowMessage('Пусте поле "Обов`язки робота 8"');
    Result := false;
    exit;
  end;
  if (IsJob8Active and FormMain.IsEmpty(Memo8Skills.Text)) then
  begin
    ShowMessage('Пусте поле Скіли робота 8"');
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
	if (IsJob9Active and FormMain.IsEmpty(RichEdit9Resp.Text)) then
  begin
    ShowMessage('Пусте поле "Обов`язки робота 9"');
    Result := false;
    exit;
  end;
  if (IsJob9Active and FormMain.IsEmpty(Memo9Skills.Text)) then
  begin
    ShowMessage('Пусте поле Скіли робота 9"');
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
	if (IsJob10Active and FormMain.IsEmpty(RichEdit10Resp.Text)) then
  begin
    ShowMessage('Пусте поле "Обов`язки робота 10"');
    Result := false;
    exit;
  end;
  if (IsJob10Active and FormMain.IsEmpty(Memo10Skills.Text)) then
  begin
    ShowMessage('Пусте поле Скіли робота 10"');
    Result := false;
    exit;
  end;
end;

//procedure TFormNewResume.GetResumefromID;
//var ResumeFooterID: integer;
//begin
//CBLang.Text := CBLang_First_Value;
//CBRegion.Text := CBRegion_First_Value;
//FormMain.Warning('Resumeid=' + IntToStr(FResumeID));
//LabelFooterID.Caption:='Copy from '+ IntToStr(FResumeID);
//// Читаем запись из Resumes
//UniGetResume.Close;
//UniGetResume.ParamByName('p_id').AsInteger := FResumeID;
//UniGetResume.Open;
//EditNameUA.Text := NVL(UniGetResume['name']);
//EditOpportunityUA.Text := NVL(UniGetResume['job_opportunity']);
//EditPlaceUA.Text := NVL(UniGetResume['job_place']);
//EditPhonesUA.Text := NVL(UniGetResume['phone_numbers_text']);
//RichEditorUA.Text := NVL(UniGetResume['resume_introduction']);
//
//// Читаем запись из Resume_Footers
//UniGetFooters.Close;
//UniGetFooters.ParamByName('p_resume_id').AsInteger := FResumeID;
//UniGetFooters.Open;
//ResumeFooterID := UniGetFooters['id'];
//LabelFooterID.Caption := LabelFooterID.Caption + ' resume_id = ' + IntToStr(FResumeID);
//while not UniGetFooters.EOF do
//  begin
//  if UniGetFooters['footer_order'] = 1 then
//    begin
//      EditArticle1UA.Text := NVL(UniGetFooters['footer_header']);
//      RichEdit1UA.Text := NVL(UniGetFooters['footer_text']);
//    end;
//  if UniGetFooters['footer_order'] = 2 then
//    begin
//      EditArticle2UA.Text := NVL(UniGetFooters['footer_header']);
//      RichEdit2UA.Text := NVL(UniGetFooters['footer_text']);
//    end;
//  if UniGetFooters['footer_order'] = 3 then
//    begin
//       EditArticle3UA.Text := NVL(UniGetFooters['footer_header']);
//       RichEdit3UA.Text := NVL(UniGetFooters['footer_text']);
//    end;
//  if UniGetFooters['footer_order'] = 4 then
//    begin
//      EditArticle4UA.Text := NVL(UniGetFooters['footer_header']);
//      RichEdit4UA.Text := NVL(UniGetFooters['footer_text']);
//    end;
//  UniGetFooters.Next;
//  end;
////GetJobsFromID;         // Получить значения Job из другого резюме, указав его ID
//  UniGetJobs.Prepare;
//  UniGetJobs.ParamByName('p_resume_id').AsInteger := FResumeID;
//  UniGetJobs.Open;
//  while not UniGetJobs.EOF do
//  begin
//    case UniGetJobs['order_position'] of
//     1: begin
//        if VarIsNull(UniGetJobs['end_date'])
//          then Edit1DatesUA.Text := FormMain.GetMonthByRegion(UniGetJobs['start_date'], 'UA') + '- Now'
//          else Edit1DatesUA.Text := FormMain.GetMonthByRegion(UniGetJobs['start_date'], 'UA') + '-' + FormMain.GetMonthByRegion(UniGetJobs['end_date'], 'UA');
//        Edit1NameUA.Text := NVL(UniGetJobs['job_position']);
//        RichEdit1RespUA.Text := NVL(UniGetJobs['responsibilities']);
//        Edit1CompanyUA.Text := NVL(UniGetJobs['employer']);
//        Edit1BenefitsUA.Text := NVL(UniGetJobs['benefits']);
//        RichEdit1OtherUA.Text := NVL(UniGetJobs['other']);
//        UniGetSkills.Prepare;
//        UniGetSkills.ParamByName('p_experience_id').AsInteger := UniGetJobs['id'];
//        UniGetSkills.Open;
//        Memo1SkillsUA.Clear;
//        while not UniGetSkills.EOF do
//          begin
//            Memo1SkillsUA.Lines.Add(UniGetSkills['skill'] + ' - ' + UniGetSkills ['category']);
//            UniGetSkills.Next;
//          end;
//        end;
//     2: begin
//        if VarIsNull(UniGetJobs['end_date'])
//          then Edit2DatesUA.Text := FormMain.GetMonthByRegion(UniGetJobs['start_date'], 'UA') + '- Now'
//          else Edit2DatesUA.Text := FormMain.GetMonthByRegion(UniGetJobs['start_date'], 'UA') + '-' + FormMain.GetMonthByRegion(UniGetJobs['end_date'], 'UA');
//        Edit2NameUA.Text := NVL(UniGetJobs['job_position']);
//        RichEdit2RespUA.Text := NVL(UniGetJobs['responsibilities']);
//        Edit2CompanyUA.Text := NVL(UniGetJobs['employer']);
//        Edit2BenefitsUA.Text := NVL(UniGetJobs['benefits']);
//        RichEdit2OtherUA.Text := NVL(UniGetJobs['other']);
//        UniGetSkills.Prepare;
//        UniGetSkills.ParamByName('p_experience_id').AsInteger := UniGetJobs['id'];
//        UniGetSkills.Open;
//        Memo2SkillsUA.Clear;
//        while not UniGetSkills.EOF do
//          begin
//            Memo2SkillsUA.Lines.Add(UniGetSkills['skill'] + ' - ' + UniGetSkills ['category']);
//            UniGetSkills.Next;
//          end;
//        end;
//     3: begin
//        if VarIsNull(UniGetJobs['end_date'])
//          then Edit3DatesUA.Text := FormMain.GetMonthByRegion(UniGetJobs['start_date'], 'UA') + '- Now'
//          else Edit3DatesUA.Text := FormMain.GetMonthByRegion(UniGetJobs['start_date'], 'UA') + '-' + FormMain.GetMonthByRegion(UniGetJobs['end_date'], 'UA');
//        Edit3NameUA.Text := NVL(UniGetJobs['job_position']);
//        RichEdit3RespUA.Text := NVL(UniGetJobs['responsibilities']);
//        Edit3CompanyUA.Text := NVL(UniGetJobs['employer']);
//        Edit3BenefitsUA.Text := NVL(UniGetJobs['benefits']);
//        RichEdit3OtherUA.Text := NVL(UniGetJobs['other']);
//        UniGetSkills.Prepare;
//        UniGetSkills.ParamByName('p_experience_id').AsInteger := UniGetJobs['id'];
//        UniGetSkills.Open;
//        Memo3SkillsUA.Clear;
//        while not UniGetSkills.EOF do
//          begin
//            Memo3SkillsUA.Lines.Add(UniGetSkills['skill'] + ' - ' + UniGetSkills ['category']);
//            UniGetSkills.Next;
//          end;
//        end;
//     4: begin
//        if VarIsNull(UniGetJobs['end_date'])
//          then Edit4DatesUA.Text := FormMain.GetMonthByRegion(UniGetJobs['start_date'], 'UA') + '- Now'
//          else Edit4DatesUA.Text := FormMain.GetMonthByRegion(UniGetJobs['start_date'], 'UA') + '-' + FormMain.GetMonthByRegion(UniGetJobs['end_date'], 'UA');
//        Edit4NameUA.Text := NVL(UniGetJobs['job_position']);
//        RichEdit4RespUA.Text := NVL(UniGetJobs['responsibilities']);
//        Edit4CompanyUA.Text := NVL(UniGetJobs['employer']);
//        Edit4BenefitsUA.Text := NVL(UniGetJobs['benefits']);
//        RichEdit4OtherUA.Text := NVL(UniGetJobs['other']);
//        UniGetSkills.Prepare;
//        UniGetSkills.ParamByName('p_experience_id').AsInteger := UniGetJobs['id'];
//        UniGetSkills.Open;
//        Memo4SkillsUA.Clear;
//        while not UniGetSkills.EOF do
//          begin
//            Memo4SkillsUA.Lines.Add(UniGetSkills['skill'] + ' - ' + UniGetSkills ['category']);
//            UniGetSkills.Next;
//          end;
//        end;
//     5: begin
//        if VarIsNull(UniGetJobs['end_date'])
//          then Edit5DatesUA.Text := FormMain.GetMonthByRegion(UniGetJobs['start_date'], 'UA') + '- Now'
//          else Edit5DatesUA.Text := FormMain.GetMonthByRegion(UniGetJobs['start_date'], 'UA') + '-' + FormMain.GetMonthByRegion(UniGetJobs['end_date'], 'UA');
//        Edit5NameUA.Text := NVL(UniGetJobs['job_position']);
//        RichEdit5RespUA.Text := NVL(UniGetJobs['responsibilities']);
//        Edit5CompanyUA.Text := NVL(UniGetJobs['employer']);
//        Edit5BenefitsUA.Text := NVL(UniGetJobs['benefits']);
//        RichEdit5OtherUA.Text := NVL(UniGetJobs['other']);
//        UniGetSkills.Prepare;
//        UniGetSkills.ParamByName('p_experience_id').AsInteger := UniGetJobs['id'];
//        UniGetSkills.Open;
//        Memo5SkillsUA.Clear;
//        while not UniGetSkills.EOF do
//          begin
//            Memo5SkillsUA.Lines.Add(UniGetSkills['skill'] + ' - ' + UniGetSkills ['category']);
//            UniGetSkills.Next;
//          end;
//        end;
//     6: begin
//        if VarIsNull(UniGetJobs['end_date'])
//          then Edit6DatesUA.Text := FormMain.GetMonthByRegion(UniGetJobs['start_date'], 'UA') + '- Now'
//          else Edit6DatesUA.Text := FormMain.GetMonthByRegion(UniGetJobs['start_date'], 'UA') + '-' + FormMain.GetMonthByRegion(UniGetJobs['end_date'], 'UA');
//        Edit6NameUA.Text := NVL(UniGetJobs['job_position']);
//        RichEdit6RespUA.Text := NVL(UniGetJobs['responsibilities']);
//        Edit6CompanyUA.Text := NVL(UniGetJobs['employer']);
//        Edit6BenefitsUA.Text := NVL(UniGetJobs['benefits']);
//        RichEdit6OtherUA.Text := NVL(UniGetJobs['other']);
//        UniGetSkills.Prepare;
//        UniGetSkills.ParamByName('p_experience_id').AsInteger := UniGetJobs['id'];
//        UniGetSkills.Open;
//        Memo6SkillsUA.Clear;
//        while not UniGetSkills.EOF do
//          begin
//            Memo6SkillsUA.Lines.Add(UniGetSkills['skill'] + ' - ' + UniGetSkills ['category']);
//            UniGetSkills.Next;
//          end;
//        end;
//     7: begin
//        if VarIsNull(UniGetJobs['end_date'])
//          then Edit7DatesUA.Text := FormMain.GetMonthByRegion(UniGetJobs['start_date'], 'UA') + '- Now'
//          else Edit7DatesUA.Text := FormMain.GetMonthByRegion(UniGetJobs['start_date'], 'UA') + '-' + FormMain.GetMonthByRegion(UniGetJobs['end_date'], 'UA');
//        Edit7NameUA.Text := NVL(UniGetJobs['job_position']);
//        RichEdit7RespUA.Text := NVL(UniGetJobs['responsibilities']);
//        Edit7CompanyUA.Text := NVL(UniGetJobs['employer']);
//        Edit7BenefitsUA.Text := NVL(UniGetJobs['benefits']);
//        RichEdit7OtherUA.Text := NVL(UniGetJobs['other']);
//        UniGetSkills.Prepare;
//        UniGetSkills.ParamByName('p_experience_id').AsInteger := UniGetJobs['id'];
//        UniGetSkills.Open;
//        Memo7SkillsUA.Clear;
//        while not UniGetSkills.EOF do
//          begin
//            Memo7SkillsUA.Lines.Add(UniGetSkills['skill'] + ' - ' + UniGetSkills ['category']);
//            UniGetSkills.Next;
//          end;
//        end;
//     8: begin
//        if VarIsNull(UniGetJobs['end_date'])
//          then Edit8DatesUA.Text := FormMain.GetMonthByRegion(UniGetJobs['start_date'], 'UA') + '- Now'
//          else Edit8DatesUA.Text := FormMain.GetMonthByRegion(UniGetJobs['start_date'], 'UA') + '-' + FormMain.GetMonthByRegion(UniGetJobs['end_date'], 'UA');
//        Edit8NameUA.Text := NVL(UniGetJobs['job_position']);
//        RichEdit8RespUA.Text := NVL(UniGetJobs['responsibilities']);
//        Edit8CompanyUA.Text := NVL(UniGetJobs['employer']);
//        Edit8BenefitsUA.Text := NVL(UniGetJobs['benefits']);
//        RichEdit8OtherUA.Text := NVL(UniGetJobs['other']);
//        UniGetSkills.Prepare;
//        UniGetSkills.ParamByName('p_experience_id').AsInteger := UniGetJobs['id'];
//        UniGetSkills.Open;
//        Memo8SkillsUA.Clear;
//        while not UniGetSkills.EOF do
//          begin
//            Memo8SkillsUA.Lines.Add(UniGetSkills['skill'] + ' - ' + UniGetSkills ['category']);
//            UniGetSkills.Next;
//          end;
//        end;
//     9: begin
//        if VarIsNull(UniGetJobs['end_date'])
//          then Edit9DatesUA.Text := FormMain.GetMonthByRegion(UniGetJobs['start_date'], 'UA') + '- Now'
//          else Edit9DatesUA.Text := FormMain.GetMonthByRegion(UniGetJobs['start_date'], 'UA') + '-' + FormMain.GetMonthByRegion(UniGetJobs['end_date'], 'UA');
//        Edit9NameUA.Text := NVL(UniGetJobs['job_position']);
//        RichEdit9RespUA.Text := NVL(UniGetJobs['responsibilities']);
//        Edit9CompanyUA.Text := NVL(UniGetJobs['employer']);
//        Edit9BenefitsUA.Text := NVL(UniGetJobs['benefits']);
//        RichEdit9OtherUA.Text := NVL(UniGetJobs['other']);
//        UniGetSkills.Prepare;
//        UniGetSkills.ParamByName('p_experience_id').AsInteger := UniGetJobs['id'];
//        UniGetSkills.Open;
//        Memo9SkillsUA.Clear;
//        while not UniGetSkills.EOF do
//          begin
//            Memo9SkillsUA.Lines.Add(UniGetSkills['skill'] + ' - ' + UniGetSkills ['category']);
//            UniGetSkills.Next;
//          end;
//        end;
//     10: begin
//        if VarIsNull(UniGetJobs['end_date'])
//          then Edit10DatesUA.Text := FormMain.GetMonthByRegion(UniGetJobs['start_date'], 'UA') + '- Now'
//          else Edit10DatesUA.Text := FormMain.GetMonthByRegion(UniGetJobs['start_date'], 'UA') + '-' + FormMain.GetMonthByRegion(UniGetJobs['end_date'], 'UA');
//        Edit10NameUA.Text := NVL(UniGetJobs['job_position']);
//        RichEdit10RespUA.Text := NVL(UniGetJobs['responsibilities']);
//        Edit10CompanyUA.Text := NVL(UniGetJobs['employer']);
//        Edit10BenefitsUA.Text := NVL(UniGetJobs['benefits']);
//        RichEdit10OtherUA.Text := NVL(UniGetJobs['other']);
//        UniGetSkills.Prepare;
//        UniGetSkills.ParamByName('p_experience_id').AsInteger := UniGetJobs['id'];
//        UniGetSkills.Open;
//        Memo10SkillsUA.Clear;
//        while not UniGetSkills.EOF do
//          begin
//            Memo10SkillsUA.Lines.Add(UniGetSkills['skill'] + ' - ' + UniGetSkills ['category']);
//            UniGetSkills.Next;
//          end;
//        end;
//    else
//      FormMain.Warning('experienes, значение order_position больше 10 и равно '
//        + UniGetJobs['order_position']);
//    end;
//    UniGetJobs.Next;
//  end;
//
//end;
//procedure TFormNewResume.GetFootersFromID;
//var
//  ResumeFooterID: integer;
//begin
//  UniGetFooters.Close;
//  UniGetFooters.ParamByName('p_resume_id').AsInteger := FResumeID;
//  UniGetFooters.ParamByName('p_lang').AsString := 'UA';
//  UniGetFooters.Open;
////  FormMain.Warning('Resumeid=' + IntToStr(FResumeID) + ' lang = UA');
//  if VarIsNull(UniGetFooters['id']) then
//  begin
//    FormMain.Warning
//      ('Resumeid не установлено - Query UniGetUAResumeFooters вернул null');
//    LabelFooterID.Caption := '# N/A';
//  end
//  else
//  begin
//    ResumeFooterID := UniGetFooters['id'];
//    LabelFooterID.Caption := IntToStr(ResumeFooterID);
//  end;
//  if VarIsNull(UniGetFooters['resume_id']) then
//  begin
//    FormMain.Warning
//      ('ResumeFooterID не установлено - Query UniGetUAResumeFooters вернул null');
//    LabelFooterID.Caption := LabelFooterID.Caption + ' ' + 'resume_id= N/A';
//  end
//  else
//  begin
//    LabelFooterID.Caption := LabelFooterID.Caption + ' resume_id = ' +
//      IntToStr(FResumeID);
//  end;
//  while not UniGetFooters.EOF do
//  begin
//    if UniGetFooters['footer_order'] = 1 then
//    begin
//      if VarIsNull(UniGetFooters['footer_header']) then
//        EditArticle1UA.Text := ''
//      else
//        EditArticle1UA.Text := UniGetFooters['footer_header'];
//      if VarIsNull(UniGetFooters['footer_text']) then
//        RichEdit1UA.Text := ''
//      else
//        RichEdit1UA.Text := UniGetFooters['footer_text'];
//    end;
//    if UniGetFooters['footer_order'] = 2 then
//    begin
//      if VarIsNull(UniGetFooters['footer_header']) then
//        EditArticle2UA.Text := ''
//      else
//        EditArticle2UA.Text := UniGetFooters['footer_header'];
//      if VarIsNull(UniGetFooters['footer_text']) then
//        RichEdit2UA.Text := ''
//      else
//        RichEdit2UA.Text := UniGetFooters['footer_text'];
//    end;
//    if UniGetFooters['footer_order'] = 3 then
//    begin
//      if VarIsNull(UniGetFooters['footer_header']) then
//        EditArticle3UA.Text := ''
//      else
//        EditArticle3UA.Text := UniGetFooters['footer_header'];
//      if VarIsNull(UniGetFooters['footer_text']) then
//        RichEdit3UA.Text := ''
//      else
//        RichEdit3UA.Text := UniGetFooters['footer_text'];
//    end;
//    if UniGetFooters['footer_order'] = 4 then
//    begin
//      if VarIsNull(UniGetFooters['footer_header']) then
//        EditArticle4UA.Text := ''
//      else
//        EditArticle4UA.Text := UniGetFooters['footer_header'];
//      if VarIsNull(UniGetFooters['footer_text']) then
//        RichEdit4UA.Text := ''
//      else
//        RichEdit4UA.Text := UniGetFooters['footer_text'];
//    end;
//    UniGetFooters.Next;
//  end;
//  UniGetJobs.Prepare;
//  UniGetJobs.ParamByName('p_resume_id').AsInteger := FResumeID;
//  UniGetJobs.Open;
//  while not UniGetJobs.EOF do
//  begin
//    case UniGetJobs['order_position'] of
//     1: begin
//          Edit1DatesUA.Text := FormMain.GetMonthByRegion(UniGetJobs['start_date'], 'UA') + '-' + FormMain.GetMonthByRegion(UniGetJobs['end_date'], 'UA');
//          Edit1NameUA.Text := NVL(UniGetJobs['job_position']);
//          RichEdit1RespUA.Text := NVL(UniGetJobs['responsibilities']);
//          Edit1CompanyUA.Text := NVL(UniGetJobs['employer']);
//          Edit1BenefitsUA.Text := NVL(UniGetJobs['benefits']);
//          RichEdit1OtherUA.Text := NVL(UniGetJobs['other']);
//          UniGetSkills.Prepare;
//          UniGetSkills.ParamByName('p_experience_id').AsInteger := UniGetJobs['id'];
//          UniGetSkills.Open;
//          Memo1SkillsUA.Clear;
//          while not UniGetSkills.EOF do
//            begin
//            Memo1SkillsUA.Lines.Add(NVL(UniGetSkills['skill']) + ' - ' + NVL(UniGetSkills ['category']));
//            UniGetSkills.Next;
//            end;
//        end;
//     2: begin
//          Edit2DatesUA.Text := FormMain.GetMonthByRegion(UniGetJobs['start_date'], 'UA') + '-' + FormMain.GetMonthByRegion(UniGetJobs['end_date'], 'UA');
//          Edit2NameUA.Text := NVL(UniGetJobs['job_position']);
//          RichEdit2RespUA.Text := NVL(UniGetJobs['responsibilities']);
//          Edit2CompanyUA.Text := NVL(UniGetJobs['employer']);
//          Edit2BenefitsUA.Text := NVL(UniGetJobs['benefits']);
//          RichEdit2OtherUA.Text := NVL(UniGetJobs['other']);
//          UniGetSkills.Prepare;
//          UniGetSkills.ParamByName('p_experience_id').AsInteger := UniGetJobs['id'];
//          UniGetSkills.Open;
//          Memo2SkillsUA.Clear;
//          while not UniGetSkills.EOF do
//            begin
//            Memo2SkillsUA.Lines.Add(NVL(UniGetSkills['skill']) + ' - ' + NVL(UniGetSkills ['category']));
//            UniGetSkills.Next;
//            end;
//        end;
//    else
//      FormMain.Warning('experienes, значение order_position больше 10 и равно '
//        + UniGetJobs['order_position']);
//    end;
//    UniGetJobs.Next;
//  end;
//end;
//function TFormNewResume.SaveValues2: boolean;
//var
//  FResumeID, FExperienceID: integer;
//begin
//  try
//    if not SaveResume(FResumeID) then
//    begin
//      FormMain.Warning('Сбой при сохранении resumes');
//      Result := false;
//      exit;
//    end;
//    UniLastInsertID.Close;
//    UniLastInsertID.ParamByName('p_name').AsString := EditName.Text;
//    UniLastInsertID.Open;
//
//    if VarIsNull(UniLastInsertID['id']) then
//    begin
//      ShowMessage('Wrong value for resume.id : ');
//      Result := false;
//      exit;
//    end
//    else
//      FResumeID := UniLastInsertID['id'];
//
//    if not SaveJobs(FResumeID, Edit1Name.Text, CalendarPickerB1.Date,
//      CalendarPickerE1.Date, Edit1Company.Text, RichEdit1Resp.Text,
//      Edit1Benefits.Text, RichEdit1Other.Text, FExperienceID) then
//    begin
//      FormMain.Warning('Сбой при сохранении jobs (experiences) #1');
//      Result := false;
//      exit;
//    end;
//
//    if not SaveSkillLists(FExperienceID, Memo1Skills.Lines) then
//    begin
//      FormMain.Warning('Сбой при сохранении skills');
//      Result := false;
//      exit;
//    end;
//    Result := true;
//  except
//    on E: Exception do
//    begin
//      ShowMessage('Error: ' + E.Message);
//      Result := false;
//    end;
//  end;
//end;
end.
