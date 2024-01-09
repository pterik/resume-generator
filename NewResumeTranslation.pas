unit NewResumeTranslation;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, MemDS, DBAccess, Uni,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.WinXCalendars, Vcl.ComCtrls;

type
  TFormNewResumeTranslation = class(TForm)
    BitBtnClose: TBitBtn;
    BitBtnSave: TBitBtn;
    UniInsertTranslation: TUniQuery;
    UniGetTranslation: TUniQuery;
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
    ComboBoxRegionTR: TComboBox;
    ComboBoxLangTR: TComboBox;
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
    EditLangUA: TEdit;
    EditRegionUA: TEdit;
    StaticText2: TStaticText;
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
    UniGetTranslationid: TIntegerField;
    UniGetTranslationname: TStringField;
    UniGetTranslationlang: TStringField;
    UniGetTranslationregion_id: TStringField;
    UniGetTranslationjob_opportunity: TStringField;
    UniGetTranslationjob_place: TStringField;
    UniGetTranslationphone_numbers_text: TStringField;
    UniGetTranslationcv_docx_url: TStringField;
    UniGetTranslationcv_pdf_url: TStringField;
    UniGetTranslationresume_introduction: TStringField;
    UniGetTranslationis_active: TBooleanField;
    UniGetTranslationcreated: TDateTimeField;
    UniGetTranslationupdated: TDateTimeField;
    UniGetUAResumeFooters: TUniQuery;
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
    UniGetUAResumeFootersid: TIntegerField;
    UniGetUAResumeFootersresume_id: TIntegerField;
    UniGetUAResumeFootersfooter_header: TStringField;
    UniGetUAResumeFootersfooter_text: TStringField;
    UniGetUAResumeFootersfooter_order: TIntegerField;
    UniGetUAResumeFooterscreated: TDateTimeField;
    UniGetUAResumeFootersupdated: TDateTimeField;
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
    UniGetExperiences: TUniQuery;
    UniGetExperiencesid: TIntegerField;
    UniGetExperiencesposition: TStringField;
    UniGetExperiencesstart_date: TDateField;
    UniGetExperiencesend_date: TDateField;
    UniGetExperiencesemployer: TStringField;
    UniGetExperiencesresponsibilities: TStringField;
    UniGetExperiencesbenefits: TStringField;
    UniGetExperiencesleave_reason: TStringField;
    UniGetExperiencescreated: TDateTimeField;
    UniGetExperiencesupdated: TDateTimeField;
    UniGetSkillsid: TIntegerField;
    UniGetSkillsexperience_id: TIntegerField;
    UniGetSkillscategory: TStringField;
    UniGetSkillscategory_id: TIntegerField;
    UniGetSkillscreated: TDateTimeField;
    UniGetSkillsupdated: TDateTimeField;
    UniGetSkillsskill: TStringField;
    UniDeleteResume: TUniQuery;
    procedure PageControlTRChange(Sender: TObject);
    procedure PageControlUAChange(Sender: TObject);
    procedure BitBtnSaveClick(Sender: TObject);
    procedure CalendarPickerB1TRChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CalendarPickerE1TRChange(Sender: TObject);
    procedure CalendarPickerE2TRChange(Sender: TObject);
    procedure CalendarPickerE3TRChange(Sender: TObject);
    procedure CalendarPickerE4TRChange(Sender: TObject);
    procedure CalendarPickerE5TRChange(Sender: TObject);
    procedure CalendarPickerE6TRChange(Sender: TObject);
    procedure CalendarPickerE7TRChange(Sender: TObject);
    procedure CalendarPickerE8TRChange(Sender: TObject);
    procedure CalendarPickerE9TRChange(Sender: TObject);
    procedure CalendarPickerE10TRChange(Sender: TObject);
  private
    ComboBoxLang_First_Value, ComboBoxRegion_First_Value:string;
    ResumeIDTR, ResumeFooterIDTR:integer;
    function  CheckInsertValues:boolean;
    function  SaveInsertValues:boolean;
    procedure PresetJobValues;
    procedure SetComboBoxLanguages;
    procedure SetComboBoxRegions;
    procedure GetMonthRegionByMask(const D: TDatetime; Region:string; var FullMonthYear, ShortMonthYear:string );
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    function  IsEmpty(const S: String): boolean;
    procedure SetEmptyResume;
    procedure SetExperienceValues(FResumeID: integer);
    procedure SetResumeFooterValues(FResumeID:integer);
    function SaveInsertResume: boolean;
    function SaveInsertResumeFooter(FResumeID:integer): boolean;
    function SaveInsertExperience: boolean;
    function SaveInsertSkills: boolean;
    function ArchiveResume:boolean;
    { Private declarations }
  public
    UniInsertResumeFooters: TUniQuery;
    UniInsertExperiences: TUniQuery;
    UniInsertResume: TUniQuery;
    UniLastInsertID: TUniQuery;
    UniLastInsertIDID: TIntegerField;
    procedure SetEmptyResumeTR;
    procedure SetEmptyResumeUA;
    procedure SetFormValues;
    procedure SetValuesFromResume(Resumeid: integer);
    procedure SetValuesFromTemplate(TemplateId: integer);
  end;

var
  FormNewResumeTranslation: TFormNewResumeTranslation;

implementation

{$R *.dfm}

uses MainForm;

function TFormNewResumeTranslation.IsEmpty(const S: String): boolean;
begin
Result:=(Length(Trim(S))<=0);
end;

procedure TFormNewResumeTranslation.SetFormValues;
begin
PageControlUA.ActivePage:=TabSheetMainUA;
PageControlTR.ActivePage:=TabSheetMainTR;
ComboBoxLangTR.Text:='UA';
ComboBoxRegionTR.Text:='Ukraine';
end;

procedure TFormNewResumeTranslation.FormCreate(Sender: TObject);
begin
PageControlTR.ActivePage:=TabSheetMainTR;
SetComboBoxLanguages;
SetComboBoxRegions;
end;

procedure TFormNewResumeTranslation.GetMonthRegionByMask(const D: TDatetime; Region:string; var FullMonthYear, ShortMonthYear:string );
var
Year, MM, Day: Word;
begin
DecodeDate(D, Year, MM, Day);
if lowercase(Region)='ukraine' then
  begin
    case MM of
    1: begin FullMonthYear:='Січень'+' '+IntToStr(Year); ShortMonthYear:='січ'+'. '+IntToStr(Year);end;
    2: begin FullMonthYear:='Лютий'+' '+IntToStr(Year); ShortMonthYear:='лют'+'. '+IntToStr(Year);end;
    3: begin FullMonthYear:='Березень'+' '+IntToStr(Year); ShortMonthYear:='бер'+'. '+IntToStr(Year);end;
    4: begin FullMonthYear:='Квітень'+' '+IntToStr(Year); ShortMonthYear:='кві'+'. '+IntToStr(Year);end;
    5: begin FullMonthYear:='Травень'+' '+IntToStr(Year); ShortMonthYear:='тра'+'. '+IntToStr(Year);end;
    6: begin FullMonthYear:='Червень'+' '+IntToStr(Year); ShortMonthYear:='чер'+'. '+IntToStr(Year);end;
    7: begin FullMonthYear:='Липень'+' '+IntToStr(Year); ShortMonthYear:='лип'+'. '+IntToStr(Year);end;
    8: begin FullMonthYear:='Серпень'+' '+IntToStr(Year); ShortMonthYear:='сер'+'. '+IntToStr(Year);end;
    9: begin FullMonthYear:='Вересень'+' '+IntToStr(Year); ShortMonthYear:='вер'+'. '+IntToStr(Year);end;
    10: begin FullMonthYear:='Жовтень'+' '+IntToStr(Year); ShortMonthYear:='жов'+'. '+IntToStr(Year);end;
    11: begin FullMonthYear:='Листопад'+' '+IntToStr(Year); ShortMonthYear:='лис'+'. '+IntToStr(Year);end;
    12: begin FullMonthYear:='Грудень'+' '+IntToStr(Year); ShortMonthYear:='гру'+'. '+IntToStr(Year);end;
    end;
    // січень, лютий, березень, квітень, травень, червень, липень, серпень, вересень, жовтень, листопад, грудень.
  end;
if lowercase(Region)='poland' then
  begin
    case MM of
    1: begin FullMonthYear:='styczeń'+' '+IntToStr(Year); ShortMonthYear:='sty'+'. '+IntToStr(Year);end;
    2: begin FullMonthYear:='luty'+' '+IntToStr(Year); ShortMonthYear:='lut'+'. '+IntToStr(Year);end;
    3: begin FullMonthYear:='marzec'+' '+IntToStr(Year); ShortMonthYear:='mar'+'.'+IntToStr(Year);end;
    4: begin FullMonthYear:='kwiecień'+' '+IntToStr(Year); ShortMonthYear:='kwi'+'. '+IntToStr(Year);end;
    5: begin FullMonthYear:='maj'+' '+IntToStr(Year); ShortMonthYear:='maj'+'. '+IntToStr(Year);end;
    6: begin FullMonthYear:='czerwiec'+' '+IntToStr(Year); ShortMonthYear:='cze'+'. '+IntToStr(Year);end;
    7: begin FullMonthYear:='lipiec'+' '+IntToStr(Year); ShortMonthYear:='lip'+'. '+IntToStr(Year);end;
    8: begin FullMonthYear:='sierpień'+' '+IntToStr(Year); ShortMonthYear:='sie'+'. '+IntToStr(Year);end;
    9: begin FullMonthYear:='wrzesień'+' '+IntToStr(Year); ShortMonthYear:='wrz'+'. '+IntToStr(Year);end;
    10: begin FullMonthYear:='październik'+' '+IntToStr(Year); ShortMonthYear:='paź'+'. '+IntToStr(Year);end;
    11: begin FullMonthYear:='listopad'+' '+IntToStr(Year); ShortMonthYear:='lis'+'. '+IntToStr(Year);end;
    12: begin FullMonthYear:='grudzień'+' '+IntToStr(Year); ShortMonthYear:='gru'+'. '+IntToStr(Year);end;
    end;
    // styczeń, luty, marzec, kwiecień, maj, czerwiec, lipiec, sierpień, wrzesień, październik, listopad, grudzień.
  end;
if lowercase(Region)='croatia' then
  begin
    case MM of
    1: begin FullMonthYear:='siječanj'+' '+IntToStr(Year); ShortMonthYear:='sij'+'. '+IntToStr(Year);end;
    2: begin FullMonthYear:='veljača'+' '+IntToStr(Year); ShortMonthYear:='vel'+'. '+IntToStr(Year);end;
    3: begin FullMonthYear:='ožujak'+' '+IntToStr(Year); ShortMonthYear:='ožu'+'. '+IntToStr(Year);end;
    4: begin FullMonthYear:='travanj'+' '+IntToStr(Year); ShortMonthYear:='tra'+'. '+IntToStr(Year);end;
    5: begin FullMonthYear:='svibanj'+' '+IntToStr(Year); ShortMonthYear:='svi'+'. '+IntToStr(Year);end;
    6: begin FullMonthYear:='lip'+' '+IntToStr(Year); ShortMonthYear:='lip'+'. '+IntToStr(Year);end;
    7: begin FullMonthYear:='srpanj'+' '+IntToStr(Year); ShortMonthYear:='srp'+'. '+IntToStr(Year);end;
    8: begin FullMonthYear:='kolovoz'+' '+IntToStr(Year); ShortMonthYear:='kol'+'. '+IntToStr(Year);end;
    9: begin FullMonthYear:='rujan'+' '+IntToStr(Year); ShortMonthYear:='ruj'+'. '+IntToStr(Year);end;
    10: begin FullMonthYear:='listopad'+' '+IntToStr(Year); ShortMonthYear:='lis'+'. '+IntToStr(Year);end;
    11: begin FullMonthYear:='studeni'+' '+IntToStr(Year); ShortMonthYear:='studeni'+'. '+IntToStr(Year);end;
    12: begin FullMonthYear:='prosinac'+' '+IntToStr(Year); ShortMonthYear:='pro'+'. '+IntToStr(Year);end;
    end;
    // Siječanj, veljača, ožujak, travanj, svibanj, lipanj, srpanj, kolovoz, rujan, listopad, studeni, prosinac
  end;
if lowercase(Region)='germany' then
  begin
    case MM of
    1: begin FullMonthYear:='Januar'+' '+IntToStr(Year); ShortMonthYear:='Jan'+'. '+IntToStr(Year);end;
    2: begin FullMonthYear:='Februar'; ShortMonthYear:='Feb'+'. '+IntToStr(Year);end;
    3: begin FullMonthYear:='März'; ShortMonthYear:='Mär'+'. '+IntToStr(Year);end;
    4: begin FullMonthYear:='April'; ShortMonthYear:='Apr'+'. '+IntToStr(Year);end;
    5: begin FullMonthYear:='Mai'; ShortMonthYear:='Mai'+'. '+IntToStr(Year);end;
    6: begin FullMonthYear:='Juni'; ShortMonthYear:='Jun'+'. '+IntToStr(Year);end;
    7: begin FullMonthYear:='Juli'; ShortMonthYear:='Jul'+'. '+IntToStr(Year);end;
    8: begin FullMonthYear:='August'; ShortMonthYear:='Aug'+'. '+IntToStr(Year);end;
    9: begin FullMonthYear:='September'; ShortMonthYear:='Sep'+'. '+IntToStr(Year);end;
    10: begin FullMonthYear:='Oktober'; ShortMonthYear:='Okt'+'. '+IntToStr(Year);end;
    11: begin FullMonthYear:='November'; ShortMonthYear:='Nov'+'. '+IntToStr(Year);end;
    12: begin FullMonthYear:='Dezember'; ShortMonthYear:='Dez'+'. '+IntToStr(Year);end;
    end;
    // Januar, Februar, März, April, Mai, Juni, Juli, August, September, Oktober, November, Dezember
  end;
if (lowercase(Region)='england') or (lowercase(Region)='usa\canada') then
  begin
    case MM of
    1: begin FullMonthYear:='January'+' '+IntToStr(Year); ShortMonthYear:='Jan'+'. '+IntToStr(Year);end;
    2: begin FullMonthYear:='February'+' '+IntToStr(Year); ShortMonthYear:='Feb'+'. '+IntToStr(Year);end;
    3: begin FullMonthYear:='March'+' '+IntToStr(Year); ShortMonthYear:='Mar'+'. '+IntToStr(Year);end;
    4: begin FullMonthYear:='April'+' '+IntToStr(Year); ShortMonthYear:='Apr'+'. '+IntToStr(Year);end;
    5: begin FullMonthYear:='May'+' '+IntToStr(Year); ShortMonthYear:='May'+'. '+IntToStr(Year);end;
    6: begin FullMonthYear:='June'+' '+IntToStr(Year); ShortMonthYear:='Jun'+'. '+IntToStr(Year);end;
    7: begin FullMonthYear:='July'+' '+IntToStr(Year); ShortMonthYear:='Jul'+' .'+IntToStr(Year);end;
    8: begin FullMonthYear:='August'+' '+IntToStr(Year); ShortMonthYear:='Aug'+'. '+IntToStr(Year);end;
    9: begin FullMonthYear:='September'+' '+IntToStr(Year); ShortMonthYear:='Sep'+'. '+IntToStr(Year);end;
    10: begin FullMonthYear:='October'+' '+IntToStr(Year); ShortMonthYear:='Oct'+'. '+IntToStr(Year);end;
    11: begin FullMonthYear:='November'+' '+IntToStr(Year); ShortMonthYear:='Nov'+'. '+IntToStr(Year);end;
    12: begin FullMonthYear:='December'+' '+IntToStr(Year); ShortMonthYear:='Dec'+'. '+IntToStr(Year);end;
    end;
    // January, February, March, April, May, June, July, August, September, October, November, December
  end;

end;

procedure TFormNewResumeTranslation.PageControlTRChange(Sender: TObject);
begin
PageControlUA.ActivePageIndex:=PageControlTR.ActivePageIndex;
end;

procedure TFormNewResumeTranslation.PageControlUAChange(Sender: TObject);
begin
PageControlTR.ActivePageIndex:=PageControlUA.ActivePageIndex;
end;

procedure TFormNewResumeTranslation.SetComboBoxLanguages;
begin
ComboBoxLangTR.Clear;
UniLanguages.Close;
UniLanguages.Open;
ComboBoxLangTR.Text:=Unilanguages['lang'];
ComboBoxLang_First_Value:=Unilanguages['lang'];
while not Unilanguages.EOF do
  begin
    ComboBoxLangTR.Items.Add(Unilanguages['lang']);
    UniLanguages.Next;
  end;
UniLanguages.Close;
end;

procedure TFormNewResumeTranslation.SetComboBoxRegions;
begin
ComboBoxRegionTR.Clear;
UniRegions.Close;
UniRegions.Open;
ComboBoxRegionTR.Text:=UniRegions['region_name'];
ComboBoxRegion_First_Value:=UniRegions['region_name'];
while not UniRegions.EOF do
  begin
    ComboBoxRegionTR.Items.Add(UniRegions['region_name']);
    UniRegions.Next;
  end;
UniRegions.Close;
end;


procedure TFormNewResumeTranslation.SetEmptyResumeTR;
begin
EditNameTR.Clear;
EditOpportunityTR.Clear;
EditPlaceTR.Clear;
EditPhonesTR.Clear;
MemoIntroTR.Clear;
ComboBoxLangTR.Text:='EN';
ComboBoxRegionTR.Text:='England';

MemoArticle1TR.Clear;
EditArticle1TR.Clear;
MemoArticle2TR.Clear;
EditArticle3TR.Clear;
MemoArticle3TR.Clear;
EditArticle3TR.Clear;
MemoArticle4TR.Clear;
EditArticle4TR.Clear;

Edit1DatesTR.Text:='';
Edit1NameTR.Text:='';
Edit1CompanyTR.Text:='';
Memo1RespTR.Text:='';
Edit1BenefitsTR.Text:='';
Edit1BottomTR.Text:='';
Memo1SkillsTR.Clear;

Edit2DatesTR.Text:='';
Edit2NameTR.Text:='';
Edit2CompanyTR.Text:='';
Memo2RespTR.Text:='';
Edit2BenefitsTR.Text:='';
Edit2BottomTR.Text:='';
Memo2SkillsTR.Text:='';

Edit3DatesTR.Text:='';
Edit3NameTR.Text:='';
Edit3CompanyTR.Text:='';
Memo3RespTR.Text:='';
Edit3BenefitsTR.Text:='';
Edit3BottomTR.Text:='';
Memo3SkillsTR.Text:='';

Edit4DatesTR.Text:='';
Edit4NameTR.Text:='';
Edit4CompanyTR.Text:='';
Memo4RespTR.Text:='';
Edit4BenefitsTR.Text:='';
Edit4BottomTR.Text:='';
Memo4SkillsTR.Text:='';

Edit5DatesTR.Text:='';
Edit5NameTR.Text:='';
Edit5CompanyTR.Text:='';
Memo5RespTR.Text:='';
Edit5BenefitsTR.Text:='';
Edit5BottomTR.Text:='';
Memo5SkillsTR.Text:='';

Edit6DatesTR.Text:='';
Edit6NameTR.Text:='';
Edit6CompanyTR.Text:='';
Memo6RespTR.Text:='';
Edit6BenefitsTR.Text:='';
Edit6BottomTR.Text:='';
Memo6SkillsTR.Text:='';

Edit7DatesTR.Text:='';
Edit7NameTR.Text:='';
Edit7CompanyTR.Text:='';
Memo7RespTR.Text:='';
Edit7BenefitsTR.Text:='';
Edit7BottomTR.Text:='';
Memo7SkillsTR.Text:='';

Edit8DatesTR.Text:='';
Edit8NameTR.Text:='';
Edit8CompanyTR.Text:='';
Memo8RespTR.Text:='';
Edit8BenefitsTR.Text:='';
Edit8BottomTR.Text:='';
Memo8SkillsTR.Text:='';

Edit9DatesTR.Text:='';
Edit9NameTR.Text:='';
Edit9CompanyTR.Text:='';
Memo9RespTR.Text:='';
Edit9BenefitsTR.Text:='';
Edit9BottomTR.Text:='';
Memo9SkillsTR.Text:='';

Edit10DatesTR.Text:='';
Edit10NameTR.Text:='';
Edit10CompanyTR.Text:='';
Memo10RespTR.Text:='';
Edit10BenefitsTR.Text:='';
Edit10BottomTR.Text:='';
Memo10SkillsTR.Text:='';
end;


procedure TFormNewResumeTranslation.SetEmptyResumeUA;
begin
//resume_id:=-1;
//resume_footer_id:=-1;

EditNameUA.Clear;
EditOpportunityUA.Clear;
EditPlaceUA.Clear;
EditPhonesUA.Clear;
MemoIntroUA.Clear;

MemoArticle1UA.Clear;
EditArticle1UA.Clear;
MemoArticle2UA.Clear;
EditArticle2UA.Clear;
MemoArticle3UA.Clear;
EditArticle3UA.Clear;
MemoArticle4UA.Clear;
EditArticle4UA.Clear;

Edit1DatesUA.Text:='';
Edit1NameUA.Text:='';
Edit1CompanyUA.Text:='';
Memo1RespUA.Text:='';
Edit1BenefitsUA.Text:='';
Memo1SkillsUA.Text:='';
Edit1BottomUA.Text:='';

Edit2DatesUA.Text:='';
Edit2NameUA.Text:='';
Edit2CompanyUA.Text:='';
Memo2RespUA.Text:='';
Edit2BenefitsUA.Text:='';
Memo2SkillsUA.Text:='';
Edit2BottomUA.Text:='';

Edit3DatesUA.Text:='';
Edit3NameUA.Text:='';
Edit3CompanyUA.Text:='';
Memo3RespUA.Text:='';
Edit3BenefitsUA.Text:='';
Memo3SkillsUA.Text:='';
Edit3BottomUA.Text:='';

Edit4DatesUA.Text:='';
Edit4NameUA.Text:='';
Edit4CompanyUA.Text:='';
Memo4RespUA.Text:='';
Edit4BenefitsUA.Text:='';
Memo4SkillsUA.Text:='';
Edit4BottomUA.Text:='';

Edit5DatesUA.Text:='';
Edit5NameUA.Text:='';
Edit5CompanyUA.Text:='';
Memo5RespUA.Text:='';
Edit5BenefitsUA.Text:='';
Memo5SkillsUA.Text:='';
Edit5BottomUA.Text:='';

Edit6DatesUA.Text:='';
Edit6NameUA.Text:='';
Edit6CompanyUA.Text:='';
Memo6RespUA.Text:='';
Edit6BenefitsUA.Text:='';
Memo6SkillsUA.Text:='';
Edit6BottomUA.Text:='';

Edit7DatesUA.Text:='';
Edit7NameUA.Text:='';
Edit7CompanyUA.Text:='';
Memo7RespUA.Text:='';
Edit7BenefitsUA.Text:='';
Memo7SkillsUA.Text:='';
Edit7BottomUA.Text:='';

Edit8DatesUA.Text:='';
Edit8NameUA.Text:='';
Edit8CompanyUA.Text:='';
Memo8RespUA.Text:='';
Edit8BenefitsUA.Text:='';
Memo8SkillsUA.Text:='';
Edit8BottomUA.Text:='';

Edit9DatesUA.Text:='';
Edit9NameUA.Text:='';
Edit9CompanyUA.Text:='';
Memo9RespUA.Text:='';
Edit9BenefitsUA.Text:='';
Memo9SkillsUA.Text:='';
Edit9BottomUA.Text:='';

Edit10DatesUA.Text:='';
Edit10NameUA.Text:='';
Edit10CompanyUA.Text:='';
Memo10RespUA.Text:='';
Edit10BenefitsUA.Text:='';
Memo10SkillsUA.Text:='';
Edit10BottomUA.Text:='';
end;

procedure TFormNewResumeTranslation.SetValuesFromResume(ResumeId:integer);
begin
ComboBoxLangTR.Text:=ComboBoxLang_First_Value;
ComboBoxRegionTR.Text:=ComboBoxRegion_First_Value;
SetEmptyResumeTR;
if ResumeID<=0 then SetEmptyResumeUA;
if ResumeID>0 then
  begin
//    ShowMessage(IntToStr(resume_id));
    UniGetTranslation.Close;
    UniGetTranslation.ParamByName('p_id').AsInteger:=ResumeID;
    UniGetTranslation.ParamByName('p_lang').AsString:='UA';//ComboBoxLangTR.Text;
    UniGetTranslation.Open;
    if VarIsNull(UniGetTranslation['id'])
      then SetEmptyResumeUA
    else
      begin
//      resume_id:=-1;
//      resume_footer_id:=-1;
      if VarIsNull(UniGetTranslation['name'])
        then EditNameUA.Text:=''
        else EditNameUA.Text:=UniGetTranslation['name'];
      if VarIsNull(UniGetTranslation['job_opportunity'])
        then EditOpportunityUA.Text:=''
        else EditOpportunityUA.Text:=UniGetTranslation['job_opportunity'];
      if VarIsNull(UniGetTranslation['job_place'])
        then EditPlaceUA.Text:=''
        else EditPlaceUA.Text:=UniGetTranslation['job_place'];
      if VarIsNull(UniGetTranslation['phone_numbers_text'])
        then EditPhonesUA.Text:=''
        else EditPhonesUA.Text:=UniGetTranslation['phone_numbers_text'];
      if VarIsNull(UniGetTranslation['resume_introduction'])
        then MemoIntroUA.Text:=''
        else MemoIntroUA.Text:=UniGetTranslation['resume_introduction'];
      end;
      SetResumeFooterValues(ResumeID);
      SetExperienceValues(ResumeID);
  end;
end;

procedure TFormNewResumeTranslation.SetResumeFooterValues(FResumeID:integer);
var ResumeFooterID:integer;
begin
UniGetUAResumeFooters.Close;
UniGetUAResumeFooters.ParamByName('p_resume_id').AsInteger:=FResumeID;
UniGetUAResumeFooters.ParamByName('p_lang').AsString:='UA';
UniGetUAResumeFooters.Open;
if VarIsNull(UniGetUAResumeFooters['id'])
then
  begin
  FormMain.Warning('Resumeid не установлено - Query UniGetUAResumeFooters вернул null');
          LabelFooterID.Caption:='# N/A';
          end
        else
          begin
          ResumeFooterID:=UniGetUAResumeFooters['id'];
          LabelFooterID.Caption:=IntToStr(ResumeFooterID);
          end;
      if VarIsNull(UniGetUAResumeFooters['resume_id'])
        then
          begin
          FormMain.Warning('ResumeFooterID не установлено - Query UniGetUAResumeFooters вернул null');
          LabelFooterID.Caption:=LabelFooterID.Caption+' '+'resume_id= N/A';
          end
        else
          begin
          LabelFooterID.Caption:=LabelFooterID.Caption+' resume_id = '+IntToStr(FResumeID);
          end;
      while not UniGetUAResumeFooters.Eof do
        begin
        if UniGetUAResumeFooters['footer_order'] = 1 then
          begin
          if VarIsNull(UniGetUAResumeFooters['footer_header'])
            then EditArticle1UA.Text:=''
            else EditArticle1UA.Text:=UniGetUAResumeFooters['footer_header'];
          if VarIsNull(UniGetUAResumeFooters['footer_text'])
            then MemoArticle1UA.Text:=''
            else MemoArticle1UA.Text:=UniGetUAResumeFooters['footer_text'];
          end;
        if UniGetUAResumeFooters['footer_order'] = 2 then
          begin
          if VarIsNull(UniGetUAResumeFooters['footer_header'])
          then EditArticle2UA.Text:=''
          else EditArticle2UA.Text:=UniGetUAResumeFooters['footer_header'];
          if VarIsNull(UniGetUAResumeFooters['footer_text'])
          then MemoArticle2UA.Text:=''
          else MemoArticle2UA.Text:=UniGetUAResumeFooters['footer_text'];
          end;
        if UniGetUAResumeFooters['footer_order'] = 3 then
          begin
          if VarIsNull(UniGetUAResumeFooters['footer_header'])
          then EditArticle3UA.Text:=''
          else EditArticle3UA.Text:=UniGetUAResumeFooters['footer_header'];
          if VarIsNull(UniGetUAResumeFooters['footer_text'])
          then MemoArticle3UA.Text:=''
          else MemoArticle3UA.Text:=UniGetUAResumeFooters['footer_text'];
          end;
        if UniGetUAResumeFooters['footer_order'] = 4 then
          begin
          if VarIsNull(UniGetUAResumeFooters['footer_header'])
          then EditArticle4UA.Text:=''
          else EditArticle4UA.Text:=UniGetUAResumeFooters['footer_header'];
          if VarIsNull(UniGetUAResumeFooters['footer_text'])
          then MemoArticle4UA.Text:=''
          else MemoArticle4UA.Text:=UniGetUAResumeFooters['footer_text'];
          end;
        UniGetUAResumeFooters.Next;
        end;
end;
procedure TFormNewResumeTranslation.SetExperienceValues(FResumeID:integer);
var ExperienceNum:integer;
FullMonthBYear, ShortMonthBYear, FullMonthEYear, ShortMonthEYear:string;
begin
UniGetExperiences.Prepare;
UniGetExperiences.ParamByName('p_resume_id').AsInteger:=FResumeID;
UniGetExperiences.Open;
ExperienceNum:=0;
while not UniGetExperiences.Eof do
  begin
  inc(ExperienceNum);
  case ExperienceNum of
  1: begin
    GetMonthRegionByMask(UniGetExperiences['start_date'], 'UA', FullMonthBYear, ShortMonthBYear);
    GetMonthRegionByMask(UniGetExperiences['start_date'], 'UA', FullMonthBYear, ShortMonthBYear);
    Edit1DatesUA.Text:=FullMonthBYear+'-'+FullMonthEYear;
    Edit1NameUA.Text:=UniGetExperiences['position'];
    Memo1RespUA.Text:=UniGetExperiences['responsibilities'];
    Edit1CompanyUA.Text:=UniGetExperiences['employer'];
    Edit1BenefitsUA.Text:=UniGetExperiences['benefits'];
    Edit1BottomUA.Text:=UniGetExperiences['leave_reason'];
    UniGetSkills.Prepare;
    UniGetSkills.ParamByName('p_experience_id').AsInteger:=UniGetExperiences['id'];
    UniGetSkills.Open;
    Memo1SkillsUA.Clear;
    while not UniGetSkills.EOF do
      begin
        Memo1SkillsUA.Lines.Add(UniGetSkills['skill']+' - '+UniGetSkills['category']);
        UniGetSkills.Next;
      end;
    end;
  end;
  UniGetExperiences.Next;
  end;
end;

procedure TFormNewResumeTranslation.PresetJobValues;
begin
//Edit1Name.Text:='IT support specialist';
//Edit1Dates.Text:='Sep 2022 – Aug 2023';
//Edit1Company.Text:='Freelance websites';
//Memo1Resp.Lines.Clear;
//Memo1Resp.Lines.Add('Responsibilities:');
//Memo1Resp.Lines.Add('On freelance sites, I find jobs to develop and maintain websites and databases. '+
//  'The most popular technologies in such projects are Python and Java, MySQL and Postgres databases.'+
//  ' The main advantage of such projects is concrete and quick results. It is necessary to complete the '+
//  'task within a few days and correctly understand the requirements of the Customer.');
//Edit1Benefits.Text:='';
//Edit1Skills.Text:='';
//Memo1Footer.Lines.Clear;
//Memo1Footer.Lines.Add('========================================================');
//
//Edit2Name.Text:='ETL Database developer (remote)';
//Edit2Dates.Text:='Oct 2021 – Aug 2022';
//Edit2Company.Text:='Company Codegenix (USA, Texas). Outsource person for company GlueUp.';
//Memo2Resp.Lines.Clear;
//Memo2Resp.Lines.Add('Responsibilities:');
//Memo2Resp.Lines.Add('Several heterogeneous databases of the company are in Production use (Oracle, MySQL,'+
//  ' MongoDB). To create analytical and financial reports, it is necessary to expand DWH database and create'+
//  ' several workflows for constant data transfer to the DWH storage. My responsibility was to create and'+
//  ' implement ETL workflows. Some workflows were created using ETL Talend, as well as using Python scripts.'+
//  ' After several months of implementation, the workflows were created and tested. They fulfill all the'+
//  ' necessary requirements, and the leaders were satisfied with the work performed.');
//Edit2Benefits.Text:='Benefits: Experience with NoSQL database (MongoDB, JSON structures). ';
//Edit2Skills.Text:='Skills: Data Migration · Database Development · SQL Tuning · Mongo database · Business Intelligence (BI) · Python · Talend · Java · SQL · ETL';
//Memo2Footer.Lines.Clear;
//Memo2Footer.Lines.Add('Recommendation letter: https://bit.ly/3ITcypl');
//Memo2Footer.Lines.Add('Reason for leaving: War in Ukraine.');
//Memo2Footer.Lines.Add('========================================================');
//
//Edit3Name.Text:='BI analyst, DWH developer (remote)';
//Edit3Dates.Text:='April 2019 – March 2021';
//Edit3Company.Text:='Company Emergn (Ukraine).  Outsource Person for company Mercer (USA).';
//Memo3Resp.Lines.Clear;
//Memo3Resp.Lines.Add('Responsibilities:');
//Memo3Resp.Lines.Add('The customer of the project is the insurance company Mercer, USA.'+
//  ' Emergn is a outsourcing company based in Ukraine. My responsibilities in the project'+
//  ' - database developer and BI analyst. The goal of the project is the daily data workflows'+
//  ' from the Oracle Premise database to the Azure cloud, the Microsoft SQL database.'+
//  ' This database was a DWH, and analytical reports were run in it. Talend workflows'+
//  ' were used to transfer data and generate reports. At the initial stages, SQL queries'+
//  ' had problems with low SQL performance, they were successfully eliminated. ');
//Edit3Benefits.Text:='';
//Edit3Skills.Text:='Skills: Microsoft Azure · MS SQL Server · Oracle · Talend';
//Memo3Footer.Lines.Clear;
//Memo3Footer.Text:='========================================================';
//
//Edit4Name.Text:='Database developer';
//Edit4Dates.Text:='May 2018 – January 2019';
//Edit4Company.Text:='Company Mede Analytics (Ukraine)';
//Memo4Resp.Lines.Clear;
//Memo4Resp.Lines.Add('Responsibilities:');
//Memo4Resp.Lines.Add('Company Mede-Analytics develops software for US health insurance'+
//  ' payments. The company clients are MEDICARE, MEDICAID, about 200 companies in the USA.'+
//  ' Health insurance documents go through a full financial cycle: uploading, checking,'+
//  ' storing in a storage system, displaying financial documents and other reports on websites.'+
//  ' This cycle is based on MS SQL, SSIS and OLAP Cube (MDX) technology. I was part of the'+
//  ' development team. The team was engaged in DWH support, development of analytical reports.');
//Edit4Benefits.Text:='Skills: Microsoft Azure · MS SQL Server · Oracle · Informatica Power Center';
//Edit4Skills.Text:='';
//Memo4Footer.Lines.Clear;
//Memo4Footer.Lines.Add('========================================================');
//
//Edit5Name.Text:='IT Support Engineer (remote)';
//Edit5Dates.Text:='January 2016 – February 2018';
//Edit5Company.Text:='Company Jaspersoft (owned by Tibco USA)';
//Memo5Resp.Lines.Clear;
//Memo5Resp.Lines.Add('Responsibilities:');
//Memo5Resp.Lines.Add('Technical support for Jaspersoft Java applications - JasperReport'+
//  ' Server and ETL Talend Studio. Jaspersoft servers can work with different databases'+
//  ' with data sources from different databases - Postgres, Oracle, MS SQL, and MySQL.'+
//  ' My responsibility is to assist users in installing and configuring Jaspersoft & and'+
//  ' Talend Java applications and assist in finding and managing found errors.');
//Edit5Benefits.Text:='Benefits: These Java applications work on all platforms (Windows, Unix, MacOS)'+
//  ' and with different databases. I have gained hands-on experience with different OS'+
//  ' as well as all relational databases.';
//Edit5Skills.Text:='Skills: Jasper Reports · Talend Studio · Oracle · MS SQL · MySQL · CentOS · Ubuntu · Bash scripts';
//Memo5Footer.Lines.Clear;
//Memo5Footer.Text:='========================================================';
//
//Edit6Name.Text:='ETL database consultant';
//Edit6Dates.Text:='May 2013– April 2015';
//Edit6Company.Text:='Company Miratech (Poland)';
//Memo6Resp.Lines.Clear;
//Memo6Resp.Lines.Add('Responsibilities:');
//Memo6Resp.Lines.Add('Development of ETL workflows for Lindorff (Sweden). Data migration'+
//  ' project from Oracle DWH to Microsoft SQL. My responsibilities were to analyze,'+
//  ' create and deploy the newest requirements for DWH by using Informatica Power Center. ');
//Edit6Benefits.Text:='';
//Edit6Skills.Text:='Skills: Informatica Power Center · Microsoft SQL server · Visual Studio · SQL Management Studio.';
//Memo6Footer.Lines.Clear;
//Memo6Footer.Lines.Add('========================================================');
//
//Edit7Name.Text:='Oracle Database developer';
//Edit7Dates.Text:='May 2011– Mar 2013';
//Edit7Company.Text:='Company Luxoft (Ukraine). Technical support for European bank.';
//Memo7Resp.Lines.Clear;
//Memo7Resp.Lines.Add('Responsibilities:');
//Memo7Resp.Lines.Add('Part of the Team for supporting the huge DWH at an investment bank,'+
//  ' an Oracle database. The source code was written in Java and PL/SQL, and workflows'+
//  ' use Informatica PC. Our team supported the daily runs for workflows, we supported'+
//  ' the generation of reports for the external bank audit. The software in the banks'+
//  ' must be free of errors and failures, and therefore the entire program code was'+
//  ' checked several times, including QA automated tests.');
//Edit7Benefits.Text:='';
//Edit7Skills.Text:='Skills: Oracle · DWH · Database Development · SQL Tuning · Java · PL/SQL · Performance Tuning · Oracle SQL Developer · Informatica PowerCenter';
//Memo7Footer.Lines.Clear;
//
//Edit8Name.Text:='';
//Edit8Dates.Text:='';
//Edit8Company.Text:='';
//Memo8Resp.Lines.Clear;
//Edit8Benefits.Text:='';
//Edit8Skills.Text:='';
//Memo8Footer.Lines.Clear;
//
//Edit9Name.Text:='';
//Edit9Dates.Text:='';
//Edit9Company.Text:='';
//Edit9Benefits.Text:='';
//Edit9Skills.Text:='';
//Memo9Resp.Lines.Clear;
//Memo9Footer.Lines.Clear;
//
//Edit10Name.Text:='';
//Edit10Dates.Text:='';
//Edit10Company.Text:='';
//Edit10Benefits.Text:='';
//Edit10Skills.Text:='';
//Memo10Resp.Lines.Clear;
//Memo10Footer.Lines.Clear;
end;


procedure TFormNewResumeTranslation.BitBtnSaveClick(Sender: TObject);
begin
if CheckInsertValues
then ModalResult:=mrOK
else
  begin
    ModalResult:=mrNone;
    exit;
  end;
if SaveInsertValues
then ModalResult:=mrOK
else
  begin
    ModalResult:=mrNone;
    exit;
  end;
end;


function TFormNewResumeTranslation.ArchiveResume:boolean;
begin
try
UniDeleteResume.Close;
UniDeleteResume.ParamByName('p_name').AsString:=EditNameTR.Text;
UniDeleteResume.ParamByName('p_region_id').AsString:=ComboBoxRegionTR.Text;
UniDeleteResume.ParamByName('p_lang').AsString:=ComboBoxLangTR.Text;
UniDeleteResume.ExecSQL;

UniDeleteResume.Close;
UniDeleteResume.ParamByName('p_name').AsString:=EditNameTR.Text;
UniDeleteResume.ParamByName('p_region_id').AsString:=ComboBoxRegionTR.Text;
UniDeleteResume.ParamByName('p_lang').AsString:=ComboBoxLangTR.Text;
UniDeleteResume.ExecSQL;
except on E:Exception do
  begin
    ShowMessage('Error во время архивирования: '+E.Message);
    Result:=false;
  end;

end;

end;

function TFormNewResumeTranslation.SaveInsertResume:boolean;
begin
try
UniInsertResume.Prepare;
UniInsertResume.ParamByName('p_name').AsString:=EditNameTR.Text;
UniInsertResume.ParamByName('p_region_id').AsString:=ComboBoxRegionTR.Text;
UniInsertResume.ParamByName('p_lang').AsString:=ComboBoxLangTR.Text;
UniInsertResume.ParamByName('p_job_opportunity').AsString:=EditOpportunityTR.Text;
UniInsertResume.ParamByName('p_job_place').AsString:=EditPlaceTR.Text;
UniInsertResume.ParamByName('p_cv_docx_url').AsString:='';
UniInsertResume.ParamByName('p_cv_pdf_url').AsString:='';
UniInsertResume.ParamByName('p_phone_numbers_text').AsString:=EditPhonesTR.Text;
UniInsertResume.ParamByName('p_resume_introduction').AsString:=MemoIntroTR.Text;
UniInsertResume.ExecSQL;

except on E:Exception do
  begin
    ShowMessage('Error во время вставки: '+E.Message);
    Result:=false;
  end;
end;
end;

function TFormNewResumeTranslation.SaveInsertResumeFooter(FResumeID:integer):boolean;
begin

end;

function TFormNewResumeTranslation.SaveInsertExperience:boolean;
begin

end;

function TFormNewResumeTranslation.SaveInsertSkills:boolean;
begin

end;

function TFormNewResumeTranslation.SaveInsertValues:boolean;
var FResumeID:integer;
begin
Result:=true;
//
if not SaveInsertResume then
  begin
  FormMain.Warning('Сбой при сохранении resumes');
  Result:=false;
  exit;
  end;
UniLastInsertID.Prepare;
UniLastInsertID.ParamByName('p_name').AsString:=EditNameTR.Text;
UniLastInsertID.ExecSQL;

if VarIsNull(UniLastInsertID['id'])
then
  begin
  ShowMessage('Wrong value for resume.id : ');
  Result:=false;
  exit;
  end
else FResumeId:=UniLastInsertID['id'];

if not SaveInsertResumeFooter(FResumeID) then
  begin
  FormMain.Warning('Сбой при сохранении resume_footers');
  Result:=false;
  exit;
  end;

if not SaveInsertExperience then
  begin
  FormMain.Warning('Сбой при сохранении experiences');
  Result:=false;
  exit;
  end;
if not SaveInsertSkills then
  begin
  FormMain.Warning('Сбой при сохранении skills');
  Result:=false;
  exit;
  end;

try

if (length(Trim(EditArticle1TR.Text))>0) and (length(Trim(MemoArticle1TR.Text))>0)
then
  begin
  UniInsertResumeFooters.Prepare;
  UniInsertResumeFooters.ParamByName('p_resume_id').AsInteger:=FResumeID;
  UniInsertResumeFooters.ParamByName('p_footer_header').AsString:=Trim(EditArticle1TR.Text);
  UniInsertResumeFooters.ParamByName('p_footer_text').AsString:=Trim(MemoArticle1TR.Text);
  UniInsertResumeFooters.ParamByName('p_footer_order').AsInteger:=1;
  UniInsertResumeFooters.ExecSQL;
  end;
if (length(Trim(EditArticle2TR.Text))>0) and (length(Trim(MemoArticle2TR.Text))>0)
then
  begin
  UniInsertResumeFooters.Prepare;
  UniInsertResumeFooters.ParamByName('p_resume_id').AsInteger:=FResumeID;
  UniInsertResumeFooters.ParamByName('p_footer_header').AsString:=Trim(EditArticle2TR.Text);
  UniInsertResumeFooters.ParamByName('p_footer_text').AsString:=Trim(MemoArticle2TR.Text);
  UniInsertResumeFooters.ParamByName('p_footer_order').AsInteger:=2;
  UniInsertResumeFooters.ExecSQL;
  end;
if (length(Trim(EditArticle3TR.Text))>0) and (length(Trim(MemoArticle3TR.Text))>0)
then
  begin
  UniInsertResumeFooters.Prepare;
  UniInsertResumeFooters.ParamByName('p_resume_id').AsInteger:=FResumeID;
  UniInsertResumeFooters.ParamByName('p_footer_header').AsString:=Trim(EditArticle3TR.Text);
  UniInsertResumeFooters.ParamByName('p_footer_text').AsString:=Trim(MemoArticle3TR.Text);
  UniInsertResumeFooters.ParamByName('p_footer_order').AsInteger:=3;
  UniInsertResumeFooters.ExecSQL;
  end;
if (length(Trim(EditArticle4TR.Text))>0) and (length(Trim(MemoArticle4TR.Text))>0)
then
  begin
  UniInsertResumeFooters.Prepare;
  UniInsertResumeFooters.ParamByName('p_resume_id').AsInteger:=FResumeID;
  UniInsertResumeFooters.ParamByName('p_footer_header').AsString:=Trim(EditArticle4TR.Text);
  UniInsertResumeFooters.ParamByName('p_footer_text').AsString:=Trim(MemoArticle4TR.Text);
  UniInsertResumeFooters.ParamByName('p_footer_order').AsInteger:=4;
  UniInsertResumeFooters.ExecSQL;
  end;

///////
if length(Trim(Edit1DatesTR.Text))>0
then
  begin
  UniInsertExperiences.Prepare;
  UniInsertExperiences.ParamByName('p_resume_id').AsInteger:=FResumeID;
  UniInsertExperiences.ParamByName('p_position').AsString:=Trim(Edit1NameTR.Text);
  UniInsertExperiences.ParamByName('p_employer').AsString:=Trim(Edit1CompanyTR.Text);
  UniInsertExperiences.ParamByName('p_start_date').AsDateTime:=CalendarPickerB1TR.Date;
  UniInsertExperiences.ParamByName('p_end_date').AsDateTime:=CalendarPickerE1TR.Date;
  UniInsertExperiences.ParamByName('p_responsibilities').AsString:=Trim(Memo1RespTR.Text);
  UniInsertExperiences.ParamByName('p_benefits').AsString:=Trim(Edit1BenefitsTR.Text);
  UniInsertExperiences.ParamByName('p_leave_reason').AsString:='';
  UniInsertExperiences.ExecSQL;
  end;
///////
if length(Trim(Edit2DatesTR.Text))>0
then
  begin
  UniInsertExperiences.Prepare;
  UniInsertExperiences.ParamByName('p_resume_id').AsInteger:=FResumeID;
  UniInsertExperiences.ParamByName('p_position').AsString:=Trim(Edit2NameTR.Text);
  UniInsertExperiences.ParamByName('p_employer').AsString:=Trim(Edit2CompanyTR.Text);
  UniInsertExperiences.ParamByName('p_start_date').AsDateTime:=CalendarPickerB2TR.Date;
  UniInsertExperiences.ParamByName('p_end_date').AsDateTime:=CalendarPickerE2TR.Date;
  UniInsertExperiences.ParamByName('p_responsibilities').AsString:=Trim(Memo2RespTR.Text);
  UniInsertExperiences.ParamByName('p_benefits').AsString:=Trim(Edit2BenefitsTR.Text);
  UniInsertExperiences.ParamByName('p_leave_reason').AsString:='';
  UniInsertExperiences.ExecSQL;
  end;
///////
if length(Trim(Edit3DatesTR.Text))>0
then
  begin
  UniInsertExperiences.Prepare;
  UniInsertExperiences.ParamByName('p_resume_id').AsInteger:=FResumeID;
  UniInsertExperiences.ParamByName('p_position').AsString:=Trim(Edit3NameTR.Text);
  UniInsertExperiences.ParamByName('p_employer').AsString:=Trim(Edit3CompanyTR.Text);
  UniInsertExperiences.ParamByName('p_start_date').AsDateTime:=CalendarPickerB3TR.Date;
  UniInsertExperiences.ParamByName('p_end_date').AsDateTime:=CalendarPickerE3TR.Date;
  UniInsertExperiences.ParamByName('p_responsibilities').AsString:=Trim(Memo3RespTR.Text);
  UniInsertExperiences.ParamByName('p_benefits').AsString:=Trim(Edit3BenefitsTR.Text);
  UniInsertExperiences.ParamByName('p_leave_reason').AsString:='';
  UniInsertExperiences.ExecSQL;
  end;
///////
if length(Trim(Edit4DatesTR.Text))>0
then
  begin
  UniInsertExperiences.Prepare;
  UniInsertExperiences.ParamByName('p_resume_id').AsInteger:=FResumeID;
  UniInsertExperiences.ParamByName('p_position').AsString:=Trim(Edit4NameTR.Text);
  UniInsertExperiences.ParamByName('p_employer').AsString:=Trim(Edit4CompanyTR.Text);
  UniInsertExperiences.ParamByName('p_start_date').AsDateTime:=CalendarPickerB4TR.Date;
  UniInsertExperiences.ParamByName('p_end_date').AsDateTime:=CalendarPickerE4TR.Date;
  UniInsertExperiences.ParamByName('p_responsibilities').AsString:=Trim(Memo4RespTR.Text);
  UniInsertExperiences.ParamByName('p_benefits').AsString:=Trim(Edit4BenefitsTR.Text);
  UniInsertExperiences.ParamByName('p_leave_reason').AsString:='';
  UniInsertExperiences.ExecSQL;
  end;
///////
if length(Trim(Edit5DatesTR.Text))>0
then
  begin
  UniInsertExperiences.Prepare;
  UniInsertExperiences.ParamByName('p_resume_id').AsInteger:=FResumeID;
  UniInsertExperiences.ParamByName('p_position').AsString:=Trim(Edit5NameTR.Text);
  UniInsertExperiences.ParamByName('p_employer').AsString:=Trim(Edit5CompanyTR.Text);
  UniInsertExperiences.ParamByName('p_start_date').AsDateTime:=CalendarPickerB5TR.Date;
  UniInsertExperiences.ParamByName('p_end_date').AsDateTime:=CalendarPickerE5TR.Date;
  UniInsertExperiences.ParamByName('p_responsibilities').AsString:=Trim(Memo5RespTR.Text);
  UniInsertExperiences.ParamByName('p_benefits').AsString:=Trim(Edit5BenefitsTR.Text);
  UniInsertExperiences.ParamByName('p_leave_reason').AsString:='';
  UniInsertExperiences.ExecSQL;
  end;
///////
if length(Trim(Edit6DatesTR.Text))>0
then
  begin
  UniInsertExperiences.Prepare;
  UniInsertExperiences.ParamByName('p_resume_id').AsInteger:=FResumeID;
  UniInsertExperiences.ParamByName('p_position').AsString:=Trim(Edit6NameTR.Text);
  UniInsertExperiences.ParamByName('p_employer').AsString:=Trim(Edit6CompanyTR.Text);
  UniInsertExperiences.ParamByName('p_start_date').AsDateTime:=CalendarPickerB6TR.Date;
  UniInsertExperiences.ParamByName('p_end_date').AsDateTime:=CalendarPickerE6TR.Date;
  UniInsertExperiences.ParamByName('p_responsibilities').AsString:=Trim(Memo6RespTR.Text);
  UniInsertExperiences.ParamByName('p_benefits').AsString:=Trim(Edit6BenefitsTR.Text);
  UniInsertExperiences.ParamByName('p_leave_reason').AsString:='';
  UniInsertExperiences.ExecSQL;
  end;
///////
if length(Trim(Edit7DatesTR.Text))>0
then
  begin
  UniInsertExperiences.Prepare;
  UniInsertExperiences.ParamByName('p_resume_id').AsInteger:=FResumeID;
  UniInsertExperiences.ParamByName('p_position').AsString:=Trim(Edit7NameTR.Text);
  UniInsertExperiences.ParamByName('p_employer').AsString:=Trim(Edit7CompanyTR.Text);
  UniInsertExperiences.ParamByName('p_start_date').AsDateTime:=CalendarPickerB7TR.Date;
  UniInsertExperiences.ParamByName('p_end_date').AsDateTime:=CalendarPickerE7TR.Date;
  UniInsertExperiences.ParamByName('p_responsibilities').AsString:=Trim(Memo7RespTR.Text);
  UniInsertExperiences.ParamByName('p_benefits').AsString:=Trim(Edit7BenefitsTR.Text);
  UniInsertExperiences.ParamByName('p_leave_reason').AsString:='';
  UniInsertExperiences.ExecSQL;
  end;
///////
if length(Trim(Edit8DatesTR.Text))>0
then
  begin
  UniInsertExperiences.Prepare;
  UniInsertExperiences.ParamByName('p_resume_id').AsInteger:=FResumeID;
  UniInsertExperiences.ParamByName('p_position').AsString:=Trim(Edit8NameTR.Text);
  UniInsertExperiences.ParamByName('p_employer').AsString:=Trim(Edit8CompanyTR.Text);
  UniInsertExperiences.ParamByName('p_start_date').AsDateTime:=CalendarPickerB8TR.Date;
  UniInsertExperiences.ParamByName('p_end_date').AsDateTime:=CalendarPickerE8TR.Date;
  UniInsertExperiences.ParamByName('p_responsibilities').AsString:=Trim(Memo8RespTR.Text);
  UniInsertExperiences.ParamByName('p_benefits').AsString:=Trim(Edit8BenefitsTR.Text);
  UniInsertExperiences.ParamByName('p_leave_reason').AsString:='';
  UniInsertExperiences.ExecSQL;
  end;
///////
if length(Trim(Edit9DatesTR.Text))>0
then
  begin
  UniInsertExperiences.Prepare;
  UniInsertExperiences.ParamByName('p_resume_id').AsInteger:=FResumeID;
  UniInsertExperiences.ParamByName('p_position').AsString:=Trim(Edit9NameTR.Text);
  UniInsertExperiences.ParamByName('p_employer').AsString:=Trim(Edit9CompanyTR.Text);
  UniInsertExperiences.ParamByName('p_start_date').AsDateTime:=CalendarPickerB9TR.Date;
  UniInsertExperiences.ParamByName('p_end_date').AsDateTime:=CalendarPickerE9TR.Date;
  UniInsertExperiences.ParamByName('p_responsibilities').AsString:=Trim(Memo9RespTR.Text);
  UniInsertExperiences.ParamByName('p_benefits').AsString:=Trim(Edit9BenefitsTR.Text);
  UniInsertExperiences.ParamByName('p_leave_reason').AsString:='';
  UniInsertExperiences.ExecSQL;
  end;
///////
if length(Trim(Edit10DatesTR.Text))>0
then
  begin
  UniInsertExperiences.Prepare;
  UniInsertExperiences.ParamByName('p_resume_id').AsInteger:=FResumeID;
  UniInsertExperiences.ParamByName('p_position').AsString:=Trim(Edit10NameTR.Text);
  UniInsertExperiences.ParamByName('p_employer').AsString:=Trim(Edit10CompanyTR.Text);
  UniInsertExperiences.ParamByName('p_start_date').AsDateTime:=CalendarPickerB10TR.Date;
  UniInsertExperiences.ParamByName('p_end_date').AsDateTime:=CalendarPickerE10TR.Date;
  UniInsertExperiences.ParamByName('p_responsibilities').AsString:=Trim(Memo10RespTR.Text);
  UniInsertExperiences.ParamByName('p_benefits').AsString:=Trim(Edit10BenefitsTR.Text);
  UniInsertExperiences.ParamByName('p_leave_reason').AsString:='';
  UniInsertExperiences.ExecSQL;
  end;
/////
except on E:Exception do
  begin
    ShowMessage('Error: '+E.Message);
    Result:=false;
    //ModalResult:=mrNone;
  end;
end;
end;

function TFormNewResumeTranslation.CheckInsertValues: boolean;
var IsJob1Active, IsJob2Active, IsJob3Active, IsJob4Active, IsJob5Active,
IsJob6Active,IsJob7Active,IsJob8Active,IsJob9Active,IsJob10Active:boolean;
begin
Result:=true;
if IsEmpty(EditNameTR.Text) then
  begin
    FormMain.Warning('Пусте поле "Назва резюме"');
    Result:=false;
    exit;
  end;
if IsEmpty(EditOpportunityTR.Text) then
  begin
    FormMain.Warning('Пусте поле "Посада"');
    Result:=false;
    exit;
  end;
if IsEmpty(EditPlaceTR.Text) then
  begin
    FormMain.Warning('Пусте поле "Місце роботи"');
    Result:=false;
    exit;
  end;
if IsEmpty(EditPhonesTR.Text) then
  begin
    FormMain.Warning('Пусте поле "Телефони"');
    Result:=false;
    exit;
  end;
if IsEmpty(MemoIntroTR.Text) then
  begin
    FormMain.Warning('Пусте поле "Введення"');
    Result:=false;
    exit;
  end;
if IsEmpty(EditArticle1TR.Text) and not IsEmpty(MemoArticle1TR.Text) then
  begin
    FormMain.Warning('Пусте поле "Навички 1 - Назва"');
    Result:=false;
    exit;
  end;
if IsEmpty(MemoArticle1TR.Text) and IsEmpty(EditArticle1TR.Text) then
  begin
    FormMain.Warning('Пусте поле "Навички 1 - Текст"');
    Result:=false;
    exit;
  end;
if (length(Trim(EditArticle2TR.Text))=0) and (length(Trim(MemoArticle2TR.Text))>0) then
  begin
    FormMain.Warning('Пусте поле "Навички 2 - Назва"');
    Result:=false;
    exit;
  end;
if (length(Trim(MemoArticle2TR.Text))=0) and (length(Trim(EditArticle2TR.Text))>0)  then
  begin
    FormMain.Warning('Пусте поле "Навички 2 - Текст"');
    Result:=false;
    exit;
  end;
if (length(Trim(EditArticle3TR.Text))=0) and (length(Trim(MemoArticle3TR.Text))>0) then
  begin
    FormMain.Warning('Пусте поле "Навички 3 - Назва"');
    Result:=false;
    exit;
  end;
if (length(Trim(MemoArticle3TR.Text))=0) and (length(Trim(EditArticle3TR.Text))>0)  then
  begin
    FormMain.Warning('Пусте поле "Навички 3 - Текст"');
    Result:=false;
    exit;
  end;
if (length(Trim(EditArticle4TR.Text))=0) and (length(Trim(MemoArticle4TR.Text))>0) then
  begin
    FormMain.Warning('Пусте поле "Навички 4 - Назва"');
    Result:=false;
    exit;
  end;
if (length(Trim(MemoArticle4TR.Text))=0) and (length(Trim(EditArticle4TR.Text))>0)  then
  begin
    FormMain.Warning('Пусте поле "Навички 4 - Текст"');
    Result:=false;
    exit;
  end;
///////
IsJob1Active:= not (isEmpty(Edit1DatesTR.Text) or isEmpty(Edit1NameTR.Text)
  or IsEmpty(Edit1CompanyTR.Text) or IsEmpty(Memo1RespTR.Text) or IsEmpty(Memo1SkillsTR.Text) );

if (IsJob1Active and isEmpty(Edit1DatesTR.Text))
  then
  begin
    FormMain.Warning('Пусте поле "Дата робота 1"');
    Result:=false;
    exit;
  end;

if (IsJob1Active and isEmpty(Edit1NameTR.Text))
  then
  begin
    FormMain.Warning('Пусте поле "Назва робота 1"');
    Result:=false;
    exit;
  end;
if (IsJob1Active and isEmpty(Edit1CompanyTR.Text))
then
  begin
    FormMain.Warning('Пусте поле "Компанія робота 1"');
    Result:=false;
    exit;
  end;
if (IsJob1Active and isEmpty(Memo1RespTR.Text))
then
  begin
    FormMain.Warning('Пусте поле "Обов`язки робота 1"');
    Result:=false;
    exit;
  end;
if (IsJob1Active and isEmpty(Memo1SkillsTR.Text))
then
  begin
    FormMain.Warning('Пусте поле Скіли робота 1"');
    Result:=false;
    exit;
  end;

///////
IsJob2Active:= not (isEmpty(Edit2DatesTR.Text) or isEmpty(Edit2NameTR.Text)
  or IsEmpty(Edit2CompanyTR.Text) or IsEmpty(Memo2RespTR.Text) or IsEmpty(Memo2SkillsTR.Text) );
if (IsJob2Active and isEmpty(Edit2DatesTR.Text))
  then
  begin
    FormMain.Warning('Пусте поле "Дата робота 2"');
    Result:=false;
    exit;
  end;

if (IsJob2Active and isEmpty(Edit2NameTR.Text))
  then
  begin
    FormMain.Warning('Пусте поле "Назва робота 2"');
    Result:=false;
    exit;
  end;
if (IsJob2Active and isEmpty(Edit2CompanyTR.Text))
then
  begin
    FormMain.Warning('Пусте поле "Компанія робота 2"');
    Result:=false;
    exit;
  end;
if (IsJob2Active and isEmpty(Memo2RespTR.Text))
then
  begin
    FormMain.Warning('Пусте поле "Обов`язки робота 2"');
    Result:=false;
    exit;
  end;
if (IsJob2Active and isEmpty(Memo2SkillsTR.Text))
then
  begin
    FormMain.Warning('Пусте поле Скіли робота 2"');
    Result:=false;
    exit;
  end;
///////
IsJob3Active:= not (isEmpty(Edit3DatesTR.Text) or isEmpty(Edit3NameTR.Text)
  or IsEmpty(Edit3CompanyTR.Text) or IsEmpty(Memo3RespTR.Text) or IsEmpty(Memo3SkillsTR.Text) );
if (IsJob3Active and isEmpty(Edit3DatesTR.Text))
  then
  begin
    FormMain.Warning('Пусте поле "Дата робота 3"');
    Result:=false;
    exit;
  end;

if (IsJob3Active and isEmpty(Edit3NameTR.Text))
  then
  begin
    FormMain.Warning('Пусте поле "Назва робота 3"');
    Result:=false;
    exit;
  end;
if (IsJob3Active and isEmpty(Edit3CompanyTR.Text))
then
  begin
    FormMain.Warning('Пусте поле "Компанія робота 3"');
    Result:=false;
    exit;
  end;
if (IsJob3Active and isEmpty(Memo3RespTR.Text))
then
  begin
    FormMain.Warning('Пусте поле "Обов`язки робота 3"');
    Result:=false;
    exit;
  end;
if (IsJob3Active and isEmpty(Memo3SkillsTR.Text))
then
  begin
    FormMain.Warning('Пусте поле Скіли робота 3"');
    Result:=false;
    exit;
  end;
///////
IsJob4Active:= not (isEmpty(Edit4DatesTR.Text) or isEmpty(Edit4NameTR.Text)
  or IsEmpty(Edit4CompanyTR.Text) or IsEmpty(Memo4RespTR.Text) or IsEmpty(Memo4SkillsTR.Text) );
if (IsJob4Active and isEmpty(Edit4DatesTR.Text))
  then
  begin
    FormMain.Warning('Пусте поле "Дата робота 4"');
    Result:=false;
    exit;
  end;

if (IsJob4Active and isEmpty(Edit4NameTR.Text))
  then
  begin
    FormMain.Warning('Пусте поле "Назва робота 4"');
    Result:=false;
    exit;
  end;
if (IsJob4Active and isEmpty(Edit4CompanyTR.Text))
then
  begin
    FormMain.Warning('Пусте поле "Компанія робота 4"');
    Result:=false;
    exit;
  end;
if (IsJob4Active and isEmpty(Memo4RespTR.Text))
then
  begin
    FormMain.Warning('Пусте поле "Обов`язки робота 4"');
    Result:=false;
    exit;
  end;
if (IsJob4Active and isEmpty(Memo4SkillsTR.Text))
then
  begin
    FormMain.Warning('Пусте поле Скіли робота 4"');
    Result:=false;
    exit;
  end;
///////
IsJob5Active:= not (isEmpty(Edit5DatesTR.Text) or isEmpty(Edit5NameTR.Text)
  or IsEmpty(Edit5CompanyTR.Text) or IsEmpty(Memo5RespTR.Text) or IsEmpty(Memo5SkillsTR.Text) );
if (IsJob5Active and isEmpty(Edit5DatesTR.Text))
  then
  begin
    FormMain.Warning('Пусте поле "Дата робота 5"');
    Result:=false;
    exit;
  end;

if (IsJob5Active and isEmpty(Edit5NameTR.Text))
  then
  begin
    FormMain.Warning('Пусте поле "Назва робота 5"');
    Result:=false;
    exit;
  end;
if (IsJob5Active and isEmpty(Edit5CompanyTR.Text))
then
  begin
    FormMain.Warning('Пусте поле "Компанія робота 5"');
    Result:=false;
    exit;
  end;
if (IsJob5Active and isEmpty(Memo5RespTR.Text))
then
  begin
    FormMain.Warning('Пусте поле "Обов`язки робота 5"');
    Result:=false;
    exit;
  end;
if (IsJob5Active and isEmpty(Memo5SkillsTR.Text))
then
  begin
    FormMain.Warning('Пусте поле Скіли робота 5"');
    Result:=false;
    exit;
  end;
///////
IsJob6Active:= not (isEmpty(Edit6DatesTR.Text) or isEmpty(Edit6NameTR.Text)
  or IsEmpty(Edit6CompanyTR.Text) or IsEmpty(Memo6RespTR.Text) or IsEmpty(Memo6SkillsTR.Text) );
if (IsJob6Active and isEmpty(Edit6DatesTR.Text))
  then
  begin
    FormMain.Warning('Пусте поле "Дата робота 6"');
    Result:=false;
    exit;
  end;

if (IsJob6Active and isEmpty(Edit6NameTR.Text))
  then
  begin
    FormMain.Warning('Пусте поле "Назва робота 6"');
    Result:=false;
    exit;
  end;
if (IsJob6Active and isEmpty(Edit6CompanyTR.Text))
then
  begin
    FormMain.Warning('Пусте поле "Компанія робота 6"');
    Result:=false;
    exit;
  end;
if (IsJob6Active and isEmpty(Memo6RespTR.Text))
then
  begin
    FormMain.Warning('Пусте поле "Обов`язки робота 6"');
    Result:=false;
    exit;
  end;
if (IsJob6Active and isEmpty(Memo6SkillsTR.Text))
then
  begin
    FormMain.Warning('Пусте поле Скіли робота 6"');
    Result:=false;
    exit;
  end;
///////
IsJob7Active:= not (isEmpty(Edit7DatesTR.Text) or isEmpty(Edit7NameTR.Text)
  or IsEmpty(Edit7CompanyTR.Text) or IsEmpty(Memo7RespTR.Text) or IsEmpty(Memo7SkillsTR.Text) );
if (IsJob7Active and isEmpty(Edit7DatesTR.Text))
  then
  begin
    FormMain.Warning('Пусте поле "Дата робота 7"');
    Result:=false;
    exit;
  end;

if (IsJob7Active and isEmpty(Edit7NameTR.Text))
  then
  begin
    FormMain.Warning('Пусте поле "Назва робота 7"');
    Result:=false;
    exit;
  end;
if (IsJob7Active and isEmpty(Edit7CompanyTR.Text))
then
  begin
    FormMain.Warning('Пусте поле "Компанія робота 7"');
    Result:=false;
    exit;
  end;
if (IsJob7Active and isEmpty(Memo7RespTR.Text))
then
  begin
    FormMain.Warning('Пусте поле "Обов`язки робота 7"');
    Result:=false;
    exit;
  end;
if (IsJob7Active and isEmpty(Memo7SkillsTR.Text))
then
  begin
    FormMain.Warning('Пусте поле Скіли робота 7"');
    Result:=false;
    exit;
  end;
///////
IsJob8Active:= not (isEmpty(Edit8DatesTR.Text) or isEmpty(Edit8NameTR.Text)
  or IsEmpty(Edit8CompanyTR.Text) or IsEmpty(Memo8RespTR.Text) or IsEmpty(Memo8SkillsTR.Text) );
if (IsJob8Active and isEmpty(Edit8DatesTR.Text))
  then
  begin
    FormMain.Warning('Пусте поле "Дата робота 8"');
    Result:=false;
    exit;
  end;

if (IsJob8Active and isEmpty(Edit8NameTR.Text))
  then
  begin
    FormMain.Warning('Пусте поле "Назва робота 8"');
    Result:=false;
    exit;
  end;
if (IsJob8Active and isEmpty(Edit8CompanyTR.Text))
then
  begin
    FormMain.Warning('Пусте поле "Компанія робота 8"');
    Result:=false;
    exit;
  end;
if (IsJob8Active and isEmpty(Memo8RespTR.Text))
then
  begin
    FormMain.Warning('Пусте поле "Обов`язки робота 8"');
    Result:=false;
    exit;
  end;
if (IsJob8Active and isEmpty(Memo8SkillsTR.Text))
then
  begin
    FormMain.Warning('Пусте поле Скіли робота 8"');
    Result:=false;
    exit;
  end;
///////
IsJob9Active:= not (isEmpty(Edit9DatesTR.Text) or isEmpty(Edit9NameTR.Text)
  or IsEmpty(Edit9CompanyTR.Text) or IsEmpty(Memo9RespTR.Text) or IsEmpty(Memo9SkillsTR.Text) );
if (IsJob9Active and isEmpty(Edit9DatesTR.Text))
  then
  begin
    FormMain.Warning('Пусте поле "Дата робота 9"');
    Result:=false;
    exit;
  end;

if (IsJob9Active and isEmpty(Edit9NameTR.Text))
  then
  begin
    FormMain.Warning('Пусте поле "Назва робота 9"');
    Result:=false;
    exit;
  end;
if (IsJob9Active and isEmpty(Edit9CompanyTR.Text))
then
  begin
    FormMain.Warning('Пусте поле "Компанія робота 9"');
    Result:=false;
    exit;
  end;
if (IsJob9Active and isEmpty(Memo9RespTR.Text))
then
  begin
    FormMain.Warning('Пусте поле "Обов`язки робота 9"');
    Result:=false;
    exit;
  end;
if (IsJob9Active and isEmpty(Memo9SkillsTR.Text))
then
  begin
    FormMain.Warning('Пусте поле Скіли робота 9"');
    Result:=false;
    exit;
  end;
///////
IsJob10Active:= not (isEmpty(Edit10DatesTR.Text) or isEmpty(Edit10NameTR.Text)
  or IsEmpty(Edit10CompanyTR.Text) or IsEmpty(Memo10RespTR.Text) or IsEmpty(Memo10SkillsTR.Text) );
if (IsJob10Active and isEmpty(Edit10DatesTR.Text))
  then
  begin
    FormMain.Warning('Пусте поле "Дата робота 10"');
    Result:=false;
    exit;
  end;

if (IsJob10Active and isEmpty(Edit10NameTR.Text))
  then
  begin
    FormMain.Warning('Пусте поле "Назва робота 10"');
    Result:=false;
    exit;
  end;
if (IsJob10Active and isEmpty(Edit10CompanyTR.Text))
then
  begin
    FormMain.Warning('Пусте поле "Компанія робота 10"');
    Result:=false;
    exit;
  end;
if (IsJob10Active and isEmpty(Memo10RespTR.Text))
then
  begin
    FormMain.Warning('Пусте поле "Обов`язки робота 10"');
    Result:=false;
    exit;
  end;
if (IsJob10Active and isEmpty(Memo10SkillsTR.Text))
then
  begin
    FormMain.Warning('Пусте поле Скіли робота 10"');
    Result:=false;
    exit;
  end;
end;

procedure TFormNewResumeTranslation.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key=VK_F2 then BitBtnSave.Click;
end;

procedure TFormNewResumeTranslation.SetEmptyResume;
begin
EditNameTR.Clear;
EditOpportunityTR.Clear;
EditPlaceTR.Text:='Віддалена (за кордоном)';
EditPhonesTR.Text:='+380 (93)1775176 (WhatsApp, Viber)';
MemoIntroTR.Clear;
ComboBoxLangTR.Text:='UA';
ComboBoxRegionTR.Text:='Ukraine';

EditArticle1TR.Text:='';
MemoArticle1TR.Text:='';
EditArticle2TR.Text:='';
MemoArticle2TR.Text:='';
EditArticle3TR.Text:='';
MemoArticle3TR.Text:='';
EditArticle4TR.Text:='';
MemoArticle4TR.Text:='';

Edit1DatesTR.Text:='';
Edit1NameTR.Text:='';
Edit1CompanyTR.Text:='';
Memo1RespTR.Text:='';
Edit1BenefitsTR.Text:='';
Edit1BottomTR.Text:='';
Memo1SkillsTR.Text:='';

Edit2DatesTR.Text:='';
Edit2NameTR.Text:='';
Edit2CompanyTR.Text:='';
Memo2RespTR.Text:='';
Edit2BenefitsTR.Text:='';
Edit2BottomTR.Text:='';
Memo2SkillsTR.Text:='';

Edit3DatesTR.Text:='';
Edit3NameTR.Text:='';
Edit3CompanyTR.Text:='';
Memo3RespTR.Text:='';
Edit3BenefitsTR.Text:='';
Edit3BottomTR.Text:='';
Memo3SkillsTR.Text:='';

Edit4DatesTR.Text:='';
Edit4NameTR.Text:='';
Edit4CompanyTR.Text:='';
Memo4RespTR.Text:='';
Edit4BenefitsTR.Text:='';
Edit4BottomTR.Text:='';
Memo4SkillsTR.Text:='';

Edit5DatesTR.Text:='';
Edit5NameTR.Text:='';
Edit5CompanyTR.Text:='';
Memo5RespTR.Text:='';
Edit5BenefitsTR.Text:='';
Edit5BottomTR.Text:='';
Memo5SkillsTR.Text:='';

Edit6DatesTR.Text:='';
Edit6NameTR.Text:='';
Edit6CompanyTR.Text:='';
Memo6RespTR.Text:='';
Edit6BenefitsTR.Text:='';
Edit6BottomTR.Text:='';
Memo6SkillsTR.Text:='';

Edit7DatesTR.Text:='';
Edit7NameTR.Text:='';
Edit7CompanyTR.Text:='';
Memo7RespTR.Text:='';
Edit7BenefitsTR.Text:='';
Edit7BottomTR.Text:='';
Memo7SkillsTR.Text:='';

Edit8DatesTR.Text:='';
Edit8NameTR.Text:='';
Edit8CompanyTR.Text:='';
Memo8RespTR.Text:='';
Edit8BenefitsTR.Text:='';
Edit8BottomTR.Text:='';
Memo8SkillsTR.Text:='';

Edit9DatesTR.Text:='';
Edit9NameTR.Text:='';
Edit9CompanyTR.Text:='';
Memo9RespTR.Text:='';
Edit9BenefitsTR.Text:='';
Edit9BottomTR.Text:='';
Memo9SkillsTR.Text:='';

Edit10DatesTR.Text:='';
Edit10NameTR.Text:='';
Edit10CompanyTR.Text:='';
Memo10RespTR.Text:='';
Edit10BenefitsTR.Text:='';
Edit10BottomTR.Text:='';
Memo10SkillsTR.Text:='';
end;

procedure TFormNewResumeTranslation.SetValuesFromTemplate(TemplateID:integer);
begin
if TemplateID<=0 then SetEmptyResume;
if TemplateID>0 then
  begin
    UniGetTemplate.Close;
    UniGetTemplate.ParamByName('p_id').AsInteger:=TemplateID;
    UniGetTemplate.Open;
    if VarIsNull(UniGetTemplate['id'])
      then SetEmptyResume
    else
      begin
      if VarIsNull(UniGetTemplate['name'])
        then EditNameUA.Text:=''
        else EditNameUA.Text:=UniGetTemplate['name'];
      if VarIsNull(UniGetTemplate['job_opportunity'])
        then EditOpportunityUA.Text:=''
        else EditOpportunityUA.Text:=UniGetTemplate['job_opportunity'];
      if VarIsNull(UniGetTemplate['job_place'])
        then EditPlaceUA.Text:=''
        else EditPlaceUA.Text:=UniGetTemplate['job_place'];
      if VarIsNull(UniGetTemplate['phone_numbers_text'])
        then EditPhonesUA.Text:=''
        else EditPhonesUA.Text:=UniGetTemplate['phone_numbers_text'];
      if VarIsNull(UniGetTemplate['resume_introduction'])
        then MemoIntroUA.Text:=''
        else MemoIntroUA.Text:=UniGetTemplate['resume_introduction'];
      end;
  end;
end;


procedure TFormNewResumeTranslation.CalendarPickerB1TRChange(Sender: TObject);
var FullMBYear, ShortMBYear, FullMEYear, ShortMEYear:string;
begin
GetMonthRegionByMask(CalendarPickerB1TR.Date, 'EN', FullMBYear, ShortMBYear);
GetMonthRegionByMask(CalendarPickerE1TR.Date, 'EN', FullMEYear, ShortMEYear);
Edit1DatesUA.Text:=FullMBYear+'-'+FullMEYear;
end;


procedure TFormNewResumeTranslation.CalendarPickerE10TRChange(Sender: TObject);
var FullMBYear, ShortMBYear, FullMEYear, ShortMEYear:string;
begin
GetMonthRegionByMask(CalendarPickerB10TR.Date, 'EN', FullMBYear, ShortMBYear);
GetMonthRegionByMask(CalendarPickerE10TR.Date, 'EN', FullMEYear, ShortMEYear);
Edit10DatesUA.Text:=FullMBYear+'-'+FullMEYear;
end;

procedure TFormNewResumeTranslation.CalendarPickerE1TRChange(Sender: TObject);
var FullMBYear, ShortMBYear, FullMEYear, ShortMEYear:string;
begin
GetMonthRegionByMask(CalendarPickerB1TR.Date, 'EN', FullMBYear, ShortMBYear);
GetMonthRegionByMask(CalendarPickerE1TR.Date, 'EN', FullMEYear, ShortMEYear);
Edit1DatesUA.Text:=FullMBYear+'-'+FullMEYear;
end;

procedure TFormNewResumeTranslation.CalendarPickerE2TRChange(Sender: TObject);
var FullMBYear, ShortMBYear, FullMEYear, ShortMEYear:string;
begin
GetMonthRegionByMask(CalendarPickerB2TR.Date, 'EN', FullMBYear, ShortMBYear);
GetMonthRegionByMask(CalendarPickerE2TR.Date, 'EN', FullMEYear, ShortMEYear);
Edit2DatesUA.Text:=FullMBYear+'-'+FullMEYear;
end;

procedure TFormNewResumeTranslation.CalendarPickerE3TRChange(Sender: TObject);
var FullMBYear, ShortMBYear, FullMEYear, ShortMEYear:string;
begin
GetMonthRegionByMask(CalendarPickerB3TR.Date, 'EN', FullMBYear, ShortMBYear);
GetMonthRegionByMask(CalendarPickerE3TR.Date, 'EN', FullMEYear, ShortMEYear);
Edit3DatesUA.Text:=FullMBYear+'-'+FullMEYear;
end;

procedure TFormNewResumeTranslation.CalendarPickerE4TRChange(Sender: TObject);
var FullMBYear, ShortMBYear, FullMEYear, ShortMEYear:string;
begin
GetMonthRegionByMask(CalendarPickerB4TR.Date, 'EN', FullMBYear, ShortMBYear);
GetMonthRegionByMask(CalendarPickerE4TR.Date, 'EN', FullMEYear, ShortMEYear);
Edit4DatesUA.Text:=FullMBYear+'-'+FullMEYear;
end;

procedure TFormNewResumeTranslation.CalendarPickerE5TRChange(Sender: TObject);
var FullMBYear, ShortMBYear, FullMEYear, ShortMEYear:string;
begin
GetMonthRegionByMask(CalendarPickerB5TR.Date, 'EN', FullMBYear, ShortMBYear);
GetMonthRegionByMask(CalendarPickerE5TR.Date, 'EN', FullMEYear, ShortMEYear);
Edit5DatesUA.Text:=FullMBYear+'-'+FullMEYear;
end;


procedure TFormNewResumeTranslation.CalendarPickerE6TRChange(Sender: TObject);
var FullMBYear, ShortMBYear, FullMEYear, ShortMEYear:string;
begin
GetMonthRegionByMask(CalendarPickerB6TR.Date, 'EN', FullMBYear, ShortMBYear);
GetMonthRegionByMask(CalendarPickerE6TR.Date, 'EN', FullMEYear, ShortMEYear);
Edit6DatesUA.Text:=FullMBYear+'-'+FullMEYear;
end;


procedure TFormNewResumeTranslation.CalendarPickerE7TRChange(Sender: TObject);
var FullMBYear, ShortMBYear, FullMEYear, ShortMEYear:string;
begin
GetMonthRegionByMask(CalendarPickerB7TR.Date, 'EN', FullMBYear, ShortMBYear);
GetMonthRegionByMask(CalendarPickerE7TR.Date, 'EN', FullMEYear, ShortMEYear);
Edit7DatesUA.Text:=FullMBYear+'-'+FullMEYear;
end;


procedure TFormNewResumeTranslation.CalendarPickerE8TRChange(Sender: TObject);
var FullMBYear, ShortMBYear, FullMEYear, ShortMEYear:string;
begin
GetMonthRegionByMask(CalendarPickerB8TR.Date, 'EN', FullMBYear, ShortMBYear);
GetMonthRegionByMask(CalendarPickerE8TR.Date, 'EN', FullMEYear, ShortMEYear);
Edit8DatesUA.Text:=FullMBYear+'-'+FullMEYear;
end;

procedure TFormNewResumeTranslation.CalendarPickerE9TRChange(Sender: TObject);
var FullMBYear, ShortMBYear, FullMEYear, ShortMEYear:string;
begin
GetMonthRegionByMask(CalendarPickerB9TR.Date, 'EN', FullMBYear, ShortMBYear);
GetMonthRegionByMask(CalendarPickerE9TR.Date, 'EN', FullMEYear, ShortMEYear);
Edit9DatesUA.Text:=FullMBYear+'-'+FullMEYear;
end;

end.
