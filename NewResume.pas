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
    Memo1SkillsUA: TMemo;
    TabSheetJob2UA: TTabSheet;
    Edit2DatesUA: TEdit;
    Edit2NameUA: TEdit;
    Edit2CompanyUA: TEdit;
    Memo2SkillsUA: TMemo;
    TabSheetJob3UA: TTabSheet;
    Edit3DatesUA: TEdit;
    Edit3NameUA: TEdit;
    Edit3CompanyUA: TEdit;
    Memo3SkillsUA: TMemo;
    TabSheetJob4UA: TTabSheet;
    Edit4DatesUA: TEdit;
    Edit4NameUA: TEdit;
    Edit4CompanyUA: TEdit;
    Memo4SkillsUA: TMemo;
    TabSheetJob5UA: TTabSheet;
    Edit5DatesUA: TEdit;
    Edit5NameUA: TEdit;
    Edit5CompanyUA: TEdit;
    Memo5SkillsUA: TMemo;
    TabSheetJob6UA: TTabSheet;
    Edit6DatesUA: TEdit;
    Edit6NameUA: TEdit;
    Edit6CompanyUA: TEdit;
    Memo6SkillsUA: TMemo;
    TabSheetJob7UA: TTabSheet;
    Edit7DatesUA: TEdit;
    Edit7NameUA: TEdit;
    Edit7CompanyUA: TEdit;
    Memo7SkillsUA: TMemo;
    TabSheetJob8UA: TTabSheet;
    Edit8DatesUA: TEdit;
    Edit8NameUA: TEdit;
    Edit8CompanyUA: TEdit;
    Memo8SkillsUA: TMemo;
    TabSheetJob9UA: TTabSheet;
    Edit9DatesUA: TEdit;
    Edit9NameUA: TEdit;
    Edit9CompanyUA: TEdit;
    Memo9SkillsUA: TMemo;
    TabSheetJob10UA: TTabSheet;
    Edit10DatesUA: TEdit;
    Edit10NameUA: TEdit;
    Edit10CompanyUA: TEdit;
    Memo10SkillsUA: TMemo;
    UniGetFooters: TUniQuery;
    TabSheetFooterUA: TTabSheet;
    StaticText1: TStaticText;
    EditArticle1UA: TEdit;
    EditArticle2UA: TEdit;
    EditArticle3UA: TEdit;
    EditArticle4UA: TEdit;
    UniGetTemplate: TUniQuery;
    UniGetSkills: TUniQuery;
    UniGetJobs: TUniQuery;
    Label11: TLabel;
    BitBtnCopy: TBitBtn;
    UniSPInsertResume: TUniStoredProc;
    UniGetCopyResumeID: TUniQuery;
    EditLangUA: TEdit;
    EditRegionUA: TEdit;
    UniSPInsertExperiences: TUniStoredProc;
    UniSPInsertSkillShow: TUniStoredProc;
    StaticText6: TStaticText;
    StaticText7: TStaticText;
    StaticText8: TStaticText;
    Label17: TLabel;
    Label18: TLabel;
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
    UniGetTemplateFooters: TUniQuery;
    RichEditArticle1UA: TRichEdit;
    RichEditArticle2UA: TRichEdit;
    RichEditArticle3UA: TRichEdit;
    RichEditArticle4UA: TRichEdit;
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
    RichEditorUA: TRichEdit;
    CBMainWordWrapUA: TCheckBox;
    Label110: TLabel;
    Label111: TLabel;
    Label112: TLabel;
		Label113: TLabel;
    Label114: TLabel;
    Label115: TLabel;
    Label116: TLabel;
    Label117: TLabel;
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
    UniGetJobsjob_position: TWideStringField;
    UniGetJobsstart_date: TDateField;
    UniGetJobsend_date: TDateField;
    UniGetJobsemployer: TWideStringField;
    UniGetJobsresponsibilities: TWideMemoField;
    UniGetJobsother: TWideMemoField;
    UniGetJobscreated: TDateTimeField;
    UniGetJobsupdated: TDateTimeField;
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
    TabSheetCVUA: TTabSheet;
    TabSheetCLUA: TTabSheet;
    RichEditCLUA: TRichEdit;
    StaticText11: TStaticText;
    StaticText12: TStaticText;
    RichEditCVUA: TRichEdit;
    UniGetResumecv_introduction: TWideMemoField;
    UniGetResumecl_text: TWideMemoField;
    UniGetJobsexperience_id: TIntegerField;
    RichEdit1BenefitsUA: TRichEdit;
    UniGetJobsbenefits: TWideMemoField;
    UniGetJobsjob_order: TIntegerField;
    RichEdit2BenefitsUA: TRichEdit;
    RichEdit3BenefitsUA: TRichEdit;
    RichEdit4BenefitsUA: TRichEdit;
    RichEdit5BenefitsUA: TRichEdit;
    RichEdit6BenefitsUA: TRichEdit;
    RichEdit7BenefitsUA: TRichEdit;
    RichEdit8BenefitsUA: TRichEdit;
    RichEdit9BenefitsUA: TRichEdit;
    RichEdit10BenefitsUA: TRichEdit;
    UniGetFooterscv_include_footer: TBooleanField;
    CBCV_footer1UA: TCheckBox;
    CBCV_footer2UA: TCheckBox;
    CBCV_footer3UA: TCheckBox;
    CBCV_footer4UA: TCheckBox;
    PageControlTR: TPageControl;
    TabSheetMainTR: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label14: TLabel;
    EditNameTR: TEdit;
    EditOpportunityTR: TEdit;
    EditPlaceTR: TEdit;
    EditPhonesTR: TEdit;
    CBRegionTR: TComboBox;
    CBLangTR: TComboBox;
    CBPhones: TComboBox;
    BitBtn2: TBitBtn;
    RichEditorTR: TRichEdit;
    CBMainWordWrapTR: TCheckBox;
    TabSheetFooterTR: TTabSheet;
    StaticText3: TStaticText;
    EditArticle1TR: TEdit;
    StaticText5: TStaticText;
    EditArticle2TR: TEdit;
    CBCV_footer1TR: TCheckBox;
    CBCV_footer2TR: TCheckBox;
    RichEditArticle1TR: TRichEdit;
    RichEditArticle2TR: TRichEdit;
    StaticText2: TStaticText;
    EditArticle3TR: TEdit;
    StaticText4: TStaticText;
    EditArticle4TR: TEdit;
    CBCV_footer3TR: TCheckBox;
    CBCV_footer4TR: TCheckBox;
    RichEditArticle3TR: TRichEdit;
    RichEditArticle4TR: TRichEdit;
    TabSheetCVTR: TTabSheet;
    RichEditCVTR: TRichEdit;
    StaticText9: TStaticText;
    TabSheetCLTR: TTabSheet;
    RichEditCLTR: TRichEdit;
    StaticText10: TStaticText;
    TabSheetJob1TR: TTabSheet;
    Label15: TLabel;
    Label16: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Edit1DatesTR: TEdit;
    Edit1NameTR: TEdit;
    Edit1CompanyTR: TEdit;
    CalendarPickerB1TR: TCalendarPicker;
    CalendarPickerE1TR: TCalendarPicker;
    Memo1SkillsTR: TMemo;
    RichEdit1RespTR: TRichEdit;
    RichEdit1OtherTR: TRichEdit;
    RichEdit1BenefitsTR: TRichEdit;
    TabSheetJob2TR: TTabSheet;
    Label44: TLabel;
    Label53: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    Label82: TLabel;
    Label109: TLabel;
    Edit2DatesTR: TEdit;
    Edit2NameTR: TEdit;
    Edit2CompanyTR: TEdit;
    CalendarPickerB2TR: TCalendarPicker;
    CalendarPickerE2TR: TCalendarPicker;
    Edit2BenefitsTR: TEdit;
    Memo2SkillsTR: TMemo;
    RichEdit2RespTR: TRichEdit;
    RichEdit2OtherTR: TRichEdit;
    TabSheetJob3TR: TTabSheet;
    Label43: TLabel;
    Label52: TLabel;
    Label76: TLabel;
    Label77: TLabel;
    Label83: TLabel;
    Label108: TLabel;
    Edit3DatesTR: TEdit;
    Edit3NameTR: TEdit;
    Edit3CompanyTR: TEdit;
    CalendarPickerB3TR: TCalendarPicker;
    CalendarPickerE3TR: TCalendarPicker;
    Edit3BenefitsTR: TEdit;
    Memo3SkillsTR: TMemo;
    RichEdit3RespTR: TRichEdit;
    RichEdit3OtherTR: TRichEdit;
    TabSheetJob4TR: TTabSheet;
    Label42: TLabel;
    Label51: TLabel;
    Label78: TLabel;
    Label79: TLabel;
    Label84: TLabel;
    Label107: TLabel;
    Edit4DatesTR: TEdit;
    Edit4NameTR: TEdit;
    Edit4CompanyTR: TEdit;
    CalendarPickerB4TR: TCalendarPicker;
    CalendarPickerE4TR: TCalendarPicker;
    Edit4BenefitsTR: TEdit;
    Memo4SkillsTR: TMemo;
    RichEdit4RespTR: TRichEdit;
    RichEdit4OtherTR: TRichEdit;
    TabSheetJob5TR: TTabSheet;
    Label41: TLabel;
    Label50: TLabel;
    Label80: TLabel;
    Label81: TLabel;
    Label85: TLabel;
    Label106: TLabel;
    Edit5DatesTR: TEdit;
    Edit5NameTR: TEdit;
    Edit5CompanyTR: TEdit;
    CalendarPickerB5TR: TCalendarPicker;
    CalendarPickerE5TR: TCalendarPicker;
    Edit5BenefitsTR: TEdit;
    Memo5SkillsTR: TMemo;
    RichEdit5RespTR: TRichEdit;
    RichEdit5OtherTR: TRichEdit;
    TabSheetJob6TR: TTabSheet;
    Label40: TLabel;
    Label49: TLabel;
    Label86: TLabel;
    Label91: TLabel;
    Label92: TLabel;
    Label105: TLabel;
    Edit6BenefitsTR: TEdit;
    Edit6DatesTR: TEdit;
    Edit6NameTR: TEdit;
    Edit6CompanyTR: TEdit;
    CalendarPickerB6TR: TCalendarPicker;
    CalendarPickerE6TR: TCalendarPicker;
    Memo6SkillsTR: TMemo;
    RichEdit6RespTR: TRichEdit;
    RichEdit6OtherTR: TRichEdit;
    TabSheetJob7TR: TTabSheet;
    Label39: TLabel;
    Label48: TLabel;
    Label87: TLabel;
    Label93: TLabel;
    Label94: TLabel;
    Label104: TLabel;
    Edit7BenefitsTR: TEdit;
    CalendarPickerB7TR: TCalendarPicker;
    CalendarPickerE7TR: TCalendarPicker;
    Edit7DatesTR: TEdit;
    Edit7NameTR: TEdit;
    Edit7CompanyTR: TEdit;
    Memo7SkillsTR: TMemo;
    RichEdit7RespTR: TRichEdit;
    RichEdit7OtherTR: TRichEdit;
    TabSheetJob8TR: TTabSheet;
    Label38: TLabel;
    Label47: TLabel;
    Label88: TLabel;
    Label95: TLabel;
    Label96: TLabel;
    Label103: TLabel;
    Edit8BenefitsTR: TEdit;
    CalendarPickerB8TR: TCalendarPicker;
    CalendarPickerE8TR: TCalendarPicker;
    Edit8DatesTR: TEdit;
    Edit8NameTR: TEdit;
    Edit8CompanyTR: TEdit;
    Memo8SkillsTR: TMemo;
    RichEdit8RespTR: TRichEdit;
    RichEdit8OtherTR: TRichEdit;
    TabSheetJob9TR: TTabSheet;
    Label37: TLabel;
    Label46: TLabel;
    Label89: TLabel;
    Label97: TLabel;
    Label98: TLabel;
    Label102: TLabel;
    Edit9BenefitsTR: TEdit;
    Edit9DatesTR: TEdit;
    CalendarPickerB9TR: TCalendarPicker;
    CalendarPickerE9TR: TCalendarPicker;
    Edit9NameTR: TEdit;
    Edit9CompanyTR: TEdit;
    Memo9SkillsTR: TMemo;
    RichEdit9RespTR: TRichEdit;
    RichEdit9OtherTR: TRichEdit;
    TabSheetJob10TR: TTabSheet;
    Label36: TLabel;
    Label45: TLabel;
    Label90: TLabel;
    Label99: TLabel;
    Label100: TLabel;
    Label101: TLabel;
    Edit10BenefitsTR: TEdit;
    CalendarPickerB10TR: TCalendarPicker;
    CalendarPickerE10TR: TCalendarPicker;
    Edit10DatesTR: TEdit;
    Edit10NameTR: TEdit;
    Edit10CompanyTR: TEdit;
    Memo10SkillsTR: TMemo;
    RichEdit10RespTR: TRichEdit;
    RichEdit10OtherTR: TRichEdit;
    CBCVWordWrapUA: TCheckBox;
    CBCVWordWrapTR: TCheckBox;
    CBCLWordWrapTR: TCheckBox;
    CBCLWordWrapUA: TCheckBox;
    BitBtnClear1: TBitBtn;
    BitBtnClear2: TBitBtn;
    BitBtnClear3: TBitBtn;
    BitBtnClear4: TBitBtn;
    BitBtnClear5: TBitBtn;
    BitBtnClear6: TBitBtn;
    BitBtnClear7: TBitBtn;
    BitBtnClear8: TBitBtn;
    BitBtnClear9: TBitBtn;
    BitBtnClear10: TBitBtn;
    BitBtn1: TBitBtn;
		procedure PageControlTRChange(Sender: TObject);
    procedure PageControlUAChange(Sender: TObject);
    procedure BitBtnSaveClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CalendarPickerB1TRCloseUp(Sender: TObject);
    procedure CalendarPickerE1TRCloseUp(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure CalendarPickerB2TRCloseUp(Sender: TObject);
    procedure CalendarPickerE2TRCloseUp(Sender: TObject);
    procedure CalendarPickerB3TRCloseUp(Sender: TObject);
    procedure CalendarPickerE3TRCloseUp(Sender: TObject);
    procedure CalendarPickerB4TRCloseUp(Sender: TObject);
    procedure CalendarPickerE4TRCloseUp(Sender: TObject);
    procedure CalendarPickerB5TRCloseUp(Sender: TObject);
    procedure CalendarPickerE5TRCloseUp(Sender: TObject);
    procedure CalendarPickerB6TRCloseUp(Sender: TObject);
    procedure CalendarPickerE6TRCloseUp(Sender: TObject);
    procedure CalendarPickerB7TRCloseUp(Sender: TObject);
    procedure CalendarPickerE7TRCloseUp(Sender: TObject);
    procedure CalendarPickerB8TRCloseUp(Sender: TObject);
    procedure CalendarPickerE8TRCloseUp(Sender: TObject);
    procedure CalendarPickerB9TRCloseUp(Sender: TObject);
    procedure CalendarPickerE9TRCloseUp(Sender: TObject);
    procedure CalendarPickerB10TRCloseUp(Sender: TObject);
    procedure CalendarPickerE10TRCloseUp(Sender: TObject);
    procedure BitBtnCopyClick(Sender: TObject);
    procedure CalendarPickerE1TRChange(Sender: TObject);
    procedure CalendarPickerB2TRChange(Sender: TObject);
    procedure CalendarPickerE2TRChange(Sender: TObject);
    procedure CalendarPickerB3TRChange(Sender: TObject);
    procedure CalendarPickerE3TRChange(Sender: TObject);
    procedure CalendarPickerB4TRChange(Sender: TObject);
    procedure CalendarPickerE4TRChange(Sender: TObject);
    procedure CalendarPickerB5TRChange(Sender: TObject);
    procedure CalendarPickerE5TRChange(Sender: TObject);
    procedure CalendarPickerB7TRChange(Sender: TObject);
    procedure CalendarPickerB8TRChange(Sender: TObject);
    procedure CalendarPickerE8TRChange(Sender: TObject);
    procedure CalendarPickerB9TRChange(Sender: TObject);
    procedure CalendarPickerE9TRChange(Sender: TObject);
		procedure CalendarPickerB10TRChange(Sender: TObject);
		procedure CalendarPickerE10TRChange(Sender: TObject);
		procedure CBLangTRChange(Sender: TObject);
		procedure BitBtn2Click(Sender: TObject);
		procedure CBRegionTRChange(Sender: TObject);
		procedure CBMainWordWrapTRClick(Sender: TObject);
		procedure CBMainWordWrapUAClick(Sender: TObject);
    procedure BitBtnClear10Click(Sender: TObject);
    procedure BitBtnClear2Click(Sender: TObject);
    procedure BitBtnClear3Click(Sender: TObject);
    procedure BitBtnClear4Click(Sender: TObject);
    procedure BitBtnClear5Click(Sender: TObject);
    procedure BitBtnClear6Click(Sender: TObject);
    procedure BitBtnClear7Click(Sender: TObject);
    procedure BitBtnClear8Click(Sender: TObject);
    procedure BitBtnClear9Click(Sender: TObject);
    procedure BitBtnCloseClick(Sender: TObject);
    procedure CBCVWordWrapUAClick(Sender: TObject);
    procedure CBCVWordWrapTRClick(Sender: TObject);
    procedure CBCLWordWrapUAClick(Sender: TObject);
    procedure CBCLWordWrapTRClick(Sender: TObject);
    procedure BitBtnClear1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
	private
		CBLang_First_Value, CBRegion_First_Value: string;
		CBRegionTR_ID:string;
		FootersAreActive: array [1 .. 4] of boolean;
		JobsAreActive: array [1 .. 10] of boolean;
		CalendarPickerB: array [1 .. 10] of TDate;
		CalendarPickerE: array [1 .. 10] of TDate;
//		FResumeID : integer;
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
		procedure SaveResume(var ResumeID:integer; var Res:boolean); // Сохранение значений Resume
		function SaveJobs(ResumeID:integer): boolean;    // Сохранение значений Jobs
//    procedure GetFootersFromID; // Получить значения футера из другого резюме, указав краткое имя и язык
//    procedure GetResumefromID;       // Получить значения первого окна Resume указав ResumeID для копирования
//    procedure GetResumeTRfromUA;
    procedure CopyTRfromUA;
    function isMainFormGood:boolean;
    function isJobGood:boolean;
    function isJobDatesGood:boolean;
    function isJobDatesValid: boolean;
    function isJobPeriodsValid: boolean;
    procedure Clear1;
    procedure Clear10;
    procedure Clear2;
    procedure Clear3;
    procedure Clear4;
    procedure Clear5;
    procedure Clear6;
    procedure Clear7;
    procedure Clear8;
    procedure Clear9;
  public
    LCopyFromResumeID, LCopyFromTemplateID:integer;
    Dates1BUA,Dates1EUA,Dates2BUA,Dates2EUA,Dates3BUA,Dates3EUA:TDate;
    Dates4BUA,Dates4EUA,Dates5BUA,Dates5EUA,Dates6BUA,Dates6EUA:TDate;
    Dates7BUA,Dates7EUA,Dates8BUA,Dates8EUA,Dates9BUA,Dates9EUA,Dates10BUA,Dates10EUA:TDate;
		function NVL(Value:variant):string;
		procedure SetEmptyTR;     // Очистить все поля для TR
    procedure SetEmptyUA;     // Очистить все поля для UA
    procedure SetFormValues;  // Установить все значения перед открытием окна
    procedure GetValuesFromTemplate(TemplateId: integer); //Получить значения из шаблона - вызов внутри модуля
    procedure GetValuesFromResume(const ResumeID:integer);
    procedure SetDatesTRromVariables;
    procedure UpdateUAMarkers;
    procedure UpdateTRMarkers;
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
SetEmptyTR;
PageControlUA.ActivePage := TabSheetMainUA;
PageControlTR.ActivePage := TabSheetMainTR;
CBLangTR.Text := 'UA';
CBRegionTR.Text := 'Ukraine';
for i := 1 to 4 do
  FootersAreActive[i] := false;
for i := 1 to 10 do
  JobsAreActive[i] := false;
PageControlTR.ActivePageIndex:=0;
FormMain.UniParameterByName.Close;
FormMain.UniParameterByName.ParamByName('p_name').AsString:=CBLangTR.Text;
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
TabSheetMainUA.Highlighted:=false;
TabSheetFooterUA.Highlighted:=false;
TabSheetCVUA.Highlighted:=false;
TabSheetCLUA.Highlighted:=false;
TabSheetJob1UA.Highlighted:=false;
TabSheetJob2UA.Highlighted:=false;
TabSheetJob3UA.Highlighted:=false;
TabSheetJob4UA.Highlighted:=false;
TabSheetJob5UA.Highlighted:=false;
TabSheetJob6UA.Highlighted:=false;
TabSheetJob7UA.Highlighted:=false;
TabSheetJob8UA.Highlighted:=false;
TabSheetJob9UA.Highlighted:=false;
TabSheetJob10UA.Highlighted:=false;

TabSheetMainTR.Highlighted:=false;
TabSheetFooterTR.Highlighted:=false;
TabSheetCVTR.Highlighted:=false;
TabSheetCLTR.Highlighted:=false;
TabSheetJob1TR.Highlighted:=false;
TabSheetJob2TR.Highlighted:=false;
TabSheetJob3TR.Highlighted:=false;
TabSheetJob4TR.Highlighted:=false;
TabSheetJob5TR.Highlighted:=false;
TabSheetJob6TR.Highlighted:=false;
TabSheetJob7TR.Highlighted:=false;
TabSheetJob8TR.Highlighted:=false;
TabSheetJob9TR.Highlighted:=false;
TabSheetJob10TR.Highlighted:=false;
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

procedure TFormNewResume.UpdateTRMarkers;
begin
if not FormMain.IsEmpty(EditNameTR.Text) or
   not FormMain.IsEmpty(EditOpportunityTR.Text) or
   not FormMain.IsEmpty(RichEditorTR.Text)
then TabSheetMainTR.Highlighted:=true
else TabSheetMainTR.Highlighted:=false;
if not FormMain.IsEmpty(EditArticle1TR.Text) or
   not FormMain.IsEmpty(EditArticle2TR.Text) or
   not FormMain.IsEmpty(EditArticle3TR.Text) or
   not FormMain.IsEmpty(EditArticle4TR.Text)
then TabSheetFooterTR.Highlighted:=true
else TabSheetFooterTR.Highlighted:=false;
if not FormMain.IsEmpty(RichEditCVTR.Text)
then TabSheetCVTR.Highlighted:=true
else TabSheetCVTR.Highlighted:=false;
if not FormMain.IsEmpty(RichEditCLTR.Text)
then TabSheetCLTR.Highlighted:=true
else TabSheetCLTR.Highlighted:=false;

if not FormMain.IsEmpty(Edit1NameTR.Text) or
   not FormMain.IsEmpty(Edit1CompanyTR.Text) or
   not FormMain.IsEmpty(RichEdit1RespTR.Text)
then TabSheetJob1TR.Highlighted:=true
else TabSheetJob1TR.Highlighted:=false;
if not FormMain.IsEmpty(Edit2NameTR.Text) or
  not FormMain.IsEmpty(Edit2CompanyTR.Text) or
  not FormMain.IsEmpty(RichEdit2RespTR.Text)
then TabSheetJob2TR.Highlighted:=true
else TabSheetJob2TR.Highlighted:=false;
if not FormMain.IsEmpty(Edit3NameTR.Text) or
  not FormMain.IsEmpty(Edit3CompanyTR.Text) or
  not FormMain.IsEmpty(RichEdit3RespTR.Text)
then TabSheetJob3TR.Highlighted:=true
else TabSheetJob3TR.Highlighted:=false;
if not FormMain.IsEmpty(Edit4NameTR.Text) or
  not FormMain.IsEmpty(Edit4CompanyTR.Text) or
  not FormMain.IsEmpty(RichEdit4RespTR.Text)
then TabSheetJob4TR.Highlighted:=true
else TabSheetJob4TR.Highlighted:=false;
if not FormMain.IsEmpty(Edit5NameTR.Text) or
  not FormMain.IsEmpty(Edit5CompanyTR.Text) or
  not FormMain.IsEmpty(RichEdit5RespTR.Text)
then TabSheetJob5TR.Highlighted:=true
else TabSheetJob5TR.Highlighted:=false;
if not FormMain.IsEmpty(Edit6NameTR.Text) or
  not FormMain.IsEmpty(Edit6CompanyTR.Text) or
  not FormMain.IsEmpty(RichEdit6RespTR.Text)
then TabSheetJob6TR.Highlighted:=true
else TabSheetJob6TR.Highlighted:=false;
if not FormMain.IsEmpty(Edit7NameTR.Text) or
  not FormMain.IsEmpty(Edit7CompanyTR.Text) or
  not FormMain.IsEmpty(RichEdit7RespTR.Text)
then TabSheetJob7TR.Highlighted:=true
else TabSheetJob7TR.Highlighted:=false;
if not FormMain.IsEmpty(Edit8NameTR.Text) or
   not FormMain.IsEmpty(Edit8CompanyTR.Text) or
   not FormMain.IsEmpty(RichEdit8RespTR.Text)
then TabSheetJob8TR.Highlighted:=true
else TabSheetJob8TR.Highlighted:=false;
if not FormMain.IsEmpty(Edit9NameTR.Text) or
   not FormMain.IsEmpty(Edit9CompanyTR.Text) or
   not FormMain.IsEmpty(RichEdit9RespTR.Text)
then TabSheetJob9TR.Highlighted:=true
else TabSheetJob9TR.Highlighted:=false;
if not FormMain.IsEmpty(Edit10NameTR.Text) or
   not FormMain.IsEmpty(Edit10CompanyTR.Text) or
   not FormMain.IsEmpty(RichEdit10RespTR.Text)
then TabSheetJob10TR.Highlighted:=true
else TabSheetJob10TR.Highlighted:=false;
end;

procedure TFormNewResume.UpdateUAMarkers;
begin
if not FormMain.IsEmpty(EditNameUA.Text) or
   not FormMain.IsEmpty(EditOpportunityUA.Text) or
   not FormMain.IsEmpty(RichEditorTR.Text)
then TabSheetMainUA.Highlighted:=true
else TabSheetMainUA.Highlighted:=false;
if not FormMain.IsEmpty(EditNameUA.Text) or
   not FormMain.IsEmpty(EditOpportunityUA.Text) or
   not FormMain.IsEmpty(RichEditorTR.Text)
then TabSheetFooterUA.Highlighted:=true
else TabSheetFooterUA.Highlighted:=false;
if not FormMain.IsEmpty(RichEditCVUA.Text)
then TabSheetCVUA.Highlighted:=true
else TabSheetCVUA.Highlighted:=false;
if not FormMain.IsEmpty(RichEditCLUA.Text)
then TabSheetCLUA.Highlighted:=true
else TabSheetCLUA.Highlighted:=false;

if not FormMain.IsEmpty(Edit1NameUA.Text) or
   not FormMain.IsEmpty(Edit1CompanyUA.Text) or
   not FormMain.IsEmpty(RichEdit1RespUA.Text)
then TabSheetJob1UA.Highlighted:=true
else TabSheetJob1UA.Highlighted:=false;
if not FormMain.IsEmpty(Edit2NameUA.Text) or
  not FormMain.IsEmpty(Edit2CompanyUA.Text) or
  not FormMain.IsEmpty(RichEdit2RespUA.Text)
then TabSheetJob2UA.Highlighted:=true
else TabSheetJob2UA.Highlighted:=false;
if not FormMain.IsEmpty(Edit3NameUA.Text) or
  not FormMain.IsEmpty(Edit3CompanyUA.Text) or
  not FormMain.IsEmpty(RichEdit3RespUA.Text)
then TabSheetJob3UA.Highlighted:=true
else TabSheetJob3UA.Highlighted:=false;
if not FormMain.IsEmpty(Edit4NameUA.Text) or
  not FormMain.IsEmpty(Edit4CompanyUA.Text) or
  not FormMain.IsEmpty(RichEdit4RespUA.Text)
then TabSheetJob4UA.Highlighted:=true
else TabSheetJob4UA.Highlighted:=false;
if not FormMain.IsEmpty(Edit5NameUA.Text) or
  not FormMain.IsEmpty(Edit5CompanyUA.Text) or
  not FormMain.IsEmpty(RichEdit5RespUA.Text)
then TabSheetJob5UA.Highlighted:=true
else TabSheetJob5UA.Highlighted:=false;
if not FormMain.IsEmpty(Edit6NameUA.Text) or
  not FormMain.IsEmpty(Edit6CompanyUA.Text) or
  not FormMain.IsEmpty(RichEdit6RespUA.Text)
then TabSheetJob6UA.Highlighted:=true
else TabSheetJob6UA.Highlighted:=false;
if not FormMain.IsEmpty(Edit7NameUA.Text) or
  not FormMain.IsEmpty(Edit7CompanyUA.Text) or
  not FormMain.IsEmpty(RichEdit7RespUA.Text)
then TabSheetJob7UA.Highlighted:=true
else TabSheetJob7UA.Highlighted:=false;
if not FormMain.IsEmpty(Edit8NameUA.Text) or
   not FormMain.IsEmpty(Edit8CompanyUA.Text) or
   not FormMain.IsEmpty(RichEdit8RespUA.Text)
then TabSheetJob8UA.Highlighted:=true
else TabSheetJob8UA.Highlighted:=false;
if not FormMain.IsEmpty(Edit9NameUA.Text) or
   not FormMain.IsEmpty(Edit9CompanyUA.Text) or
   not FormMain.IsEmpty(RichEdit9RespUA.Text)
then TabSheetJob9UA.Highlighted:=true
else TabSheetJob9UA.Highlighted:=false;
if not FormMain.IsEmpty(Edit10NameUA.Text) or
   not FormMain.IsEmpty(Edit10CompanyUA.Text) or
   not FormMain.IsEmpty(RichEdit10RespUA.Text)
then TabSheetJob10UA.Highlighted:=true
else TabSheetJob10UA.Highlighted:=false;
end;

procedure TFormNewResume.FormCreate(Sender: TObject);
begin
  PageControlTR.ActivePage := TabSheetMainTR;
  InitCBLanguages;
  InitCBRegions;
end;

procedure TFormNewResume.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F2 then
    BitBtnSave.Click;
end;


procedure TFormNewResume.PageControlTRChange(Sender: TObject);
begin
PageControlUA.ActivePageIndex := PageControlTR.ActivePageIndex;
UpdateTRMarkers;
end;

procedure TFormNewResume.PageControlUAChange(Sender: TObject);
begin
  PageControlTR.ActivePageIndex := PageControlUA.ActivePageIndex;
  UpdateUAMarkers;

end;

procedure TFormNewResume.InitCBLanguages;
begin
  CBLangTR.Clear;
  FormMain.UniLanguages.Close;
  FormMain.UniLanguages.Open;
  CBLangTR.Text := FormMain.UniLanguages['lang'];
  CBLang_First_Value := FormMain.UniLanguages['lang'];
  while not FormMain.UniLanguages.EOF do
  begin
    CBLangTR.Items.Add(FormMain.UniLanguages['lang']);
    FormMain.UniLanguages.Next;
  end;
  FormMain.UniLanguages.Close;
end;

procedure TFormNewResume.InitCBRegions;
begin
CBRegionTR.Clear;
FormMain.UniRegions.Close;
FormMain.UniRegions.Open;
CBRegionTR.Text := FormMain.UniRegions['region_name'];
CBRegionTR_ID:='UA';
CBRegion_First_Value := FormMain.UniRegions['region_name'];
while not FormMain.UniRegions.EOF do
  begin
    CBRegionTR.Items.Add(FormMain.UniRegions['region_name']);
    FormMain.UniRegions.Next;
  end;
end;

function TFormNewResume.NVL(Value: variant): string;
begin
if VarIsNull(Value) then Result:='' else Result:=Value;
end;

procedure TFormNewResume.SetDatesTRromVariables;
begin
CalendarPickerB1TR.Date:=Dates1BUA;
CalendarPickerE1TR.Date:=Dates1EUA;
CalendarPickerB2TR.Date:=Dates2BUA;
CalendarPickerE2TR.Date:=Dates2EUA;
CalendarPickerB3TR.Date:=Dates3BUA;
CalendarPickerE3TR.Date:=Dates3EUA;
CalendarPickerB4TR.Date:=Dates4BUA;
CalendarPickerE4TR.Date:=Dates4EUA;
CalendarPickerB5TR.Date:=Dates5BUA;
CalendarPickerE5TR.Date:=Dates5EUA;
CalendarPickerB6TR.Date:=Dates6BUA;
CalendarPickerE6TR.Date:=Dates6EUA;
CalendarPickerB7TR.Date:=Dates7BUA;
CalendarPickerE7TR.Date:=Dates7EUA;
CalendarPickerB8TR.Date:=Dates8BUA;
CalendarPickerE8TR.Date:=Dates8EUA;
CalendarPickerB9TR.Date:=Dates9BUA;
CalendarPickerE9TR.Date:=Dates9EUA;
CalendarPickerB10TR.Date:=Dates10BUA;
CalendarPickerE10TR.Date:=Dates10EUA;
end;

procedure TFormNewResume.SetEmptyTR;
var AF: TFormatSettings;
begin
  AF := TFormatSettings.Create('de-DE');
  AF.DateSeparator:='.';
  EditNameTR.Text := '';
  EditOpportunityTR.Text := '';
  EditPlaceTR.Text := '';
	EditPhonesTR.Text := '';
	RichEditorTR.Clear;
  EditLangUA.Text := 'UA';
  EditRegionUA.Text := 'Ukraine';

	RichEditArticle1TR.Text := '';
	RichEditArticle2TR.Text := '';
	RichEditArticle3TR.Text := '';
	RichEditArticle4TR.Text := '';
	EditArticle1TR.Text := '';
	EditArticle2TR.Text := '';
	EditArticle3TR.Text := '';
	EditArticle4TR.Text := '';
  CBCV_footer1TR.Checked:=false;
  CBCV_footer2TR.Checked:=false;
  CBCV_footer3TR.Checked:=false;
  CBCV_footer4TR.Checked:=false;

  RichEditCVTR.Text:='';
  RichEditCLTR.Text:='';

	Edit1DatesTR.Text := '';
	Edit1NameTR.Text := '';
	Edit1CompanyTR.Text := '';
	RichEdit1RespTR.Text := '';
	RichEdit1BenefitsTR.Text := '';
	Memo1SkillsTR.Text := '';
	RichEdit1OtherTR.Text := '';

	Edit2DatesTR.Text := '';
	Edit2NameTR.Text := '';
	Edit2CompanyTR.Text := '';
	RichEdit2RespTR.Text := '';
	Edit2BenefitsTR.Text := '';
	Memo2SkillsTR.Text := '';
	RichEdit2OtherTR.Text := '';

	Edit3DatesTR.Text := '';
	Edit3NameTR.Text := '';
	Edit3CompanyTR.Text := '';
	RichEdit3RespTR.Text := '';
	Edit3BenefitsTR.Text := '';
	Memo3SkillsTR.Text := '';
	RichEdit3OtherTR.Text := '';

	Edit4DatesTR.Text := '';
	Edit4NameTR.Text := '';
	Edit4CompanyTR.Text := '';
	RichEdit4RespTR.Text := '';
	Edit4BenefitsTR.Text := '';
	Memo4SkillsTR.Text := '';
	RichEdit4OtherTR.Text := '';

	Edit5DatesTR.Text := '';
	Edit5NameTR.Text := '';
	Edit5CompanyTR.Text := '';
	RichEdit5RespTR.Text := '';
	Edit5BenefitsTR.Text := '';
	Memo5SkillsTR.Text := '';
	RichEdit5OtherTR.Text := '';

	Edit6DatesTR.Text := '';
	Edit6NameTR.Text := '';
	Edit6CompanyTR.Text := '';
	RichEdit6RespTR.Text := '';
	Edit6BenefitsTR.Text := '';
	Memo6SkillsTR.Text := '';
	RichEdit6OtherTR.Text := '';

	Edit7DatesTR.Text := '';
	Edit7NameTR.Text := '';
	Edit7CompanyTR.Text := '';
	RichEdit7RespTR.Text := '';
	Edit7BenefitsTR.Text := '';
	Memo7SkillsTR.Text := '';
	RichEdit7OtherTR.Text := '';

	Edit8DatesTR.Text := '';
	Edit8NameTR.Text := '';
	Edit8CompanyTR.Text := '';
	RichEdit8RespTR.Text := '';
	Edit8BenefitsTR.Text := '';
	Memo8SkillsTR.Text := '';
	RichEdit8OtherTR.Text := '';

	Edit9DatesTR.Text := '';
	Edit9NameTR.Text := '';
	Edit9CompanyTR.Text := '';
	RichEdit9RespTR.Text := '';
	Edit9BenefitsTR.Text := '';
	Memo9SkillsTR.Text := '';
	RichEdit9OtherTR.Text := '';

	Edit10DatesTR.Text := '';
	Edit10NameTR.Text := '';
	Edit10CompanyTR.Text := '';
	RichEdit10RespTR.Text := '';
	Edit10BenefitsTR.Text := '';
	Memo10SkillsTR.Text := '';
	RichEdit10OtherTR.Text := '';

	CalendarPickerB1TR.isEmpty:=true;
	CalendarPickerB2TR.isEmpty:=true;
	CalendarPickerB3TR.isEmpty:=true;
	CalendarPickerB4TR.isEmpty:=true;
	CalendarPickerB5TR.isEmpty:=true;
	CalendarPickerB6TR.isEmpty:=true;
	CalendarPickerB7TR.isEmpty:=true;
	CalendarPickerB8TR.isEmpty:=true;
	CalendarPickerB9TR.isEmpty:=true;
	CalendarPickerB10TR.isEmpty:=true;

	CalendarPickerE1TR.isEmpty:=true;
	CalendarPickerE2TR.isEmpty:=true;
	CalendarPickerE3TR.isEmpty:=true;
	CalendarPickerE4TR.isEmpty:=true;
	CalendarPickerE5TR.isEmpty:=true;
	CalendarPickerE6TR.isEmpty:=true;
	CalendarPickerE7TR.isEmpty:=true;
	CalendarPickerE8TR.isEmpty:=true;
	CalendarPickerE9TR.isEmpty:=true;
	CalendarPickerE10TR.isEmpty:=true;
end;

procedure TFormNewResume.SetEmptyUA;
var i:integer;
begin
  Dates1BUA:=-693594;
  Dates1EUA:=-693594;
  Dates2BUA:=-693594;
  Dates2EUA:=-693594;
  Dates3BUA:=-693594;
  Dates3EUA:=-693594;
  Dates4BUA:=-693594;
  Dates4EUA:=-693594;
  Dates5BUA:=-693594;
  Dates5EUA:=-693594;
  Dates6BUA:=-693594;
  Dates6EUA:=-693594;
  Dates7BUA:=-693594;
  Dates7EUA:=-693594;
  Dates8BUA:=-693594;
  Dates8EUA:=-693594;
  Dates9BUA:=-693594;
  Dates9EUA:=-693594;
  Dates10BUA:=-693594;
  Dates10EUA:=-693594;

  EditNameUA.Text := '';
  EditOpportunityUA.Text := '';
  EditPlaceUA.Text := '';
  EditPhonesUA.Text := '';
  RichEditorUA.Text := '';

	RichEditArticle1UA.Text := '';
	RichEditArticle2UA.Text := '';
	RichEditArticle3UA.Text := '';
	RichEditArticle4UA.Text := '';
  EditArticle1UA.Text := '';
  EditArticle2UA.Text := '';
	EditArticle3UA.Text := '';
	EditArticle4UA.Text := '';

  CBCV_footer1UA.Checked:=false;
  CBCV_footer2UA.Checked:=false;
  CBCV_footer3UA.Checked:=false;
  CBCV_footer4UA.Checked:=false;

	for i:=1 to 10 do
		begin
		CalendarPickerB[i]:=0.0;
		CalendarPickerE[i]:=0.0;
    end;
	Edit1DatesUA.Text := '';	Edit1NameUA.Text := '';	Edit1CompanyUA.Text := '';
	RichEdit1RespUA.Text := '';
	RichEdit1BenefitsUA.Text := '';
  Memo1SkillsUA.Text := '';
	RichEdit1OtherUA.Text := '';

	Edit2DatesUA.Text := '';  Edit2NameUA.Text := '';  Edit2CompanyUA.Text := '';
	RichEdit2RespUA.Text := '';
	RichEdit2BenefitsUA.Text := '';  Memo2SkillsUA.Text := '';
	RichEdit2OtherUA.Text := '';

	Edit3DatesUA.Text := '';  Edit3NameUA.Text := '';  Edit3CompanyUA.Text := '';
	RichEdit3RespUA.Text := '';
	RichEdit3BenefitsUA.Text := '';  Memo3SkillsUA.Text := '';
	RichEdit3OtherUA.Text := '';

	Edit4DatesUA.Text := '';  Edit4NameUA.Text := '';  Edit4CompanyUA.Text := '';
	RichEdit4RespUA.Text := '';
  RichEdit4BenefitsUA.Text := '';  Memo4SkillsUA.Text := '';  RichEdit4OtherUA.Text := '';

	Edit5DatesUA.Text := '';  Edit5NameUA.Text := '';  Edit5CompanyUA.Text := '';
	RichEdit5RespUA.Text := '';
  RichEdit5BenefitsUA.Text := '';  Memo5SkillsUA.Text := '';  RichEdit5OtherUA.Text := '';

	Edit6DatesUA.Text := '';  Edit6NameUA.Text := '';  Edit6CompanyUA.Text := '';
	RichEdit6RespUA.Text := '';
  RichEdit6BenefitsUA.Text := '';  Memo6SkillsUA.Text := '';  RichEdit6OtherUA.Text := '';

	Edit7DatesUA.Text := '';  Edit7NameUA.Text := '';  Edit7CompanyUA.Text := '';
	RichEdit7RespUA.Text := '';
  RichEdit7BenefitsUA.Text := '';  Memo7SkillsUA.Text := '';  RichEdit7OtherUA.Text := '';

	Edit8DatesUA.Text := '';  Edit8NameUA.Text := '';  Edit8CompanyUA.Text := '';
	RichEdit8RespUA.Text := '';
  RichEdit8BenefitsUA.Text := '';  Memo8SkillsUA.Text := '';  RichEdit8OtherUA.Text := '';

	Edit9DatesUA.Text := '';  Edit9NameUA.Text := '';  Edit9CompanyUA.Text := '';
	RichEdit9RespUA.Text := '';
  RichEdit9BenefitsUA.Text := '';  Memo9SkillsUA.Text := '';  RichEdit9OtherUA.Text := '';

	Edit10DatesUA.Text := '';  Edit10NameUA.Text := '';  Edit10CompanyUA.Text := '';
	RichEdit10RespUA.Text := '';
  RichEdit10BenefitsUA.Text := '';  Memo10SkillsUA.Text := '';  RichEdit10OtherUA.Text := '';
end;


//procedure TFormNewResume.GetResumeTRfromUA;
//begin
//  EditNameTR.Text := EditNameUA.Text;
//  EditOpportunityTR.Text := EditOpportunityUA.Text;
//  EditPlaceTR.Text := EditPlaceUA.Text;
//	EditPhonesTR.Text := EditPhonesUA.Text;
//	RichEditorTR.Text := RichEditorUA.Text;
//  EditLangRU.Text := 'UA';
//  EditRegionRU.Text := 'UA';
//
//	RichEditArticle1TR.Text := '';  RichEditArticle2TR.Text := '';
//	RichEditArticle3TR.Text := '';  RichEditArticle4TR.Text := '';
//
//	EditArticle1TR.Text := '';  EditArticle2TR.Text := '';  EditArticle3TR.Text := '';  EditArticle4TR.Text := '';
//
//	Edit1DatesTR.Text := '';  Edit1NameTR.Text := '';  Edit1CompanyTR.Text := ''; RichEdit1RespTR.Text := '';
//	RichEdit1BenefitsTR.Text := ''; Memo1SkillsTR.Text := ''; RichEdit1OtherTR.Text := '';
//
//	Edit2DatesTR.Text := '';  Edit2NameTR.Text := '';  Edit2CompanyTR.Text := '';  RichEdit2RespTR.Text := '';
//  Edit2BenefitsTR.Text := '';  Memo2SkillsTR.Text := '';  RichEdit2OtherTR.Text := '';
//
//  Edit3DatesTR.Text := '';  Edit3NameTR.Text := '';  Edit3CompanyTR.Text := '';  RichEdit3RespTR.Text := '';
//  Edit3BenefitsTR.Text := '';  Memo3SkillsTR.Text := '';  RichEdit3OtherTR.Text := '';
//
//  Edit4DatesTR.Text := '';  Edit4NameTR.Text := '';  Edit4CompanyTR.Text := '';  RichEdit4RespTR.Text := '';
//  Edit4BenefitsTR.Text := '';  Memo4SkillsTR.Text := '';  RichEdit4OtherTR.Text := '';
//
//  Edit5DatesTR.Text := '';  Edit5NameTR.Text := '';  Edit5CompanyTR.Text := '';  RichEdit5RespTR.Text := '';
//  Edit5BenefitsTR.Text := '';  Memo5SkillsTR.Text := '';  RichEdit5OtherTR.Text := '';
//
//  Edit6DatesTR.Text := '';  Edit6NameTR.Text := '';  Edit6CompanyTR.Text := '';  RichEdit6RespTR.Text := '';
//  Edit6BenefitsTR.Text := '';  Memo6SkillsTR.Text := '';  RichEdit6OtherTR.Text := '';
//
//  Edit7DatesTR.Text := '';  Edit7NameTR.Text := '';  Edit7CompanyTR.Text := '';  RichEdit7RespTR.Text := '';
//  Edit7BenefitsTR.Text := '';  Memo7SkillsTR.Text := '';  RichEdit7OtherTR.Text := '';
//
//  Edit8DatesTR.Text := '';  Edit8NameTR.Text := '';  Edit8CompanyTR.Text := '';  RichEdit8RespTR.Text := '';
//  Edit8BenefitsTR.Text := '';  Memo8SkillsTR.Text := '';  RichEdit8OtherTR.Text := '';
//
//  Edit9DatesTR.Text := '';  Edit9NameTR.Text := '';  Edit9CompanyTR.Text := '';  RichEdit9RespTR.Text := '';
//  Edit9BenefitsTR.Text := '';  Memo9SkillsTR.Text := '';  RichEdit9OtherTR.Text := '';
//
//  Edit10DatesTR.Text := '';  Edit10NameTR.Text := '';  Edit10CompanyTR.Text := '';  RichEdit10RespTR.Text := '';
//	Edit10BenefitsTR.Text := '';  Memo10SkillsTR.Text := '';  RichEdit10OtherTR.Text := '';
//end;



procedure TFormNewResume.BitBtn1Click(Sender: TObject);
begin
ShowMessage(DateToStr(CalendarPickerB1TR.Date));
end;

procedure TFormNewResume.BitBtn2Click(Sender: TObject);
begin
EditPhonesTR.Text:=Trim(EditPhonesTR.Text+' '+CBPhones.Text);
end;

procedure TFormNewResume.BitBtnClear10Click(Sender: TObject);
begin
Clear10;
end;

procedure TFormNewResume.BitBtnClear1Click(Sender: TObject);
begin
Clear1;
end;

procedure TFormNewResume.BitBtnClear2Click(Sender: TObject);
begin
Clear2;
end;

procedure TFormNewResume.BitBtnClear3Click(Sender: TObject);
begin
Clear3;
end;

procedure TFormNewResume.BitBtnClear4Click(Sender: TObject);
begin
Clear4;
end;

procedure TFormNewResume.BitBtnClear5Click(Sender: TObject);
begin
Clear5;
end;

procedure TFormNewResume.BitBtnClear6Click(Sender: TObject);
begin
Clear6;
end;

procedure TFormNewResume.BitBtnClear7Click(Sender: TObject);
begin
Clear7;
end;

procedure TFormNewResume.BitBtnClear8Click(Sender: TObject);
begin
Clear8;
end;

procedure TFormNewResume.BitBtnClear9Click(Sender: TObject);
begin
Clear9;
end;

procedure TFormNewResume.BitBtnCloseClick(Sender: TObject);
begin
Close;
end;

procedure TFormNewResume.Clear1;
begin
CalendarPickerB1TR.isEmpty:=true;
CalendarPickerE1TR.isEmpty:=true;
Edit1DatesTR.Text := '';
Edit1NameTR.Text := '';
Edit1CompanyTR.Text := '';
RichEdit1RespTR.Text := '';
RichEdit1BenefitsTR.Text := '';
RichEdit1OtherTR.Text:='';
Memo1SkillsTR.Clear;
//Edit1DatesUA.Text := '';
//Edit1NameUA.Text := '';
//Edit1CompanyUA.Text := '';
//RichEdit1RespUA.Text := '';
//RichEdit1BenefitsUA.Text := '';
//RichEdit1OtherUA.Text:='';
//Memo1SkillsUA.Clear;
end;

procedure TFormNewResume.Clear2;
begin
CalendarPickerB2TR.isEmpty:=true;
CalendarPickerE2TR.isEmpty:=true;
Edit2DatesTR.Text := '';
Edit2NameTR.Text := '';
Edit2CompanyTR.Text := '';
RichEdit2RespTR.Text := '';
Edit2BenefitsTR.Text := '';
RichEdit2OtherTR.Text:='';
Memo2SkillsTR.Clear;

//Edit2DatesUA.Text := '';
//Edit2NameUA.Text := '';
//Edit2CompanyUA.Text := '';
//RichEdit2RespUA.Text := '';
//RichEdit2BenefitsUA.Text := '';
//RichEdit2OtherUA.Text:='';
//Memo2SkillsUA.Clear;
end;

procedure TFormNewResume.Clear3;
begin
CalendarPickerB3TR.isEmpty:=true;
CalendarPickerE3TR.isEmpty:=true;
Edit3DatesTR.Text := '';
Edit3NameTR.Text := '';
Edit3CompanyTR.Text := '';
RichEdit3RespTR.Text := '';
Edit3BenefitsTR.Text := '';
RichEdit3OtherTR.Text:='';
Memo3SkillsTR.Clear;

//Edit3DatesUA.Text := '';
//Edit3NameUA.Text := '';
//Edit3CompanyUA.Text := '';
//RichEdit3RespUA.Text := '';
//RichEdit3BenefitsUA.Text := '';
//RichEdit3OtherUA.Text:='';
//Memo3SkillsUA.Clear;
end;

procedure TFormNewResume.Clear4;
begin
CalendarPickerB4TR.isEmpty:=true;
CalendarPickerE4TR.isEmpty:=true;
Edit4DatesTR.Text := '';
Edit4NameTR.Text := '';
Edit4CompanyTR.Text := '';
RichEdit4RespTR.Text := '';
Edit4BenefitsTR.Text := '';
RichEdit4OtherTR.Text:='';
Memo4SkillsTR.Clear;

//Edit4DatesUA.Text := '';
//Edit4NameUA.Text := '';
//Edit4CompanyUA.Text := '';
//RichEdit4RespUA.Text := '';
//RichEdit4BenefitsUA.Text := '';
//RichEdit4OtherUA.Text:='';
//Memo4SkillsUA.Clear;
end;

procedure TFormNewResume.Clear5;
begin
CalendarPickerB5TR.isEmpty:=true;
CalendarPickerE5TR.isEmpty:=true;
Edit5DatesTR.Text := '';
Edit5NameTR.Text := '';
Edit5CompanyTR.Text := '';
RichEdit5RespTR.Text := '';
Edit5BenefitsTR.Text := '';
RichEdit5OtherTR.Text:='';
Memo5SkillsTR.Clear;

//Edit5DatesUA.Text := '';
//Edit5NameUA.Text := '';
//Edit5CompanyUA.Text := '';
//RichEdit5RespUA.Text := '';
//RichEdit5BenefitsUA.Text := '';
//RichEdit5OtherUA.Text:='';
//Memo5SkillsUA.Clear;
end;

procedure TFormNewResume.Clear6;
begin
CalendarPickerB6TR.isEmpty:=true;
CalendarPickerE6TR.isEmpty:=true;
Edit6DatesTR.Text := '';
Edit6NameTR.Text := '';
Edit6CompanyTR.Text := '';
Edit6BenefitsTR.Text := '';
RichEdit6RespTR.Text := '';
RichEdit6OtherTR.Text:='';
Memo6SkillsTR.Clear;

//Edit6DatesUA.Text := '';
//Edit6NameUA.Text := '';
//Edit6CompanyUA.Text := '';
//RichEdit6RespUA.Text := '';
//RichEdit6BenefitsUA.Text := '';
//RichEdit6OtherUA.Text:='';
//Memo6SkillsUA.Clear;
end;

procedure TFormNewResume.Clear7;
begin
CalendarPickerB7TR.isEmpty:=true;
CalendarPickerE7TR.isEmpty:=true;
Edit7DatesTR.Text := '';
Edit7NameTR.Text := '';
Edit7CompanyTR.Text := '';
RichEdit7RespTR.Text := '';
Edit7BenefitsTR.Text := '';
RichEdit7OtherTR.Text:='';
Memo7SkillsTR.Clear;

//Edit7DatesUA.Text := '';
//Edit7NameUA.Text := '';
//Edit7CompanyUA.Text := '';
//RichEdit7RespUA.Text := '';
//RichEdit7BenefitsUA.Text := '';
//RichEdit7OtherUA.Text:='';
//Memo7SkillsUA.Clear;
end;

procedure TFormNewResume.Clear8;
begin
CalendarPickerB8TR.isEmpty:=true;
CalendarPickerE8TR.isEmpty:=true;
Edit8DatesTR.Text := '';
Edit8NameTR.Text := '';
Edit8CompanyTR.Text := '';
RichEdit8RespTR.Text := '';
Edit8BenefitsTR.Text := '';
RichEdit8OtherTR.Text:='';
Memo8SkillsTR.Clear;

//Edit8DatesUA.Text := '';
//Edit8NameUA.Text := '';
//Edit8CompanyUA.Text := '';
//RichEdit8RespUA.Text := '';
//RichEdit8BenefitsUA.Text := '';
//RichEdit8OtherUA.Text:='';
//Memo8SkillsUA.Clear;
end;

procedure TFormNewResume.Clear9;
begin
CalendarPickerB9TR.isEmpty:=true;
CalendarPickerE9TR.isEmpty:=true;
Edit9DatesTR.Text := '';
Edit9NameTR.Text := '';
Edit9CompanyTR.Text := '';
RichEdit9RespTR.Text := '';
Edit9BenefitsTR.Text := '';
RichEdit9OtherTR.Text:='';
Memo9SkillsTR.Clear;

//Edit9DatesUA.Text := '';
//Edit9NameUA.Text := '';
//Edit9CompanyUA.Text := '';
//RichEdit9RespUA.Text := '';
//RichEdit9BenefitsUA.Text := '';
//RichEdit9OtherUA.Text:='';
//Memo9SkillsUA.Clear;
end;

procedure TFormNewResume.Clear10;
begin
CalendarPickerB10TR.isEmpty:=true;
CalendarPickerE10TR.isEmpty:=true;
Edit10DatesTR.Text := '';
Edit10NameTR.Text := '';
Edit10CompanyTR.Text := '';
RichEdit10RespTR.Text := '';
Edit10BenefitsTR.Text := '';
RichEdit10OtherTR.Text:='';
Memo10SkillsTR.Clear;

//Edit10DatesUA.Text := '';
//Edit10NameUA.Text := '';
//Edit10CompanyUA.Text := '';
//RichEdit10RespUA.Text := '';
//RichEdit10BenefitsUA.Text := '';
//RichEdit10OtherUA.Text:='';
//Memo10SkillsUA.Clear;
end;

procedure TFormNewResume.BitBtnCopyClick(Sender: TObject);
begin
CopyTRFromUA;
SetDatesTRromVariables;
UpdateTRMarkers;
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
var ResumeID:integer;
Res:boolean;
begin
CBRegionTR_ID:='UA';
FormMain.UniRegions.First;
while not FormMain.UniRegions.EOF do
	begin
		if CBRegionTR.Text = FormMain.UniRegions['region_name'] then CBRegionTR_ID:=FormMain.UniRegions['id'];
		FormMain.UniRegions.Next;
	end;
	try
	SaveResume(ResumeID, Res);
	FormMain.Warning('Resume='+IntToStr(ResumeID));
	if not Res then
    begin
      FormMain.Warning('Сбой при сохранении Resumes');
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
      FormMain.Warning('Error: ' + E.Message);
      Result := false;
    end;
  end;
end;

procedure TFormNewResume.SaveResume(var ResumeID:integer;var Res:boolean);
begin
Res:=true;
try
  UniSPInsertResume.Prepare;
  UniSPInsertResume.ParamByName('p_name').AsString := trim(EditNameTR.Text);
  UniSPInsertResume.ParamByName('p_lang').AsString := trim(CBLangTR.Text);
  UniSPInsertResume.ParamByName('p_region_id').AsString := CBRegionTR_ID;
  UniSPInsertResume.ParamByName('p_job_opportunity').AsString := Trim(EditOpportunityTR.Text);
  UniSPInsertResume.ParamByName('p_job_place').AsString := Trim(EditPlaceTR.Text);
  UniSPInsertResume.ParamByName('p_phone_numbers_text').AsString := Trim(EditPhonesTR.Text);
  UniSPInsertResume.ParamByName('p_resume_introduction').AsMemo := Trim(RichEditorTR.Text);
  UniSPInsertResume.ParamByName('p_cv_introduction').AsMemo := Trim(RichEditCVTR.Text);
  UniSPInsertResume.ParamByName('p_cl_text').AsMemo := Trim(RichEditCLTR.Text);
  UniSPInsertResume.ParamByName('p_cv_include_footer1').AsBoolean := not CBCV_footer1TR.Checked;
  UniSPInsertResume.ParamByName('p_cv_include_footer2').AsBoolean := not CBCV_footer2TR.Checked;
  UniSPInsertResume.ParamByName('p_cv_include_footer3').AsBoolean := not CBCV_footer3TR.Checked;
  UniSPInsertResume.ParamByName('p_cv_include_footer4').AsBoolean := not CBCV_footer4TR.Checked;
  UniSPInsertResume.ParamByName('p_footer_1_header').AsString := Trim(EditArticle1TR.Text);
	UniSPInsertResume.ParamByName('p_footer_1_text').AsMemo := Trim(RichEditArticle1TR.Text);
	UniSPInsertResume.ParamByName('p_footer_2_header').AsString := Trim(EditArticle2TR.Text);
	UniSPInsertResume.ParamByName('p_footer_2_text').AsMemo := Trim(RichEditArticle2TR.Text);
	UniSPInsertResume.ParamByName('p_footer_3_header').AsString := Trim(EditArticle3TR.Text);
	UniSPInsertResume.ParamByName('p_footer_3_text').AsMemo := Trim(RichEditArticle3TR.Text);
	UniSPInsertResume.ParamByName('p_footer_4_header').AsString := Trim(EditArticle4TR.Text);
	UniSPInsertResume.ParamByName('p_footer_4_text').AsMemo := Trim(RichEditArticle4TR.Text);
  UniSPInsertResume.ParamByName('p_archived').AsBoolean := false;
  UniSPInsertResume.ExecProc;
	ResumeID:=UniSPInsertResume.ParamByName('p_resume_id').AsInteger;
	FormMain.Warning(' Result='+BoolToStr(Res)+' resume_id = '+IntTostr(ResumeID));
	except
	on E: Exception do
		begin
			FormMain.Warning('Помилка під час вставки до Resumes: ' + E.Message);
			Res := false;
		end;
end;
end;

function TFormNewResume.SaveJobs(ResumeID:integer): boolean;
var i:integer;
begin
try
if isJob1Active then
      begin
      UniSPInsertExperiences.Close;
      UniSPInsertExperiences.ParamByName('p_flag').AsString := 'resume_id';
			UniSPInsertExperiences.ParamByName('p_resume_id').AsInteger := ResumeID;
			UniSPInsertExperiences.ParamByName('p_job_position').AsString := Edit1NameTR.Text;
			UniSPInsertExperiences.ParamByName('p_start_date').AsDateTime :=CalendarPickerB1TR.Date;
			UniSPInsertExperiences.ParamByName('p_end_date').AsDateTime := CalendarPickerE1TR.Date;
			UniSPInsertExperiences.ParamByName('p_employer').AsString := Edit1CompanyTR.Text;
			UniSPInsertExperiences.ParamByName('p_resp').AsMemo := RichEdit1RespTR.Text;
			UniSPInsertExperiences.ParamByName('p_benefits').AsString := RichEdit1BenefitsTR.Text;
			UniSPInsertExperiences.ParamByName('p_other').AsMemo := RichEdit1OtherTR.Text;
			UniSPInsertExperiences.ExecSQL;
			for i := 0 to Memo1SkillsTR.Lines.Count - 1 do
				if not FormMain.IsEmpty(Memo1SkillsTR.Lines[i]) then
				begin
				UniSPInsertSkillShow.Close;
				UniSPInsertSkillShow.ParamByName('p_experience_id').AsInteger:=UniSPInsertExperiences.ParamByName('p_experience_id').Value;
				UniSPInsertSkillShow.ParamByName('p_skill').AsString:=Memo1SkillsTR.Lines[i];
//				UniSPInsertSkillShow.ParamByName('p_skill_id').AsInteger:=null;
				UniSPInsertSkillShow.ExecSQL;
				end;
			end;
if isJob2Active then
		begin
			UniSPInsertExperiences.Close;
			UniSPInsertExperiences.ParamByName('p_flag').AsString := 'resume_id';
			UniSPInsertExperiences.ParamByName('p_resume_id').AsInteger := ResumeID;
			UniSPInsertExperiences.ParamByName('p_job_position').AsString := Edit2NameTR.Text;
			UniSPInsertExperiences.ParamByName('p_start_date').AsDateTime :=CalendarPickerB2TR.Date;
			UniSPInsertExperiences.ParamByName('p_end_date').AsDateTime := CalendarPickerE2TR.Date;
			UniSPInsertExperiences.ParamByName('p_employer').AsString := Edit2CompanyTR.Text;
			UniSPInsertExperiences.ParamByName('p_resp').AsMemo := RichEdit2RespTR.Text;
			UniSPInsertExperiences.ParamByName('p_benefits').AsString := Edit2BenefitsTR.Text;
			UniSPInsertExperiences.ParamByName('p_other').AsMemo := RichEdit2OtherTR.Text;
			UniSPInsertExperiences.ExecSQL;
			for i := 0 to Memo2SkillsTR.Lines.Count - 1 do
				if not FormMain.IsEmpty(Memo2SkillsTR.Lines[i]) then
				begin
				UniSPInsertSkillShow.Close;
				UniSPInsertSkillShow.ParamByName('p_experience_id').AsInteger:=UniSPInsertExperiences.ParamByName('p_experience_id').Value;
				UniSPInsertSkillShow.ParamByName('p_skill').AsString:=Memo2SkillsTR.Lines[i];
//				UniSPInsertSkillShow.ParamByName('p_skill_id').AsInteger:=null;
				UniSPInsertSkillShow.ExecSQL;
				end;
		end;
if isJob3Active then
		begin
			UniSPInsertExperiences.Close;
			UniSPInsertExperiences.ParamByName('p_flag').AsString := 'resume_id';
			UniSPInsertExperiences.ParamByName('p_resume_id').AsInteger := ResumeID;
			UniSPInsertExperiences.ParamByName('p_job_position').AsString := Edit3NameTR.Text;
			UniSPInsertExperiences.ParamByName('p_start_date').AsDateTime :=CalendarPickerB3TR.Date;
			UniSPInsertExperiences.ParamByName('p_end_date').AsDateTime := CalendarPickerE3TR.Date;
			UniSPInsertExperiences.ParamByName('p_employer').AsString := Edit3CompanyTR.Text;
			UniSPInsertExperiences.ParamByName('p_resp').AsMemo := RichEdit3RespTR.Text;
			UniSPInsertExperiences.ParamByName('p_benefits').AsString := Edit3BenefitsTR.Text;
			UniSPInsertExperiences.ParamByName('p_other').AsMemo := RichEdit3OtherTR.Text;
			UniSPInsertExperiences.ExecSQL;
			for i := 0 to Memo3SkillsTR.Lines.Count - 1 do
				if not FormMain.IsEmpty(Memo3SkillsTR.Lines[i]) then
				begin
				UniSPInsertSkillShow.Close;
				UniSPInsertSkillShow.ParamByName('p_experience_id').AsInteger:=UniSPInsertExperiences.ParamByName('p_experience_id').Value;
				UniSPInsertSkillShow.ParamByName('p_skill').AsString:=Memo3SkillsTR.Lines[i];
//				UniSPInsertSkillShow.ParamByName('p_skill_id').AsInteger:=null;
				UniSPInsertSkillShow.ExecSQL;
				end;
		end;
if isJob4Active then
		begin
			UniSPInsertExperiences.Close;
			UniSPInsertExperiences.ParamByName('p_flag').AsString := 'resume_id';
			UniSPInsertExperiences.ParamByName('p_resume_id').AsInteger := ResumeID;
			UniSPInsertExperiences.ParamByName('p_job_position').AsString := Edit4NameTR.Text;
			UniSPInsertExperiences.ParamByName('p_start_date').AsDateTime :=CalendarPickerB4TR.Date;
			UniSPInsertExperiences.ParamByName('p_end_date').AsDateTime := CalendarPickerE4TR.Date;
			UniSPInsertExperiences.ParamByName('p_employer').AsString := Edit4CompanyTR.Text;
			UniSPInsertExperiences.ParamByName('p_resp').AsMemo := RichEdit4RespTR.Text;
			UniSPInsertExperiences.ParamByName('p_benefits').AsString := Edit4BenefitsTR.Text;
			UniSPInsertExperiences.ParamByName('p_other').AsMemo := RichEdit4OtherTR.Text;
			UniSPInsertExperiences.ExecSQL;
			for i := 0 to Memo4SkillsTR.Lines.Count - 1 do
				if not FormMain.IsEmpty(Memo4SkillsTR.Lines[i]) then
				begin
				UniSPInsertSkillShow.Close;
				UniSPInsertSkillShow.ParamByName('p_experience_id').AsInteger:=UniSPInsertExperiences.ParamByName('p_experience_id').Value;
				UniSPInsertSkillShow.ParamByName('p_skill').AsString:=Memo4SkillsTR.Lines[i];
//				UniSPInsertSkillShow.ParamByName('p_skill_id').AsInteger:=null;
				UniSPInsertSkillShow.ExecSQL;
				end;
		end;
if isJob5Active then
		begin
			UniSPInsertExperiences.Close;
			UniSPInsertExperiences.ParamByName('p_flag').AsString := 'resume_id';
			UniSPInsertExperiences.ParamByName('p_resume_id').AsInteger := ResumeID;
			UniSPInsertExperiences.ParamByName('p_job_position').AsString := Edit5NameTR.Text;
			UniSPInsertExperiences.ParamByName('p_start_date').AsDateTime :=CalendarPickerB5TR.Date;
			UniSPInsertExperiences.ParamByName('p_end_date').AsDateTime := CalendarPickerE5TR.Date;
			UniSPInsertExperiences.ParamByName('p_employer').AsString := Edit5CompanyTR.Text;
			UniSPInsertExperiences.ParamByName('p_resp').AsMemo := RichEdit5RespTR.Text;
			UniSPInsertExperiences.ParamByName('p_benefits').AsString := Edit5BenefitsTR.Text;
			UniSPInsertExperiences.ParamByName('p_other').AsMemo := RichEdit5OtherTR.Text;
			UniSPInsertExperiences.ExecSQL;
			for i := 0 to Memo5SkillsTR.Lines.Count - 1 do
				if not FormMain.IsEmpty(Memo5SkillsTR.Lines[i]) then
				begin
				UniSPInsertSkillShow.Close;
				UniSPInsertSkillShow.ParamByName('p_experience_id').AsInteger:=UniSPInsertExperiences.ParamByName('p_experience_id').Value;
				UniSPInsertSkillShow.ParamByName('p_skill').AsString:=Memo5SkillsTR.Lines[i];
//				UniSPInsertSkillShow.ParamByName('p_skill_id').AsInteger:=null;
				UniSPInsertSkillShow.ExecSQL;
				end;
		end;
if isJob6Active then
		begin
			UniSPInsertExperiences.Close;
			UniSPInsertExperiences.ParamByName('p_flag').AsString := 'resume_id';
			UniSPInsertExperiences.ParamByName('p_resume_id').AsInteger := ResumeID;
			UniSPInsertExperiences.ParamByName('p_job_position').AsString := Edit6NameTR.Text;
			UniSPInsertExperiences.ParamByName('p_start_date').AsDateTime :=CalendarPickerB6TR.Date;
			UniSPInsertExperiences.ParamByName('p_end_date').AsDateTime := CalendarPickerE6TR.Date;
			UniSPInsertExperiences.ParamByName('p_employer').AsString := Edit6CompanyTR.Text;
			UniSPInsertExperiences.ParamByName('p_resp').AsMemo := RichEdit6RespTR.Text;
			UniSPInsertExperiences.ParamByName('p_benefits').AsString := Edit6BenefitsTR.Text;
			UniSPInsertExperiences.ParamByName('p_other').AsMemo := RichEdit6OtherTR.Text;
			UniSPInsertExperiences.ExecSQL;
			for i := 0 to Memo6SkillsTR.Lines.Count - 1 do
				if not FormMain.IsEmpty(Memo6SkillsTR.Lines[i]) then
				begin
				UniSPInsertSkillShow.Close;
				UniSPInsertSkillShow.ParamByName('p_experience_id').AsInteger:=UniSPInsertExperiences.ParamByName('p_experience_id').Value;
				UniSPInsertSkillShow.ParamByName('p_skill').AsString:=Memo6SkillsTR.Lines[i];
//				UniSPInsertSkillShow.ParamByName('p_skill_id').AsInteger:=null;
				UniSPInsertSkillShow.ExecSQL;
				end;
		end;
if isJob7Active then
		begin
			UniSPInsertExperiences.Close;
			UniSPInsertExperiences.ParamByName('p_flag').AsString := 'resume_id';
			UniSPInsertExperiences.ParamByName('p_resume_id').AsInteger := ResumeID;
			UniSPInsertExperiences.ParamByName('p_job_position').AsString := Edit7NameTR.Text;
			UniSPInsertExperiences.ParamByName('p_start_date').AsDateTime :=CalendarPickerB7TR.Date;
			UniSPInsertExperiences.ParamByName('p_end_date').AsDateTime := CalendarPickerE7TR.Date;
			UniSPInsertExperiences.ParamByName('p_employer').AsString := Edit7CompanyTR.Text;
			UniSPInsertExperiences.ParamByName('p_resp').AsMemo := RichEdit7RespTR.Text;
			UniSPInsertExperiences.ParamByName('p_benefits').AsString := Edit7BenefitsTR.Text;
			UniSPInsertExperiences.ParamByName('p_other').AsMemo := RichEdit7OtherTR.Text;
			UniSPInsertExperiences.ExecSQL;
			for i := 0 to Memo7SkillsTR.Lines.Count - 1 do
				if not FormMain.IsEmpty(Memo7SkillsTR.Lines[i]) then
				begin
				UniSPInsertSkillShow.Close;
				UniSPInsertSkillShow.ParamByName('p_experience_id').AsInteger:=UniSPInsertExperiences.ParamByName('p_experience_id').Value;
				UniSPInsertSkillShow.ParamByName('p_skill').AsString:=Memo7SkillsTR.Lines[i];
//				UniSPInsertSkillShow.ParamByName('p_skill_id').AsInteger:=null;
				UniSPInsertSkillShow.ExecSQL;
				end;
		end;
if isJob8Active then
		begin
			UniSPInsertExperiences.Close;
			UniSPInsertExperiences.ParamByName('p_flag').AsString := 'resume_id';
			UniSPInsertExperiences.ParamByName('p_resume_id').AsInteger := ResumeID;
			UniSPInsertExperiences.ParamByName('p_job_position').AsString := Edit8NameTR.Text;
			UniSPInsertExperiences.ParamByName('p_start_date').AsDateTime :=CalendarPickerB8TR.Date;
			UniSPInsertExperiences.ParamByName('p_end_date').AsDateTime := CalendarPickerE8TR.Date;
			UniSPInsertExperiences.ParamByName('p_employer').AsString := Edit8CompanyTR.Text;
			UniSPInsertExperiences.ParamByName('p_resp').AsMemo := RichEdit8RespTR.Text;
			UniSPInsertExperiences.ParamByName('p_benefits').AsString := Edit8BenefitsTR.Text;
			UniSPInsertExperiences.ParamByName('p_other').AsMemo := RichEdit8OtherTR.Text;
			UniSPInsertExperiences.ExecSQL;
			for i := 0 to Memo8SkillsTR.Lines.Count - 1 do
				if not FormMain.IsEmpty(Memo8SkillsTR.Lines[i]) then
				begin
				UniSPInsertSkillShow.Close;
				UniSPInsertSkillShow.ParamByName('p_experience_id').AsInteger:=UniSPInsertExperiences.ParamByName('p_experience_id').Value;
				UniSPInsertSkillShow.ParamByName('p_skill').AsString:=Memo8SkillsTR.Lines[i];
//				UniSPInsertSkillShow.ParamByName('p_skill_id').AsInteger:=null;
				UniSPInsertSkillShow.ExecSQL;
				end;
		end;
if isJob9Active then
		begin
			UniSPInsertExperiences.Close;
			UniSPInsertExperiences.ParamByName('p_flag').AsString := 'resume_id';
			UniSPInsertExperiences.ParamByName('p_resume_id').AsInteger := ResumeID;
			UniSPInsertExperiences.ParamByName('p_job_position').AsString := Edit9NameTR.Text;
			UniSPInsertExperiences.ParamByName('p_start_date').AsDateTime :=CalendarPickerB9TR.Date;
			UniSPInsertExperiences.ParamByName('p_end_date').AsDateTime := CalendarPickerE9TR.Date;
			UniSPInsertExperiences.ParamByName('p_employer').AsString := Edit9CompanyTR.Text;
			UniSPInsertExperiences.ParamByName('p_resp').AsMemo := RichEdit9RespTR.Text;
			UniSPInsertExperiences.ParamByName('p_benefits').AsString := Edit9BenefitsTR.Text;
			UniSPInsertExperiences.ParamByName('p_other').AsMemo := RichEdit9OtherTR.Text;
			UniSPInsertExperiences.ExecSQL;
			for i := 0 to Memo9SkillsTR.Lines.Count - 1 do
				if not FormMain.IsEmpty(Memo9SkillsTR.Lines[i]) then
				begin
				UniSPInsertSkillShow.Close;
				UniSPInsertSkillShow.ParamByName('p_experience_id').AsInteger:=UniSPInsertExperiences.ParamByName('p_experience_id').Value;
				UniSPInsertSkillShow.ParamByName('p_skill').AsString:=Memo9SkillsTR.Lines[i];
//				UniSPInsertSkillShow.ParamByName('p_skill_id').AsInteger:=null;
				UniSPInsertSkillShow.ExecSQL;
				end;
		end;
if isJob10Active then
		begin
			UniSPInsertExperiences.Close;
			UniSPInsertExperiences.ParamByName('p_flag').AsString := 'resume_id';
			UniSPInsertExperiences.ParamByName('p_resume_id').AsInteger := ResumeID;
			UniSPInsertExperiences.ParamByName('p_job_position').AsString := Edit10NameTR.Text;
			UniSPInsertExperiences.ParamByName('p_start_date').AsDateTime :=CalendarPickerB10TR.Date;
			UniSPInsertExperiences.ParamByName('p_end_date').AsDateTime := CalendarPickerE10TR.Date;
			UniSPInsertExperiences.ParamByName('p_employer').AsString := Edit10CompanyTR.Text;
			UniSPInsertExperiences.ParamByName('p_resp').AsMemo := RichEdit10RespTR.Text;
			UniSPInsertExperiences.ParamByName('p_benefits').AsString := Edit10BenefitsTR.Text;
			UniSPInsertExperiences.ParamByName('p_other').AsMemo := RichEdit10OtherTR.Text;
			UniSPInsertExperiences.ExecSQL;
			for i := 0 to Memo10SkillsTR.Lines.Count - 1 do
				if not FormMain.IsEmpty(Memo10SkillsTR.Lines[i]) then
				begin
				UniSPInsertSkillShow.Close;
				UniSPInsertSkillShow.ParamByName('p_experience_id').AsInteger:=UniSPInsertExperiences.ParamByName('p_experience_id').Value;
				UniSPInsertSkillShow.ParamByName('p_skill').AsString:=Memo10SkillsTR.Lines[i];
//				UniSPInsertSkillShow.ParamByName('p_skill_id').AsInteger:=null;
				UniSPInsertSkillShow.ExecSQL;
				end;
		end;
	Result:=true;
	except
		on E: Exception do
		begin
			FormMain.Warning('Помилка під час вставки у процедурі SaveJobs: ' + E.Message);
			Result := false;
		end;
  end;
end;


function TFormNewResume.isFormValuesGood: boolean;
begin
IsJob1Active := not(FormMain.IsEmpty(Edit1NameTR.Text) or FormMain.IsEmpty(Edit1CompanyTR.Text) or FormMain.IsEmpty(RichEdit1RespTR.Text));
IsJob2Active := not(FormMain.IsEmpty(Edit2NameTR.Text) or FormMain.IsEmpty(Edit2CompanyTR.Text) or FormMain.IsEmpty(RichEdit2RespTR.Text));
IsJob3Active := not(FormMain.IsEmpty(Edit3NameTR.Text) or FormMain.IsEmpty(Edit3CompanyTR.Text) or FormMain.IsEmpty(RichEdit3RespTR.Text));
IsJob4Active := not(FormMain.IsEmpty(Edit4NameTR.Text) or FormMain.IsEmpty(Edit4CompanyTR.Text) or FormMain.IsEmpty(RichEdit4RespTR.Text));
IsJob5Active := not(FormMain.IsEmpty(Edit5NameTR.Text) or FormMain.IsEmpty(Edit5CompanyTR.Text) or FormMain.IsEmpty(RichEdit5RespTR.Text));
IsJob6Active := not(FormMain.IsEmpty(Edit6NameTR.Text) or FormMain.IsEmpty(Edit6CompanyTR.Text) or FormMain.IsEmpty(RichEdit6RespTR.Text));
IsJob7Active := not(FormMain.IsEmpty(Edit7NameTR.Text) or FormMain.IsEmpty(Edit7CompanyTR.Text) or FormMain.IsEmpty(RichEdit7RespTR.Text));
IsJob8Active := not(FormMain.IsEmpty(Edit8NameTR.Text) or FormMain.IsEmpty(Edit8CompanyTR.Text) or FormMain.IsEmpty(RichEdit8RespTR.Text));
IsJob9Active := not(FormMain.IsEmpty(Edit9NameTR.Text) or FormMain.IsEmpty(Edit9CompanyTR.Text) or FormMain.IsEmpty(RichEdit9RespTR.Text));
IsJob10Active := not(FormMain.IsEmpty(Edit10NameTR.Text) or FormMain.IsEmpty(Edit10CompanyTR.Text) or FormMain.IsEmpty(RichEdit10RespTR.Text));
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
EditNameTR.Text := Translate(EditNameUA.Text,CBLangTR.Text);
EditOpportunityTR.Text := Translate(EditOpportunityUA.Text,CBLangTR.Text);
EditPlaceTR.Text := Translate(EditPlaceUA.Text,CBLangTR.Text);
EditPhonesTR.Text := Translate(EditPhonesUA.Text,CBLangTR.Text);
RichEditorTR.Text := Translate(RichEditorUA.Text,CBLangTR.Text);

EditArticle1TR.Text := Translate(EditArticle1UA.Text,CBLangTR.Text);
RichEditArticle1TR.Text := Translate(RichEditArticle1UA.Text,CBLangTR.Text);
EditArticle2TR.Text := Translate(EditArticle2UA.Text,CBLangTR.Text);
RichEditArticle2TR.Text := Translate(RichEditArticle2UA.Text,CBLangTR.Text);
EditArticle3TR.Text := Translate(EditArticle3UA.Text,CBLangTR.Text);
RichEditArticle3TR.Text := Translate(RichEditArticle3UA.Text,CBLangTR.Text);
EditArticle4TR.Text := Translate(EditArticle4UA.Text,CBLangTR.Text);
RichEditArticle4TR.Text := Translate(RichEditArticle4UA.Text,CBLangTR.Text);

RichEditCVTR.Text:=RichEditCVUA.Text;
RichEditCLTR.Text:=RichEditCLUA.Text;

Edit1DatesTR.Text  := Edit1DatesUA.Text;
if not (CalendarPickerB[1]=0.0) then CalendarPickerB1TR.Date:=CalendarPickerB[1];
if not (CalendarPickerE[1]=0.0) then CalendarPickerE1TR.Date:=CalendarPickerE[1];
Edit1CompanyTR.Text  := Edit1CompanyUA.Text;
Edit1NameTR.Text  := Edit1NameUA.Text;
RichEdit1RespTR.Text  := Translate(RichEdit1RespUA.Text,CBLangTR.Text);
RichEdit1BenefitsTR.Text := Translate(RichEdit1BenefitsUA.Text,CBLangTR.Text);
RichEdit1OtherTR.Text := Translate(RichEdit1OtherUA.Text,CBLangTR.Text);
Memo1SkillsTR.Text   :=Translate(Memo1SkillsUA.Text,CBLangTR.Text);

Edit2DatesTR.Text  := Edit2DatesUA.Text;
if not (CalendarPickerB[2]=0.0) then CalendarPickerB2TR.Date:=CalendarPickerB[2];
if not (CalendarPickerE[2]=0.0) then CalendarPickerE2TR.Date:=CalendarPickerE[2];
Edit2CompanyTR.Text  := Edit2CompanyUA.Text;
Edit2NameTR.Text  := Edit2NameUA.Text;
RichEdit2RespTR.Text    := Translate(RichEdit2RespUA.Text,CBLangTR.Text);
Edit2BenefitsTR.Text:= Translate(RichEdit2BenefitsUA.Text,CBLangTR.Text);
RichEdit2OtherTR.Text  := Translate(RichEdit2OtherUA.Text,CBLangTR.Text);
Memo2SkillsTR.Text    :=Translate(Memo2SkillsUA.Text,CBLangTR.Text);

Edit3DatesTR.Text  := Edit3DatesUA.Text;
if not (CalendarPickerB[3]=0.0) then CalendarPickerB3TR.Date:=CalendarPickerB[3];
if not (CalendarPickerE[3]=0.0) then CalendarPickerE3TR.Date:=CalendarPickerE[3];
Edit3CompanyTR.Text  := Edit3CompanyUA.Text;
Edit3NameTR.Text  := Edit3NameUA.Text;
RichEdit3RespTR.Text    := Translate(RichEdit3RespUA.Text,CBLangTR.Text);
Edit3BenefitsTR.Text:= Translate(RichEdit3BenefitsUA.Text,CBLangTR.Text);
RichEdit3OtherTR.Text  := Translate(RichEdit3OtherUA.Text,CBLangTR.Text);
Memo3SkillsTR.Text    :=Translate(Memo3SkillsUA.Text,CBLangTR.Text);

Edit4DatesTR.Text  := Edit4DatesUA.Text;
if not (CalendarPickerB[4]=0.0) then CalendarPickerB4TR.Date:=CalendarPickerB[4];
if not (CalendarPickerE[4]=0.0) then CalendarPickerE4TR.Date:=CalendarPickerE[4];
Edit4CompanyTR.Text  := Edit4CompanyUA.Text;
Edit4NameTR.Text  := Edit4NameUA.Text;
RichEdit4RespTR.Text    := Translate(RichEdit4RespUA.Text,CBLangTR.Text);
Edit4BenefitsTR.Text:= Translate(RichEdit4BenefitsUA.Text,CBLangTR.Text);
RichEdit4OtherTR.Text  := Translate(RichEdit4OtherUA.Text,CBLangTR.Text);
Memo4SkillsTR.Text    :=Translate(Memo4SkillsUA.Text,CBLangTR.Text);

Edit5DatesTR.Text  := Edit5DatesUA.Text;
if not (CalendarPickerB[5]=0.0) then CalendarPickerB5TR.Date:=CalendarPickerB[5];
if not (CalendarPickerE[5]=0.0) then CalendarPickerE5TR.Date:=CalendarPickerE[5];
Edit5CompanyTR.Text  := Edit5CompanyUA.Text;
Edit5NameTR.Text  := Edit5NameUA.Text;
RichEdit5RespTR.Text    := Translate(RichEdit5RespUA.Text,CBLangTR.Text);
Edit5BenefitsTR.Text:= Translate(RichEdit5BenefitsUA.Text,CBLangTR.Text);
RichEdit5OtherTR.Text  := Translate(RichEdit5OtherUA.Text,CBLangTR.Text);
Memo5SkillsTR.Text    :=Translate(Memo5SkillsUA.Text,CBLangTR.Text);

Edit6DatesTR.Text  := Edit6DatesUA.Text;
if not (CalendarPickerB[6]=0.0) then CalendarPickerB6TR.Date:=CalendarPickerB[6];
if not (CalendarPickerE[6]=0.0) then CalendarPickerE6TR.Date:=CalendarPickerE[6];
Edit6CompanyTR.Text  := Edit6CompanyUA.Text;
Edit6NameUA.Text  := Edit6NameUA.Text;
RichEdit6RespTR.Text    := Translate(RichEdit6RespUA.Text,CBLangTR.Text);
Edit6BenefitsTR.Text:= Translate(RichEdit6BenefitsUA.Text,CBLangTR.Text);
RichEdit6OtherTR.Text  := Translate(RichEdit6OtherUA.Text,CBLangTR.Text);
Memo6SkillsTR.Text    :=Translate(Memo6SkillsUA.Text,CBLangTR.Text);

Edit7DatesTR.Text  := Edit7DatesUA.Text;
if not (CalendarPickerB[7]=0.0) then CalendarPickerB7TR.Date:=CalendarPickerB[7];
if not (CalendarPickerE[7]=0.0) then CalendarPickerE7TR.Date:=CalendarPickerE[7];
Edit7CompanyTR.Text  := Edit7CompanyUA.Text;
Edit7NameTR.Text  := Edit7NameUA.Text;
RichEdit7RespTR.Text    := Translate(RichEdit7RespUA.Text,CBLangTR.Text);
Edit7BenefitsTR.Text:= Translate(RichEdit7BenefitsUA.Text,CBLangTR.Text);
RichEdit7OtherTR.Text  := Translate(RichEdit7OtherUA.Text,CBLangTR.Text);
Memo7SkillsTR.Text    :=Translate(Memo7SkillsUA.Text,CBLangTR.Text);

Edit8DatesTR.Text  := Edit8DatesUA.Text;
if not (CalendarPickerB[8]=0.0) then CalendarPickerB8TR.Date:=CalendarPickerB[8];
if not (CalendarPickerE[8]=0.0) then CalendarPickerE8TR.Date:=CalendarPickerE[8];
Edit8CompanyTR.Text  := Edit8CompanyUA.Text;
Edit8NameTR.Text  := Edit8NameUA.Text;
RichEdit8RespTR.Text    := Translate(RichEdit8RespUA.Text,CBLangTR.Text);
Edit8BenefitsTR.Text:= Translate(RichEdit8BenefitsUA.Text,CBLangTR.Text);
RichEdit8OtherTR.Text  := Translate(RichEdit8OtherUA.Text,CBLangTR.Text);
Memo8SkillsTR.Text    :=Translate(Memo8SkillsUA.Text,CBLangTR.Text);

Edit9DatesTR.Text  := Edit9DatesUA.Text;
if not (CalendarPickerB[9]=0.0) then CalendarPickerB9TR.Date:=CalendarPickerB[9];
if not (CalendarPickerE[9]=0.0) then CalendarPickerE9TR.Date:=CalendarPickerE[9];
Edit9CompanyTR.Text  := Edit9CompanyUA.Text;
Edit9NameTR.Text  := Edit9NameUA.Text;
RichEdit9RespTR.Text    := Translate(RichEdit9RespUA.Text,CBLangTR.Text);
Edit9BenefitsTR.Text:= Translate(RichEdit9BenefitsUA.Text,CBLangTR.Text);
RichEdit9OtherTR.Text  := Translate(RichEdit9OtherUA.Text,CBLangTR.Text);
Memo9SkillsTR.Text    :=Translate(Memo9SkillsUA.Text,CBLangTR.Text);

Edit10DatesTR.Text  := Edit10DatesUA.Text;
if not (CalendarPickerB[10]=0.0) then CalendarPickerB10TR.Date:=CalendarPickerB[10];
if not (CalendarPickerE[10]=0.0) then CalendarPickerE10TR.Date:=CalendarPickerE[10];
Edit10CompanyTR.Text  := Edit10CompanyUA.Text;
Edit10NameTR.Text  := Edit10NameUA.Text;
RichEdit10RespTR.Text    := Translate(RichEdit10RespUA.Text,CBLangTR.Text);
Edit10BenefitsTR.Text:= Translate(RichEdit10BenefitsUA.Text,CBLangTR.Text);
RichEdit10OtherTR.Text  := Translate(RichEdit10OtherUA.Text,CBLangTR.Text);
Memo10SkillsTR.Text    :=Translate(Memo10SkillsUA.Text,CBLangTR.Text);
end;

procedure TFormNewResume.GetValuesFromTemplate(TemplateId: integer);
begin
LCopyFromTemplateID:=TemplateID;
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
		if VarIsNull(UniGetTemplateFooters['footer_text']) then RichEditArticle1UA.Text := ''
		else RichEditArticle1UA.Text := UniGetTemplateFooters['footer_text'];
		end;
	if UniGetTemplateFooters['footer_order']=2 then
		begin
		if VarIsNull(UniGetTemplateFooters['footer_header']) then EditArticle2UA.Text := ''
		else EditArticle2UA.Text := UniGetTemplateFooters['footer_header'];
		if VarIsNull(UniGetTemplateFooters['footer_text']) then RichEditArticle2UA.Text := ''
		else RichEditArticle2UA.Text := UniGetTemplateFooters['footer_text'];
		end;
	if UniGetTemplateFooters['footer_order']=3 then
		begin
		if VarIsNull(UniGetTemplateFooters['footer_header']) then EditArticle3UA.Text := ''
		else EditArticle3UA.Text := UniGetTemplateFooters['footer_header'];
		if VarIsNull(UniGetTemplateFooters['footer_text']) then RichEditArticle3UA.Text := ''
		else RichEditArticle3UA.Text := UniGetTemplateFooters['footer_text'];
		end;
	if UniGetTemplateFooters['footer_order']=4 then
		begin
		if VarIsNull(UniGetTemplateFooters['footer_header']) then EditArticle4UA.Text := ''
		else EditArticle4UA.Text := UniGetTemplateFooters['footer_header'];
		if VarIsNull(UniGetTemplateFooters['footer_text']) then RichEditArticle4UA.Text := ''
		else RichEditArticle4UA.Text := UniGetTemplateFooters['footer_text'];
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
		Edit1DatesUA.Text := FormMain.GetFullMonthByRegion(UniGetTemplateJobs['start_date'], CBRegionTR.Text)
									+ '-' + FormMain.GetFullMonthByRegion(UniGetTemplateJobs['end_date'], CBRegionTR.Text);
		RichEdit1RespUA.Text:=UniGetTemplateJobs['responsibilities'];
		RichEdit1BenefitsUA.Text:=UniGetTemplateJobs['benefits'];
		RichEdit1OtherUA.Text:=UniGetTemplateJobs['other'];
		UniGetSkills.Close;
		UniGetSkills.ParamByName('p_experience_id').AsInteger := UniGetTemplateJobs['id'];
		UniGetSkills.Open;
		Memo1SkillsUA.Clear;
		while not UniGetSkills.EOF do
			begin
			if not FormMain.IsEmpty(UniGetSkills['skill']) then Memo1SkillsUA.Lines.Add(UniGetSkills['skill']);
			UniGetSkills.Next;
			end;
		end;
	if UniGetTemplateJobs['order_position']=2 then
		begin
		Edit2NameUA.Text:=UniGetTemplateJobs['job_position'];
		Edit2CompanyUA.Text:=UniGetTemplateJobs['employer'];
		CalendarPickerB[2]:=UniGetTemplateJobs['start_date'];
		CalendarPickerE[2]:=UniGetTemplateJobs['end_date'];
		Edit2DatesUA.Text := FormMain.GetFullMonthByRegion(UniGetTemplateJobs['start_date'], CBRegionTR.Text)
									+ '-' + FormMain.GetFullMonthByRegion(UniGetTemplateJobs['end_date'], CBRegionTR.Text);
		RichEdit2RespUA.Text:=UniGetTemplateJobs['responsibilities'];
		RichEdit2BenefitsUA.Text:=UniGetTemplateJobs['benefits'];
		RichEdit2OtherUA.Text:=UniGetTemplateJobs['other'];
		UniGetSkills.Close;
		UniGetSkills.ParamByName('p_experience_id').AsInteger := UniGetTemplateJobs['id'];
		UniGetSkills.Open;
		Memo2SkillsUA.Clear;
		while not UniGetSkills.EOF do
			begin
			if not FormMain.IsEmpty(UniGetSkills['skill']) then Memo2SkillsUA.Lines.Add(UniGetSkills['skill']);
			UniGetSkills.Next;
			end;
		end;
	if UniGetTemplateJobs['order_position']=3 then
		begin
		Edit3NameUA.Text:=UniGetTemplateJobs['job_position'];
		Edit3CompanyUA.Text:=UniGetTemplateJobs['employer'];
		CalendarPickerB[3]:=UniGetTemplateJobs['start_date'];
		CalendarPickerE[3]:=UniGetTemplateJobs['end_date'];
		Edit3DatesUA.Text := FormMain.GetFullMonthByRegion(UniGetTemplateJobs['start_date'], CBRegionTR.Text)
								 + '-' + FormMain.GetFullMonthByRegion(UniGetTemplateJobs['end_date'], CBRegionTR.Text);
		RichEdit3RespUA.Text:=UniGetTemplateJobs['responsibilities'];
		RichEdit3BenefitsUA.Text:=UniGetTemplateJobs['benefits'];
		RichEdit3OtherUA.Text:=UniGetTemplateJobs['other'];
		UniGetSkills.Close;
		UniGetSkills.ParamByName('p_experience_id').AsInteger := UniGetTemplateJobs['id'];
		UniGetSkills.Open;
		Memo3SkillsUA.Clear;
		while not UniGetSkills.EOF do
			begin
			if not FormMain.IsEmpty(UniGetSkills['skill']) then Memo3SkillsUA.Lines.Add(UniGetSkills['skill']);
			UniGetSkills.Next;
			end;
		end;
	if UniGetTemplateJobs['order_position']=4 then
		begin
		Edit4NameUA.Text:=UniGetTemplateJobs['job_position'];
		Edit4CompanyUA.Text:=UniGetTemplateJobs['employer'];
		CalendarPickerB[4]:=UniGetTemplateJobs['start_date'];
		CalendarPickerE[4]:=UniGetTemplateJobs['end_date'];
		Edit4DatesUA.Text := FormMain.GetFullMonthByRegion(UniGetTemplateJobs['start_date'], CBRegionTR.Text)
								 + '-' + FormMain.GetFullMonthByRegion(UniGetTemplateJobs['end_date'], CBRegionTR.Text);
		RichEdit4RespUA.Text:=UniGetTemplateJobs['responsibilities'];
		RichEdit4BenefitsUA.Text:=UniGetTemplateJobs['benefits'];
		RichEdit4OtherUA.Text:=UniGetTemplateJobs['other'];
		UniGetSkills.Close;
		UniGetSkills.ParamByName('p_experience_id').AsInteger := UniGetTemplateJobs['id'];
		UniGetSkills.Open;
		Memo4SkillsUA.Clear;
		while not UniGetSkills.EOF do
			begin
			if not FormMain.IsEmpty(UniGetSkills['skill']) then Memo4SkillsUA.Lines.Add(UniGetSkills['skill']);
			UniGetSkills.Next;
			end;
		end;
	if UniGetTemplateJobs['order_position']=5 then
		begin
		Edit5NameUA.Text:=UniGetTemplateJobs['job_position'];
		Edit5CompanyUA.Text:=UniGetTemplateJobs['employer'];
		CalendarPickerB[5]:=UniGetTemplateJobs['start_date'];
		CalendarPickerE[5]:=UniGetTemplateJobs['end_date'];
		Edit5DatesUA.Text := FormMain.GetFullMonthByRegion(UniGetTemplateJobs['start_date'], CBRegionTR.Text)
								 + '-' + FormMain.GetFullMonthByRegion(UniGetTemplateJobs['end_date'], CBRegionTR.Text);
		RichEdit5RespUA.Text:=UniGetTemplateJobs['responsibilities'];
		RichEdit5BenefitsUA.Text:=UniGetTemplateJobs['benefits'];
		RichEdit5OtherUA.Text:=UniGetTemplateJobs['other'];
		UniGetSkills.Close;
		UniGetSkills.ParamByName('p_experience_id').AsInteger := UniGetTemplateJobs['id'];
		UniGetSkills.Open;
		Memo5SkillsUA.Clear;
		while not UniGetSkills.EOF do
			begin
			if not FormMain.IsEmpty(UniGetSkills['skill']) then Memo5SkillsUA.Lines.Add(UniGetSkills['skill']);
			UniGetSkills.Next;
			end;
		end;
	if UniGetTemplateJobs['order_position']=6 then
		begin
		Edit6NameUA.Text:=UniGetTemplateJobs['job_position'];
		Edit6CompanyUA.Text:=UniGetTemplateJobs['employer'];
		CalendarPickerB[6]:=UniGetTemplateJobs['start_date'];
		CalendarPickerE[6]:=UniGetTemplateJobs['end_date'];
		Edit6DatesUA.Text := FormMain.GetFullMonthByRegion(UniGetTemplateJobs['start_date'], CBRegionTR.Text)
								 + '-' + FormMain.GetFullMonthByRegion(UniGetTemplateJobs['end_date'], CBRegionTR.Text);
		RichEdit6RespUA.Text:=UniGetTemplateJobs['responsibilities'];
		RichEdit6BenefitsUA.Text:=UniGetTemplateJobs['benefits'];
		RichEdit6OtherUA.Text:=UniGetTemplateJobs['other'];
		UniGetSkills.Close;
		UniGetSkills.ParamByName('p_experience_id').AsInteger := UniGetTemplateJobs['id'];
		UniGetSkills.Open;
		Memo6SkillsUA.Clear;
		while not UniGetSkills.EOF do
			begin
			if not FormMain.IsEmpty(UniGetSkills['skill']) then Memo6SkillsUA.Lines.Add(UniGetSkills['skill']);
			UniGetSkills.Next;
			end;
		end;
	if UniGetTemplateJobs['order_position']=7 then
		begin
		Edit7NameUA.Text:=UniGetTemplateJobs['job_position'];
		Edit7CompanyUA.Text:=UniGetTemplateJobs['employer'];
		CalendarPickerB[7]:=UniGetTemplateJobs['start_date'];
		CalendarPickerE[7]:=UniGetTemplateJobs['end_date'];
		Edit7DatesUA.Text := FormMain.GetFullMonthByRegion(UniGetTemplateJobs['start_date'], CBRegionTR.Text)
								 + '-' + FormMain.GetFullMonthByRegion(UniGetTemplateJobs['end_date'], CBRegionTR.Text);
		RichEdit7RespUA.Text:=UniGetTemplateJobs['responsibilities'];
		RichEdit7BenefitsUA.Text:=UniGetTemplateJobs['benefits'];
		RichEdit7OtherUA.Text:=UniGetTemplateJobs['other'];
		UniGetSkills.Close;
		UniGetSkills.ParamByName('p_experience_id').AsInteger := UniGetTemplateJobs['id'];
		UniGetSkills.Open;
		Memo7SkillsUA.Clear;
		while not UniGetSkills.EOF do
			begin
			if not FormMain.IsEmpty(UniGetSkills['skill']) then Memo7SkillsUA.Lines.Add(UniGetSkills['skill']);
			UniGetSkills.Next;
			end;
		end;
	if UniGetTemplateJobs['order_position']=8 then
		begin
		Edit8NameUA.Text:=UniGetTemplateJobs['job_position'];
		Edit8CompanyUA.Text:=UniGetTemplateJobs['employer'];
		CalendarPickerB[8]:=UniGetTemplateJobs['start_date'];
		CalendarPickerE[8]:=UniGetTemplateJobs['end_date'];
		Edit8DatesUA.Text := FormMain.GetFullMonthByRegion(UniGetTemplateJobs['start_date'], CBRegionTR.Text)
								 + '-' + FormMain.GetFullMonthByRegion(UniGetTemplateJobs['end_date'], CBRegionTR.Text);
		RichEdit8RespUA.Text:=UniGetTemplateJobs['responsibilities'];
		RichEdit8BenefitsUA.Text:=UniGetTemplateJobs['benefits'];
		RichEdit8OtherUA.Text:=UniGetTemplateJobs['other'];
		UniGetSkills.Close;
		UniGetSkills.ParamByName('p_experience_id').AsInteger := UniGetTemplateJobs['id'];
		UniGetSkills.Open;
		Memo8SkillsUA.Clear;
		while not UniGetSkills.EOF do
			begin
			if not FormMain.IsEmpty(UniGetSkills['skill']) then Memo8SkillsUA.Lines.Add(UniGetSkills['skill']);
			UniGetSkills.Next;
			end;
		end;
	if UniGetTemplateJobs['order_position']=9 then
		begin
		Edit9NameUA.Text:=UniGetTemplateJobs['job_position'];
		Edit9CompanyUA.Text:=UniGetTemplateJobs['employer'];
		CalendarPickerB[9]:=UniGetTemplateJobs['start_date'];
		CalendarPickerE[9]:=UniGetTemplateJobs['end_date'];
		Edit9DatesUA.Text := FormMain.GetFullMonthByRegion(UniGetTemplateJobs['start_date'], CBRegionTR.Text)
								 + '-' + FormMain.GetFullMonthByRegion(UniGetTemplateJobs['end_date'], CBRegionTR.Text);
		RichEdit9RespUA.Text:=UniGetTemplateJobs['responsibilities'];
		RichEdit9BenefitsUA.Text:=UniGetTemplateJobs['benefits'];
		RichEdit9OtherUA.Text:=UniGetTemplateJobs['other'];
		UniGetSkills.Close;
		UniGetSkills.ParamByName('p_experience_id').AsInteger := UniGetTemplateJobs['id'];
		UniGetSkills.Open;
		Memo9SkillsUA.Clear;
		while not UniGetSkills.EOF do
			begin
			if not FormMain.IsEmpty(UniGetSkills['skill']) then Memo9SkillsUA.Lines.Add(UniGetSkills['skill']);
			UniGetSkills.Next;
			end;
		end;
	if UniGetTemplateJobs['order_position']=10 then
		begin
		Edit10NameUA.Text:=UniGetTemplateJobs['job_position'];
		Edit10CompanyUA.Text:=UniGetTemplateJobs['employer'];
		CalendarPickerB[10]:=UniGetTemplateJobs['start_date'];
		CalendarPickerE[10]:=UniGetTemplateJobs['end_date'];
		Edit10DatesUA.Text := FormMain.GetFullMonthByRegion(UniGetTemplateJobs['start_date'], CBRegionTR.Text)
								  + '-' + FormMain.GetFullMonthByRegion(UniGetTemplateJobs['end_date'], CBRegionTR.Text);
		RichEdit10RespUA.Text:=UniGetTemplateJobs['responsibilities'];
		RichEdit10BenefitsUA.Text:=UniGetTemplateJobs['benefits'];
		RichEdit10OtherUA.Text:=UniGetTemplateJobs['other'];
		UniGetSkills.Close;
		UniGetSkills.ParamByName('p_experience_id').AsInteger := UniGetTemplateJobs['id'];
		UniGetSkills.Open;
		Memo10SkillsUA.Clear;
		while not UniGetSkills.EOF do
			begin
			if not FormMain.IsEmpty(UniGetSkills['skill']) then Memo10SkillsUA.Lines.Add(UniGetSkills['skill']);
			UniGetSkills.Next;
			end;
		end;
	UniGetTemplateJobs.Next;
	end;
UpdateUAMarkers;
end;

function TFormNewResume.GoogleTranslate(const S, lang: string): string;
begin
Result:=S;
end;

procedure TFormNewResume.GetValuesFromResume(const ResumeID:integer);
var i:integer;
begin
LCopyFromResumeID:=ResumeID;
UniGetResume.Close;
UniGetResume.ParamByName('p_id').AsInteger := ResumeID;
UniGetResume.Open;
if VarIsNull(UniGetResume['name']) then EditNameUA.Text := '' else EditNameUA.Text := UniGetResume['name'];
if VarIsNull(UniGetResume['job_opportunity']) then EditOpportunityUA.Text := '' else EditOpportunityUA.Text := UniGetResume['job_opportunity'];
if VarIsNull(UniGetResume['job_place']) then EditPlaceUA.Text := '' else EditPlaceUA.Text := UniGetResume['job_place'];
if VarIsNull(UniGetResume['phone_numbers_text']) then EditPhonesUA.Text := '' else EditPhonesUA.Text := UniGetResume['phone_numbers_text'];
if VarIsNull(UniGetResume['resume_introduction']) then RichEditorUA.Text := '' else RichEditorUA.Text := UniGetResume['resume_introduction'];
if VarIsNull(UniGetResume['cv_introduction']) then RichEditCVUA.Text := '' else RichEditCVUA.Text := UniGetResume['resume_introduction'];
if VarIsNull(UniGetResume['cl_text']) then RichEditCLUA.Text := '' else RichEditCLUA.Text := UniGetResume['cl_text'];
UniGetFooters.Close;
UniGetFooters.ParamByName('p_resume_id').AsInteger := ResumeID;
UniGetFooters.Open;
while not UniGetFooters.EOF do
  begin
  if UniGetFooters['footer_order']=1 then
    begin
      EditArticle1UA.Text:=UniGetFooters['footer_header'];
      RichEditArticle1UA.Text:=UniGetFooters['footer_text'];
      CBCV_footer1UA.Checked:= not UniGetFooters.FieldByname('cv_include_footer').AsBoolean;
    end;
  if UniGetFooters['footer_order']=2 then
    begin
      EditArticle2UA.Text:=UniGetFooters['footer_header'];
      RichEditArticle2UA.Text:=UniGetFooters['footer_text'];
      CBCV_footer2UA.Checked:= not UniGetFooters.FieldByname('cv_include_footer').AsBoolean;
    end;
  if UniGetFooters['footer_order']=3 then
    begin
      EditArticle3UA.Text:=UniGetFooters['footer_header'];
      RichEditArticle3UA.Text:=UniGetFooters['footer_text'];
      CBCV_footer3UA.Checked:= not UniGetFooters.FieldByname('cv_include_footer').AsBoolean;
    end;
  if UniGetFooters['footer_order']=4 then
    begin
      EditArticle4UA.Text:=UniGetFooters['footer_header'];
      RichEditArticle4UA.Text:=UniGetFooters['footer_text'];
      CBCV_footer4UA.Checked:= not UniGetFooters.FieldByname('cv_include_footer').AsBoolean;
    end;
  UniGetFooters.Next;
  end;

UniGetJobs.Close;
UniGetJobs.ParamByName('p_resume_id').AsInteger := ResumeID;
UniGetJobs.Open;
while not UniGetJobs.EOF do
  begin
  if UniGetJobs['job_order']=1 then
    begin
    Edit1NameUA.Text:=UniGetJobs['job_position'];
    Dates1BUA:=UniGetJobs['start_date'];
    Dates1EUA:=UniGetJobs['end_date'];
    Edit1DatesUA.Text:=FormMain.GetFullMonthByRegion(UniGetJobs['start_date'], EditRegionUA.Text)
             + '-' + FormMain.GetFullMonthByRegion(UniGetJobs['end_date'], EditRegionUA.Text);
    Edit1CompanyUA.Text:=UniGetJobs['employer'];
    RichEdit1RespUA.Text:=UniGetJobs['responsibilities'];
    RichEdit1BenefitsUA.Text:=UniGetJobs['benefits'];
    RichEdit1OtherUA.Text:=UniGetJobs['other'];
    UniGetSkills.Close;
    UniGetSkills.ParamByName('p_experience_id').AsInteger:=UniGetJobs['experience_id'];
    UniGetSkills.Open;
    Memo1SkillsUA.Clear;
    while not UniGetSkills.EOF do
      begin
        Memo1SkillsUA.Lines.Add(UniGetSkills['skill']);
        UniGetSkills.Next;
      end;
    end;
  if UniGetJobs['job_order']=2 then
    begin
    Edit2NameUA.Text:=UniGetJobs['job_position'];
    Dates2BUA:=UniGetJobs['start_date'];
    Dates2EUA:=UniGetJobs['end_date'];
    Edit2DatesUA.Text:=FormMain.GetFullMonthByRegion(UniGetJobs['start_date'], EditRegionUA.Text)
             + '-' + FormMain.GetFullMonthByRegion(UniGetJobs['end_date'], EditRegionUA.Text);
    Edit2CompanyUA.Text:=UniGetJobs['employer'];
    RichEdit2RespUA.Text:=UniGetJobs['responsibilities'];
    RichEdit2BenefitsUA.Text:=UniGetJobs['benefits'];
    RichEdit2OtherUA.Text:=UniGetJobs['other'];
    UniGetSkills.Close;
    UniGetSkills.ParamByName('p_experience_id').AsInteger:=UniGetJobs['experience_id'];
    UniGetSkills.Open;
    Memo2SkillsUA.Clear;
    while not UniGetSkills.EOF do
      begin
        Memo2SkillsUA.Lines.Add(UniGetSkills['skill']);
        UniGetSkills.Next;
      end;
    end;
  if UniGetJobs['job_order']=3 then
    begin
    Edit3NameUA.Text:=UniGetJobs['job_position'];
    Dates3BUA:=UniGetJobs['start_date'];
    Dates3EUA:=UniGetJobs['end_date'];
    Edit3DatesUA.Text:=FormMain.GetFullMonthByRegion(UniGetJobs['start_date'], EditRegionUA.Text)
             + '-' + FormMain.GetFullMonthByRegion(UniGetJobs['end_date'], EditRegionUA.Text);
    Edit3CompanyUA.Text:=UniGetJobs['employer'];
    RichEdit3RespUA.Text:=UniGetJobs['responsibilities'];
    RichEdit3BenefitsUA.Text:=UniGetJobs['benefits'];
    RichEdit3OtherUA.Text:=UniGetJobs['other'];
    UniGetSkills.Close;
    UniGetSkills.ParamByName('p_experience_id').AsInteger:=UniGetJobs['experience_id'];
    UniGetSkills.Open;
    Memo3SkillsUA.Clear;
    while not UniGetSkills.EOF do
      begin
        Memo3SkillsUA.Lines.Add(UniGetSkills['skill']);
        UniGetSkills.Next;
      end;
    end;
  if UniGetJobs['job_order']=4 then
    begin
    Edit4NameUA.Text:=UniGetJobs['job_position'];
    Dates4BUA:=UniGetJobs['start_date'];
    Dates4EUA:=UniGetJobs['end_date'];
    Edit4DatesUA.Text:=FormMain.GetFullMonthByRegion(UniGetJobs['start_date'], EditRegionUA.Text)
             + '-' + FormMain.GetFullMonthByRegion(UniGetJobs['end_date'], EditRegionUA.Text);
    Edit4CompanyUA.Text:=UniGetJobs['employer'];
    RichEdit4RespUA.Text:=UniGetJobs['responsibilities'];
    RichEdit4BenefitsUA.Text:=UniGetJobs['benefits'];
    RichEdit4OtherUA.Text:=UniGetJobs['other'];
    UniGetSkills.Close;
    UniGetSkills.ParamByName('p_experience_id').AsInteger:=UniGetJobs['experience_id'];
    UniGetSkills.Open;
    Memo4SkillsUA.Clear;
    while not UniGetSkills.EOF do
      begin
        Memo4SkillsUA.Lines.Add(UniGetSkills['skill']);
        UniGetSkills.Next;
      end;
    end;
  if UniGetJobs['job_order']=5 then
    begin
    Edit5NameUA.Text:=UniGetJobs['job_position'];
    Dates5BUA:=UniGetJobs['start_date'];
    Dates5EUA:=UniGetJobs['end_date'];
    Edit5DatesUA.Text:=FormMain.GetFullMonthByRegion(UniGetJobs['start_date'], EditRegionUA.Text)
             + '-' + FormMain.GetFullMonthByRegion(UniGetJobs['end_date'], EditRegionUA.Text);
    Edit5CompanyUA.Text:=UniGetJobs['employer'];
    RichEdit5RespUA.Text:=UniGetJobs['responsibilities'];
    RichEdit5BenefitsUA.Text:=UniGetJobs['benefits'];
    RichEdit5OtherUA.Text:=UniGetJobs['other'];
    UniGetSkills.Close;
    UniGetSkills.ParamByName('p_experience_id').AsInteger:=UniGetJobs['experience_id'];
    UniGetSkills.Open;
    Memo5SkillsUA.Clear;
    while not UniGetSkills.EOF do
      begin
        Memo5SkillsUA.Lines.Add(UniGetSkills['skill']);
        UniGetSkills.Next;
      end;
    end;
  if UniGetJobs['job_order']=6 then
    begin
    Edit6NameUA.Text:=UniGetJobs['job_position'];
    Dates6BUA:=UniGetJobs['start_date'];
    Dates6EUA:=UniGetJobs['end_date'];
    Edit6DatesUA.Text:=FormMain.GetFullMonthByRegion(UniGetJobs['start_date'], EditRegionUA.Text)
             + '-' + FormMain.GetFullMonthByRegion(UniGetJobs['end_date'], EditRegionUA.Text);
    Edit6CompanyUA.Text:=UniGetJobs['employer'];
    RichEdit6RespUA.Text:=UniGetJobs['responsibilities'];
    RichEdit6BenefitsUA.Text:=UniGetJobs['benefits'];
    RichEdit6OtherUA.Text:=UniGetJobs['other'];
    UniGetSkills.Close;
    UniGetSkills.ParamByName('p_experience_id').AsInteger:=UniGetJobs['experience_id'];
    UniGetSkills.Open;
    Memo6SkillsUA.Clear;
    while not UniGetSkills.EOF do
      begin
        Memo6SkillsUA.Lines.Add(UniGetSkills['skill']);
        UniGetSkills.Next;
      end;
    end;
  if UniGetJobs['job_order']=7 then
    begin
    Edit7NameUA.Text:=UniGetJobs['job_position'];
    Dates7BUA:=UniGetJobs['start_date'];
    Dates7EUA:=UniGetJobs['end_date'];
    Edit7DatesUA.Text:=FormMain.GetFullMonthByRegion(UniGetJobs['start_date'], EditRegionUA.Text)
             + '-' + FormMain.GetFullMonthByRegion(UniGetJobs['end_date'], EditRegionUA.Text);
    Edit7CompanyUA.Text:=UniGetJobs['employer'];
    RichEdit7RespUA.Text:=UniGetJobs['responsibilities'];
    RichEdit7BenefitsUA.Text:=UniGetJobs['benefits'];
    RichEdit7OtherUA.Text:=UniGetJobs['other'];
    UniGetSkills.Close;
    UniGetSkills.ParamByName('p_experience_id').AsInteger:=UniGetJobs['experience_id'];
    UniGetSkills.Open;
    Memo7SkillsUA.Clear;
    while not UniGetSkills.EOF do
      begin
        Memo7SkillsUA.Lines.Add(UniGetSkills['skill']);
        UniGetSkills.Next;
      end;
    end;
  if UniGetJobs['job_order']=8 then
    begin
    Edit8NameUA.Text:=UniGetJobs['job_position'];
    Dates8BUA:=UniGetJobs['start_date'];
    Dates8EUA:=UniGetJobs['end_date'];
    Edit8DatesUA.Text:=FormMain.GetFullMonthByRegion(UniGetJobs['start_date'], EditRegionUA.Text)
             + '-' + FormMain.GetFullMonthByRegion(UniGetJobs['end_date'], EditRegionUA.Text);
    Edit8CompanyUA.Text:=UniGetJobs['employer'];
    RichEdit8RespUA.Text:=UniGetJobs['responsibilities'];
    RichEdit8BenefitsUA.Text:=UniGetJobs['benefits'];
    RichEdit8OtherUA.Text:=UniGetJobs['other'];
    UniGetSkills.Close;
    UniGetSkills.ParamByName('p_experience_id').AsInteger:=UniGetJobs['experience_id'];
    UniGetSkills.Open;
    Memo8SkillsUA.Clear;
    while not UniGetSkills.EOF do
      begin
        Memo8SkillsUA.Lines.Add(UniGetSkills['skill']);
        UniGetSkills.Next;
      end;
    end;
  if UniGetJobs['job_order']=9 then
    begin
    Edit9NameUA.Text:=UniGetJobs['job_position'];
    Dates9BUA:=UniGetJobs['start_date'];
    Dates9EUA:=UniGetJobs['end_date'];
    Edit9DatesUA.Text:=FormMain.GetFullMonthByRegion(UniGetJobs['start_date'], EditRegionUA.Text)
             + '-' + FormMain.GetFullMonthByRegion(UniGetJobs['end_date'], EditRegionUA.Text);
    Edit9CompanyUA.Text:=UniGetJobs['employer'];
    RichEdit9RespUA.Text:=UniGetJobs['responsibilities'];
    RichEdit9BenefitsUA.Text:=UniGetJobs['benefits'];
    RichEdit9OtherUA.Text:=UniGetJobs['other'];
    UniGetSkills.Close;
    UniGetSkills.ParamByName('p_experience_id').AsInteger:=UniGetJobs['experience_id'];
    UniGetSkills.Open;
    Memo9SkillsUA.Clear;
    while not UniGetSkills.EOF do
      begin
        Memo9SkillsUA.Lines.Add(UniGetSkills['skill']);
        UniGetSkills.Next;
      end;
    end;
  if UniGetJobs['job_order']=10 then
    begin
    Edit10NameUA.Text:=UniGetJobs['job_position'];
    Dates10BUA:=UniGetJobs['start_date'];
    Dates10EUA:=UniGetJobs['end_date'];
    Edit10DatesUA.Text:=FormMain.GetFullMonthByRegion(UniGetJobs['start_date'], EditRegionUA.Text)
             + '-' + FormMain.GetFullMonthByRegion(UniGetJobs['end_date'], EditRegionUA.Text);
    Edit10CompanyUA.Text:=UniGetJobs['employer'];
    RichEdit10RespUA.Text:=UniGetJobs['responsibilities'];
    RichEdit10BenefitsUA.Text:=UniGetJobs['benefits'];
    RichEdit10OtherUA.Text:=UniGetJobs['other'];
    UniGetSkills.Close;
    UniGetSkills.ParamByName('p_experience_id').AsInteger:=UniGetJobs['experience_id'];
    UniGetSkills.Open;
    Memo10SkillsUA.Clear;
    while not UniGetSkills.EOF do
      begin
        Memo10SkillsUA.Lines.Add(UniGetSkills['skill']);
        UniGetSkills.Next;
      end;
    end;
    UniGetJobs.Next;
  end;
UpdateUAMarkers;
end;

procedure TFormNewResume.ChangeDates1;
begin
Edit1DatesTR.Text := FormMain.GetFullMonthByRegion(CalendarPickerB1TR.Date, CBRegionTR.Text)
		 			 + '-' + FormMain.GetFullMonthByRegion(CalendarPickerE1TR.Date, CBRegionTR.Text);
end;

procedure TFormNewResume.ChangeDates2;
begin
Edit2DatesTR.Text := FormMain.GetFullMonthByRegion(CalendarPickerB2TR.Date, CBRegionTR.Text)
					 + '-' + FormMain.GetFullMonthByRegion(CalendarPickerE2TR.Date, CBRegionTR.Text);
end;

procedure TFormNewResume.ChangeDates3;
begin
Edit3DatesTR.Text := FormMain.GetFullMonthByRegion(CalendarPickerB3TR.Date, CBRegionTR.Text)
					 + '-' + FormMain.GetFullMonthByRegion(CalendarPickerE3TR.Date, CBRegionTR.Text);
end;

procedure TFormNewResume.ChangeDates4;
begin
Edit4DatesTR.Text := FormMain.GetFullMonthByRegion(CalendarPickerB4TR.Date, CBRegionTR.Text)
					 + '-' + FormMain.GetFullMonthByRegion(CalendarPickerE4TR.Date, CBRegionTR.Text);
end;

procedure TFormNewResume.ChangeDates5;
begin
Edit5DatesTR.Text := FormMain.GetFullMonthByRegion(CalendarPickerB5TR.Date, CBRegionTR.Text)
					 + '-' + FormMain.GetFullMonthByRegion(CalendarPickerE5TR.Date, CBRegionTR.Text);
end;

procedure TFormNewResume.ChangeDates6;
begin
Edit6DatesTR.Text := FormMain.GetFullMonthByRegion(CalendarPickerB6TR.Date, CBRegionTR.Text)
					 + '-' + FormMain.GetFullMonthByRegion(CalendarPickerE6TR.Date, CBRegionTR.Text);
end;

procedure TFormNewResume.ChangeDates7;
begin
Edit7DatesTR.Text := FormMain.GetFullMonthByRegion(CalendarPickerB7TR.Date, CBRegionTR.Text)
					 + '-' + FormMain.GetFullMonthByRegion(CalendarPickerE7TR.Date, CBRegionTR.Text);
end;

procedure TFormNewResume.ChangeDates8;
begin
Edit8DatesTR.Text := FormMain.GetFullMonthByRegion(CalendarPickerB8TR.Date, CBRegionTR.Text)
					 + '-' + FormMain.GetFullMonthByRegion(CalendarPickerE8TR.Date, CBRegionTR.Text);
end;

procedure TFormNewResume.ChangeDates9;
begin
Edit9DatesTR.Text := FormMain.GetFullMonthByRegion(CalendarPickerB9TR.Date, CBRegionTR.Text)
					 + '-' + FormMain.GetFullMonthByRegion(CalendarPickerE9TR.Date, CBRegionTR.Text);
end;

procedure TFormNewResume.CBCLWordWrapTRClick(Sender: TObject);
begin
if CBCLWordWrapTR.Checked
then
	begin
	RichEditCLTR.ScrollBars:=ssVertical;
	RichEditCLTR.WordWrap:=true;
	end
else
	begin
	RichEditCLTR.ScrollBars:=ssBoth;
	RichEditCLTR.WordWrap:=false;
	end;
end;

procedure TFormNewResume.CBCLWordWrapUAClick(Sender: TObject);
begin
if CBCLWordWrapUA.Checked
then
	begin
	RichEditCLUA.ScrollBars:=ssVertical;
	RichEditCLUA.WordWrap:=true;
	end
else
	begin
	RichEditCLUA.ScrollBars:=ssBoth;
	RichEditCLUA.WordWrap:=false;
	end;
end;

procedure TFormNewResume.CBCVWordWrapTRClick(Sender: TObject);
begin
if CBCVWordWrapTR.Checked
then
	begin
	RichEditCVTR.ScrollBars:=ssVertical;
	RichEditCVTR.WordWrap:=true;
	end
else
	begin
	RichEditCVTR.ScrollBars:=ssBoth;
	RichEditCVTR.WordWrap:=false;
	end;
end;

procedure TFormNewResume.CBCVWordWrapUAClick(Sender: TObject);
begin
if CBCVWordWrapUA.Checked
then
	begin
	RichEditCVUA.ScrollBars:=ssVertical;
	RichEditCVUA.WordWrap:=true;
	end
else
	begin
	RichEditCVUA.ScrollBars:=ssBoth;
	RichEditCVUA.WordWrap:=false;
	end;
end;

procedure TFormNewResume.ChangeDates10;
begin
Edit10DatesTR.Text := FormMain.GetFullMonthByRegion(CalendarPickerB10TR.Date, CBRegionTR.Text)
					  + '-' + FormMain.GetFullMonthByRegion(CalendarPickerE10TR.Date, CBRegionTR.Text);
end;

procedure TFormNewResume.CBMainWordWrapUAClick(Sender: TObject);
begin
if CBMainWordWrapUA.Checked
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

procedure TFormNewResume.CalendarPickerB10TRChange(Sender: TObject);
begin
	ChangeDates10;
end;

procedure TFormNewResume.CalendarPickerB10TRCloseUp(Sender: TObject);
begin
  ChangeDates10;
end;

procedure TFormNewResume.CalendarPickerB1TRCloseUp(Sender: TObject);
begin
	ChangeDates1;
end;

procedure TFormNewResume.CalendarPickerB2TRChange(Sender: TObject);
begin
  ChangeDates2;
end;

procedure TFormNewResume.CalendarPickerB2TRCloseUp(Sender: TObject);
begin
  ChangeDates2;
end;

procedure TFormNewResume.CalendarPickerB3TRChange(Sender: TObject);
begin
  ChangeDates3;
end;

procedure TFormNewResume.CalendarPickerB3TRCloseUp(Sender: TObject);
begin
  ChangeDates3;
end;

procedure TFormNewResume.CalendarPickerB4TRChange(Sender: TObject);
begin
  ChangeDates4;
end;

procedure TFormNewResume.CalendarPickerB4TRCloseUp(Sender: TObject);
begin
  ChangeDates4;
end;

procedure TFormNewResume.CalendarPickerB5TRChange(Sender: TObject);
begin
  ChangeDates5;
end;

procedure TFormNewResume.CalendarPickerB5TRCloseUp(Sender: TObject);
begin
  ChangeDates5;
end;

procedure TFormNewResume.CalendarPickerB6TRCloseUp(Sender: TObject);
begin
  ChangeDates6;
end;

procedure TFormNewResume.CalendarPickerB7TRChange(Sender: TObject);
begin
  ChangeDates7;
end;

procedure TFormNewResume.CalendarPickerB7TRCloseUp(Sender: TObject);
begin
  ChangeDates7;
end;

procedure TFormNewResume.CalendarPickerB8TRChange(Sender: TObject);
begin
  ChangeDates8;
end;

procedure TFormNewResume.CalendarPickerB8TRCloseUp(Sender: TObject);
begin
  ChangeDates8;
end;

procedure TFormNewResume.CalendarPickerB9TRChange(Sender: TObject);
begin
  ChangeDates9;
end;

procedure TFormNewResume.CalendarPickerB9TRCloseUp(Sender: TObject);
begin
  ChangeDates9;
end;

procedure TFormNewResume.CalendarPickerE10TRChange(Sender: TObject);
begin
  ChangeDates10;
end;

procedure TFormNewResume.CalendarPickerE10TRCloseUp(Sender: TObject);
begin
  ChangeDates10;
end;

procedure TFormNewResume.CalendarPickerE1TRChange(Sender: TObject);
begin
  ChangeDates1;
end;

procedure TFormNewResume.CalendarPickerE1TRCloseUp(Sender: TObject);
begin
  ChangeDates1;
end;

procedure TFormNewResume.CalendarPickerE2TRChange(Sender: TObject);
begin
  ChangeDates2;
end;

procedure TFormNewResume.CalendarPickerE2TRCloseUp(Sender: TObject);
begin
  ChangeDates2;
end;

procedure TFormNewResume.CalendarPickerE3TRChange(Sender: TObject);
begin
  ChangeDates3;
end;

procedure TFormNewResume.CalendarPickerE3TRCloseUp(Sender: TObject);
begin
  ChangeDates3;
end;

procedure TFormNewResume.CalendarPickerE4TRChange(Sender: TObject);
begin
  ChangeDates4;
end;

procedure TFormNewResume.CalendarPickerE4TRCloseUp(Sender: TObject);
begin
  ChangeDates4;
end;

procedure TFormNewResume.CalendarPickerE5TRChange(Sender: TObject);
begin
  ChangeDates5;
end;

procedure TFormNewResume.CalendarPickerE5TRCloseUp(Sender: TObject);
begin
  ChangeDates5;
end;

procedure TFormNewResume.CalendarPickerE6TRCloseUp(Sender: TObject);
begin
  ChangeDates6;
end;

procedure TFormNewResume.CalendarPickerE7TRCloseUp(Sender: TObject);
begin
  ChangeDates7;
end;

procedure TFormNewResume.CalendarPickerE8TRChange(Sender: TObject);
begin
  ChangeDates8;
end;

procedure TFormNewResume.CalendarPickerE8TRCloseUp(Sender: TObject);
begin
  ChangeDates8;
end;

procedure TFormNewResume.CalendarPickerE9TRChange(Sender: TObject);
begin
  ChangeDates9;
end;

procedure TFormNewResume.CalendarPickerE9TRCloseUp(Sender: TObject);
begin
  ChangeDates9;
end;

procedure TFormNewResume.CBLangTRChange(Sender: TObject);
begin
FormMain.UniRegions.First;
while not FormMain.UniRegions.Eof do
  begin
    if FormMain.UniRegions['id']=CBLangTR.Text then CBRegionTR.Text:=FormMain.UniRegions['region_name'];
    FormMain.UniRegions.Next;
  end;
//FormMain.Warning('Регион изменён на '+CBRegionTR.Text+' для '+ CBLangTR.Text);
end;

procedure TFormNewResume.CBRegionTRChange(Sender: TObject);
begin
FormMain.UniRegions.First;
while not FormMain.UniRegions.Eof do
  begin
    if FormMain.UniRegions['id']=CBLangTR.Text then CBRegionTR.Text:=FormMain.UniRegions['region_name'];
    FormMain.UniRegions.Next;
  end;
end;

procedure TFormNewResume.CBMainWordWrapTRClick(Sender: TObject);
begin
if CBMainWordWrapTR.Checked
then
	begin
	RichEditorTR.ScrollBars:=ssVertical;
	RichEditorTR.WordWrap:=true;
	end
else
	begin
	RichEditorTR.ScrollBars:=ssBoth;
	RichEditorTR.WordWrap:=false;
	end;
end;

function TFormNewResume.isMainFormGood: boolean;
begin
Result:=true;
// Проверка полей основной формы
  if FormMain.IsEmpty(EditNameTR.Text) then
  begin
		ShowMessage('Пусте поле "Посада"');
		Result := false;
		exit;
	end;
	if Length(Trim(EditNameTR.Text))<5 then
	begin
		ShowMessage('Поле "Посада" меньше за 5 символов');
		Result := false;
		exit;
	end;
	if FormMain.IsEmpty(EditOpportunityTR.Text) then
	begin
		ShowMessage('Пусте поле "Посада повністю"');
		Result := false;
		exit;
  end;
  if FormMain.IsEmpty(EditPlaceTR.Text) then
  begin
    ShowMessage('Пусте поле "Місце роботи"');
    Result := false;
    exit;
  end;
  if FormMain.IsEmpty(EditPhonesTR.Text) then
  begin
    ShowMessage('Пусте поле "Телефони"');
    Result := false;
    exit;
	end;
	if FormMain.IsEmpty(RichEditorTR.Text) then
	begin
    ShowMessage('Пусте поле "Введення"');
    Result := false;
    exit;
  end;
	if FormMain.IsEmpty(EditArticle1TR.Text) and not FormMain.IsEmpty(RichEditArticle1TR.Text) then
	begin
		ShowMessage('Пусте поле "Навички 1 - Назва"');
		Result := false;
		exit;
	end;
	if FormMain.IsEmpty(RichEditArticle1TR.Text) and not FormMain.IsEmpty(EditArticle1TR.Text) then
	begin
		ShowMessage('Пусте поле "Навички 1 - Текст"');
		Result := false;
		exit;
	end;
	if FormMain.IsEmpty(EditArticle2TR.Text) and not FormMain.IsEmpty(RichEditArticle2TR.Text) then
	begin
		ShowMessage('Пусте поле "Навички 2 - Назва"');
		Result := false;
		exit;
	end;
	if FormMain.IsEmpty(RichEditArticle2TR.Text) and not FormMain.IsEmpty(EditArticle2TR.Text) then
	begin
		ShowMessage('Пусте поле "Навички 2 - Текст"');
		Result := false;
		exit;
	end;
	if FormMain.IsEmpty(EditArticle3TR.Text) and not FormMain.IsEmpty(RichEditArticle3TR.Text) then
	begin
		ShowMessage('Пусте поле "Навички 3 - Назва"');
		Result := false;
		exit;
	end;
	if FormMain.IsEmpty(RichEditArticle3TR.Text) and not FormMain.IsEmpty(EditArticle3TR.Text) then
	begin
		ShowMessage('Пусте поле "Навички 3 - Текст"');
		Result := false;
		exit;
	end;
	if FormMain.IsEmpty(EditArticle4TR.Text) and not FormMain.IsEmpty(RichEditArticle4TR.Text) then
	begin
		ShowMessage('Пусте поле "Навички 4 - Назва"');
		Result := false;
		exit;
	end;
	if FormMain.IsEmpty(RichEditArticle4TR.Text) and not FormMain.IsEmpty(EditArticle4TR.Text) then
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
if IsJob1Active and (FormMain.IsDateInvalid(CalendarPickerB1TR.Date) or CalendarPickerB1TR.IsEmpty) then
	begin
		ShowMessage('Робота 1 дата початку пуста, невірна (знаходиться в майбутньому або рік дати меньший за 2000) '+DateToStr(CalendarPickerB1TR.Date));
		Result := false;
		exit;
	end;
if IsJob1Active and (FormMain.IsDateInvalid(CalendarPickerE1TR.Date) or CalendarPickerE1TR.IsEmpty) then
	begin
		ShowMessage('Робота 1 дата закінчення пуста, невірна (знаходиться в майбутньому або рік дати меньший за 2000) '+DateToStr(CalendarPickerE1TR.Date));
		Result := false;
		exit;
	end;
if IsJob2Active and (FormMain.IsDateInvalid(CalendarPickerB2TR.Date)or CalendarPickerB2TR.IsEmpty) then
	begin
		ShowMessage('Робота 2 дата початку  пуста, невірна (знаходиться в майбутньому або рік дати меньший за 2000) '+DateToStr(CalendarPickerB2TR.Date));
		Result := false;
		exit;
	end;
if IsJob2Active and (FormMain.IsDateInvalid(CalendarPickerE2TR.Date)or CalendarPickerE2TR.IsEmpty) then
	begin
		ShowMessage('Робота 2 дата закінчення  пуста, невірна (знаходиться в майбутньому або рік дати меньший за 2000) '+DateToStr(CalendarPickerE2TR.Date));
		Result := false;
		exit;
	end;
if IsJob3Active and (FormMain.IsDateInvalid(CalendarPickerB3TR.Date) or CalendarPickerB3TR.IsEmpty) then
	begin
		ShowMessage('Робота 3 дата початку пуста, невірна (знаходиться в майбутньому або рік дати меньший за 2000) '+DateToStr(CalendarPickerB3TR.Date));
		Result := false;
		exit;
	end;
if IsJob3Active and (FormMain.IsDateInvalid(CalendarPickerE3TR.Date) or CalendarPickerE3TR.IsEmpty) then
	begin
		ShowMessage('Робота 3 дата закінчення пуста, невірна (знаходиться в майбутньому або рік дати меньший за 2000) '+DateToStr(CalendarPickerE3TR.Date));
		Result := false;
		exit;
	end;
if IsJob4Active and (FormMain.IsDateInvalid(CalendarPickerB4TR.Date) or CalendarPickerB4TR.IsEmpty) then
	begin
		ShowMessage('Робота 4 дата початку пуста, невірна (знаходиться в майбутньому або рік дати меньший за 2000) '+DateToStr(CalendarPickerB4TR.Date));
		Result := false;
		exit;
	end;
if IsJob4Active and (FormMain.IsDateInvalid(CalendarPickerE4TR.Date) or CalendarPickerE4TR.IsEmpty) then
	begin
		ShowMessage('Робота 4 дата закінчення пуста, невірна (знаходиться в майбутньому або рік дати меньший за 2000) '+DateToStr(CalendarPickerE4TR.Date));
		Result := false;
		exit;
	end;
if IsJob5Active and (FormMain.IsDateInvalid(CalendarPickerB5TR.Date) or CalendarPickerB5TR.IsEmpty) then
	begin
		ShowMessage('Робота 5 дата початку пуста, невірна (знаходиться в майбутньому або рік дати меньший за 2000) '+DateToStr(CalendarPickerB5TR.Date));
		Result := false;
		exit;
	end;
if IsJob5Active and (FormMain.IsDateInvalid(CalendarPickerE5TR.Date) or CalendarPickerE5TR.IsEmpty) then
	begin
		ShowMessage('Робота 5 дата закінчення пуста, невірна (знаходиться в майбутньому або рік дати меньший за 2000) '+DateToStr(CalendarPickerE5TR.Date));
		Result := false;
		exit;
	end;
if IsJob6Active and (FormMain.IsDateInvalid(CalendarPickerB6TR.Date)  or CalendarPickerB6TR.IsEmpty) then
	begin
		ShowMessage('Робота 6 дата початку пуста, невірна (знаходиться в майбутньому або рік дати меньший за 2000) '+DateToStr(CalendarPickerB6TR.Date));
		Result := false;
		exit;
	end;
if IsJob6Active and (FormMain.IsDateInvalid(CalendarPickerE6TR.Date) or CalendarPickerE6TR.IsEmpty) then
	begin
		ShowMessage('Робота 6 дата закінчення пуста, невірна (знаходиться в майбутньому або рік дати меньший за 2000) '+DateToStr(CalendarPickerE6TR.Date));
		Result := false;
		exit;
	end;
if IsJob7Active and (FormMain.IsDateInvalid(CalendarPickerB7TR.Date) or CalendarPickerB7TR.IsEmpty) then
	begin
		ShowMessage('Робота 7 дата початку пуста, невірна (знаходиться в майбутньому або рік дати меньший за 2000) '+DateToStr(CalendarPickerB7TR.Date));
		Result := false;
		exit;
	end;
if IsJob7Active and (FormMain.IsDateInvalid(CalendarPickerE7TR.Date) or CalendarPickerE7TR.IsEmpty) then
	begin
		ShowMessage('Робота 7 дата закінчення пуста, невірна (знаходиться в майбутньому або рік дати меньший за 2000) '+DateToStr(CalendarPickerE7TR.Date));
		Result := false;
		exit;
	end;
if IsJob8Active and (FormMain.IsDateInvalid(CalendarPickerB8TR.Date) or CalendarPickerB8TR.IsEmpty) then
	begin
		ShowMessage('Робота 8 дата початку пуста, невірна (знаходиться в майбутньому або рік дати меньший за 2000) '+DateToStr(CalendarPickerB8TR.Date));
		Result := false;
		exit;
	end;
if IsJob8Active and (FormMain.IsDateInvalid(CalendarPickerE8TR.Date) or CalendarPickerE8TR.IsEmpty) then
	begin
		ShowMessage('Робота 8 дата закінчення пуста, невірна (знаходиться в майбутньому або рік дати меньший за 2000) '+DateToStr(CalendarPickerE8TR.Date));
		Result := false;
		exit;
	end;
if IsJob9Active and (FormMain.IsDateInvalid(CalendarPickerB9TR.Date) or CalendarPickerB9TR.IsEmpty) then
	begin
		ShowMessage('Робота 9 дата початку пуста, невірна (знаходиться в майбутньому або рік дати меньший за 2000) '+DateToStr(CalendarPickerB9TR.Date));
		Result := false;
		exit;
	end;
if IsJob9Active and (FormMain.IsDateInvalid(CalendarPickerE9TR.Date) or CalendarPickerE9TR.IsEmpty) then
	begin
		ShowMessage('Робота 9 дата закінчення пуста, невірна (знаходиться в майбутньому або рік дати меньший за 2000) '+DateToStr(CalendarPickerE9TR.Date));
		Result := false;
		exit;
	end;
if  IsJob10Active and (FormMain.IsDateInvalid(CalendarPickerB10TR.Date) or CalendarPickerB10TR.IsEmpty) then
	begin
		ShowMessage('Робота 10 дата початку пуста, невірна (знаходиться в майбутньому або рік дати меньший за 2000) '+DateToStr(CalendarPickerB10TR.Date));
		Result := false;
		exit;
	end;
if  IsJob10Active and (FormMain.IsDateInvalid(CalendarPickerE10TR.Date) or CalendarPickerE10TR.IsEmpty) then
	begin
		ShowMessage('Робота 10 дата закінчення пуста, невірна (знаходиться в майбутньому або рік дати меньший за 2000) '+DateToStr(CalendarPickerE10TR.Date));
		Result := false;
		exit;
	end;

// BX>=EX
	if IsJob1Active and (CalendarPickerB1TR.Date >=CalendarPickerE1TR.Date) then
	begin
    ShowMessage('Робота 1 дата закінчення '+DateToStr(CalendarPickerE1TR.Date)+' раніше за дату початку '+DateToStr(CalendarPickerB1TR.Date));
    Result := false;
    exit;
  end;

  if IsJob2Active and (CalendarPickerB2TR.Date >=CalendarPickerE2TR.Date) then
  begin
    ShowMessage('Робота 2 дата закінчення '+DateToStr(CalendarPickerE2TR.Date)+' раніше за дату початку '+DateToStr(CalendarPickerB2TR.Date));
    Result := false;
    exit;
  end;
  if IsJob3Active and (CalendarPickerB3TR.Date >=CalendarPickerE3TR.Date) then
  begin
    ShowMessage('Робота 3 дата закінчення '+DateToStr(CalendarPickerE3TR.Date)+' раніше за дату початку '+DateToStr(CalendarPickerB3TR.Date));
    Result := false;
    exit;
  end;
  if IsJob4Active and (CalendarPickerB4TR.Date >=CalendarPickerE4TR.Date) then
  begin
    ShowMessage('Робота 4 дата закінчення '+DateToStr(CalendarPickerE4TR.Date)+' раніше за дату початку '+DateToStr(CalendarPickerB4TR.Date));
    Result := false;
    exit;
  end;
  if IsJob5Active and (CalendarPickerB5TR.Date >=CalendarPickerE5TR.Date) then
  begin
    ShowMessage('Робота 5 дата закінчення '+DateToStr(CalendarPickerE5TR.Date)+' раніше за дату початку '+DateToStr(CalendarPickerB5TR.Date));
    Result := false;
    exit;
  end;
  if IsJob6Active and (CalendarPickerB6TR.Date >=CalendarPickerE6TR.Date) then
  begin
    ShowMessage('Робота 6 дата закінчення '+DateToStr(CalendarPickerE6TR.Date)+' раніше за дату початку '+DateToStr(CalendarPickerB6TR.Date));
    Result := false;
    exit;
  end;
  if IsJob7Active and (CalendarPickerB7TR.Date >=CalendarPickerE7TR.Date) then
  begin
    ShowMessage('Робота 7 дата закінчення '+DateToStr(CalendarPickerE7TR.Date)+' раніше за дату початку '+DateToStr(CalendarPickerB7TR.Date));
    Result := false;
    exit;
  end;
  if IsJob8Active and (CalendarPickerB8TR.Date >=CalendarPickerE8TR.Date) then
  begin
    ShowMessage('Робота 8 дата закінчення '+DateToStr(CalendarPickerE8TR.Date)+' раніше за дату початку '+DateToStr(CalendarPickerB8TR.Date));
    Result := false;
    exit;
  end;
  if IsJob9Active and (CalendarPickerB9TR.Date >=CalendarPickerE9TR.Date) then
  begin
    ShowMessage('Робота 9 дата закінчення '+DateToStr(CalendarPickerE9TR.Date)+' раніше за дату початку '+DateToStr(CalendarPickerB9TR.Date));
    Result := false;
    exit;
  end;
  if IsJob10Active and (CalendarPickerB10TR.Date >= CalendarPickerE10TR.Date) then
  begin
		ShowMessage('Робота 10 дата закінчення '+DateToStr(CalendarPickerE10TR.Date)+' раніше за дату початку '+DateToStr(CalendarPickerB10TR.Date));
		Result := false;
		exit;
	end;
end;


function TFormNewResume.isJobGood: boolean;
begin
Result:=true;
  if (IsJob1Active and FormMain.IsEmpty(Edit1NameTR.Text)) then
  begin
    ShowMessage('Пусте поле "Назва робота 1"');
    Result := false;
    exit;
  end;
  if (IsJob1Active and FormMain.IsEmpty(Edit1CompanyTR.Text)) then
  begin
    ShowMessage('Пусте поле "Компанія робота 1"');
    Result := false;
    exit;
  end;
	if (IsJob1Active and FormMain.IsEmpty(RichEdit1RespTR.Text)) then
  begin
    ShowMessage('Пусте поле "Обов`язки робота 1"');
    Result := false;
    exit;
  end;

  /// ////
  if (IsJob2Active and FormMain.IsEmpty(Edit2NameTR.Text)) then
  begin
    ShowMessage('Пусте поле "Назва робота 2"');
    Result := false;
    exit;
  end;
  if (IsJob2Active and FormMain.IsEmpty(Edit2CompanyTR.Text)) then
  begin
    ShowMessage('Пусте поле "Компанія робота 2"');
    Result := false;
    exit;
  end;
  if (IsJob2Active and FormMain.IsEmpty(RichEdit2RespTR.Text)) then
  begin
    ShowMessage('Пусте поле "Обов`язки робота 2"');
    Result := false;
    exit;
  end;
	/// ////
  if (IsJob3Active and FormMain.IsEmpty(Edit3NameTR.Text)) then
  begin
    ShowMessage('Пусте поле "Назва робота 3"');
    Result := false;
    exit;
  end;
  if (IsJob3Active and FormMain.IsEmpty(Edit3CompanyTR.Text)) then
  begin
    ShowMessage('Пусте поле "Компанія робота 3"');
    Result := false;
    exit;
  end;
  if (IsJob3Active and FormMain.IsEmpty(RichEdit3RespTR.Text)) then
  begin
    ShowMessage('Пусте поле "Обов`язки робота 3"');
    Result := false;
    exit;
  end;
  /// ////
  if (IsJob4Active and FormMain.IsEmpty(Edit4NameTR.Text)) then
  begin
    ShowMessage('Пусте поле "Назва робота 4"');
    Result := false;
    exit;
  end;
  if (IsJob4Active and FormMain.IsEmpty(Edit4CompanyTR.Text)) then
  begin
    ShowMessage('Пусте поле "Компанія робота 4"');
    Result := false;
    exit;
	end;
	if (IsJob4Active and FormMain.IsEmpty(RichEdit4RespTR.Text)) then
  begin
    ShowMessage('Пусте поле "Обов`язки робота 4"');
    Result := false;
    exit;
  end;
  /// ////
  if (IsJob5Active and FormMain.IsEmpty(Edit5NameTR.Text)) then
  begin
    ShowMessage('Пусте поле "Назва робота 5"');
    Result := false;
    exit;
  end;
  if (IsJob5Active and FormMain.IsEmpty(Edit5CompanyTR.Text)) then
  begin
    ShowMessage('Пусте поле "Компанія робота 5"');
    Result := false;
    exit;
  end;
  if (IsJob5Active and FormMain.IsEmpty(RichEdit5RespTR.Text)) then
  begin
    ShowMessage('Пусте поле "Обов`язки робота 5"');
    Result := false;
    exit;
  end;
  /// ////
  if (IsJob6Active and FormMain.IsEmpty(Edit6NameTR.Text)) then
  begin
    ShowMessage('Пусте поле "Назва робота 6"');
    Result := false;
    exit;
  end;
  if (IsJob6Active and FormMain.IsEmpty(Edit6CompanyTR.Text)) then
  begin
    ShowMessage('Пусте поле "Компанія робота 6"');
    Result := false;
    exit;
  end;
	if (IsJob6Active and FormMain.IsEmpty(RichEdit6RespTR.Text)) then
  begin
    ShowMessage('Пусте поле "Обов`язки робота 6"');
    Result := false;
    exit;
  end;
  /// ////
  if (IsJob7Active and FormMain.IsEmpty(Edit7NameTR.Text)) then
  begin
    ShowMessage('Пусте поле "Назва робота 7"');
    Result := false;
    exit;
  end;
  if (IsJob7Active and FormMain.IsEmpty(Edit7CompanyTR.Text)) then
  begin
    ShowMessage('Пусте поле "Компанія робота 7"');
    Result := false;
    exit;
  end;
	if (IsJob7Active and FormMain.IsEmpty(RichEdit7RespTR.Text)) then
  begin
    ShowMessage('Пусте поле "Обов`язки робота 7"');
    Result := false;
    exit;
  end;
  /// ////
  if (IsJob8Active and FormMain.IsEmpty(Edit8NameTR.Text)) then
  begin
    ShowMessage('Пусте поле "Назва робота 8"');
    Result := false;
    exit;
  end;
  if (IsJob8Active and FormMain.IsEmpty(Edit8CompanyTR.Text)) then
  begin
    ShowMessage('Пусте поле "Компанія робота 8"');
    Result := false;
    exit;
  end;
	if (IsJob8Active and FormMain.IsEmpty(RichEdit8RespTR.Text)) then
  begin
    ShowMessage('Пусте поле "Обов`язки робота 8"');
    Result := false;
    exit;
  end;
  /// ////
  if (IsJob9Active and FormMain.IsEmpty(Edit9NameTR.Text)) then
  begin
    ShowMessage('Пусте поле "Назва робота 9"');
    Result := false;
    exit;
  end;
  if (IsJob9Active and FormMain.IsEmpty(Edit9CompanyTR.Text)) then
  begin
    ShowMessage('Пусте поле "Компанія робота 9"');
    Result := false;
    exit;
  end;
	if (IsJob9Active and FormMain.IsEmpty(RichEdit9RespTR.Text)) then
  begin
    ShowMessage('Пусте поле "Обов`язки робота 9"');
    Result := false;
    exit;
  end;
  /// ////
  if (IsJob10Active and FormMain.IsEmpty(Edit10NameTR.Text)) then
  begin
    ShowMessage('Пусте поле "Назва робота 10"');
    Result := false;
    exit;
  end;
  if (IsJob10Active and FormMain.IsEmpty(Edit10CompanyTR.Text)) then
  begin
    ShowMessage('Пусте поле "Компанія робота 10"');
    Result := false;
    exit;
  end;
	if (IsJob10Active and FormMain.IsEmpty(RichEdit10RespTR.Text)) then
  begin
    ShowMessage('Пусте поле "Обов`язки робота 10"');
    Result := false;
    exit;
	end;
end;

end.
