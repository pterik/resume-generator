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
    MemoIntroUA: TMemo;
    TabSheetJob1UA: TTabSheet;
    Edit1DatesUA: TEdit;
    Edit1NameUA: TEdit;
    Edit1CompanyUA: TEdit;
    Memo1RespUA: TMemo;
    Edit1BenefitsUA: TEdit;
    Edit1BottomUA: TEdit;
    Memo1SkillsUA: TMemo;
    TabSheetJob2UA: TTabSheet;
    Edit2DatesUA: TEdit;
    Edit2NameUA: TEdit;
    Edit2CompanyUA: TEdit;
    Memo2RespUA: TMemo;
    Edit2BenefitsUA: TEdit;
    Edit2BottomUA: TEdit;
    Memo2SkillsUA: TMemo;
    TabSheetJob3UA: TTabSheet;
    Edit3DatesUA: TEdit;
    Edit3NameUA: TEdit;
    Edit3CompanyUA: TEdit;
    Memo3RespUA: TMemo;
    Edit3BenefitsUA: TEdit;
    Edit3BottomUA: TEdit;
    Memo3SkillsUA: TMemo;
    TabSheetJob4UA: TTabSheet;
    Edit4DatesUA: TEdit;
    Edit4NameUA: TEdit;
    Edit4CompanyUA: TEdit;
    Memo4RespUA: TMemo;
    Edit4BenefitsUA: TEdit;
    Edit4BottomUA: TEdit;
    Memo4SkillsUA: TMemo;
    TabSheetJob5UA: TTabSheet;
    Edit5DatesUA: TEdit;
    Edit5NameUA: TEdit;
    Edit5CompanyUA: TEdit;
    Memo5RespUA: TMemo;
    Edit5BenefitsUA: TEdit;
    Edit5BottomUA: TEdit;
    Memo5SkillsUA: TMemo;
    TabSheetJob6UA: TTabSheet;
    Memo6RespUA: TMemo;
    Edit6BenefitsUA: TEdit;
    Edit6BottomUA: TEdit;
    Edit6DatesUA: TEdit;
    Edit6NameUA: TEdit;
    Edit6CompanyUA: TEdit;
    Memo6SkillsUA: TMemo;
    TabSheetJob7UA: TTabSheet;
    Memo7RespUA: TMemo;
    Edit7BenefitsUA: TEdit;
    Edit7BottomUA: TEdit;
    Edit7DatesUA: TEdit;
    Edit7NameUA: TEdit;
    Edit7CompanyUA: TEdit;
    Memo7SkillsUA: TMemo;
    TabSheetJob8UA: TTabSheet;
    Memo8RespUA: TMemo;
    Edit8BenefitsUA: TEdit;
    Edit8BottomUA: TEdit;
    Edit8DatesUA: TEdit;
    Edit8NameUA: TEdit;
    Edit8CompanyUA: TEdit;
    Memo8SkillsUA: TMemo;
    TabSheetJob9UA: TTabSheet;
    Memo9RespUA: TMemo;
    Edit9BenefitsUA: TEdit;
    Edit9BottomUA: TEdit;
    Edit9DatesUA: TEdit;
    Edit9NameUA: TEdit;
    Edit9CompanyUA: TEdit;
    Memo9SkillsUA: TMemo;
    TabSheet10UA: TTabSheet;
    Memo10RespUA: TMemo;
    Edit10BenefitsUA: TEdit;
    Edit10BottomUA: TEdit;
    Edit10DatesUA: TEdit;
    Edit10NameUA: TEdit;
    Edit10CompanyUA: TEdit;
    Memo10SkillsUA: TMemo;
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
    MemoIntroTR: TMemo;
    CBRegionTR: TComboBox;
    CBLangTR: TComboBox;
    TabSheetJob1TR: TTabSheet;
    Edit1DatesTR: TEdit;
    Edit1NameTR: TEdit;
    Edit1CompanyTR: TEdit;
    CalendarPickerB1TR: TCalendarPicker;
    CalendarPickerE1TR: TCalendarPicker;
    Memo1RespTR: TMemo;
    Edit1BenefitsTR: TEdit;
    Edit1BottomTR: TEdit;
    TabSheetJob2TR: TTabSheet;
    Edit2DatesTR: TEdit;
    Edit2NameTR: TEdit;
    Edit2CompanyTR: TEdit;
    CalendarPickerB2TR: TCalendarPicker;
    CalendarPickerE2TR: TCalendarPicker;
    Memo2RespTR: TMemo;
    Edit2BenefitsTR: TEdit;
    Edit2BottomTR: TEdit;
    TabSheetJob3TR: TTabSheet;
    Edit3DatesTR: TEdit;
    Edit3NameTR: TEdit;
    Edit3CompanyTR: TEdit;
    CalendarPickerB3TR: TCalendarPicker;
    CalendarPickerE3TR: TCalendarPicker;
    Memo3RespTR: TMemo;
    Edit3BenefitsTR: TEdit;
    Edit3BottomTR: TEdit;
    TabSheetJob4TR: TTabSheet;
    Edit4DatesTR: TEdit;
    Edit4NameTR: TEdit;
    Edit4CompanyTR: TEdit;
    CalendarPickerB4TR: TCalendarPicker;
    CalendarPickerE4TR: TCalendarPicker;
    Memo4RespTR: TMemo;
    Edit4BenefitsTR: TEdit;
    Edit4BottomTR: TEdit;
    TabSheetJob5TR: TTabSheet;
    Edit5DatesTR: TEdit;
    Edit5NameTR: TEdit;
    Edit5CompanyTR: TEdit;
    CalendarPickerB5TR: TCalendarPicker;
    CalendarPickerE5TR: TCalendarPicker;
    Memo5RespTR: TMemo;
    Edit5BenefitsTR: TEdit;
    Edit5BottomTR: TEdit;
    TabSheetJob6TR: TTabSheet;
    Memo6RespTR: TMemo;
    Edit6BenefitsTR: TEdit;
    Edit6BottomTR: TEdit;
    Edit6DatesTR: TEdit;
    Edit6NameTR: TEdit;
    Edit6CompanyTR: TEdit;
    CalendarPickerB6TR: TCalendarPicker;
    CalendarPickerE6TR: TCalendarPicker;
    TabSheetJob7TR: TTabSheet;
    Memo7RespTR: TMemo;
    Edit7BenefitsTR: TEdit;
    Edit7BottomTR: TEdit;
    CalendarPickerB7TR: TCalendarPicker;
    CalendarPickerE7TR: TCalendarPicker;
    Edit7DatesTR: TEdit;
    Edit7NameTR: TEdit;
    Edit7CompanyTR: TEdit;
    TabSheetJob8TR: TTabSheet;
    Memo8RespTR: TMemo;
    Edit8BenefitsTR: TEdit;
    Edit8BottomTR: TEdit;
    CalendarPickerB8TR: TCalendarPicker;
    CalendarPickerE8TR: TCalendarPicker;
    Edit8DatesTR: TEdit;
    Edit8NameTR: TEdit;
    Edit8CompanyTR: TEdit;
    TabSheetJob9TR: TTabSheet;
    Memo9RespTR: TMemo;
    Edit9BenefitsTR: TEdit;
    Edit9BottomTR: TEdit;
    Edit9DatesTR: TEdit;
    CalendarPickerB9TR: TCalendarPicker;
    CalendarPickerE9TR: TCalendarPicker;
    Edit9NameTR: TEdit;
    Edit9CompanyTR: TEdit;
    TabSheetJob10TR: TTabSheet;
    Memo10RespTR: TMemo;
    Edit10BenefitsTR: TEdit;
    Edit10BottomTR: TEdit;
    CalendarPickerB10TR: TCalendarPicker;
    CalendarPickerE10TR: TCalendarPicker;
    Edit10DatesTR: TEdit;
    Edit10NameTR: TEdit;
    Edit10CompanyTR: TEdit;
    UniRegions: TUniQuery;
    UniRegionsregion_name: TStringField;
    UniRegionsorderby: TIntegerField;
    UniRegionscreated: TDateTimeField;
    UniRegionsupdated: TDateTimeField;
    UniLanguages: TUniQuery;
    UniLanguageslang: TStringField;
    UniLanguageslanguage: TStringField;
    UniLanguagesorderby: TIntegerField;
    UniLanguagescreated: TDateTimeField;
    UniLanguagesupdated: TDateTimeField;
    UniGetResumeid: TIntegerField;
    UniGetResumename: TStringField;
    UniGetResumelang: TStringField;
    UniGetResumeregion_id: TStringField;
    UniGetResumejob_opportunity: TStringField;
    UniGetResumejob_place: TStringField;
    UniGetResumephone_numbers_text: TStringField;
    UniGetResumecv_docx_url: TStringField;
    UniGetResumecv_pdf_url: TStringField;
    UniGetResumeresume_introduction: TStringField;
    UniGetResumecreated: TDateTimeField;
    UniGetResumeupdated: TDateTimeField;
    UniGetFooters: TUniQuery;
    TabSheetFooterUA: TTabSheet;
    UniRegionsid: TStringField;
    UniRegionsdate_mask: TStringField;
    StaticText1: TStaticText;
    EditArticle1UA: TEdit;
    EditArticle2UA: TEdit;
    MemoArticle1UA: TMemo;
    MemoArticle2UA: TMemo;
    EditArticle3UA: TEdit;
    EditArticle4UA: TEdit;
    MemoArticle3UA: TMemo;
    MemoArticle4UA: TMemo;
    EditArticle1TR: TEdit;
    EditArticle2TR: TEdit;
    MemoArticle1TR: TMemo;
    MemoArticle2TR: TMemo;
    EditArticle3TR: TEdit;
    EditArticle4TR: TEdit;
    MemoArticle3TR: TMemo;
    MemoArticle4TR: TMemo;
    StaticText3: TStaticText;
    LabelFooterID: TLabel;
    UniGetFootersid: TIntegerField;
    UniGetFootersresume_id: TIntegerField;
    UniGetFootersfooter_header: TStringField;
    UniGetFootersfooter_text: TStringField;
    UniGetFootersfooter_order: TIntegerField;
    UniGetFooterscreated: TDateTimeField;
    UniGetFootersupdated: TDateTimeField;
    Memo1SkillsTR: TMemo;
    Memo2SkillsTR: TMemo;
    Memo3SkillsTR: TMemo;
    Memo4SkillsTR: TMemo;
    Memo5SkillsTR: TMemo;
    Memo6SkillsTR: TMemo;
    Memo7SkillsTR: TMemo;
    Memo8SkillsTR: TMemo;
    Memo9SkillsTR: TMemo;
    Memo10SkillsTR: TMemo;
    UniGetTemplate: TUniQuery;
    UniGetTemplateid: TIntegerField;
    UniGetTemplatename: TStringField;
    UniGetTemplatejob_opportunity: TStringField;
    UniGetTemplatejob_place: TStringField;
    UniGetTemplatephone_numbers_text: TStringField;
    UniGetTemplateresume_introduction: TStringField;
    UniGetTemplatecreated: TDateTimeField;
    UniGetTemplateupdated: TDateTimeField;
    UniGetSkills: TUniQuery;
    UniGetJobs: TUniQuery;
    UniGetJobsid: TIntegerField;
    UniGetJobsstart_date: TDateField;
    UniGetJobsend_date: TDateField;
    UniGetJobsemployer: TStringField;
    UniGetJobsresponsibilities: TStringField;
    UniGetJobsbenefits: TStringField;
    UniGetJobsleave_reason: TStringField;
    UniGetJobscreated: TDateTimeField;
    UniGetJobsupdated: TDateTimeField;
    UniGetSkillsid: TIntegerField;
    UniGetSkillsexperience_id: TIntegerField;
    UniGetSkillscategory_id: TIntegerField;
    UniGetSkillscreated: TDateTimeField;
    UniGetSkillsupdated: TDateTimeField;
    Label11: TLabel;
    UniInsertSkillList: TUniQuery;
    UniGetJobsjob_position: TStringField;
    UniGetJobsorder_position: TLargeintField;
    UniLastJobID: TUniQuery;
    IntegerField1: TIntegerField;
    UniGetSkillID: TUniQuery;
    UniInsertSkill: TUniQuery;
    UniGetSkillList: TUniQuery;
    UniGetSkillListcntr: TLargeintField;
    UniGetResumearchived: TBooleanField;
    UniGetSkillsskill: TStringField;
    UniGetSkillscategory: TStringField;
    BitBtnCopy: TBitBtn;
    UniSPInsertResume: TUniStoredProc;
    UniGetCopyResumeID: TUniQuery;
    EditLangRU: TEdit;
    EditRegionRU: TEdit;
    CalendarPickerB1: TCalendarPicker;
    CalendarPickerE1: TCalendarPicker;
    CalendarPicker1: TCalendarPicker;
    CalendarPicker2: TCalendarPicker;
    CalendarPicker3: TCalendarPicker;
    CalendarPicker4: TCalendarPicker;
    CalendarPicker5: TCalendarPicker;
    CalendarPicker6: TCalendarPicker;
    CalendarPicker7: TCalendarPicker;
    CalendarPicker8: TCalendarPicker;
    CalendarPicker9: TCalendarPicker;
    CalendarPicker10: TCalendarPicker;
    CalendarPicker11: TCalendarPicker;
    CalendarPicker12: TCalendarPicker;
    CalendarPicker13: TCalendarPicker;
    CalendarPicker14: TCalendarPicker;
    CalendarPicker15: TCalendarPicker;
    CalendarPicker16: TCalendarPicker;
    CalendarPicker17: TCalendarPicker;
    CalendarPicker18: TCalendarPicker;
    UniSPInsertExperiences: TUniStoredProc;
    UniSPInsertSkills: TUniStoredProc;
    UniSPDeleteExpSkills: TUniStoredProc;
    UniInsertFooters: TUniQuery;
    UniInsertJobs: TUniQuery;
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
    procedure BitBtn1Click(Sender: TObject);
  private
    CBLang_First_Value, CBRegion_First_Value: string;
    CBRegionTR_ID:string;
    FootersAreActive: array [1 .. 4] of boolean;
    JobsAreActive: array [1 .. 10] of boolean;
    FResumeID : integer;
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
    function CheckValues: boolean; //Проверка значений при сохранении
    function SaveValues: boolean;  // Сохранение всех значений
    function SaveResume : boolean; // Сохранение значений Resume
    function SaveJobs: boolean;    // Сохранение значений Jobs
    procedure GetFootersFromID; // Получить значения футера из другого резюме, указав краткое имя и язык
    procedure GetResumefromID;       // Получить значения первого окна Resume указав ResumeID для копирования
    procedure GetResumeTRfromUA;
    procedure CopyTRfromUA;
    procedure SynchroRegionLang; // Копировать резюме с UA в TR. Копируются все поля одним нажатием
  public
    function NVL(Value:variant):string;
    procedure SetEmptyTR;     // Очистить все поля для TR
    procedure SetEmptyUA;     // Очистить все поля для UA
    procedure SetFormValues;  // Установить все значения перед открытием окна
    procedure GetValuesFromTemplate(TemplateId: integer); //Получить значения из шаблона - вызов внутри модуля
    procedure GetValuesFromResume(const ResumeID:integer);
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
CBRegionTR.Text := 'UA';
for i := 1 to 4 do
  FootersAreActive[i] := false;
for i := 1 to 10 do
  JobsAreActive[i] := false;
PageControlTR.ActivePageIndex:=0;
end;

procedure TFormNewResume.SynchroRegionLang;
begin
//
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
end;

procedure TFormNewResume.PageControlUAChange(Sender: TObject);
begin
  PageControlTR.ActivePageIndex := PageControlUA.ActivePageIndex;
end;

procedure TFormNewResume.InitCBLanguages;
begin
  CBLangTR.Clear;
  UniLanguages.Close;
  UniLanguages.Open;
  CBLangTR.Text := UniLanguages['lang'];
  CBLang_First_Value := UniLanguages['lang'];
  while not UniLanguages.EOF do
  begin
    CBLangTR.Items.Add(UniLanguages['lang']);
    UniLanguages.Next;
  end;
  UniLanguages.Close;
end;

procedure TFormNewResume.InitCBRegions;
begin
  CBRegionTR.Clear;
  UniRegions.Close;
  UniRegions.Open;
  CBRegionTR.Text := UniRegions['region_name'];
  CBRegionTR_ID:='RU';
  CBRegion_First_Value := UniRegions['region_name'];
  while not UniRegions.EOF do
  begin
    CBRegionTR.Items.Add(UniRegions['region_name']);
    UniRegions.Next;
  end;
end;

function TFormNewResume.NVL(Value: variant): string;
begin
if VarIsNull(Value) then Result:='' else Result:=Value;
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
  MemoIntroTR.Text := '';
  EditLangRU.Text := 'UA';
  EditRegionRU.Text := 'UA';

  MemoArticle1TR.Text := '';
  MemoArticle2TR.Text := '';
  MemoArticle3TR.Text := '';
  MemoArticle4TR.Text := '';
  EditArticle1TR.Text := '';
  EditArticle2TR.Text := '';
  EditArticle3TR.Text := '';
  EditArticle4TR.Text := '';

  Edit1DatesTR.Text := '';
  Edit1NameTR.Text := '';
  Edit1CompanyTR.Text := '';
  Memo1RespTR.Text := '';
  Edit1BenefitsTR.Text := '';
  Memo1SkillsTR.Text := '';
  Edit1BottomTR.Text := '';

  Edit2DatesTR.Text := '';
  Edit2NameTR.Text := '';
  Edit2CompanyTR.Text := '';
  Memo2RespTR.Text := '';
  Edit2BenefitsTR.Text := '';
  Memo2SkillsTR.Text := '';
  Edit2BottomTR.Text := '';

  Edit3DatesTR.Text := '';
  Edit3NameTR.Text := '';
  Edit3CompanyTR.Text := '';
  Memo3RespTR.Text := '';
  Edit3BenefitsTR.Text := '';
  Memo3SkillsTR.Text := '';
  Edit3BottomTR.Text := '';

  Edit4DatesTR.Text := '';
  Edit4NameTR.Text := '';
  Edit4CompanyTR.Text := '';
  Memo4RespTR.Text := '';
  Edit4BenefitsTR.Text := '';
  Memo4SkillsTR.Text := '';
  Edit4BottomTR.Text := '';

  Edit5DatesTR.Text := '';
  Edit5NameTR.Text := '';
  Edit5CompanyTR.Text := '';
  Memo5RespTR.Text := '';
  Edit5BenefitsTR.Text := '';
  Memo5SkillsTR.Text := '';
  Edit5BottomTR.Text := '';

  Edit6DatesTR.Text := '';
  Edit6NameTR.Text := '';
  Edit6CompanyTR.Text := '';
  Memo6RespTR.Text := '';
  Edit6BenefitsTR.Text := '';
  Memo6SkillsTR.Text := '';
  Edit6BottomTR.Text := '';

  Edit7DatesTR.Text := '';
  Edit7NameTR.Text := '';
  Edit7CompanyTR.Text := '';
  Memo7RespTR.Text := '';
  Edit7BenefitsTR.Text := '';
  Memo7SkillsTR.Text := '';
  Edit7BottomTR.Text := '';

  Edit8DatesTR.Text := '';
  Edit8NameTR.Text := '';
  Edit8CompanyTR.Text := '';
  Memo8RespTR.Text := '';
  Edit8BenefitsTR.Text := '';
  Memo8SkillsTR.Text := '';
  Edit8BottomTR.Text := '';

  Edit9DatesTR.Text := '';
  Edit9NameTR.Text := '';
  Edit9CompanyTR.Text := '';
  Memo9RespTR.Text := '';
  Edit9BenefitsTR.Text := '';
  Memo9SkillsTR.Text := '';
  Edit9BottomTR.Text := '';

  Edit10DatesTR.Text := '';
  Edit10NameTR.Text := '';
  Edit10CompanyTR.Text := '';
  Memo10RespTR.Text := '';
  Edit10BenefitsTR.Text := '';
  Memo10SkillsTR.Text := '';
  Edit10BottomTR.Text := '';

//  CalendarPickerB1TR.Date := StrToDate('00.00.0000', AF);
//  CalendarPickerE1TR.Date := StrToDate('00.00.0000', AF);
end;

procedure TFormNewResume.SetEmptyUA;
begin
  EditNameUA.Text := '';
  EditOpportunityUA.Text := '';
  EditPlaceUA.Text := '';
  EditPhonesUA.Text := '';
  MemoIntroUA.Text := '';

  MemoArticle1UA.Text := '';
  MemoArticle2UA.Text := '';
  MemoArticle3UA.Text := '';
  MemoArticle4UA.Text := '';
  EditArticle1UA.Text := '';
  EditArticle2UA.Text := '';
  EditArticle3UA.Text := '';  EditArticle4UA.Text := '';

  Edit1DatesUA.Text := '';  Edit1NameUA.Text := '';  Edit1CompanyUA.Text := ''; Memo1RespUA.Text := '';
  Edit1BenefitsUA.Text := ''; Memo1SkillsUA.Text := ''; Edit1BottomUA.Text := '';

  Edit2DatesUA.Text := '';  Edit2NameUA.Text := '';  Edit2CompanyUA.Text := '';  Memo2RespUA.Text := '';
  Edit2BenefitsUA.Text := '';  Memo2SkillsUA.Text := '';  Edit2BottomUA.Text := '';

  Edit3DatesUA.Text := '';  Edit3NameUA.Text := '';  Edit3CompanyUA.Text := '';  Memo3RespUA.Text := '';
  Edit3BenefitsUA.Text := '';  Memo3SkillsUA.Text := '';  Edit3BottomUA.Text := '';

  Edit4DatesUA.Text := '';  Edit4NameUA.Text := '';  Edit4CompanyUA.Text := '';  Memo4RespUA.Text := '';
  Edit4BenefitsUA.Text := '';  Memo4SkillsUA.Text := '';  Edit4BottomUA.Text := '';

  Edit5DatesUA.Text := '';  Edit5NameUA.Text := '';  Edit5CompanyUA.Text := '';  Memo5RespUA.Text := '';
  Edit5BenefitsUA.Text := '';  Memo5SkillsUA.Text := '';  Edit5BottomUA.Text := '';

  Edit6DatesUA.Text := '';  Edit6NameUA.Text := '';  Edit6CompanyUA.Text := '';  Memo6RespUA.Text := '';
  Edit6BenefitsUA.Text := '';  Memo6SkillsUA.Text := '';  Edit6BottomUA.Text := '';

  Edit7DatesUA.Text := '';  Edit7NameUA.Text := '';  Edit7CompanyUA.Text := '';  Memo7RespUA.Text := '';
  Edit7BenefitsUA.Text := '';  Memo7SkillsUA.Text := '';  Edit7BottomUA.Text := '';

  Edit8DatesUA.Text := '';  Edit8NameUA.Text := '';  Edit8CompanyUA.Text := '';  Memo8RespUA.Text := '';
  Edit8BenefitsUA.Text := '';  Memo8SkillsUA.Text := '';  Edit8BottomUA.Text := '';

  Edit9DatesUA.Text := '';  Edit9NameUA.Text := '';  Edit9CompanyUA.Text := '';  Memo9RespUA.Text := '';
  Edit9BenefitsUA.Text := '';  Memo9SkillsUA.Text := '';  Edit9BottomUA.Text := '';

  Edit10DatesUA.Text := '';  Edit10NameUA.Text := '';  Edit10CompanyUA.Text := '';  Memo10RespUA.Text := '';
  Edit10BenefitsUA.Text := '';  Memo10SkillsUA.Text := '';  Edit10BottomUA.Text := '';
end;

procedure TFormNewResume.GetResumefromID;
var ResumeFooterID: integer;
begin
CBLangTR.Text := CBLang_First_Value;
CBRegionTR.Text := CBRegion_First_Value;
FormMain.Warning('Resumeid=' + IntToStr(FResumeID));
LabelFooterID.Caption:='Copy from '+ IntToStr(FResumeID);
// Читаем запись из Resumes
UniGetResume.Close;
UniGetResume.ParamByName('p_id').AsInteger := FResumeID;
UniGetResume.Open;
EditNameUA.Text := NVL(UniGetResume['name']);
EditOpportunityUA.Text := NVL(UniGetResume['job_opportunity']);
EditPlaceUA.Text := NVL(UniGetResume['job_place']);
EditPhonesUA.Text := NVL(UniGetResume['phone_numbers_text']);
MemoIntroUA.Text := NVL(UniGetResume['resume_introduction']);

// Читаем запись из Resume_Footers
UniGetFooters.Close;
UniGetFooters.ParamByName('p_resume_id').AsInteger := FResumeID;
UniGetFooters.Open;
ResumeFooterID := UniGetFooters['id'];
LabelFooterID.Caption := LabelFooterID.Caption + ' resume_id = ' + IntToStr(FResumeID);
while not UniGetFooters.EOF do
  begin
  if UniGetFooters['footer_order'] = 1 then
    begin
      EditArticle1UA.Text := NVL(UniGetFooters['footer_header']);
      MemoArticle1UA.Text := NVL(UniGetFooters['footer_text']);
    end;
  if UniGetFooters['footer_order'] = 2 then
    begin
      EditArticle2UA.Text := NVL(UniGetFooters['footer_header']);
      MemoArticle2UA.Text := NVL(UniGetFooters['footer_text']);
    end;
  if UniGetFooters['footer_order'] = 3 then
    begin
       EditArticle3UA.Text := NVL(UniGetFooters['footer_header']);
       MemoArticle3UA.Text := NVL(UniGetFooters['footer_text']);
    end;
  if UniGetFooters['footer_order'] = 4 then
    begin
      EditArticle4UA.Text := NVL(UniGetFooters['footer_header']);
      MemoArticle4UA.Text := NVL(UniGetFooters['footer_text']);
    end;
  UniGetFooters.Next;
  end;
//GetJobsFromID;         // Получить значения Job из другого резюме, указав его ID
  UniGetJobs.Prepare;
  UniGetJobs.ParamByName('p_resume_id').AsInteger := FResumeID;
  UniGetJobs.Open;
  while not UniGetJobs.EOF do
  begin
    case UniGetJobs['order_position'] of
     1: begin
        if VarIsNull(UniGetJobs['end_date'])
          then Edit1DatesUA.Text := FormMain.GetMonthByRegion(UniGetJobs['start_date'], 'UA') + '- Now'
          else Edit1DatesUA.Text := FormMain.GetMonthByRegion(UniGetJobs['start_date'], 'UA') + '-' + FormMain.GetMonthByRegion(UniGetJobs['end_date'], 'UA');
        Edit1NameUA.Text := NVL(UniGetJobs['job_position']);
        Memo1RespUA.Text := NVL(UniGetJobs['responsibilities']);
        Edit1CompanyUA.Text := NVL(UniGetJobs['employer']);
        Edit1BenefitsUA.Text := NVL(UniGetJobs['benefits']);
        Edit1BottomUA.Text := NVL(UniGetJobs['leave_reason']);
        UniGetSkills.Prepare;
        UniGetSkills.ParamByName('p_experience_id').AsInteger := UniGetJobs['id'];
        UniGetSkills.Open;
        Memo1SkillsUA.Clear;
        while not UniGetSkills.EOF do
          begin
            Memo1SkillsUA.Lines.Add(UniGetSkills['skill'] + ' - ' + UniGetSkills ['category']);
            UniGetSkills.Next;
          end;
        end;
     2: begin
        if VarIsNull(UniGetJobs['end_date'])
          then Edit2DatesUA.Text := FormMain.GetMonthByRegion(UniGetJobs['start_date'], 'UA') + '- Now'
          else Edit2DatesUA.Text := FormMain.GetMonthByRegion(UniGetJobs['start_date'], 'UA') + '-' + FormMain.GetMonthByRegion(UniGetJobs['end_date'], 'UA');
        Edit2NameUA.Text := NVL(UniGetJobs['job_position']);
        Memo2RespUA.Text := NVL(UniGetJobs['responsibilities']);
        Edit2CompanyUA.Text := NVL(UniGetJobs['employer']);
        Edit2BenefitsUA.Text := NVL(UniGetJobs['benefits']);
        Edit2BottomUA.Text := NVL(UniGetJobs['leave_reason']);
        UniGetSkills.Prepare;
        UniGetSkills.ParamByName('p_experience_id').AsInteger := UniGetJobs['id'];
        UniGetSkills.Open;
        Memo2SkillsUA.Clear;
        while not UniGetSkills.EOF do
          begin
            Memo2SkillsUA.Lines.Add(UniGetSkills['skill'] + ' - ' + UniGetSkills ['category']);
            UniGetSkills.Next;
          end;
        end;
     3: begin
        if VarIsNull(UniGetJobs['end_date'])
          then Edit3DatesUA.Text := FormMain.GetMonthByRegion(UniGetJobs['start_date'], 'UA') + '- Now'
          else Edit3DatesUA.Text := FormMain.GetMonthByRegion(UniGetJobs['start_date'], 'UA') + '-' + FormMain.GetMonthByRegion(UniGetJobs['end_date'], 'UA');
        Edit3NameUA.Text := NVL(UniGetJobs['job_position']);
        Memo3RespUA.Text := NVL(UniGetJobs['responsibilities']);
        Edit3CompanyUA.Text := NVL(UniGetJobs['employer']);
        Edit3BenefitsUA.Text := NVL(UniGetJobs['benefits']);
        Edit3BottomUA.Text := NVL(UniGetJobs['leave_reason']);
        UniGetSkills.Prepare;
        UniGetSkills.ParamByName('p_experience_id').AsInteger := UniGetJobs['id'];
        UniGetSkills.Open;
        Memo3SkillsUA.Clear;
        while not UniGetSkills.EOF do
          begin
            Memo3SkillsUA.Lines.Add(UniGetSkills['skill'] + ' - ' + UniGetSkills ['category']);
            UniGetSkills.Next;
          end;
        end;
     4: begin
        if VarIsNull(UniGetJobs['end_date'])
          then Edit4DatesUA.Text := FormMain.GetMonthByRegion(UniGetJobs['start_date'], 'UA') + '- Now'
          else Edit4DatesUA.Text := FormMain.GetMonthByRegion(UniGetJobs['start_date'], 'UA') + '-' + FormMain.GetMonthByRegion(UniGetJobs['end_date'], 'UA');
        Edit4NameUA.Text := NVL(UniGetJobs['job_position']);
        Memo4RespUA.Text := NVL(UniGetJobs['responsibilities']);
        Edit4CompanyUA.Text := NVL(UniGetJobs['employer']);
        Edit4BenefitsUA.Text := NVL(UniGetJobs['benefits']);
        Edit4BottomUA.Text := NVL(UniGetJobs['leave_reason']);
        UniGetSkills.Prepare;
        UniGetSkills.ParamByName('p_experience_id').AsInteger := UniGetJobs['id'];
        UniGetSkills.Open;
        Memo4SkillsUA.Clear;
        while not UniGetSkills.EOF do
          begin
            Memo4SkillsUA.Lines.Add(UniGetSkills['skill'] + ' - ' + UniGetSkills ['category']);
            UniGetSkills.Next;
          end;
        end;
     5: begin
        if VarIsNull(UniGetJobs['end_date'])
          then Edit5DatesUA.Text := FormMain.GetMonthByRegion(UniGetJobs['start_date'], 'UA') + '- Now'
          else Edit5DatesUA.Text := FormMain.GetMonthByRegion(UniGetJobs['start_date'], 'UA') + '-' + FormMain.GetMonthByRegion(UniGetJobs['end_date'], 'UA');
        Edit5NameUA.Text := NVL(UniGetJobs['job_position']);
        Memo5RespUA.Text := NVL(UniGetJobs['responsibilities']);
        Edit5CompanyUA.Text := NVL(UniGetJobs['employer']);
        Edit5BenefitsUA.Text := NVL(UniGetJobs['benefits']);
        Edit5BottomUA.Text := NVL(UniGetJobs['leave_reason']);
        UniGetSkills.Prepare;
        UniGetSkills.ParamByName('p_experience_id').AsInteger := UniGetJobs['id'];
        UniGetSkills.Open;
        Memo5SkillsUA.Clear;
        while not UniGetSkills.EOF do
          begin
            Memo5SkillsUA.Lines.Add(UniGetSkills['skill'] + ' - ' + UniGetSkills ['category']);
            UniGetSkills.Next;
          end;
        end;
     6: begin
        if VarIsNull(UniGetJobs['end_date'])
          then Edit6DatesUA.Text := FormMain.GetMonthByRegion(UniGetJobs['start_date'], 'UA') + '- Now'
          else Edit6DatesUA.Text := FormMain.GetMonthByRegion(UniGetJobs['start_date'], 'UA') + '-' + FormMain.GetMonthByRegion(UniGetJobs['end_date'], 'UA');
        Edit6NameUA.Text := NVL(UniGetJobs['job_position']);
        Memo6RespUA.Text := NVL(UniGetJobs['responsibilities']);
        Edit6CompanyUA.Text := NVL(UniGetJobs['employer']);
        Edit6BenefitsUA.Text := NVL(UniGetJobs['benefits']);
        Edit6BottomUA.Text := NVL(UniGetJobs['leave_reason']);
        UniGetSkills.Prepare;
        UniGetSkills.ParamByName('p_experience_id').AsInteger := UniGetJobs['id'];
        UniGetSkills.Open;
        Memo6SkillsUA.Clear;
        while not UniGetSkills.EOF do
          begin
            Memo6SkillsUA.Lines.Add(UniGetSkills['skill'] + ' - ' + UniGetSkills ['category']);
            UniGetSkills.Next;
          end;
        end;
     7: begin
        if VarIsNull(UniGetJobs['end_date'])
          then Edit7DatesUA.Text := FormMain.GetMonthByRegion(UniGetJobs['start_date'], 'UA') + '- Now'
          else Edit7DatesUA.Text := FormMain.GetMonthByRegion(UniGetJobs['start_date'], 'UA') + '-' + FormMain.GetMonthByRegion(UniGetJobs['end_date'], 'UA');
        Edit7NameUA.Text := NVL(UniGetJobs['job_position']);
        Memo7RespUA.Text := NVL(UniGetJobs['responsibilities']);
        Edit7CompanyUA.Text := NVL(UniGetJobs['employer']);
        Edit7BenefitsUA.Text := NVL(UniGetJobs['benefits']);
        Edit7BottomUA.Text := NVL(UniGetJobs['leave_reason']);
        UniGetSkills.Prepare;
        UniGetSkills.ParamByName('p_experience_id').AsInteger := UniGetJobs['id'];
        UniGetSkills.Open;
        Memo7SkillsUA.Clear;
        while not UniGetSkills.EOF do
          begin
            Memo7SkillsUA.Lines.Add(UniGetSkills['skill'] + ' - ' + UniGetSkills ['category']);
            UniGetSkills.Next;
          end;
        end;
     8: begin
        if VarIsNull(UniGetJobs['end_date'])
          then Edit8DatesUA.Text := FormMain.GetMonthByRegion(UniGetJobs['start_date'], 'UA') + '- Now'
          else Edit8DatesUA.Text := FormMain.GetMonthByRegion(UniGetJobs['start_date'], 'UA') + '-' + FormMain.GetMonthByRegion(UniGetJobs['end_date'], 'UA');
        Edit8NameUA.Text := NVL(UniGetJobs['job_position']);
        Memo8RespUA.Text := NVL(UniGetJobs['responsibilities']);
        Edit8CompanyUA.Text := NVL(UniGetJobs['employer']);
        Edit8BenefitsUA.Text := NVL(UniGetJobs['benefits']);
        Edit8BottomUA.Text := NVL(UniGetJobs['leave_reason']);
        UniGetSkills.Prepare;
        UniGetSkills.ParamByName('p_experience_id').AsInteger := UniGetJobs['id'];
        UniGetSkills.Open;
        Memo8SkillsUA.Clear;
        while not UniGetSkills.EOF do
          begin
            Memo8SkillsUA.Lines.Add(UniGetSkills['skill'] + ' - ' + UniGetSkills ['category']);
            UniGetSkills.Next;
          end;
        end;
     9: begin
        if VarIsNull(UniGetJobs['end_date'])
          then Edit9DatesUA.Text := FormMain.GetMonthByRegion(UniGetJobs['start_date'], 'UA') + '- Now'
          else Edit9DatesUA.Text := FormMain.GetMonthByRegion(UniGetJobs['start_date'], 'UA') + '-' + FormMain.GetMonthByRegion(UniGetJobs['end_date'], 'UA');
        Edit9NameUA.Text := NVL(UniGetJobs['job_position']);
        Memo9RespUA.Text := NVL(UniGetJobs['responsibilities']);
        Edit9CompanyUA.Text := NVL(UniGetJobs['employer']);
        Edit9BenefitsUA.Text := NVL(UniGetJobs['benefits']);
        Edit9BottomUA.Text := NVL(UniGetJobs['leave_reason']);
        UniGetSkills.Prepare;
        UniGetSkills.ParamByName('p_experience_id').AsInteger := UniGetJobs['id'];
        UniGetSkills.Open;
        Memo9SkillsUA.Clear;
        while not UniGetSkills.EOF do
          begin
            Memo9SkillsUA.Lines.Add(UniGetSkills['skill'] + ' - ' + UniGetSkills ['category']);
            UniGetSkills.Next;
          end;
        end;
     10: begin
        if VarIsNull(UniGetJobs['end_date'])
          then Edit10DatesUA.Text := FormMain.GetMonthByRegion(UniGetJobs['start_date'], 'UA') + '- Now'
          else Edit10DatesUA.Text := FormMain.GetMonthByRegion(UniGetJobs['start_date'], 'UA') + '-' + FormMain.GetMonthByRegion(UniGetJobs['end_date'], 'UA');
        Edit10NameUA.Text := NVL(UniGetJobs['job_position']);
        Memo10RespUA.Text := NVL(UniGetJobs['responsibilities']);
        Edit10CompanyUA.Text := NVL(UniGetJobs['employer']);
        Edit10BenefitsUA.Text := NVL(UniGetJobs['benefits']);
        Edit10BottomUA.Text := NVL(UniGetJobs['leave_reason']);
        UniGetSkills.Prepare;
        UniGetSkills.ParamByName('p_experience_id').AsInteger := UniGetJobs['id'];
        UniGetSkills.Open;
        Memo10SkillsUA.Clear;
        while not UniGetSkills.EOF do
          begin
            Memo10SkillsUA.Lines.Add(UniGetSkills['skill'] + ' - ' + UniGetSkills ['category']);
            UniGetSkills.Next;
          end;
        end;
    else
      FormMain.Warning('experienes, значение order_position больше 10 и равно '
        + UniGetJobs['order_position']);
    end;
    UniGetJobs.Next;
  end;

end;

procedure TFormNewResume.GetResumeTRfromUA;
begin
  EditNameTR.Text := EditNameUA.Text;
  EditOpportunityTR.Text := EditOpportunityUA.Text;
  EditPlaceTR.Text := EditPlaceUA.Text;
  EditPhonesTR.Text := EditPhonesUA.Text;
  MemoIntroTR.Text := MemoIntroUA.Text;
  EditLangRU.Text := 'UA';
  EditRegionRU.Text := 'UA';

  MemoArticle1TR.Text := '';  MemoArticle2TR.Text := '';  MemoArticle3TR.Text := '';  MemoArticle4TR.Text := '';
  EditArticle1TR.Text := '';  EditArticle2TR.Text := '';  EditArticle3TR.Text := '';  EditArticle4TR.Text := '';

  Edit1DatesTR.Text := '';  Edit1NameTR.Text := '';  Edit1CompanyTR.Text := ''; Memo1RespTR.Text := '';
  Edit1BenefitsTR.Text := ''; Memo1SkillsTR.Text := ''; Edit1BottomTR.Text := '';

  Edit2DatesTR.Text := '';  Edit2NameTR.Text := '';  Edit2CompanyTR.Text := '';  Memo2RespTR.Text := '';
  Edit2BenefitsTR.Text := '';  Memo2SkillsTR.Text := '';  Edit2BottomTR.Text := '';

  Edit3DatesTR.Text := '';  Edit3NameTR.Text := '';  Edit3CompanyTR.Text := '';  Memo3RespTR.Text := '';
  Edit3BenefitsTR.Text := '';  Memo3SkillsTR.Text := '';  Edit3BottomTR.Text := '';

  Edit4DatesTR.Text := '';  Edit4NameTR.Text := '';  Edit4CompanyTR.Text := '';  Memo4RespTR.Text := '';
  Edit4BenefitsTR.Text := '';  Memo4SkillsTR.Text := '';  Edit4BottomTR.Text := '';

  Edit5DatesTR.Text := '';  Edit5NameTR.Text := '';  Edit5CompanyTR.Text := '';  Memo5RespTR.Text := '';
  Edit5BenefitsTR.Text := '';  Memo5SkillsTR.Text := '';  Edit5BottomTR.Text := '';

  Edit6DatesTR.Text := '';  Edit6NameTR.Text := '';  Edit6CompanyTR.Text := '';  Memo6RespTR.Text := '';
  Edit6BenefitsTR.Text := '';  Memo6SkillsTR.Text := '';  Edit6BottomTR.Text := '';

  Edit7DatesTR.Text := '';  Edit7NameTR.Text := '';  Edit7CompanyTR.Text := '';  Memo7RespTR.Text := '';
  Edit7BenefitsTR.Text := '';  Memo7SkillsTR.Text := '';  Edit7BottomTR.Text := '';

  Edit8DatesTR.Text := '';  Edit8NameTR.Text := '';  Edit8CompanyTR.Text := '';  Memo8RespTR.Text := '';
  Edit8BenefitsTR.Text := '';  Memo8SkillsTR.Text := '';  Edit8BottomTR.Text := '';

  Edit9DatesTR.Text := '';  Edit9NameTR.Text := '';  Edit9CompanyTR.Text := '';  Memo9RespTR.Text := '';
  Edit9BenefitsTR.Text := '';  Memo9SkillsTR.Text := '';  Edit9BottomTR.Text := '';

  Edit10DatesTR.Text := '';  Edit10NameTR.Text := '';  Edit10CompanyTR.Text := '';  Memo10RespTR.Text := '';
  Edit10BenefitsTR.Text := '';  Memo10SkillsTR.Text := '';  Edit10BottomTR.Text := '';
end;


procedure TFormNewResume.GetFootersFromID;
var
  ResumeFooterID: integer;
begin
  UniGetFooters.Close;
  UniGetFooters.ParamByName('p_resume_id').AsInteger := FResumeID;
  UniGetFooters.ParamByName('p_lang').AsString := 'UA';
  UniGetFooters.Open;
  FormMain.Warning('Resumeid=' + IntToStr(FResumeID) + ' lang = UA');
  if VarIsNull(UniGetFooters['id']) then
  begin
    FormMain.Warning
      ('Resumeid не установлено - Query UniGetUAResumeFooters вернул null');
    LabelFooterID.Caption := '# N/A';
  end
  else
  begin
    ResumeFooterID := UniGetFooters['id'];
    LabelFooterID.Caption := IntToStr(ResumeFooterID);
  end;
  if VarIsNull(UniGetFooters['resume_id']) then
  begin
    FormMain.Warning
      ('ResumeFooterID не установлено - Query UniGetUAResumeFooters вернул null');
    LabelFooterID.Caption := LabelFooterID.Caption + ' ' + 'resume_id= N/A';
  end
  else
  begin
    LabelFooterID.Caption := LabelFooterID.Caption + ' resume_id = ' +
      IntToStr(FResumeID);
  end;
  while not UniGetFooters.EOF do
  begin
    if UniGetFooters['footer_order'] = 1 then
    begin
      if VarIsNull(UniGetFooters['footer_header']) then
        EditArticle1UA.Text := ''
      else
        EditArticle1UA.Text := UniGetFooters['footer_header'];
      if VarIsNull(UniGetFooters['footer_text']) then
        MemoArticle1UA.Text := ''
      else
        MemoArticle1UA.Text := UniGetFooters['footer_text'];
    end;
    if UniGetFooters['footer_order'] = 2 then
    begin
      if VarIsNull(UniGetFooters['footer_header']) then
        EditArticle2UA.Text := ''
      else
        EditArticle2UA.Text := UniGetFooters['footer_header'];
      if VarIsNull(UniGetFooters['footer_text']) then
        MemoArticle2UA.Text := ''
      else
        MemoArticle2UA.Text := UniGetFooters['footer_text'];
    end;
    if UniGetFooters['footer_order'] = 3 then
    begin
      if VarIsNull(UniGetFooters['footer_header']) then
        EditArticle3UA.Text := ''
      else
        EditArticle3UA.Text := UniGetFooters['footer_header'];
      if VarIsNull(UniGetFooters['footer_text']) then
        MemoArticle3UA.Text := ''
      else
        MemoArticle3UA.Text := UniGetFooters['footer_text'];
    end;
    if UniGetFooters['footer_order'] = 4 then
    begin
      if VarIsNull(UniGetFooters['footer_header']) then
        EditArticle4UA.Text := ''
      else
        EditArticle4UA.Text := UniGetFooters['footer_header'];
      if VarIsNull(UniGetFooters['footer_text']) then
        MemoArticle4UA.Text := ''
      else
        MemoArticle4UA.Text := UniGetFooters['footer_text'];
    end;
    UniGetFooters.Next;
  end;
  UniGetJobs.Prepare;
  UniGetJobs.ParamByName('p_resume_id').AsInteger := FResumeID;
  UniGetJobs.Open;
  while not UniGetJobs.EOF do
  begin
    case UniGetJobs['order_position'] of
     1: begin
          Edit1DatesUA.Text := FormMain.GetMonthByRegion(UniGetJobs['start_date'], 'UA') + '-' + FormMain.GetMonthByRegion(UniGetJobs['end_date'], 'UA');
          Edit1NameUA.Text := NVL(UniGetJobs['job_position']);
          Memo1RespUA.Text := NVL(UniGetJobs['responsibilities']);
          Edit1CompanyUA.Text := NVL(UniGetJobs['employer']);
          Edit1BenefitsUA.Text := NVL(UniGetJobs['benefits']);
          Edit1BottomUA.Text := NVL(UniGetJobs['leave_reason']);
          UniGetSkills.Prepare;
          UniGetSkills.ParamByName('p_experience_id').AsInteger := UniGetJobs['id'];
          UniGetSkills.Open;
          Memo1SkillsUA.Clear;
          while not UniGetSkills.EOF do
            begin
            Memo1SkillsUA.Lines.Add(NVL(UniGetSkills['skill']) + ' - ' + NVL(UniGetSkills ['category']));
            UniGetSkills.Next;
            end;
        end;
     2: begin
          Edit2DatesUA.Text := FormMain.GetMonthByRegion(UniGetJobs['start_date'], 'UA') + '-' + FormMain.GetMonthByRegion(UniGetJobs['end_date'], 'UA');
          Edit2NameUA.Text := NVL(UniGetJobs['job_position']);
          Memo2RespUA.Text := NVL(UniGetJobs['responsibilities']);
          Edit2CompanyUA.Text := NVL(UniGetJobs['employer']);
          Edit2BenefitsUA.Text := NVL(UniGetJobs['benefits']);
          Edit2BottomUA.Text := NVL(UniGetJobs['leave_reason']);
          UniGetSkills.Prepare;
          UniGetSkills.ParamByName('p_experience_id').AsInteger := UniGetJobs['id'];
          UniGetSkills.Open;
          Memo2SkillsUA.Clear;
          while not UniGetSkills.EOF do
            begin
            Memo2SkillsUA.Lines.Add(NVL(UniGetSkills['skill']) + ' - ' + NVL(UniGetSkills ['category']));
            UniGetSkills.Next;
            end;
        end;
    else
      FormMain.Warning('experienes, значение order_position больше 10 и равно '
        + UniGetJobs['order_position']);
    end;
    UniGetJobs.Next;
  end;
end;

procedure TFormNewResume.BitBtnCopyClick(Sender: TObject);
begin
UniGetCopyResumeID.Close;
UniGetCopyResumeID.ParamByName('p_name').AsString := EditNameTR.Text;
UniGetCopyResumeID.ParamByName('p_lang').AsString := CBLangTR.Text;
UniGetCopyResumeID.Open;
if VarIsNull(UniGetCopyResumeID['id']) then
  begin
  ShowMessage('Не знайдені резюме за ім`ям '+EditNameTR.Text+' та язиком '+CBLangTR.Text);
  exit;
  end
else
  begin
  FResumeID := UniGetCopyResumeID['id'];
  GetResumefromID;
  GetFootersFromID;
  GetResumeTRfromUA;
  end;
end;

procedure TFormNewResume.BitBtnSaveClick(Sender: TObject);
begin
  if CheckValues then
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

//function TFormNewResume.SaveResume(var FResumeid:integer): boolean;
//var Resume_id:integer;
//begin
//  try
//    UniSPInsertResume.Close;
//    UniSPInsertResume.ParamByName('p_name').AsString := EditNameTR.Text;
//    UniSPInsertResume.ParamByName('p_region_id').AsString := CBRegionTR.Text;
//    UniSPInsertResume.ParamByName('p_lang').AsString := CBLangTR.Text;
//    UniSPInsertResume.ParamByName('p_job_opportunity').AsString := EditOpportunityTR.Text;
//    UniSPInsertResume.ParamByName('p_job_place').AsString := EditPlaceTR.Text;
//    UniSPInsertResume.ParamByName('p_phone_numbers_text').AsString := EditPhonesTR.Text;
//    UniSPInsertResume.ParamByName('p_resume_introduction').AsString := MemoIntroTR.Text;
//    UniSPInsertResume.ParamByName('p_footer_1_header').AsString := EditArticle1TR.Text;
//    UniSPInsertResume.ParamByName('p_footer_1_text').AsString := MemoArticle1TR.Text;
//    UniSPInsertResume.ParamByName('p_footer_2_header').AsString := EditArticle2TR.Text;
//    UniSPInsertResume.ParamByName('p_footer_2_text').AsString := MemoArticle2TR.Text;
//    UniSPInsertResume.ParamByName('p_footer_3_header').AsString := EditArticle3TR.Text;
//    UniSPInsertResume.ParamByName('p_footer_3_text').AsString := MemoArticle3TR.Text;
//    UniSPInsertResume.ParamByName('p_footer_4_header').AsString := EditArticle4TR.Text;
//    UniSPInsertResume.ParamByName('p_footer_4_text').AsString := MemoArticle4TR.Text;
//    UniSPInsertResume.ParamByName('p_archived').AsInteger := 0;
//    UniSPInsertResume.ExecProc;
//    FResumeID:=UniSPInsertResume.ParamByName('p_resume_id').AsInteger;
//    if UniSPInsertResume.ParamByName('p_result').AsInteger=0 then Result:=true else Result:=false;
//  except
//    on E: Exception do
//    begin
//      ShowMessage('Ошибка во время вставки в resumes: ' + E.Message);
//      Result := false;
//    end;
//  end;
//end;

//function TFormNewResume.SaveFooters(const FResumeID: integer;
//  const FFooterHeader, FFooterText: string;
//  const FFooterOrder: integer): boolean;
//begin
//  try
//    UniInsertFooters.Prepare;
//    UniInsertFooters.ParamByName('p_resume_id').AsInteger := FResumeID;
//    UniInsertFooters.ParamByName('p_footer_header').AsString := FFooterHeader;
//    UniInsertFooters.ParamByName('p_footer_text').AsString := FFooterText;
//    UniInsertFooters.ParamByName('p_footer_order').AsInteger := FFooterOrder;
//    UniInsertFooters.ParamByName('p_archived').AsBoolean := false;
//    UniInsertFooters.ExecSQL;
//    Result := true;
//  except
//    on E: Exception do
//    begin
//      ShowMessage('Ошибка во время вставки в resume_footers: ' + E.Message);
//      Result := false;
//    end;
//  end;
//end;

//function TFormNewResume.SaveJobs(const FResumeID: integer;
//  const FJobPosition: string; const FStartDate, FEndDate: TDate;
//  FEmployer, FResponsibilities, FBenefits, FLeaveReason: string;
//  var FExperienceID: integer): boolean;
//begin
//  try
//    UniInsertFooters.Prepare;
//    UniInsertFooters.ParamByName('p_resume_id').AsInteger := FResumeID;
//    UniInsertFooters.ParamByName('p_job_position').AsString := FJobPosition;
//    UniInsertFooters.ParamByName('p_start_date').AsDate := FStartDate;
//    UniInsertFooters.ParamByName('p_end_date').AsDate := FEndDate;
//    UniInsertFooters.ParamByName('p_employer').AsString := FEmployer;
//    UniInsertFooters.ParamByName('p_responsibilities').AsString :=
//      FResponsibilities;
//    UniInsertFooters.ParamByName('p_benefits').AsString := FBenefits;
//    UniInsertFooters.ParamByName('p_leave_reason').AsString := FLeaveReason;
//    UniInsertFooters.ParamByName('p_archived').AsBoolean := false;
//    UniInsertFooters.ExecSQL;
//    UniLastJobID.Prepare;
//    UniLastJobID.ParamByName('p_resume_id').AsInteger := FResumeID;
//    UniLastJobID.ParamByName('p_start_date').AsDate := FStartDate;
//    UniInsertFooters.Open;
//    FExperienceID := UniInsertFooters['job_id'];
//    Result := true;
//  except
//    on E: Exception do
//    begin
//      ShowMessage('Ошибка во время вставки в experiences: ' + E.Message);
//      Result := false;
//    end;
//  end;
//end;

//function TFormNewResume.SaveSkill(const FSkill: string;
//  var FSkillID: integer): boolean;
//begin
//  try
//    UniGetSkillID.Prepare;
//    UniGetSkillID.ParamByName('skill').AsString := FSkill;
//    UniGetSkillID.Open;
//    if VarIsNull(UniGetSkillID['id']) then
//    begin
//      UniInsertSkill.Prepare;
//      UniInsertSkill.ParamByName('skill').AsString := FSkill;
//      UniInsertSkill.ExecSQL;
//    end;
//    UniGetSkillID.Prepare;
//    UniGetSkillID.ParamByName('skill').AsString := FSkill;
//    UniGetSkillID.Open;
//    FSkillID := UniGetSkillID['id'];
//    Result := true;
//  except
//    on E: Exception do
//    begin
//      ShowMessage('Ошибка во время вставки в skills (SaveSkills): ' +
//        E.Message);
//      Result := false;
//    end;
//  end;
//
//end;

//function TFormNewResume.SaveSkillLists(const FExperienceID: integer;
//  const FSkillsList: TStrings): boolean;
//var
//  i, FSkillID: integer;
//begin
//  try
//    for i := 0 to FSkillsList.Count - 1 do
//    begin
//      SaveSkill(FSkillsList[i], FSkillID);
//      SaveSkillShowList(FSkillID, FExperienceID);
//    end;
//    Result := true;
//  except
//    on E: Exception do
//    begin
//      ShowMessage
//        ('Ошибка во время вставки в skill_show_lists (SaveSkillLists): ' +
//        E.Message);
//      Result := false;
//    end;
//  end;
//end;

//function TFormNewResume.SaveSkillShowList(const FSkillID,
//  FExperienceID: integer): boolean;
//begin
//  // insert into skill_show_lists
//  // (skill_id , experience_id, archived)
//  // values (:p_skill_id ,:p_experience_id, :p_archived)
//  try
//    UniGetSkillList.Prepare;
//    UniGetSkillList.ParamByName('p_skill_id').AsInteger := FSkillID;
//    UniGetSkillList.ParamByName('p_experience_id').AsInteger := FExperienceID;
//    UniGetSkillList.Open;
//    if UniGetSkillList['cntr'] = 0 then
//    begin
//      UniInsertSkillList.Prepare;
//      UniInsertSkillList.ParamByName('p_skill_id').AsInteger := FSkillID;
//      UniInsertSkillList.ParamByName('p_experience_id').AsInteger :=
//        FExperienceID;
//      UniInsertSkillList.ExecSQL;
//    end;
//    Result := true;
//  except
//    on E: Exception do
//    begin
//      ShowMessage
//        ('Ошибка во время вставки в skill_show_lists (SaveSkillShowList): ' +
//        E.Message);
//      Result := false;
//    end;
//  end;
//end;

function TFormNewResume.SaveValues: boolean;
begin
CBRegionTR_ID:='RU';
UniRegions.First;
while not UniRegions.EOF do
  begin
    if CBRegionTR.Text = UniRegions['region_name'] then CBRegionTR_ID:=UniRegions['id'];
    UniRegions.Next;
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
  UniSPInsertResume.ParamByName('p_name').AsString := trim(EditNameTR.Text);
  UniSPInsertResume.ParamByName('p_lang').AsString := trim(CBLangTR.Text);
  UniSPInsertResume.ParamByName('p_region_id').AsString := CBRegionTR_ID;
  UniSPInsertResume.ParamByName('p_job_opportunity').AsString := Trim(EditOpportunityTR.Text);
  UniSPInsertResume.ParamByName('p_job_place').AsString := Trim(EditPlaceTR.Text);
  UniSPInsertResume.ParamByName('p_phone_numbers_text').AsString := Trim(EditPhonesTR.Text);
  UniSPInsertResume.ParamByName('p_resume_introduction').AsString := Trim(MemoIntroTR.Text);
  UniSPInsertResume.ParamByName('p_footer_1_header').AsString := Trim(EditArticle1TR.Text);
  UniSPInsertResume.ParamByName('p_footer_1_text').AsString := Trim(MemoArticle1TR.Text);
  UniSPInsertResume.ParamByName('p_footer_2_header').AsString := Trim(EditArticle2TR.Text);
  UniSPInsertResume.ParamByName('p_footer_2_text').AsString := Trim(MemoArticle2TR.Text);
  UniSPInsertResume.ParamByName('p_footer_3_header').AsString := Trim(EditArticle3TR.Text);
  UniSPInsertResume.ParamByName('p_footer_3_text').AsString := Trim(MemoArticle3TR.Text);
  UniSPInsertResume.ParamByName('p_footer_4_header').AsString := Trim(EditArticle4TR.Text);
  UniSPInsertResume.ParamByName('p_footer_4_text').AsString := Trim(MemoArticle4TR.Text);
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

if not FormMain.isEmpty(Edit1NameTR.Text) and not FormMain.isEmpty(Edit1CompanyTR.Text) then
      begin
      UniSPInsertExperiences.Close;
      UniSPInsertExperiences.ParamByName('p_flag').AsString := 'resume_id';
      UniSPInsertExperiences.ParamByName('p_resume_id').AsInteger := FResumeID;
      UniSPInsertExperiences.ParamByName('p_job_order').AsInteger := 1;
      UniSPInsertExperiences.ParamByName('p_job_position').AsString := Edit1NameTR.Text;
      UniSPInsertExperiences.ParamByName('p_start_date').AsDateTime :=CalendarPickerB1TR.Date;
      UniSPInsertExperiences.ParamByName('p_end_date').AsDateTime := CalendarPickerE1TR.Date;
      UniSPInsertExperiences.ParamByName('p_employer').AsString := Edit1CompanyTR.Text;
      UniSPInsertExperiences.ParamByName('p_resp').AsString := Memo1RespTR.Text;
      UniSPInsertExperiences.ParamByName('p_benefits').AsString := Edit1BenefitsTR.Text;
      UniSPInsertExperiences.ParamByName('p_leave_reason').AsString := Edit1BottomTR.Text;
      UniSPInsertExperiences.ExecSQL;
      FExperienceID[1]:=UniSPInsertExperiences.ParamByName('p_experience_id').Value;
      end;
if not FormMain.isEmpty(Edit2NameTR.Text) and not FormMain.isEmpty(Edit2CompanyTR.Text) then
    begin
      UniSPInsertExperiences.Close;
      UniSPInsertExperiences.ParamByName('p_flag').AsString := 'template_id';
      UniSPInsertExperiences.ParamByName('p_resume_id').AsInteger := FResumeID;
      UniSPInsertExperiences.ParamByName('p_job_order').AsInteger := 2;
      UniSPInsertExperiences.ParamByName('p_job_position').AsString := Edit2NameTR.Text;
      UniSPInsertExperiences.ParamByName('p_start_date').AsDateTime :=CalendarPickerB2TR.Date;
      UniSPInsertExperiences.ParamByName('p_end_date').AsDateTime := CalendarPickerE2TR.Date;
      UniSPInsertExperiences.ParamByName('p_employer').AsString := Edit2CompanyTR.Text;
      UniSPInsertExperiences.ParamByName('p_resp').AsString := Memo2RespTR.Text;
      UniSPInsertExperiences.ParamByName('p_benefits').AsString := Edit2BenefitsTR.Text;
      UniSPInsertExperiences.ParamByName('p_leave_reason').AsString := Edit2BottomTR.Text;
      UniSPInsertExperiences.ExecSQL;
      FExperienceID[2]:=UniSPInsertExperiences.ParamByName('p_experience_id').Value;
    end;
if not FormMain.isEmpty(Edit3NameTR.Text) and not FormMain.isEmpty(Edit3CompanyTR.Text) then
    begin
      UniSPInsertExperiences.Close;
      UniSPInsertExperiences.ParamByName('p_flag').AsString := 'template_id';
      UniSPInsertExperiences.ParamByName('p_resume_id').AsInteger := FResumeID;
      UniSPInsertExperiences.ParamByName('p_job_order').AsInteger := 3;
      UniSPInsertExperiences.ParamByName('p_job_position').AsString := Edit3NameTR.Text;
      UniSPInsertExperiences.ParamByName('p_start_date').AsDateTime :=CalendarPickerB3TR.Date;
      UniSPInsertExperiences.ParamByName('p_end_date').AsDateTime := CalendarPickerE3TR.Date;
      UniSPInsertExperiences.ParamByName('p_employer').AsString := Edit3CompanyTR.Text;
      UniSPInsertExperiences.ParamByName('p_resp').AsString := Memo3RespTR.Text;
      UniSPInsertExperiences.ParamByName('p_benefits').AsString := Edit3BenefitsTR.Text;
      UniSPInsertExperiences.ParamByName('p_leave_reason').AsString := Edit3BottomTR.Text;
      UniSPInsertExperiences.ExecSQL;
      FExperienceID[3]:=UniSPInsertExperiences.ParamByName('p_experience_id').Value;
    end;
if not FormMain.isEmpty(Edit4NameTR.Text) and not FormMain.isEmpty(Edit4CompanyTR.Text) then
    begin
      UniSPInsertExperiences.Close;
      UniSPInsertExperiences.ParamByName('p_flag').AsString := 'template_id';
      UniSPInsertExperiences.ParamByName('p_resume_id').AsInteger := FResumeID;
      UniSPInsertExperiences.ParamByName('p_job_order').AsInteger := 4;
      UniSPInsertExperiences.ParamByName('p_job_position').AsString := Edit4NameTR.Text;
      UniSPInsertExperiences.ParamByName('p_start_date').AsDateTime :=CalendarPickerB4TR.Date;
      UniSPInsertExperiences.ParamByName('p_end_date').AsDateTime := CalendarPickerE4TR.Date;
      UniSPInsertExperiences.ParamByName('p_employer').AsString := Edit4CompanyTR.Text;
      UniSPInsertExperiences.ParamByName('p_resp').AsString := Memo4RespTR.Text;
      UniSPInsertExperiences.ParamByName('p_benefits').AsString := Edit4BenefitsTR.Text;
      UniSPInsertExperiences.ParamByName('p_leave_reason').AsString := Edit4BottomTR.Text;
      UniSPInsertExperiences.ExecSQL;
      FExperienceID[4]:=UniSPInsertExperiences.ParamByName('p_experience_id').Value;
    end;
if not FormMain.isEmpty(Edit5NameTR.Text) and not FormMain.isEmpty(Edit5CompanyTR.Text) then
    begin
      UniSPInsertExperiences.Close;
      UniSPInsertExperiences.ParamByName('p_flag').AsString := 'template_id';
      UniSPInsertExperiences.ParamByName('p_resume_id').AsInteger := FResumeID;
      UniSPInsertExperiences.ParamByName('p_job_order').AsInteger := 5;
      UniSPInsertExperiences.ParamByName('p_job_position').AsString := Edit5NameTR.Text;
      UniSPInsertExperiences.ParamByName('p_start_date').AsDateTime :=CalendarPickerB5TR.Date;
      UniSPInsertExperiences.ParamByName('p_end_date').AsDateTime := CalendarPickerE5TR.Date;
      UniSPInsertExperiences.ParamByName('p_employer').AsString := Edit5CompanyTR.Text;
      UniSPInsertExperiences.ParamByName('p_resp').AsString := Memo5RespTR.Text;
      UniSPInsertExperiences.ParamByName('p_benefits').AsString := Edit5BenefitsTR.Text;
      UniSPInsertExperiences.ParamByName('p_leave_reason').AsString := Edit5BottomTR.Text;
      UniSPInsertExperiences.ExecSQL;
      FExperienceID[5]:=UniSPInsertExperiences.ParamByName('p_experience_id').Value;
    end;
if not FormMain.isEmpty(Edit6NameTR.Text) and not FormMain.isEmpty(Edit6CompanyTR.Text) then
    begin
      UniSPInsertExperiences.Close;
      UniSPInsertExperiences.ParamByName('p_flag').AsString := 'template_id';
      UniSPInsertExperiences.ParamByName('p_resume_id').AsInteger := FResumeID;
      UniSPInsertExperiences.ParamByName('p_job_order').AsInteger := 6;
      UniSPInsertExperiences.ParamByName('p_job_position').AsString := Edit6NameTR.Text;
      UniSPInsertExperiences.ParamByName('p_start_date').AsDateTime :=CalendarPickerB6TR.Date;
      UniSPInsertExperiences.ParamByName('p_end_date').AsDateTime := CalendarPickerE6TR.Date;
      UniSPInsertExperiences.ParamByName('p_employer').AsString := Edit6CompanyTR.Text;
      UniSPInsertExperiences.ParamByName('p_resp').AsString := Memo6RespTR.Text;
      UniSPInsertExperiences.ParamByName('p_benefits').AsString := Edit6BenefitsTR.Text;
      UniSPInsertExperiences.ParamByName('p_leave_reason').AsString := Edit6BottomTR.Text;
      UniSPInsertExperiences.ExecSQL;
      FExperienceID[6]:=UniSPInsertExperiences.ParamByName('p_experience_id').Value;
    end;
if not FormMain.isEmpty(Edit7NameTR.Text) and not FormMain.isEmpty(Edit7CompanyTR.Text) then
    begin
      UniSPInsertExperiences.Close;
      UniSPInsertExperiences.ParamByName('p_flag').AsString := 'template_id';
      UniSPInsertExperiences.ParamByName('p_resume_id').AsInteger := FResumeID;
      UniSPInsertExperiences.ParamByName('p_job_order').AsInteger := 7;
      UniSPInsertExperiences.ParamByName('p_job_position').AsString := Edit7NameTR.Text;
      UniSPInsertExperiences.ParamByName('p_start_date').AsDateTime :=CalendarPickerB7TR.Date;
      UniSPInsertExperiences.ParamByName('p_end_date').AsDateTime := CalendarPickerE7TR.Date;
      UniSPInsertExperiences.ParamByName('p_employer').AsString := Edit7CompanyTR.Text;
      UniSPInsertExperiences.ParamByName('p_resp').AsString := Memo7RespTR.Text;
      UniSPInsertExperiences.ParamByName('p_benefits').AsString := Edit7BenefitsTR.Text;
      UniSPInsertExperiences.ParamByName('p_leave_reason').AsString := Edit7BottomTR.Text;
      UniSPInsertExperiences.ExecSQL;
      FExperienceID[7]:=UniSPInsertExperiences.ParamByName('p_experience_id').Value;
    end;
if not FormMain.isEmpty(Edit8NameTR.Text) and not FormMain.isEmpty(Edit8CompanyTR.Text) then
    begin
      UniSPInsertExperiences.Close;
      UniSPInsertExperiences.ParamByName('p_flag').AsString := 'template_id';
      UniSPInsertExperiences.ParamByName('p_resume_id').AsInteger := FResumeID;
      UniSPInsertExperiences.ParamByName('p_job_order').AsInteger := 8;
      UniSPInsertExperiences.ParamByName('p_job_position').AsString := Edit8NameTR.Text;
      UniSPInsertExperiences.ParamByName('p_start_date').AsDateTime :=CalendarPickerB8TR.Date;
      UniSPInsertExperiences.ParamByName('p_end_date').AsDateTime := CalendarPickerE8TR.Date;
      UniSPInsertExperiences.ParamByName('p_employer').AsString := Edit8CompanyTR.Text;
      UniSPInsertExperiences.ParamByName('p_resp').AsString := Memo8RespTR.Text;
      UniSPInsertExperiences.ParamByName('p_benefits').AsString := Edit8BenefitsTR.Text;
      UniSPInsertExperiences.ParamByName('p_leave_reason').AsString := Edit8BottomTR.Text;
      UniSPInsertExperiences.ExecSQL;
      FExperienceID[8]:=UniSPInsertExperiences.ParamByName('p_experience_id').Value;
    end;
if not FormMain.isEmpty(Edit9NameTR.Text) and not FormMain.isEmpty(Edit9CompanyTR.Text) then
    begin
      UniSPInsertExperiences.Close;
      UniSPInsertExperiences.ParamByName('p_flag').AsString := 'template_id';
      UniSPInsertExperiences.ParamByName('p_resume_id').AsInteger := FResumeID;
      UniSPInsertExperiences.ParamByName('p_job_order').AsInteger := 9;
      UniSPInsertExperiences.ParamByName('p_job_position').AsString := Edit9NameTR.Text;
      UniSPInsertExperiences.ParamByName('p_start_date').AsDateTime :=CalendarPickerB9TR.Date;
      UniSPInsertExperiences.ParamByName('p_end_date').AsDateTime := CalendarPickerE9TR.Date;
      UniSPInsertExperiences.ParamByName('p_employer').AsString := Edit9CompanyTR.Text;
      UniSPInsertExperiences.ParamByName('p_resp').AsString := Memo9RespTR.Text;
      UniSPInsertExperiences.ParamByName('p_benefits').AsString := Edit9BenefitsTR.Text;
      UniSPInsertExperiences.ParamByName('p_leave_reason').AsString := Edit9BottomTR.Text;
      UniSPInsertExperiences.ExecSQL;
      FExperienceID[9]:=UniSPInsertExperiences.ParamByName('p_experience_id').Value;
    end;
if not FormMain.isEmpty(Edit10NameTR.Text) and not FormMain.isEmpty(Edit10CompanyTR.Text) then
    begin
      UniSPInsertExperiences.Close;
      UniSPInsertExperiences.ParamByName('p_flag').AsString := 'template_id';
      UniSPInsertExperiences.ParamByName('p_resume_id').AsInteger := FResumeID;
      UniSPInsertExperiences.ParamByName('p_job_order').AsInteger := 10;
      UniSPInsertExperiences.ParamByName('p_job_position').AsString := Edit10NameTR.Text;
      UniSPInsertExperiences.ParamByName('p_start_date').AsDateTime :=CalendarPickerB10TR.Date;
      UniSPInsertExperiences.ParamByName('p_end_date').AsDateTime := CalendarPickerE10TR.Date;
      UniSPInsertExperiences.ParamByName('p_employer').AsString := Edit10CompanyTR.Text;
      UniSPInsertExperiences.ParamByName('p_resp').AsString := Memo10RespTR.Text;
      UniSPInsertExperiences.ParamByName('p_benefits').AsString := Edit10BenefitsTR.Text;
      UniSPInsertExperiences.ParamByName('p_leave_reason').AsString := Edit10BottomTR.Text;
      UniSPInsertExperiences.ExecSQL;
      FExperienceID[10]:=UniSPInsertExperiences.ParamByName('p_experience_id').Value;
    end;
  if FormMain.isEmpty(Edit1NameTR.Text) and not FormMain.isEmpty(Edit1CompanyTR.Text) then
    for i := 0 to Memo1SkillsTR.Lines.Count - 1 do
       if not FormMain.IsEmpty(Memo1SkillsTR.Lines[i]) then
          begin
          UniSPInsertSkills.Close;
          UniSPInsertSkills.ParamByName('p_experience_id').AsInteger:=FExperienceID[1];
          UniSPInsertSkills.ParamByName('p_skill').AsString:=Memo1SkillsTR.Lines[i];
          UniSPInsertSkills.ExecSQL;
          end;
  if FormMain.isEmpty(Edit2NameTR.Text) and not FormMain.isEmpty(Edit2CompanyTR.Text) then
    for i := 0 to Memo2SkillsTR.Lines.Count - 1 do
       if not FormMain.IsEmpty(Memo2SkillsTR.Lines[i]) then
          begin
          UniSPInsertSkills.Close;
          UniSPInsertSkills.ParamByName('p_experience_id').AsInteger:=FExperienceID[2];
          UniSPInsertSkills.ParamByName('p_skill').AsString:=Memo2SkillsTR.Lines[i];
          UniSPInsertSkills.ExecSQL;
          end;
if FormMain.isEmpty(Edit3NameTR.Text) and not FormMain.isEmpty(Edit3CompanyTR.Text) then
    for i := 0 to Memo3SkillsTR.Lines.Count - 1 do
       if not FormMain.IsEmpty(Memo3SkillsTR.Lines[i]) then
          begin
          UniSPInsertSkills.Close;
          UniSPInsertSkills.ParamByName('p_experience_id').AsInteger:=FExperienceID[3];
          UniSPInsertSkills.ParamByName('p_skill').AsString:=Memo3SkillsTR.Lines[i];
          UniSPInsertSkills.ExecSQL;
          end;
if FormMain.isEmpty(Edit4NameTR.Text) and not FormMain.isEmpty(Edit4CompanyTR.Text) then
    for i := 0 to Memo4SkillsTR.Lines.Count - 1 do
       if not FormMain.IsEmpty(Memo4SkillsTR.Lines[i]) then
          begin
          UniSPInsertSkills.Close;
          UniSPInsertSkills.ParamByName('p_experience_id').AsInteger:=FExperienceID[4];
          UniSPInsertSkills.ParamByName('p_skill').AsString:=Memo4SkillsTR.Lines[i];
          UniSPInsertSkills.ExecSQL;
          end;
if FormMain.isEmpty(Edit5NameTR.Text) and not FormMain.isEmpty(Edit5CompanyTR.Text) then
    for i := 0 to Memo5SkillsTR.Lines.Count - 1 do
       if not FormMain.IsEmpty(Memo5SkillsTR.Lines[i]) then
          begin
          UniSPInsertSkills.Close;
          UniSPInsertSkills.ParamByName('p_experience_id').AsInteger:=FExperienceID[5];
          UniSPInsertSkills.ParamByName('p_skill').AsString:=Memo5SkillsTR.Lines[i];
          UniSPInsertSkills.ExecSQL;
          end;
if FormMain.isEmpty(Edit6NameTR.Text) and not FormMain.isEmpty(Edit6CompanyTR.Text) then
    for i := 0 to Memo6SkillsTR.Lines.Count - 1 do
       if not FormMain.IsEmpty(Memo6SkillsTR.Lines[i]) then
          begin
          UniSPInsertSkills.Close;
          UniSPInsertSkills.ParamByName('p_experience_id').AsInteger:=FExperienceID[6];
          UniSPInsertSkills.ParamByName('p_skill').AsString:=Memo6SkillsTR.Lines[i];
          UniSPInsertSkills.ExecSQL;
          end;
if FormMain.isEmpty(Edit7NameTR.Text) and not FormMain.isEmpty(Edit7CompanyTR.Text) then
    for i := 0 to Memo7SkillsTR.Lines.Count - 1 do
       if not FormMain.IsEmpty(Memo7SkillsTR.Lines[i]) then
          begin
          UniSPInsertSkills.Close;
          UniSPInsertSkills.ParamByName('p_experience_id').AsInteger:=FExperienceID[7];
          UniSPInsertSkills.ParamByName('p_skill').AsString:=Memo7SkillsTR.Lines[i];
          UniSPInsertSkills.ExecSQL;
          end;
if FormMain.isEmpty(Edit8NameTR.Text) and not FormMain.isEmpty(Edit8CompanyTR.Text) then
    for i := 0 to Memo8SkillsTR.Lines.Count - 1 do
       if not FormMain.IsEmpty(Memo8SkillsTR.Lines[i]) then
          begin
          UniSPInsertSkills.Close;
          UniSPInsertSkills.ParamByName('p_experience_id').AsInteger:=FExperienceID[8];
          UniSPInsertSkills.ParamByName('p_skill').AsString:=Memo8SkillsTR.Lines[i];
          UniSPInsertSkills.ExecSQL;
          end;
if FormMain.isEmpty(Edit9NameTR.Text) and not FormMain.isEmpty(Edit9CompanyTR.Text) then
    for i := 0 to Memo9SkillsTR.Lines.Count - 1 do
       if not FormMain.IsEmpty(Memo9SkillsTR.Lines[i]) then
          begin
          UniSPInsertSkills.Close;
          UniSPInsertSkills.ParamByName('p_experience_id').AsInteger:=FExperienceID[9];
          UniSPInsertSkills.ParamByName('p_skill').AsString:=Memo9SkillsTR.Lines[i];
          UniSPInsertSkills.ExecSQL;
          end;
if FormMain.isEmpty(Edit10NameTR.Text) and not FormMain.isEmpty(Edit10CompanyTR.Text) then
    for i := 0 to Memo10SkillsTR.Lines.Count - 1 do
       if not FormMain.IsEmpty(Memo10SkillsTR.Lines[i]) then
          begin
          UniSPInsertSkills.Close;
          UniSPInsertSkills.ParamByName('p_experience_id').AsInteger:=FExperienceID[10];
          UniSPInsertSkills.ParamByName('p_skill').AsString:=Memo10SkillsTR.Lines[i];
          UniSPInsertSkills.ExecSQL;
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
//    UniLastInsertID.ParamByName('p_name').AsString := EditNameTR.Text;
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
//    if not SaveJobs(FResumeID, Edit1NameTR.Text, CalendarPickerB1TR.Date,
//      CalendarPickerE1TR.Date, Edit1CompanyTR.Text, Memo1RespTR.Text,
//      Edit1BenefitsTR.Text, Edit1BottomTR.Text, FExperienceID) then
//    begin
//      FormMain.Warning('Сбой при сохранении jobs (experiences) #1');
//      Result := false;
//      exit;
//    end;
//
//    if not SaveSkillLists(FExperienceID, Memo1SkillsTR.Lines) then
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

function TFormNewResume.CheckValues: boolean;
var
  IsJob1Active, IsJob2Active, IsJob3Active, IsJob4Active, IsJob5Active,
    IsJob6Active, IsJob7Active, IsJob8Active, IsJob9Active,
    IsJob10Active: boolean;
begin
  IsJob1Active := not(FormMain.IsEmpty(Edit1DatesTR.Text) or FormMain.IsEmpty(Edit1NameTR.Text) or
    FormMain.IsEmpty(Edit1CompanyTR.Text) or FormMain.IsEmpty(Memo1RespTR.Text) or
    FormMain.IsEmpty(Memo1SkillsTR.Text));
  IsJob2Active := not(FormMain.IsEmpty(Edit2DatesTR.Text) or FormMain.IsEmpty(Edit2NameTR.Text) or
    FormMain.IsEmpty(Edit2CompanyTR.Text) or FormMain.IsEmpty(Memo2RespTR.Text) or
    FormMain.IsEmpty(Memo2SkillsTR.Text));
  IsJob3Active := not(FormMain.IsEmpty(Edit3DatesTR.Text) or FormMain.IsEmpty(Edit3NameTR.Text) or
    FormMain.IsEmpty(Edit3CompanyTR.Text) or FormMain.IsEmpty(Memo3RespTR.Text) or
    FormMain.IsEmpty(Memo3SkillsTR.Text));
  IsJob4Active := not(FormMain.IsEmpty(Edit4DatesTR.Text) or FormMain.IsEmpty(Edit4NameTR.Text) or
    FormMain.IsEmpty(Edit4CompanyTR.Text) or FormMain.IsEmpty(Memo4RespTR.Text) or
    FormMain.IsEmpty(Memo4SkillsTR.Text));
  IsJob5Active := not(FormMain.IsEmpty(Edit5DatesTR.Text) or FormMain.IsEmpty(Edit5NameTR.Text) or
    FormMain.IsEmpty(Edit5CompanyTR.Text) or FormMain.IsEmpty(Memo5RespTR.Text) or
    FormMain.IsEmpty(Memo5SkillsTR.Text));
  IsJob6Active := not(FormMain.IsEmpty(Edit6DatesTR.Text) or FormMain.IsEmpty(Edit6NameTR.Text) or
    FormMain.IsEmpty(Edit6CompanyTR.Text) or FormMain.IsEmpty(Memo6RespTR.Text) or
    FormMain.IsEmpty(Memo6SkillsTR.Text));
  IsJob7Active := not(FormMain.IsEmpty(Edit7DatesTR.Text) or FormMain.IsEmpty(Edit7NameTR.Text) or
    FormMain.IsEmpty(Edit7CompanyTR.Text) or FormMain.IsEmpty(Memo7RespTR.Text) or
    FormMain.IsEmpty(Memo7SkillsTR.Text));
  IsJob8Active := not(FormMain.IsEmpty(Edit8DatesTR.Text) or FormMain.IsEmpty(Edit8NameTR.Text) or
    FormMain.IsEmpty(Edit8CompanyTR.Text) or FormMain.IsEmpty(Memo8RespTR.Text) or
    FormMain.IsEmpty(Memo8SkillsTR.Text));
  IsJob9Active := not(FormMain.IsEmpty(Edit9DatesTR.Text) or FormMain.IsEmpty(Edit9NameTR.Text) or
    FormMain.IsEmpty(Edit9CompanyTR.Text) or FormMain.IsEmpty(Memo9RespTR.Text) or
    FormMain.IsEmpty(Memo9SkillsTR.Text));
  IsJob10Active := not(FormMain.IsEmpty(Edit10DatesTR.Text) or FormMain.IsEmpty(Edit10NameTR.Text)
    or FormMain.IsEmpty(Edit10CompanyTR.Text) or FormMain.IsEmpty(Memo10RespTR.Text) or
    FormMain.IsEmpty(Memo10SkillsTR.Text));

  if FormMain.IsEmpty(EditNameTR.Text) then
  begin
    ShowMessage('Пусте поле "Назва резюме"');
    Result := false;
    exit;
  end;
  if FormMain.IsEmpty(EditOpportunityTR.Text) then
  begin
    ShowMessage('Пусте поле "Посада"');
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
  if FormMain.IsEmpty(MemoIntroTR.Text) then
  begin
    ShowMessage('Пусте поле "Введення"');
    Result := false;
    exit;
  end;
  if FormMain.IsEmpty(EditArticle1TR.Text) and not FormMain.IsEmpty(MemoArticle1TR.Text) then
  begin
    ShowMessage('Пусте поле "Навички 1 - Назва"');
    Result := false;
    exit;
  end;
  if FormMain.IsEmpty(MemoArticle1TR.Text) and FormMain.IsEmpty(EditArticle1TR.Text) then
  begin
    ShowMessage('Пусте поле "Навички 1 - Текст"');
    Result := false;
    exit;
  end;
///   ///
  if FormMain.IsEmpty(EditArticle2TR.Text) and not FormMain.IsEmpty(MemoArticle2TR.Text) then
  begin
    ShowMessage('Пусте поле "Навички 2 - Назва"');
    Result := false;
    exit;
  end;
  if FormMain.IsEmpty(MemoArticle2TR.Text) and not FormMain.IsEmpty(EditArticle2TR.Text) then
  begin
    ShowMessage('Пусте поле "Навички 2 - Текст"');
    Result := false;
    exit;
  end;
  if FormMain.IsEmpty(EditArticle3TR.Text) and not FormMain.IsEmpty(MemoArticle3TR.Text) then
  begin
    ShowMessage('Пусте поле "Навички 3 - Назва"');
    Result := false;
    exit;
  end;
  if FormMain.IsEmpty(MemoArticle3TR.Text) and not FormMain.IsEmpty(EditArticle3TR.Text) then
  begin
    ShowMessage('Пусте поле "Навички 3 - Текст"');
    Result := false;
    exit;
  end;
  if FormMain.IsEmpty(EditArticle4TR.Text) and not FormMain.IsEmpty(MemoArticle4TR.Text) then
  begin
    ShowMessage('Пусте поле "Навички 4 - Назва"');
    Result := false;
    exit;
  end;
  if FormMain.IsEmpty(MemoArticle4TR.Text) and not FormMain.IsEmpty(EditArticle4TR.Text) then
  begin
    ShowMessage('Пусте поле "Навички 4 - Текст"');
    Result := false;
    exit;
  end;
  /// ////
  if FormMain.IsDateInvalid(CalendarPickerB1TR.Date) or CalendarPickerB1TR.IsEmpty then
  begin
    ShowMessage('Робота 1 дата початку невірна '+DateToStr(CalendarPickerB1TR.Date));
    Result := false;
    exit;
  end;
  if FormMain.IsDateInvalid(CalendarPickerE1TR.Date) or CalendarPickerB1TR.IsEmpty then
  begin
    ShowMessage('Робота 1 дата закінчення невірна '+DateToStr(CalendarPickerE1TR.Date));
    Result := false;
    exit;
  end;
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
  if (IsJob1Active and FormMain.IsEmpty(Memo1RespTR.Text)) then
  begin
    ShowMessage('Пусте поле "Обов`язки робота 1"');
    Result := false;
    exit;
  end;
  if (IsJob1Active and FormMain.IsEmpty(Memo1SkillsTR.Text)) then
  begin
    ShowMessage('Пусте поле Скіли робота 1"');
    Result := false;
    exit;
  end;

  /// ////
  if FormMain.IsDateInvalid(CalendarPickerB2TR.Date) or CalendarPickerB2TR.IsEmpty then
  begin
    ShowMessage('Робота 2 дата початку невірна '+DateToStr(CalendarPickerB2TR.Date));
    Result := false;
    exit;
  end;
  if FormMain.IsDateInvalid(CalendarPickerE2TR.Date) or CalendarPickerB2TR.IsEmpty then
  begin
    ShowMessage('Робота 2 дата закінчення невірна '+DateToStr(CalendarPickerE2TR.Date));
    Result := false;
    exit;
  end;
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
  if (IsJob2Active and FormMain.IsEmpty(Memo2RespTR.Text)) then
  begin
    ShowMessage('Пусте поле "Обов`язки робота 2"');
    Result := false;
    exit;
  end;
  if (IsJob2Active and FormMain.IsEmpty(Memo2SkillsTR.Text)) then
  begin
    ShowMessage('Пусте поле Скіли робота 2"');
    Result := false;
    exit;
  end;
  /// ////
  if FormMain.IsDateInvalid(CalendarPickerB3TR.Date) or CalendarPickerB3TR.IsEmpty then
  begin
    ShowMessage('Робота 3 дата початку невірна '+DateToStr(CalendarPickerB3TR.Date));
    Result := false;
    exit;
  end;
  if FormMain.IsDateInvalid(CalendarPickerE3TR.Date) or CalendarPickerB3TR.IsEmpty then
  begin
    ShowMessage('Робота 3 дата закінчення невірна '+DateToStr(CalendarPickerE3TR.Date));
    Result := false;
    exit;
  end;
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
  if (IsJob3Active and FormMain.IsEmpty(Memo3RespTR.Text)) then
  begin
    ShowMessage('Пусте поле "Обов`язки робота 3"');
    Result := false;
    exit;
  end;
  if (IsJob3Active and FormMain.IsEmpty(Memo3SkillsTR.Text)) then
  begin
    ShowMessage('Пусте поле Скіли робота 3"');
    Result := false;
    exit;
  end;
  /// ////
  if FormMain.IsDateInvalid(CalendarPickerB4TR.Date) or CalendarPickerB4TR.IsEmpty then
  begin
    ShowMessage('Робота 4 дата початку невірна '+DateToStr(CalendarPickerB4TR.Date));
    Result := false;
    exit;
  end;
  if FormMain.IsDateInvalid(CalendarPickerE4TR.Date) or CalendarPickerB4TR.IsEmpty then
  begin
    ShowMessage('Робота 4 дата закінчення невірна '+DateToStr(CalendarPickerE4TR.Date));
    Result := false;
    exit;
  end;
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
  if (IsJob4Active and FormMain.IsEmpty(Memo4RespTR.Text)) then
  begin
    ShowMessage('Пусте поле "Обов`язки робота 4"');
    Result := false;
    exit;
  end;
  if (IsJob4Active and FormMain.IsEmpty(Memo4SkillsTR.Text)) then
  begin
    ShowMessage('Пусте поле Скіли робота 4"');
    Result := false;
    exit;
  end;
  /// ////
  if FormMain.IsDateInvalid(CalendarPickerB5TR.Date) or CalendarPickerB5TR.IsEmpty then
  begin
    ShowMessage('Робота 5 дата початку невірна '+DateToStr(CalendarPickerB5TR.Date));
    Result := false;
    exit;
  end;
  if FormMain.IsDateInvalid(CalendarPickerE5TR.Date) or CalendarPickerB5TR.IsEmpty then
  begin
    ShowMessage('Робота 5 дата закінчення невірна '+DateToStr(CalendarPickerE5TR.Date));
    Result := false;
    exit;
  end;
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
  if (IsJob5Active and FormMain.IsEmpty(Memo5RespTR.Text)) then
  begin
    ShowMessage('Пусте поле "Обов`язки робота 5"');
    Result := false;
    exit;
  end;
  if (IsJob5Active and FormMain.IsEmpty(Memo5SkillsTR.Text)) then
  begin
    ShowMessage('Пусте поле Скіли робота 5"');
    Result := false;
    exit;
  end;
  /// ////
  if FormMain.IsDateInvalid(CalendarPickerB6TR.Date) or CalendarPickerB6TR.IsEmpty then
  begin
    ShowMessage('Робота 6 дата початку невірна '+DateToStr(CalendarPickerB6TR.Date));
    Result := false;
    exit;
  end;
  if FormMain.IsDateInvalid(CalendarPickerE6TR.Date) or CalendarPickerB6TR.IsEmpty then
  begin
    ShowMessage('Робота 6 дата закінчення невірна '+DateToStr(CalendarPickerE6TR.Date));
    Result := false;
    exit;
  end;
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
  if (IsJob6Active and FormMain.IsEmpty(Memo6RespTR.Text)) then
  begin
    ShowMessage('Пусте поле "Обов`язки робота 6"');
    Result := false;
    exit;
  end;
  if (IsJob6Active and FormMain.IsEmpty(Memo6SkillsTR.Text)) then
  begin
    ShowMessage('Пусте поле Скіли робота 6"');
    Result := false;
    exit;
  end;
  /// ////
  if FormMain.IsDateInvalid(CalendarPickerB7TR.Date) or CalendarPickerB7TR.IsEmpty then
  begin
    ShowMessage('Робота 7 дата початку невірна '+DateToStr(CalendarPickerB7TR.Date));
    Result := false;
    exit;
  end;
  if FormMain.IsDateInvalid(CalendarPickerE7TR.Date) or CalendarPickerB7TR.IsEmpty then
  begin
    ShowMessage('Робота 7 дата закінчення невірна '+DateToStr(CalendarPickerE7TR.Date));
    Result := false;
    exit;
  end;
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
  if (IsJob7Active and FormMain.IsEmpty(Memo7RespTR.Text)) then
  begin
    ShowMessage('Пусте поле "Обов`язки робота 7"');
    Result := false;
    exit;
  end;
  if (IsJob7Active and FormMain.IsEmpty(Memo7SkillsTR.Text)) then
  begin
    ShowMessage('Пусте поле Скіли робота 7"');
    Result := false;
    exit;
  end;
  /// ////
  if FormMain.IsDateInvalid(CalendarPickerB8TR.Date) or CalendarPickerB8TR.IsEmpty then
  begin
    ShowMessage('Робота 8 дата початку невірна '+DateToStr(CalendarPickerB8TR.Date));
    Result := false;
    exit;
  end;
  if FormMain.IsDateInvalid(CalendarPickerE8TR.Date) or CalendarPickerB8TR.IsEmpty then
  begin
    ShowMessage('Робота 8 дата закінчення невірна '+DateToStr(CalendarPickerE8TR.Date));
    Result := false;
    exit;
  end;
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
  if (IsJob8Active and FormMain.IsEmpty(Memo8RespTR.Text)) then
  begin
    ShowMessage('Пусте поле "Обов`язки робота 8"');
    Result := false;
    exit;
  end;
  if (IsJob8Active and FormMain.IsEmpty(Memo8SkillsTR.Text)) then
  begin
    ShowMessage('Пусте поле Скіли робота 8"');
    Result := false;
    exit;
  end;
  /// ////
  if FormMain.IsDateInvalid(CalendarPickerB9TR.Date) or CalendarPickerB9TR.IsEmpty then
  begin
    ShowMessage('Робота 9 дата початку невірна '+DateToStr(CalendarPickerB9TR.Date));
    Result := false;
    exit;
  end;
  if FormMain.IsDateInvalid(CalendarPickerE9TR.Date) or CalendarPickerB9TR.IsEmpty then
  begin
    ShowMessage('Робота 9 дата закінчення невірна '+DateToStr(CalendarPickerE9TR.Date));
    Result := false;
    exit;
  end;
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
  if (IsJob9Active and FormMain.IsEmpty(Memo9RespTR.Text)) then
  begin
    ShowMessage('Пусте поле "Обов`язки робота 9"');
    Result := false;
    exit;
  end;
  if (IsJob9Active and FormMain.IsEmpty(Memo9SkillsTR.Text)) then
  begin
    ShowMessage('Пусте поле Скіли робота 9"');
    Result := false;
    exit;
  end;
  /// ////
  if FormMain.IsDateInvalid(CalendarPickerB10TR.Date) or CalendarPickerB10TR.IsEmpty then
  begin
    ShowMessage('Робота 10 дата початку невірна '+DateToStr(CalendarPickerB10TR.Date));
    Result := false;
    exit;
  end;
  if FormMain.IsDateInvalid(CalendarPickerE10TR.Date) or CalendarPickerB10TR.IsEmpty then
  begin
    ShowMessage('Робота 10 дата закінчення невірна '+DateToStr(CalendarPickerE10TR.Date));
    Result := false;
    exit;
  end;
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
  if (IsJob10Active and FormMain.IsEmpty(Memo10RespTR.Text)) then
  begin
    ShowMessage('Пусте поле "Обов`язки робота 10"');
    Result := false;
    exit;
  end;
  if (IsJob10Active and FormMain.IsEmpty(Memo10SkillsTR.Text)) then
  begin
    ShowMessage('Пусте поле Скіли робота 10"');
    Result := false;
    exit;
  end;
// BX>=EX
  if IsJob1Active and (CalendarPickerB1TR.Date >=CalendarPickerE1TR.Date) then
  begin
    ShowMessage('Робота 1 дата закінчення '+DateToStr(CalendarPickerE1TR.Date)+' меньше дати початку '+DateToStr(CalendarPickerB1TR.Date));
    Result := false;
    exit;
  end;

  if IsJob2Active and (CalendarPickerB2TR.Date >=CalendarPickerE2TR.Date) then
  begin
    ShowMessage('Робота 2 дата закінчення '+DateToStr(CalendarPickerE2TR.Date)+' меньше дати початку '+DateToStr(CalendarPickerB2TR.Date));
    Result := false;
    exit;
  end;
  if IsJob3Active and (CalendarPickerB3TR.Date >=CalendarPickerE3TR.Date) then
  begin
    ShowMessage('Робота 3 дата закінчення '+DateToStr(CalendarPickerE3TR.Date)+' меньше дати початку '+DateToStr(CalendarPickerB3TR.Date));
    Result := false;
    exit;
  end;
  if IsJob4Active and (CalendarPickerB4TR.Date >=CalendarPickerE4TR.Date) then
  begin
    ShowMessage('Робота 4 дата закінчення '+DateToStr(CalendarPickerE4TR.Date)+' меньше дати початку '+DateToStr(CalendarPickerB4TR.Date));
    Result := false;
    exit;
  end;
  if IsJob5Active and (CalendarPickerB5TR.Date >=CalendarPickerE5TR.Date) then
  begin
    ShowMessage('Робота 5 дата закінчення '+DateToStr(CalendarPickerE5TR.Date)+' меньше дати початку '+DateToStr(CalendarPickerB5TR.Date));
    Result := false;
    exit;
  end;
  if IsJob6Active and (CalendarPickerB6TR.Date >=CalendarPickerE6TR.Date) then
  begin
    ShowMessage('Робота 6 дата закінчення '+DateToStr(CalendarPickerE6TR.Date)+' меньше дати початку '+DateToStr(CalendarPickerB6TR.Date));
    Result := false;
    exit;
  end;
  if IsJob7Active and (CalendarPickerB7TR.Date >=CalendarPickerE7TR.Date) then
  begin
    ShowMessage('Робота 7 дата закінчення '+DateToStr(CalendarPickerE7TR.Date)+' меньше дати початку '+DateToStr(CalendarPickerB7TR.Date));
    Result := false;
    exit;
  end;
  if IsJob8Active and (CalendarPickerB8TR.Date >=CalendarPickerE8TR.Date) then
  begin
    ShowMessage('Робота 8 дата закінчення '+DateToStr(CalendarPickerE8TR.Date)+' меньше дати початку '+DateToStr(CalendarPickerB8TR.Date));
    Result := false;
    exit;
  end;
  if IsJob9Active and (CalendarPickerB9TR.Date >=CalendarPickerE9TR.Date) then
  begin
    ShowMessage('Робота 9 дата закінчення '+DateToStr(CalendarPickerE9TR.Date)+' меньше дати початку '+DateToStr(CalendarPickerB9TR.Date));
    Result := false;
    exit;
  end;
  if IsJob10Active and (CalendarPickerB10TR.Date >= CalendarPickerE10TR.Date) then
  begin
    ShowMessage('Робота 10 дата закінчення '+DateToStr(CalendarPickerE10TR.Date)+' меньше дати початку '+DateToStr(CalendarPickerB10TR.Date));
    Result := false;
    exit;
  end;
// BX+1 < =EX
 if IsJob1Active and IsJob2Active and (CalendarPickerB2TR.Date < CalendarPickerE1TR.Date) then
  begin
    ShowMessage('Дата закінчення E1 '+DateToStr(CalendarPickerE1TR.Date)+' меньше дати початку роботи B2 '+DateToStr(CalendarPickerB2TR.Date));
    Result := false;
    exit;
  end;
  if IsJob2Active and IsJob3Active and (CalendarPickerB3TR.Date < CalendarPickerE2TR.Date) then
  begin
    ShowMessage('Дата закінчення E2 '+DateToStr(CalendarPickerE2TR.Date)+' меньше дати початку роботи B3 '+DateToStr(CalendarPickerB3TR.Date));
    Result := false;
    exit;
  end;
  if IsJob3Active and IsJob4Active and (CalendarPickerB4TR.Date < CalendarPickerE3TR.Date) then
  begin
    ShowMessage('Дата закінчення E3 '+DateToStr(CalendarPickerE3TR.Date)+' меньше дати початку роботи B4 '+DateToStr(CalendarPickerB4TR.Date));
    Result := false;
    exit;
  end;
  if IsJob4Active and IsJob5Active and (CalendarPickerB5TR.Date < CalendarPickerE4TR.Date) then
  begin
    ShowMessage('Дата закінчення E4 '+DateToStr(CalendarPickerE4TR.Date)+' меньше дати початку роботи B5 '+DateToStr(CalendarPickerB5TR.Date));
    Result := false;
    exit;
  end;
  if IsJob5Active and IsJob6Active and (CalendarPickerB6TR.Date < CalendarPickerE5TR.Date) then
  begin
    ShowMessage('Дата закінчення E5 '+DateToStr(CalendarPickerE5TR.Date)+' меньше дати початку роботи B6 '+DateToStr(CalendarPickerB6TR.Date));
    Result := false;
    exit;
  end;
  if IsJob6Active and IsJob7Active and (CalendarPickerB7TR.Date < CalendarPickerE6TR.Date) then
  begin
    ShowMessage('Дата закінчення E6 '+DateToStr(CalendarPickerE6TR.Date)+' меньше дати початку роботи B7 '+DateToStr(CalendarPickerB7TR.Date));
    Result := false;
    exit;
  end;
  if IsJob7Active and IsJob8Active and (CalendarPickerB8TR.Date < CalendarPickerE7TR.Date) then
  begin
    ShowMessage('Дата закінчення E7 '+DateToStr(CalendarPickerE7TR.Date)+' меньше дати початку роботи B8 '+DateToStr(CalendarPickerB8TR.Date));
    Result := false;
    exit;
  end;
  if IsJob8Active and IsJob9Active and (CalendarPickerB9TR.Date < CalendarPickerE8TR.Date) then
  begin
    ShowMessage('Дата закінчення E8 '+DateToStr(CalendarPickerE8TR.Date)+' меньше дати початку роботи B9 '+DateToStr(CalendarPickerB9TR.Date));
    Result := false;
    exit;
  end;
  if IsJob9Active and IsJob10Active and (CalendarPickerB10TR.Date < CalendarPickerE9TR.Date) then
  begin
    ShowMessage('Дата закінчення E9 '+DateToStr(CalendarPickerE9TR.Date)+' меньше дати початку роботи B10 '+DateToStr(CalendarPickerB10TR.Date));
    Result := false;
    exit;
  end;
  Result := true;
end;

procedure TFormNewResume.CopyTRfromUA;
begin
  if FormMain.IsEmpty(EditNameTR.Text) then EditNameTR.Text := EditNameUA.Text;
  if FormMain.IsEmpty(EditOpportunityTR.Text) then EditOpportunityTR.Text := EditOpportunityUA.Text;
  if FormMain.IsEmpty(EditPlaceTR.Text) then EditPlaceTR.Text := EditPlaceUA.Text;
  if FormMain.IsEmpty(EditPhonesTR.Text) then EditPhonesTR.Text := EditPhonesUA.Text;
  if FormMain.IsEmpty(MemoIntroTR.Text) then MemoIntroTR.Text := MemoIntroUA.Text;
  if  FormMain.IsEmpty(EditArticle1TR.Text) then EditArticle1TR.Text := EditArticle1UA.Text;
  if  FormMain.IsEmpty(MemoArticle1TR.Text) then MemoArticle1TR.Text := MemoArticle1UA.Text;
  if  FormMain.IsEmpty(EditArticle2TR.Text) then EditArticle2TR.Text := EditArticle2UA.Text;
  if  FormMain.IsEmpty(MemoArticle2TR.Text) then MemoArticle2TR.Text := MemoArticle2UA.Text;
  if  FormMain.IsEmpty(EditArticle3TR.Text) then EditArticle3TR.Text := EditArticle3UA.Text;
  if  FormMain.IsEmpty(MemoArticle3TR.Text) then MemoArticle3TR.Text := MemoArticle3UA.Text;
  if  FormMain.IsEmpty(EditArticle4TR.Text) then EditArticle4TR.Text := EditArticle4UA.Text;
  if  FormMain.IsEmpty(MemoArticle4TR.Text) then MemoArticle4TR.Text := MemoArticle4UA.Text;
  if  FormMain.IsEmpty(Edit1DatesTR.Text) then Edit1DatesTR.Text := Edit1DatesUA.Text;
  if  FormMain.IsEmpty(Edit1NameTR.Text) then Edit1NameTR.Text := Edit1NameUA.Text;
  if  FormMain.IsEmpty(Edit1CompanyTR.Text) then Edit1CompanyTR.Text := Edit1CompanyUA.Text;
  if  FormMain.IsEmpty(Memo1RespTR.Text) then Memo1RespTR.Text := Memo1RespUA.Text;
  if  FormMain.IsEmpty(Edit1BenefitsTR.Text) then Edit1BenefitsTR.Text := Edit1BenefitsUA.Text;
  if  FormMain.IsEmpty(Edit1BottomTR.Text) then Edit1BottomTR.Text := Edit1BottomUA.Text;

  if  FormMain.IsEmpty(Edit2DatesTR.Text) then Edit2DatesTR.Text := Edit2DatesUA.Text;
  if  FormMain.IsEmpty(Edit2NameTR.Text) then Edit2NameTR.Text := Edit2NameUA.Text;
  if  FormMain.IsEmpty(Edit2CompanyTR.Text) then Edit2CompanyTR.Text := Edit2CompanyUA.Text;
  if  FormMain.IsEmpty(Memo2RespTR.Text) then Memo2RespTR.Text := Memo2RespUA.Text;
  if  FormMain.IsEmpty(Edit2BenefitsTR.Text) then Edit2BenefitsTR.Text := Edit2BenefitsUA.Text;
  if  FormMain.IsEmpty(Edit2BottomTR.Text) then Edit2BottomTR.Text := Edit2BottomUA.Text;

  if  FormMain.IsEmpty(Edit3DatesTR.Text) then Edit1DatesTR.Text := Edit1DatesUA.Text;
  if  FormMain.IsEmpty(Edit1NameTR.Text) then Edit1NameTR.Text := Edit1NameUA.Text;
  if  FormMain.IsEmpty(Edit1CompanyTR.Text) then Edit1CompanyTR.Text := Edit1CompanyUA.Text;
  if  FormMain.IsEmpty(Memo1RespTR.Text) then Memo1RespTR.Text := Memo1RespUA.Text;
  if  FormMain.IsEmpty(Edit1BenefitsTR.Text) then Edit1BenefitsTR.Text := Edit1BenefitsUA.Text;
  if  FormMain.IsEmpty(Edit1BottomTR.Text) then Edit1BottomTR.Text := Edit1BottomUA.Text;

  if  FormMain.IsEmpty(Edit4DatesTR.Text) then Edit4DatesTR.Text := Edit4DatesUA.Text;
  if  FormMain.IsEmpty(Edit4NameTR.Text) then Edit4NameTR.Text := Edit4NameUA.Text;
  if  FormMain.IsEmpty(Edit4CompanyTR.Text) then Edit4CompanyTR.Text := Edit4CompanyUA.Text;
  if  FormMain.IsEmpty(Memo4RespTR.Text) then Memo4RespTR.Text := Memo4RespUA.Text;
  if  FormMain.IsEmpty(Edit4BenefitsTR.Text) then Edit4BenefitsTR.Text := Edit4BenefitsUA.Text;
  if  FormMain.IsEmpty(Edit4BottomTR.Text) then Edit4BottomTR.Text := Edit4BottomUA.Text;

  if  FormMain.IsEmpty(Edit5DatesTR.Text) then Edit5DatesTR.Text := Edit5DatesUA.Text;
  if  FormMain.IsEmpty(Edit5NameTR.Text) then Edit5NameTR.Text := Edit5NameUA.Text;
  if  FormMain.IsEmpty(Edit5CompanyTR.Text) then Edit5CompanyTR.Text := Edit5CompanyUA.Text;
  if  FormMain.IsEmpty(Memo5RespTR.Text) then Memo5RespTR.Text := Memo5RespUA.Text;
  if  FormMain.IsEmpty(Edit5BenefitsTR.Text) then Edit5BenefitsTR.Text := Edit5BenefitsUA.Text;
  if  FormMain.IsEmpty(Edit5BottomTR.Text) then Edit5BottomTR.Text := Edit5BottomUA.Text;

  if  FormMain.IsEmpty(Edit6DatesTR.Text) then Edit6DatesTR.Text := Edit6DatesUA.Text;
  if  FormMain.IsEmpty(Edit6NameTR.Text) then Edit6NameTR.Text := Edit6NameUA.Text;
  if  FormMain.IsEmpty(Edit6CompanyTR.Text) then Edit6CompanyTR.Text := Edit6CompanyUA.Text;
  if  FormMain.IsEmpty(Memo6RespTR.Text) then Memo6RespTR.Text := Memo6RespUA.Text;
  if  FormMain.IsEmpty(Edit6BenefitsTR.Text) then Edit6BenefitsTR.Text := Edit6BenefitsUA.Text;
  if  FormMain.IsEmpty(Edit6BottomTR.Text) then Edit6BottomTR.Text := Edit6BottomUA.Text;

  if  FormMain.IsEmpty(Edit7DatesTR.Text) then Edit7DatesTR.Text := Edit7DatesUA.Text;
  if  FormMain.IsEmpty(Edit7NameTR.Text) then Edit7NameTR.Text := Edit7NameUA.Text;
  if  FormMain.IsEmpty(Edit7CompanyTR.Text) then Edit7CompanyTR.Text := Edit7CompanyUA.Text;
  if  FormMain.IsEmpty(Memo7RespTR.Text) then Memo7RespTR.Text := Memo7RespUA.Text;
  if  FormMain.IsEmpty(Edit7BenefitsTR.Text) then Edit7BenefitsTR.Text := Edit7BenefitsUA.Text;
  if  FormMain.IsEmpty(Edit7BottomTR.Text) then Edit7BottomTR.Text := Edit7BottomUA.Text;

  if  FormMain.IsEmpty(Edit8DatesTR.Text) then Edit8DatesTR.Text := Edit8DatesUA.Text;
  if  FormMain.IsEmpty(Edit8NameTR.Text) then Edit8NameTR.Text := Edit8NameUA.Text;
  if  FormMain.IsEmpty(Edit8CompanyTR.Text) then Edit8CompanyTR.Text := Edit8CompanyUA.Text;
  if  FormMain.IsEmpty(Memo8RespTR.Text) then Memo8RespTR.Text := Memo8RespUA.Text;
  if  FormMain.IsEmpty(Edit8BenefitsTR.Text) then Edit8BenefitsTR.Text := Edit8BenefitsUA.Text;
  if  FormMain.IsEmpty(Edit8BottomTR.Text) then Edit8BottomTR.Text := Edit8BottomUA.Text;

  if  FormMain.IsEmpty(Edit9DatesTR.Text) then Edit9DatesTR.Text := Edit9DatesUA.Text;
  if  FormMain.IsEmpty(Edit9NameTR.Text) then Edit9NameTR.Text := Edit9NameUA.Text;
  if  FormMain.IsEmpty(Edit9CompanyTR.Text) then Edit9CompanyTR.Text := Edit9CompanyUA.Text;
  if  FormMain.IsEmpty(Memo9RespTR.Text) then Memo9RespTR.Text := Memo9RespUA.Text;
  if  FormMain.IsEmpty(Edit9BenefitsTR.Text) then Edit9BenefitsTR.Text := Edit9BenefitsUA.Text;
  if  FormMain.IsEmpty(Edit9BottomTR.Text) then Edit9BottomTR.Text := Edit9BottomUA.Text;

  if  FormMain.IsEmpty(Edit10DatesTR.Text) then Edit10DatesTR.Text := Edit10DatesUA.Text;
  if  FormMain.IsEmpty(Edit10NameTR.Text) then Edit10NameTR.Text := Edit10NameUA.Text;
  if  FormMain.IsEmpty(Edit10CompanyTR.Text) then Edit10CompanyTR.Text := Edit10CompanyUA.Text;
  if  FormMain.IsEmpty(Memo10RespTR.Text) then Memo10RespTR.Text := Memo10RespUA.Text;
  if  FormMain.IsEmpty(Edit10BenefitsTR.Text) then Edit10BenefitsTR.Text := Edit10BenefitsUA.Text;
  if  FormMain.IsEmpty(Edit10BottomTR.Text) then Edit10BottomTR.Text := Edit10BottomUA.Text;
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
if VarIsNull(UniGetTemplate['resume_introduction']) then MemoIntroUA.Text := ''
else MemoIntroUA.Text := UniGetTemplate['resume_introduction'];
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
if VarIsNull(UniGetResume['resume_introduction']) then MemoIntroUA.Text := '' else MemoIntroUA.Text := UniGetResume['resume_introduction'];
UniGetFooters.Close;
UniGetFooters.ParamByName('p_id').AsInteger := ResumeID;
UniGetFooters.Open;
if VarIsNull(UniGetResume['name']) then EditNameUA.Text := '' else EditNameUA.Text := UniGetResume['name'];
if VarIsNull(UniGetResume['job_opportunity']) then EditOpportunityUA.Text := '' else EditOpportunityUA.Text := UniGetResume['job_opportunity'];
if VarIsNull(UniGetResume['job_place']) then EditPlaceUA.Text := '' else EditPlaceUA.Text := UniGetResume['job_place'];
if VarIsNull(UniGetResume['phone_numbers_text']) then EditPhonesUA.Text := '' else EditPhonesUA.Text := UniGetResume['phone_numbers_text'];
if VarIsNull(UniGetResume['resume_introduction']) then MemoIntroUA.Text := '' else MemoIntroUA.Text := UniGetResume['resume_introduction'];
end;

procedure TFormNewResume.ChangeDates1;
begin
Edit1DatesTR.Text := FormMain.GetMonthByRegion(CalendarPickerB1TR.Date, CBRegionTR.Text) + '-' + FormMain.GetMonthByRegion(CalendarPickerE1TR.Date, CBRegionTR.Text);
end;

procedure TFormNewResume.ChangeDates2;
begin
Edit2DatesTR.Text := FormMain.GetMonthByRegion(CalendarPickerB2TR.Date, CBRegionTR.Text) + '-' + FormMain.GetMonthByRegion(CalendarPickerE2TR.Date, CBRegionTR.Text);
end;

procedure TFormNewResume.ChangeDates3;
begin
Edit3DatesTR.Text := FormMain.GetMonthByRegion(CalendarPickerB3TR.Date, CBRegionTR.Text) + '-' + FormMain.GetMonthByRegion(CalendarPickerE3TR.Date, CBRegionTR.Text);
end;

procedure TFormNewResume.ChangeDates4;
begin
Edit4DatesTR.Text := FormMain.GetMonthByRegion(CalendarPickerB4TR.Date, CBRegionTR.Text) + '-' + FormMain.GetMonthByRegion(CalendarPickerE4TR.Date, CBRegionTR.Text);
end;

procedure TFormNewResume.ChangeDates5;
begin
Edit5DatesTR.Text := FormMain.GetMonthByRegion(CalendarPickerB5TR.Date, CBRegionTR.Text) + '-' + FormMain.GetMonthByRegion(CalendarPickerE5TR.Date, CBRegionTR.Text);
end;

procedure TFormNewResume.ChangeDates6;
begin
Edit6DatesTR.Text := FormMain.GetMonthByRegion(CalendarPickerB6TR.Date, CBRegionTR.Text) + '-' + FormMain.GetMonthByRegion(CalendarPickerE6TR.Date, CBRegionTR.Text);
end;

procedure TFormNewResume.ChangeDates7;
begin
Edit7DatesTR.Text := FormMain.GetMonthByRegion(CalendarPickerB7TR.Date, CBRegionTR.Text) + '-' + FormMain.GetMonthByRegion(CalendarPickerE7TR.Date, CBRegionTR.Text);
end;

procedure TFormNewResume.ChangeDates8;
begin
Edit8DatesTR.Text := FormMain.GetMonthByRegion(CalendarPickerB8TR.Date, CBRegionTR.Text) + '-' + FormMain.GetMonthByRegion(CalendarPickerE8TR.Date, CBRegionTR.Text);
end;

procedure TFormNewResume.ChangeDates9;
begin
Edit9DatesTR.Text := FormMain.GetMonthByRegion(CalendarPickerB9TR.Date, CBRegionTR.Text) + '-' + FormMain.GetMonthByRegion(CalendarPickerE9TR.Date, CBRegionTR.Text);
end;

procedure TFormNewResume.ChangeDates10;
begin
Edit10DatesTR.Text := FormMain.GetMonthByRegion(CalendarPickerB10TR.Date, CBRegionTR.Text) + '-' + FormMain.GetMonthByRegion(CalendarPickerE10TR.Date, CBRegionTR.Text);
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
UniRegions.First;
while not UniRegions.Eof do
  begin
    if Uniregions['id']=CBLangTR.Text then CBRegionTR.Text:=Uniregions['region_name'];
    UniRegions.Next;
  end;
//FormMain.Warning('Регион изменён на '+CBRegionTR.Text+' для '+ CBLangTR.Text);
end;

procedure TFormNewResume.BitBtn1Click(Sender: TObject);
begin
ShowMessage(BoolToStr(CalendarPickerB1TR.IsEmpty));
CheckValues;
end;

end.
