﻿unit NewResumeTranslation;

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
    UniArchiveResume: TUniQuery;
    UniArchiveFooters: TUniQuery;
    UniArchiveJobs: TUniQuery;
    UniArchiveSkills: TUniQuery;
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
  private
    ComboBoxLang_First_Value, ComboBoxRegion_First_Value:string;
//    ResumeIDTR, ResumeFooterIDTR:integer;
    FootersAreActive:array[1..4] of boolean;
    JobsAreActive:array[1..10] of boolean;
    procedure SetComboBoxLanguages;
    procedure SetComboBoxRegions;
    procedure GetMonthRegionByMask(const D: TDatetime; Region:string; var FullMonthYear, ShortMonthYear:string );
//    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    function  IsEmpty(const S: String): boolean;
    procedure SetEmptyResume;
    procedure SetJobsValues(FResumeID: integer);
    procedure SetFooterValues(FResumeID:integer);
    function  CheckValues:boolean;
    function SaveValues:boolean;
    function SaveResume: boolean;
    function SaveFooters(const FResumeID:integer; const FFooterHeader,FFooterText:string; const FFooterOrder:integer ):boolean;
    function SaveJobs(const FResumeID:integer; const FJobPosition:string;
               const FStartDate, FEndDate:TDate; FEmployer, FResponsibilities, FBenefits, FLeaveReason:string;
               var FExperienceID:integer): boolean;
    function SaveSkillLists(const FExperienceID:integer; const FSkillsList:TStrings):boolean;
    function SaveSkill(const FSkill: string; var FSkillID:integer): boolean;
    function SaveSkillShowList(const FSkillID, FExperienceID: integer): boolean;
    function ArchiveResume(const FResumeName, FLang:string):boolean;
    function ArchiveFooters(FResumeID:integer):boolean;
    function ArchiveJobs(FResumeID:integer): boolean;
    function ArchiveSkills(FJobID:integer):boolean;
    procedure SetEmptyResumeTR;
    procedure SetEmptyResumeUA;
    procedure SetEmptyFooterTR;
    procedure SetEmptyFooterUA;
    procedure SetEmptyJobsTR;
    procedure SetEmptyJobsUA;
    procedure SetEmptySkillsTR;
    procedure SetEmptySkillsUA;
    procedure ChangeDates1;
    procedure ChangeDates2;
    procedure ChangeDates10;
    procedure ChangeDates3;
    procedure ChangeDates4;
    procedure ChangeDates5;
    procedure ChangeDates6;
    procedure ChangeDates7;
    procedure ChangeDates8;
    procedure ChangeDates9;
  public
    UniInsertFooters: TUniQuery;
    UniInsertJobs: TUniQuery;
    UniInsertResume: TUniQuery;
    UniLastInsertID: TUniQuery;
    UniLastInsertIDID: TIntegerField;
    procedure SetEmptyTR;
    procedure SetEmptyUA;
    procedure SetFormValues;
    procedure GetValuesFromResume(Resumeid: integer);
    procedure GetValuesFromTemplate(TemplateId: integer);
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
var i:integer;
begin
PageControlUA.ActivePage:=TabSheetMainUA;
PageControlTR.ActivePage:=TabSheetMainTR;
ComboBoxLangTR.Text:='UA';
ComboBoxRegionTR.Text:='Ukraine';
for i:=1 to 4 do FootersAreActive[i]:=false;
for i:=1 to 10 do JobsAreActive[i]:=false;
end;

procedure TFormNewResumeTranslation.FormCreate(Sender: TObject);
begin
PageControlTR.ActivePage:=TabSheetMainTR;
SetComboBoxLanguages;
SetComboBoxRegions;
end;

procedure TFormNewResumeTranslation.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key=VK_F2 then BitBtnSave.Click;
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
end;


procedure TFormNewResumeTranslation.SetEmptyResumeUA;
begin
EditNameUA.Clear;
EditOpportunityUA.Clear;
EditPlaceUA.Clear;
EditPhonesUA.Clear;
MemoIntroUA.Clear;
EditLangUA.Text:='UA';
EditRegionUA.Text:='Ukraine';
end;

procedure TFormNewResumeTranslation.SetEmptySkillsTR;
begin
Memo1SkillsTR.Text:='';
Memo2SkillsTR.Text:='';
Memo3SkillsTR.Text:='';
Memo4SkillsTR.Text:='';
Memo5SkillsTR.Text:='';
Memo6SkillsTR.Text:='';
Memo7SkillsTR.Text:='';
Memo8SkillsTR.Text:='';
Memo9SkillsTR.Text:='';
Memo10SkillsTR.Text:='';
end;

procedure TFormNewResumeTranslation.SetEmptySkillsUA;
begin
Memo1SkillsUA.Text:='';
Memo2SkillsUA.Text:='';
Memo3SkillsUA.Text:='';
Memo4SkillsUA.Text:='';
Memo5SkillsUA.Text:='';
Memo6SkillsUA.Text:='';
Memo7SkillsUA.Text:='';
Memo8SkillsUA.Text:='';
Memo9SkillsUA.Text:='';
Memo10SkillsUA.Text:='';
end;

procedure TFormNewResumeTranslation.SetEmptyTR;
begin
SetEmptyResumeTR;
SetEmptyFooterTR;
SetEmptyJobsTR;
SetEmptySkillsTR;
end;

procedure TFormNewResumeTranslation.SetEmptyUA;
begin
SetEmptyResumeUA;
SetEmptyFooterUA;
SetEmptySkillsUA;
SetEmptyJobsUA;
end;

procedure TFormNewResumeTranslation.GetValuesFromResume(ResumeId:integer);
begin
ComboBoxLangTR.Text:=ComboBoxLang_First_Value;
ComboBoxRegionTR.Text:=ComboBoxRegion_First_Value;
SetEmptyResumeTR;
if ResumeID<=0 then SetEmptyResumeUA;
if ResumeID>0 then
  begin
//    ShowMessage(IntToStr(resume_id));
    UniGetResume.Close;
    UniGetResume.ParamByName('p_id').AsInteger:=ResumeID;
    UniGetResume.ParamByName('p_lang').AsString:='UA';//ComboBoxLangTR.Text;
    UniGetResume.Open;
    if VarIsNull(UniGetResume['id'])
      then SetEmptyResumeUA
    else
      begin
//      resume_id:=-1;
//      resume_footer_id:=-1;
      if VarIsNull(UniGetResume['name'])
        then EditNameUA.Text:=''
        else EditNameUA.Text:=UniGetResume['name'];
      if VarIsNull(UniGetResume['job_opportunity'])
        then EditOpportunityUA.Text:=''
        else EditOpportunityUA.Text:=UniGetResume['job_opportunity'];
      if VarIsNull(UniGetResume['job_place'])
        then EditPlaceUA.Text:=''
        else EditPlaceUA.Text:=UniGetResume['job_place'];
      if VarIsNull(UniGetResume['phone_numbers_text'])
        then EditPhonesUA.Text:=''
        else EditPhonesUA.Text:=UniGetResume['phone_numbers_text'];
      if VarIsNull(UniGetResume['resume_introduction'])
        then MemoIntroUA.Text:=''
        else MemoIntroUA.Text:=UniGetResume['resume_introduction'];
      end;
      SetFooterValues(ResumeID);
      SetJobsValues(ResumeID);
  end;
end;

procedure TFormNewResumeTranslation.SetFooterValues(FResumeID:integer);
var ResumeFooterID:integer;
begin
UniGetFooters.Close;
UniGetFooters.ParamByName('p_resume_id').AsInteger:=FResumeID;
UniGetFooters.ParamByName('p_lang').AsString:='UA';
UniGetFooters.Open;
if VarIsNull(UniGetFooters['id'])
then
  begin
  FormMain.Warning('Resumeid не установлено - Query UniGetUAResumeFooters вернул null');
          LabelFooterID.Caption:='# N/A';
          end
        else
          begin
          ResumeFooterID:=UniGetFooters['id'];
          LabelFooterID.Caption:=IntToStr(ResumeFooterID);
          end;
      if VarIsNull(UniGetFooters['resume_id'])
        then
          begin
          FormMain.Warning('ResumeFooterID не установлено - Query UniGetUAResumeFooters вернул null');
          LabelFooterID.Caption:=LabelFooterID.Caption+' '+'resume_id= N/A';
          end
        else
          begin
          LabelFooterID.Caption:=LabelFooterID.Caption+' resume_id = '+IntToStr(FResumeID);
          end;
      while not UniGetFooters.Eof do
        begin
        if UniGetFooters['footer_order'] = 1 then
          begin
          if VarIsNull(UniGetFooters['footer_header'])
            then EditArticle1UA.Text:=''
            else EditArticle1UA.Text:=UniGetFooters['footer_header'];
          if VarIsNull(UniGetFooters['footer_text'])
            then MemoArticle1UA.Text:=''
            else MemoArticle1UA.Text:=UniGetFooters['footer_text'];
          end;
        if UniGetFooters['footer_order'] = 2 then
          begin
          if VarIsNull(UniGetFooters['footer_header'])
          then EditArticle2UA.Text:=''
          else EditArticle2UA.Text:=UniGetFooters['footer_header'];
          if VarIsNull(UniGetFooters['footer_text'])
          then MemoArticle2UA.Text:=''
          else MemoArticle2UA.Text:=UniGetFooters['footer_text'];
          end;
        if UniGetFooters['footer_order'] = 3 then
          begin
          if VarIsNull(UniGetFooters['footer_header'])
          then EditArticle3UA.Text:=''
          else EditArticle3UA.Text:=UniGetFooters['footer_header'];
          if VarIsNull(UniGetFooters['footer_text'])
          then MemoArticle3UA.Text:=''
          else MemoArticle3UA.Text:=UniGetFooters['footer_text'];
          end;
        if UniGetFooters['footer_order'] = 4 then
          begin
          if VarIsNull(UniGetFooters['footer_header'])
          then EditArticle4UA.Text:=''
          else EditArticle4UA.Text:=UniGetFooters['footer_header'];
          if VarIsNull(UniGetFooters['footer_text'])
          then MemoArticle4UA.Text:=''
          else MemoArticle4UA.Text:=UniGetFooters['footer_text'];
          end;
        UniGetFooters.Next;
        end;
end;

procedure TFormNewResumeTranslation.SetJobsValues(FResumeID:integer);
var FullMonthYearStart, ShortMonthYearStart, FullMonthYearEnd, ShortMonthYearEnd:string;
begin
UniGetJobs.Prepare;
UniGetJobs.ParamByName('p_resume_id').AsInteger:=FResumeID;
UniGetJobs.Open;
while not UniGetJobs.Eof do
  begin
  case UniGetJobs['order_position'] of
  1:begin
    GetMonthRegionByMask(UniGetJobs['start_date'], 'UA', FullMonthYearStart, ShortMonthYearStart);
    if VarIsNull(UniGetJobs['end_date']) then Edit1DatesUA.Text:=FullMonthYearStart+'- Now'
    else
        begin
        GetMonthRegionByMask(UniGetJobs['end_date'], 'UA', FullMonthYearEnd, ShortMonthYearEnd);
        Edit1DatesUA.Text:=FullMonthYearStart+'-'+FullMonthYearEnd;
        end;
    Edit1NameUA.Text:=UniGetJobs['job_position'];
    Memo1RespUA.Text:=UniGetJobs['responsibilities'];
    Edit1CompanyUA.Text:=UniGetJobs['employer'];
    Edit1BenefitsUA.Text:=UniGetJobs['benefits'];
    Edit1BottomUA.Text:=UniGetJobs['leave_reason'];
    UniGetSkills.Prepare;
    UniGetSkills.ParamByName('p_experience_id').AsInteger:=UniGetJobs['id'];
    UniGetSkills.Open;
    Memo1SkillsUA.Clear;
    while not UniGetSkills.EOF do
      begin
        Memo1SkillsUA.Lines.Add(UniGetSkills['skill']+' - '+UniGetSkills['category']);
        UniGetSkills.Next;
      end;
    end;
  2:begin
    GetMonthRegionByMask(UniGetJobs['start_date'], 'UA', FullMonthYearStart, ShortMonthYearStart);
    if VarIsNull(UniGetJobs['end_date']) then Edit2DatesUA.Text:=FullMonthYearStart+'- Now'
    else
      begin
       GetMonthRegionByMask(UniGetJobs['end_date'], 'UA', FullMonthYearEnd, ShortMonthYearEnd);
        Edit1DatesUA.Text:=FullMonthYearStart+'-'+FullMonthYearEnd;
      end;
    Edit2NameUA.Text:=UniGetJobs['job_position'];
    Memo2RespUA.Text:=UniGetJobs['responsibilities'];
    Edit2CompanyUA.Text:=UniGetJobs['employer'];
    Edit2BenefitsUA.Text:=UniGetJobs['benefits'];
    Edit2BottomUA.Text:=UniGetJobs['leave_reason'];
    UniGetSkills.Prepare;
    UniGetSkills.ParamByName('p_experience_id').AsInteger:=UniGetJobs['id'];
    UniGetSkills.Open;
    Memo2SkillsUA.Clear;
    while not UniGetSkills.EOF do
      begin
        Memo2SkillsUA.Lines.Add(UniGetSkills['skill']+' - '+UniGetSkills['category']);
        UniGetSkills.Next;
      end;
    end;
  3:begin
    GetMonthRegionByMask(UniGetJobs['start_date'], 'UA', FullMonthYearStart, ShortMonthYearStart);
    if VarIsNull(UniGetJobs['end_date']) then Edit3DatesUA.Text:=FullMonthYearStart+'- Now'
    else
      begin
        GetMonthRegionByMask(UniGetJobs['end_date'], 'UA', FullMonthYearEnd, ShortMonthYearEnd);
        Edit3DatesUA.Text:=FullMonthYearStart+'-'+FullMonthYearEnd;
      end;
    Edit3NameUA.Text:=UniGetJobs['job_position'];
    Memo3RespUA.Text:=UniGetJobs['responsibilities'];
    Edit3CompanyUA.Text:=UniGetJobs['employer'];
    Edit3BenefitsUA.Text:=UniGetJobs['benefits'];
    Edit3BottomUA.Text:=UniGetJobs['leave_reason'];
    UniGetSkills.Prepare;
    UniGetSkills.ParamByName('p_experience_id').AsInteger:=UniGetJobs['id'];
    UniGetSkills.Open;
    Memo3SkillsUA.Clear;
    while not UniGetSkills.EOF do
      begin
        Memo3SkillsUA.Lines.Add(UniGetSkills['skill']+' - '+UniGetSkills['category']);
        UniGetSkills.Next;
      end;
    end;
  4:begin
    GetMonthRegionByMask(UniGetJobs['start_date'], 'UA', FullMonthYearStart, ShortMonthYearStart);
    if VarIsNull(UniGetJobs['end_date']) then Edit4DatesUA.Text:=FullMonthYearStart+'- Now'
    else
      begin
      GetMonthRegionByMask(UniGetJobs['end_date'], 'UA', FullMonthYearEnd, ShortMonthYearEnd);
      Edit4DatesUA.Text:=FullMonthYearStart+'-'+FullMonthYearEnd;
      end;
    Edit4NameUA.Text:=UniGetJobs['job_position'];
    Memo4RespUA.Text:=UniGetJobs['responsibilities'];
    Edit4CompanyUA.Text:=UniGetJobs['employer'];
    Edit4BenefitsUA.Text:=UniGetJobs['benefits'];
    Edit4BottomUA.Text:=UniGetJobs['leave_reason'];
    UniGetSkills.Prepare;
    UniGetSkills.ParamByName('p_experience_id').AsInteger:=UniGetJobs['id'];
    UniGetSkills.Open;
    Memo4SkillsUA.Clear;
    while not UniGetSkills.EOF do
      begin
        Memo4SkillsUA.Lines.Add(UniGetSkills['skill']+' - '+UniGetSkills['category']);
        UniGetSkills.Next;
      end;
    end;
  5:begin
    GetMonthRegionByMask(UniGetJobs['start_date'], 'UA', FullMonthYearStart, ShortMonthYearStart);
    if VarIsNull(UniGetJobs['end_date']) then Edit5DatesUA.Text:=FullMonthYearStart+'- Now'
    else
      begin
        GetMonthRegionByMask(UniGetJobs['end_date'], 'UA', FullMonthYearEnd, ShortMonthYearEnd);
        Edit5DatesUA.Text:=FullMonthYearStart+'-'+FullMonthYearEnd;
      end;
    Edit5NameUA.Text:=UniGetJobs['job_position'];
    Memo5RespUA.Text:=UniGetJobs['responsibilities'];
    Edit5CompanyUA.Text:=UniGetJobs['employer'];
    Edit5BenefitsUA.Text:=UniGetJobs['benefits'];
    Edit5BottomUA.Text:=UniGetJobs['leave_reason'];
    UniGetSkills.Prepare;
    UniGetSkills.ParamByName('p_experience_id').AsInteger:=UniGetJobs['id'];
    UniGetSkills.Open;
    Memo5SkillsUA.Clear;
    while not UniGetSkills.EOF do
      begin
        Memo5SkillsUA.Lines.Add(UniGetSkills['skill']+' - '+UniGetSkills['category']);
        UniGetSkills.Next;
      end;
    end;
  6:begin
    GetMonthRegionByMask(UniGetJobs['start_date'], 'UA', FullMonthYearStart, ShortMonthYearStart);
    if VarIsNull(UniGetJobs['end_date']) then Edit6DatesUA.Text:=FullMonthYearStart+'- Now'
    else
        begin
        GetMonthRegionByMask(UniGetJobs['end_date'], 'UA', FullMonthYearEnd, ShortMonthYearEnd);
        Edit6DatesUA.Text:=FullMonthYearStart+'-'+FullMonthYearEnd;
        end;
    Edit6NameUA.Text:=UniGetJobs['job_position'];
    Memo6RespUA.Text:=UniGetJobs['responsibilities'];
    Edit6CompanyUA.Text:=UniGetJobs['employer'];
    Edit6BenefitsUA.Text:=UniGetJobs['benefits'];
    Edit6BottomUA.Text:=UniGetJobs['leave_reason'];
    UniGetSkills.Prepare;
    UniGetSkills.ParamByName('p_experience_id').AsInteger:=UniGetJobs['id'];
    UniGetSkills.Open;
    Memo6SkillsUA.Clear;
    while not UniGetSkills.EOF do
      begin
        Memo6SkillsUA.Lines.Add(UniGetSkills['skill']+' - '+UniGetSkills['category']);
        UniGetSkills.Next;
      end;
    end;
  7:begin
    GetMonthRegionByMask(UniGetJobs['start_date'], 'UA', FullMonthYearStart, ShortMonthYearStart);
      if VarIsNull(UniGetJobs['end_date']) then Edit7DatesUA.Text:=FullMonthYearStart+'- Now'
      else
        begin
        GetMonthRegionByMask(UniGetJobs['end_date'], 'UA', FullMonthYearEnd, ShortMonthYearEnd);
        Edit7DatesUA.Text:=FullMonthYearStart+'-'+FullMonthYearEnd;
        end;
    Edit7NameUA.Text:=UniGetJobs['job_position'];
    Memo7RespUA.Text:=UniGetJobs['responsibilities'];
    Edit7CompanyUA.Text:=UniGetJobs['employer'];
    Edit7BenefitsUA.Text:=UniGetJobs['benefits'];
    Edit7BottomUA.Text:=UniGetJobs['leave_reason'];
    UniGetSkills.Prepare;
    UniGetSkills.ParamByName('p_experience_id').AsInteger:=UniGetJobs['id'];
    UniGetSkills.Open;
    Memo7SkillsUA.Clear;
    while not UniGetSkills.EOF do
      begin
        Memo7SkillsUA.Lines.Add(UniGetSkills['skill']+' - '+UniGetSkills['category']);
        UniGetSkills.Next;
      end;
    end;
  8:begin
    GetMonthRegionByMask(UniGetJobs['start_date'], 'UA', FullMonthYearStart, ShortMonthYearStart);
    if VarIsNull(UniGetJobs['end_date']) then Edit8DatesUA.Text:=FullMonthYearStart+'- Now'
    else
        begin
        GetMonthRegionByMask(UniGetJobs['end_date'], 'UA', FullMonthYearEnd, ShortMonthYearEnd);
        Edit8DatesUA.Text:=FullMonthYearStart+'-'+FullMonthYearEnd;
        end;
    Edit8NameUA.Text:=UniGetJobs['job_position'];
    Memo8RespUA.Text:=UniGetJobs['responsibilities'];
    Edit8CompanyUA.Text:=UniGetJobs['employer'];
    Edit8BenefitsUA.Text:=UniGetJobs['benefits'];
    Edit8BottomUA.Text:=UniGetJobs['leave_reason'];
    UniGetSkills.Prepare;
    UniGetSkills.ParamByName('p_experience_id').AsInteger:=UniGetJobs['id'];
    UniGetSkills.Open;
    Memo8SkillsUA.Clear;
    while not UniGetSkills.EOF do
      begin
        Memo8SkillsUA.Lines.Add(UniGetSkills['skill']+' - '+UniGetSkills['category']);
        UniGetSkills.Next;
      end;
    end;
  9:begin
    GetMonthRegionByMask(UniGetJobs['start_date'], 'UA', FullMonthYearStart, ShortMonthYearStart);
    if VarIsNull(UniGetJobs['end_date']) then Edit9DatesUA.Text:=FullMonthYearStart+'- Now'
    else
        begin
        GetMonthRegionByMask(UniGetJobs['end_date'], 'UA', FullMonthYearEnd, ShortMonthYearEnd);
        Edit9DatesUA.Text:=FullMonthYearStart+'-'+FullMonthYearEnd;
        end;
    Edit9NameUA.Text:=UniGetJobs['job_position'];
    Memo9RespUA.Text:=UniGetJobs['responsibilities'];
    Edit9CompanyUA.Text:=UniGetJobs['employer'];
    Edit9BenefitsUA.Text:=UniGetJobs['benefits'];
    Edit9BottomUA.Text:=UniGetJobs['leave_reason'];
    UniGetSkills.Prepare;
    UniGetSkills.ParamByName('p_experience_id').AsInteger:=UniGetJobs['id'];
    UniGetSkills.Open;
    Memo9SkillsUA.Clear;
    while not UniGetSkills.EOF do
      begin
        Memo9SkillsUA.Lines.Add(UniGetSkills['skill']+' - '+UniGetSkills['category']);
        UniGetSkills.Next;
      end;
    end;
  10:begin
    GetMonthRegionByMask(UniGetJobs['start_date'], 'UA', FullMonthYearStart, ShortMonthYearStart);
    if VarIsNull(UniGetJobs['end_date']) then Edit10DatesUA.Text:=FullMonthYearStart+'- Now'
    else
      begin
      GetMonthRegionByMask(UniGetJobs['end_date'], 'UA', FullMonthYearEnd, ShortMonthYearEnd);
      Edit10DatesUA.Text:=FullMonthYearStart+'-'+FullMonthYearEnd;
      end;
    Edit10NameUA.Text:=UniGetJobs['job_position'];
    Memo10RespUA.Text:=UniGetJobs['responsibilities'];
    Edit10CompanyUA.Text:=UniGetJobs['employer'];
    Edit10BenefitsUA.Text:=UniGetJobs['benefits'];
    Edit10BottomUA.Text:=UniGetJobs['leave_reason'];
    UniGetSkills.Prepare;
    UniGetSkills.ParamByName('p_experience_id').AsInteger:=UniGetJobs['id'];
    UniGetSkills.Open;
    Memo10SkillsUA.Clear;
    while not UniGetSkills.EOF do
      begin
        Memo10SkillsUA.Lines.Add(UniGetSkills['skill']+' - '+UniGetSkills['category']);
        UniGetSkills.Next;
      end;
    end;
    else FormMain.Warning('experienes, значение order_position больше 10 и равно '+UniGetJobs['order_position']);
  end;
  UniGetJobs.Next;
  end;
end;

function TFormNewResumeTranslation.ArchiveSkills(FJobID:integer): boolean;
begin
try
UniArchiveSkills.Close;
UniArchiveSkills.ParamByName('p_experience_id').AsInteger:=FJobID;
UniArchiveSkills.ExecSQL;
Result:=true;
except on E:Exception do
  begin
    ShowMessage('Error во время архивирования skill_show_lists: '+E.Message);
    Result:=false;
  end;
end;

end;

procedure TFormNewResumeTranslation.BitBtnSaveClick(Sender: TObject);
begin
if CheckValues
then ModalResult:=mrOK
else
  begin
    ModalResult:=mrNone;
    exit;
  end;
if SaveValues
then ModalResult:=mrOK
else
  begin
    ModalResult:=mrNone;
    exit;
  end;
end;

function TFormNewResumeTranslation.ArchiveFooters(FResumeID:integer): boolean;
begin
try
UniArchiveFooters.Close;
UniArchiveFooters.ParamByName('p_resume_id').AsInteger:=FResumeID;
UniArchiveFooters.ExecSQL;
Result:=true;
except on E:Exception do
  begin
    ShowMessage('Error во время архивирования resume_footers: '+E.Message);
    Result:=false;
  end;
end;
end;

function TFormNewResumeTranslation.ArchiveJobs(FResumeID:integer): boolean;
begin
try
UniArchiveJobs.Close;
UniArchiveJobs.ParamByName('p_resume_id').AsInteger:=FResumeID;
UniArchiveJobs.ExecSQL;
Result:=true;
except on E:Exception do
  begin
    ShowMessage('Error во время архивирования experiences: '+E.Message);
    Result:=false;
  end;
end;
end;

function TFormNewResumeTranslation.ArchiveResume(const FResumeName, FLang:string):boolean;
begin
try
UniArchiveResume.Close;
UniArchiveResume.ParamByName('p_name').AsString:=FResumeName;
UniArchiveResume.ParamByName('p_lang').AsString:=FLang;
UniArchiveResume.ExecSQL;
Result:=true;
except on E:Exception do
  begin
    ShowMessage('Error во время архивирования resumes: '+E.Message);
    Result:=false;
  end;
end;
end;

function TFormNewResumeTranslation.SaveResume:boolean;
begin
try
if not ArchiveResume(EditNameTR.Text, ComboBoxLangTR.Text) then
  begin
    FormMain.Warning('Ошибка при попытке архивирования resumes');
    Result:=false;
    exit;
  end;
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
Result:=true;
except on E:Exception do
  begin
    ShowMessage('Ошибка во время вставки в resumes: '+E.Message);
    Result:=false;
  end;
end;
end;

function TFormNewResumeTranslation.SaveFooters(const FResumeID:integer;
  const FFooterHeader,FFooterText:string; const FFooterOrder:integer ):boolean;
begin
try
if not ArchiveFooters(FResumeID) then
  begin
    FormMain.Warning('Ошибка при попытке архивирования resume_footers');
    Result:=false;
    exit;
  end;
//insert into resume_footers (resume_id,  footer_header , footer_text , footer_order, archived)
//values (:p_resume_id, :p_footer_header, :p_footer_text, :p_footer_order, :p_archived)
UniInsertFooters.Prepare;
UniInsertFooters.ParamByName('p_resume_id').AsInteger:=FResumeID;
UniInsertFooters.ParamByName('p_footer_header').AsString:=FFooterheader;
UniInsertFooters.ParamByName('p_footer_text').AsString:=FFooterText;
UniInsertFooters.ParamByName('p_footer_order').AsInteger:=FFooterOrder;
UniInsertFooters.ParamByName('p_archived').AsBoolean:=false;
UniInsertFooters.ExecSQL;
Result:=true;
except on E:Exception do
  begin
    ShowMessage('Ошибка во время вставки в resume_footers: '+E.Message);
    Result:=false;
  end;
end;
end;

function TFormNewResumeTranslation.SaveJobs(const FResumeID:integer; const FJobPosition:string;
    const FStartDate, FEndDate:TDate; FEmployer, FResponsibilities, FBenefits, FLeaveReason:string;
    var FExperienceID:integer): boolean;
begin
try
if not ArchiveJobs(FResumeID) then
  begin
    FormMain.Warning('Ошибка при попытке архивирования experiences');
    Result:=false;
    exit;
  end;

//insert into experiences
//( resume_id, job_position, start_date,  end_date, employer,
//  responsibilities, benefits, leave_reason, archived )
//values
//( :p_resume_id, :p_job_position, :p_start_date, :p_end_date, :p_employer,
// :p_responsibilities, :p_benefits, :p_leave_reason, :p_archived)

UniInsertFooters.Prepare;
UniInsertFooters.ParamByName('p_resume_id').AsInteger:=FResumeID;
UniInsertFooters.ParamByName('p_job_position').AsString:=FJobPosition;
UniInsertFooters.ParamByName('p_start_date').AsDate:=FStartDate;
UniInsertFooters.ParamByName('p_end_date').AsDate:=FEndDate;
UniInsertFooters.ParamByName('p_employer').AsString:=FEmployer;
UniInsertFooters.ParamByName('p_responsibilities').AsString:=FResponsibilities;
UniInsertFooters.ParamByName('p_benefits').AsString:=FBenefits;
UniInsertFooters.ParamByName('p_leave_reason').AsString:=FLeaveReason;
UniInsertFooters.ParamByName('p_archived').AsBoolean:=false;
UniInsertFooters.ExecSQL;
UniLastJobID.Prepare;
UniLastJobID.ParamByName('p_resume_id').AsInteger:=FResumeID;
UniLastJobID.ParamByName('p_start_date').AsDate:=FStartDate;
UniInsertFooters.Open;
FExperienceID:=UniInsertFooters['job_id'];
Result:=true;
except on E:Exception do
  begin
    ShowMessage('Ошибка во время вставки в experiences: '+E.Message);
    Result:=false;
  end;
end;
end;

function TFormNewResumeTranslation.SaveSkill(const FSkill: string; var FSkillID:integer): boolean;
begin
try
UniGetSkillID.Prepare;
UniGetSkillID.ParamByName('skill').AsString:=FSkill;
UniGetSkillID.Open;
if VarIsNull(UniGetSkillID['id']) then
  begin
    UniInsertSkill.Prepare;
    UniInsertSkill.ParamByName('skill').AsString:=FSkill;
    UniInsertSkill.ExecSQL;
  end;
UniGetSkillID.Prepare;
UniGetSkillID.ParamByName('skill').AsString:=FSkill;
UniGetSkillID.Open;
FSkillID:=UniGetSkillID['id'];
Result:=true;
except on E:Exception do
  begin
    ShowMessage('Ошибка во время вставки в skills (SaveSkills): '+E.Message);
    Result:=false;
  end;
end;

end;

function TFormNewResumeTranslation.SaveSkillLists(const FExperienceID:integer; const FSkillsList:TStrings):boolean;
var i, FSkillID:integer;
begin
try
if not ArchiveSkills(FExperienceID) then
  begin
    FormMain.Warning('Ошибка при попытке архивирования skill_show_lists');
    Result:=false;
    exit;
  end;
//  skill_id
//  experience_id
//  archived
for i:=1 to FSkillsList.Count-1 do
  begin
    SaveSkill(FSkillsList[i], FSkillID);
    SaveSkillShowList(FSkillID, FExperienceID);
  end;
Result:=true;
except on E:Exception do
  begin
    ShowMessage('Ошибка во время вставки в skill_show_lists (SaveSkillLists): '+E.Message);
    Result:=false;
  end;
  end;
end;

function TFormNewResumeTranslation.SaveSkillShowList(const FSkillID, FExperienceID: integer): boolean;
begin
// insert into skill_show_lists
// (skill_id , experience_id, archived)
// values (:p_skill_id ,:p_experience_id, :p_archived)
try
UniGetSkillList.Prepare;
UniGetSkillList.ParamByName('p_skill_id').AsInteger:=FSkillID;
UniGetSkillList.ParamByName('p_experience_id').AsInteger:=FExperienceID;
UniGetSkillList.Open;
if UniGetSkillList['cntr']=0 then
  begin
    UniInsertSkillList.Prepare;
    UniInsertSkillList.ParamByName('p_skill_id').AsInteger:=FSkillID;
    UniInsertSkillList.ParamByName('p_experience_id').AsInteger:=FExperienceID;
    UniInsertSkillList.ExecSQL;
  end;
Result:=true;
except on E:Exception do
  begin
    ShowMessage('Ошибка во время вставки в skill_show_lists (SaveSkillShowList): '+E.Message);
    Result:=false;
  end;
  end;
end;

function TFormNewResumeTranslation.SaveValues:boolean;
var FResumeID, FExperienceID:integer;
begin
try
if not SaveResume then
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

if not SaveFooters(FResumeID, EditArticle1TR.Text, MemoArticle1TR.Text, 1) then
  begin
  FormMain.Warning('Сбой при сохранении resume_footers #1');
  Result:=false;
  exit;
  end;

if not SaveFooters(FResumeID, EditArticle1TR.Text, MemoArticle1TR.Text, 2) then
  begin
  FormMain.Warning('Сбой при сохранении resume_footers #2');
  Result:=false;
  exit;
  end;

if not SaveFooters(FResumeID, EditArticle1TR.Text, MemoArticle1TR.Text, 3) then
  begin
  FormMain.Warning('Сбой при сохранении resume_footers #3');
  Result:=false;
  exit;
  end;

if not SaveFooters(FResumeID, EditArticle1TR.Text, MemoArticle1TR.Text, 4) then
  begin
  FormMain.Warning('Сбой при сохранении resume_footers #4');
  Result:=false;
  exit;
  end;

if not SaveJobs(FResumeID, Edit1NameTR.Text, CalendarPickerB1TR.Date, CalendarPickerE1TR.Date,
        Edit1CompanyTR.Text, Memo1RespTR.Text, Edit1BenefitsTR.Text,Edit1BottomTR.Text, FExperienceID) then
  begin
  FormMain.Warning('Сбой при сохранении jobs (experiences) #1');
  Result:=false;
  exit;
  end;

if not SaveSkillLists(FExperienceID, Memo1SkillsTR.Lines) then
  begin
  FormMain.Warning('Сбой при сохранении skills');
  Result:=false;
  exit;
  end;
Result:=true;
except on E:Exception do
  begin
    ShowMessage('Error: '+E.Message);
    Result:=false;
  end;
end;
end;

function TFormNewResumeTranslation.CheckValues: boolean;
var IsJob1Active, IsJob2Active, IsJob3Active, IsJob4Active, IsJob5Active,
IsJob6Active,IsJob7Active,IsJob8Active,IsJob9Active,IsJob10Active:boolean;
begin
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
Result:=true;
end;

procedure TFormNewResumeTranslation.SetEmptyFooterTR;
begin
EditArticle1TR.Text:='';
MemoArticle1TR.Text:='';
EditArticle2TR.Text:='';
MemoArticle2TR.Text:='';
EditArticle3TR.Text:='';
MemoArticle3TR.Text:='';
EditArticle4TR.Text:='';
MemoArticle4TR.Text:='';
end;

procedure TFormNewResumeTranslation.SetEmptyFooterUA;
begin
MemoArticle1UA.Text:='';
EditArticle1UA.Text:='';
MemoArticle2UA.Text:='';
EditArticle2UA.Text:='';
MemoArticle3UA.Text:='';
EditArticle3UA.Text:='';
MemoArticle4UA.Text:='';
EditArticle4UA.Text:='';
end;

procedure TFormNewResumeTranslation.SetEmptyJobsTR;
begin
Edit1DatesTR.Text:='';
Edit1NameTR.Text:='';
Edit1CompanyTR.Text:='';
Memo1RespTR.Text:='';
Edit1BenefitsTR.Text:='';
Edit1BottomTR.Text:='';

Edit2DatesTR.Text:='';
Edit2NameTR.Text:='';
Edit2CompanyTR.Text:='';
Memo2RespTR.Text:='';
Edit2BenefitsTR.Text:='';
Edit2BottomTR.Text:='';

Edit3DatesTR.Text:='';
Edit3NameTR.Text:='';
Edit3CompanyTR.Text:='';
Memo3RespTR.Text:='';
Edit3BenefitsTR.Text:='';
Edit3BottomTR.Text:='';

Edit4DatesTR.Text:='';
Edit4NameTR.Text:='';
Edit4CompanyTR.Text:='';
Memo4RespTR.Text:='';
Edit4BenefitsTR.Text:='';
Edit4BottomTR.Text:='';

Edit5DatesTR.Text:='';
Edit5NameTR.Text:='';
Edit5CompanyTR.Text:='';
Memo5RespTR.Text:='';
Edit5BenefitsTR.Text:='';
Edit5BottomTR.Text:='';

Edit6DatesTR.Text:='';
Edit6NameTR.Text:='';
Edit6CompanyTR.Text:='';
Memo6RespTR.Text:='';
Edit6BenefitsTR.Text:='';
Edit6BottomTR.Text:='';

Edit7DatesTR.Text:='';
Edit7NameTR.Text:='';
Edit7CompanyTR.Text:='';
Memo7RespTR.Text:='';
Edit7BenefitsTR.Text:='';
Edit7BottomTR.Text:='';

Edit8DatesTR.Text:='';
Edit8NameTR.Text:='';
Edit8CompanyTR.Text:='';
Memo8RespTR.Text:='';
Edit8BenefitsTR.Text:='';
Edit8BottomTR.Text:='';

Edit9DatesTR.Text:='';
Edit9NameTR.Text:='';
Edit9CompanyTR.Text:='';
Memo9RespTR.Text:='';
Edit9BenefitsTR.Text:='';
Edit9BottomTR.Text:='';

Edit10DatesTR.Text:='';
Edit10NameTR.Text:='';
Edit10CompanyTR.Text:='';
Memo10RespTR.Text:='';
Edit10BenefitsTR.Text:='';
Edit10BottomTR.Text:='';
end;

procedure TFormNewResumeTranslation.SetEmptyJobsUA;
begin
Edit1DatesUA.Text:='';
Edit1NameUA.Text:='';
Edit1CompanyUA.Text:='';
Memo1RespUA.Text:='';
Edit1BenefitsUA.Text:='';
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

procedure TFormNewResumeTranslation.SetEmptyResume;
begin
EditNameTR.Clear;
EditOpportunityTR.Clear;
EditPlaceTR.Text:='Віддалена (за кордоном)';
EditPhonesTR.Text:='+380 (93)1775176 (WhatsApp, Viber)';
MemoIntroTR.Clear;
ComboBoxLangTR.Text:='UA';
ComboBoxRegionTR.Text:='Ukraine';
end;

procedure TFormNewResumeTranslation.GetValuesFromTemplate(TemplateID:integer);
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

procedure TFormNewResumeTranslation.ChangeDates1;
var FullMBYear, ShortMBYear, FullMEYear, ShortMEYear:string;
begin
GetMonthRegionByMask(CalendarPickerB1TR.Date, 'EN', FullMBYear, ShortMBYear);
GetMonthRegionByMask(CalendarPickerE1TR.Date, 'EN', FullMEYear, ShortMEYear);
Edit1DatesTR.Text:=FullMBYear+'-'+FullMEYear;
end;

procedure TFormNewResumeTranslation.ChangeDates2;
var FullMBYear, ShortMBYear, FullMEYear, ShortMEYear:string;
begin
GetMonthRegionByMask(CalendarPickerB2TR.Date, 'EN', FullMBYear, ShortMBYear);
GetMonthRegionByMask(CalendarPickerE2TR.Date, 'EN', FullMEYear, ShortMEYear);
Edit2DatesTR.Text:=FullMBYear+'-'+FullMEYear;
end;

procedure TFormNewResumeTranslation.ChangeDates3;
var FullMBYear, ShortMBYear, FullMEYear, ShortMEYear:string;
begin
GetMonthRegionByMask(CalendarPickerB3TR.Date, 'EN', FullMBYear, ShortMBYear);
GetMonthRegionByMask(CalendarPickerE3TR.Date, 'EN', FullMEYear, ShortMEYear);
Edit3DatesTR.Text:=FullMBYear+'-'+FullMEYear;
end;

procedure TFormNewResumeTranslation.ChangeDates4;
var FullMBYear, ShortMBYear, FullMEYear, ShortMEYear:string;
begin
GetMonthRegionByMask(CalendarPickerB4TR.Date, 'EN', FullMBYear, ShortMBYear);
GetMonthRegionByMask(CalendarPickerE4TR.Date, 'EN', FullMEYear, ShortMEYear);
Edit4DatesTR.Text:=FullMBYear+'-'+FullMEYear;
end;

procedure TFormNewResumeTranslation.ChangeDates5;
var FullMBYear, ShortMBYear, FullMEYear, ShortMEYear:string;
begin
GetMonthRegionByMask(CalendarPickerB5TR.Date, 'EN', FullMBYear, ShortMBYear);
GetMonthRegionByMask(CalendarPickerE5TR.Date, 'EN', FullMEYear, ShortMEYear);
Edit5DatesTR.Text:=FullMBYear+'-'+FullMEYear;
end;

procedure TFormNewResumeTranslation.ChangeDates6;
var FullMBYear, ShortMBYear, FullMEYear, ShortMEYear:string;
begin
GetMonthRegionByMask(CalendarPickerB6TR.Date, 'EN', FullMBYear, ShortMBYear);
GetMonthRegionByMask(CalendarPickerE6TR.Date, 'EN', FullMEYear, ShortMEYear);
Edit6DatesTR.Text:=FullMBYear+'-'+FullMEYear;
end;

procedure TFormNewResumeTranslation.ChangeDates7;
var FullMBYear, ShortMBYear, FullMEYear, ShortMEYear:string;
begin
GetMonthRegionByMask(CalendarPickerB7TR.Date, 'EN', FullMBYear, ShortMBYear);
GetMonthRegionByMask(CalendarPickerE7TR.Date, 'EN', FullMEYear, ShortMEYear);
Edit7DatesTR.Text:=FullMBYear+'-'+FullMEYear;
end;

procedure TFormNewResumeTranslation.ChangeDates8;
var FullMBYear, ShortMBYear, FullMEYear, ShortMEYear:string;
begin
GetMonthRegionByMask(CalendarPickerB8TR.Date, 'EN', FullMBYear, ShortMBYear);
GetMonthRegionByMask(CalendarPickerE8TR.Date, 'EN', FullMEYear, ShortMEYear);
Edit8DatesTR.Text:=FullMBYear+'-'+FullMEYear;
end;

procedure TFormNewResumeTranslation.ChangeDates9;
var FullMBYear, ShortMBYear, FullMEYear, ShortMEYear:string;
begin
GetMonthRegionByMask(CalendarPickerB9TR.Date, 'EN', FullMBYear, ShortMBYear);
GetMonthRegionByMask(CalendarPickerE9TR.Date, 'EN', FullMEYear, ShortMEYear);
Edit9DatesTR.Text:=FullMBYear+'-'+FullMEYear;
end;

procedure TFormNewResumeTranslation.ChangeDates10;
var FullMBYear, ShortMBYear, FullMEYear, ShortMEYear:string;
begin
GetMonthRegionByMask(CalendarPickerB10TR.Date, 'EN', FullMBYear, ShortMBYear);
GetMonthRegionByMask(CalendarPickerE10TR.Date, 'EN', FullMEYear, ShortMEYear);
Edit10DatesTR.Text:=FullMBYear+'-'+FullMEYear;
end;

procedure TFormNewResumeTranslation.CalendarPickerB10TRCloseUp(Sender: TObject);
begin
ChangeDates10;
end;

procedure TFormNewResumeTranslation.CalendarPickerB1TRCloseUp(Sender: TObject);
begin
ChangeDates1;
end;

procedure TFormNewResumeTranslation.CalendarPickerB2TRCloseUp(Sender: TObject);
begin
ChangeDates2;
end;

procedure TFormNewResumeTranslation.CalendarPickerB3TRCloseUp(Sender: TObject);
begin
ChangeDates3;
end;

procedure TFormNewResumeTranslation.CalendarPickerB4TRCloseUp(Sender: TObject);
begin
ChangeDates4;
end;

procedure TFormNewResumeTranslation.CalendarPickerB5TRCloseUp(Sender: TObject);
begin
ChangeDates5;
end;

procedure TFormNewResumeTranslation.CalendarPickerB6TRCloseUp(Sender: TObject);
begin
ChangeDates6;
end;

procedure TFormNewResumeTranslation.CalendarPickerB7TRCloseUp(Sender: TObject);
begin
ChangeDates7;
end;

procedure TFormNewResumeTranslation.CalendarPickerB8TRCloseUp(Sender: TObject);
begin
ChangeDates8;
end;

procedure TFormNewResumeTranslation.CalendarPickerB9TRCloseUp(Sender: TObject);
begin
ChangeDates9;
end;

procedure TFormNewResumeTranslation.CalendarPickerE10TRCloseUp(Sender: TObject);
begin
ChangeDates10;
end;

procedure TFormNewResumeTranslation.CalendarPickerE1TRCloseUp(Sender: TObject);
begin
ChangeDates1;
end;


procedure TFormNewResumeTranslation.CalendarPickerE2TRCloseUp(Sender: TObject);
begin
ChangeDates2;
end;

procedure TFormNewResumeTranslation.CalendarPickerE3TRCloseUp(Sender: TObject);
begin
ChangeDates3;
end;

procedure TFormNewResumeTranslation.CalendarPickerE4TRCloseUp(Sender: TObject);
begin
ChangeDates4;
end;

procedure TFormNewResumeTranslation.CalendarPickerE5TRCloseUp(Sender: TObject);
begin
ChangeDates5;
end;

procedure TFormNewResumeTranslation.CalendarPickerE6TRCloseUp(Sender: TObject);
begin
ChangeDates6;
end;

procedure TFormNewResumeTranslation.CalendarPickerE7TRCloseUp(Sender: TObject);
begin
ChangeDates7;
end;

procedure TFormNewResumeTranslation.CalendarPickerE8TRCloseUp(Sender: TObject);
begin
ChangeDates8;
end;

procedure TFormNewResumeTranslation.CalendarPickerE9TRCloseUp(Sender: TObject);
begin
ChangeDates9;
end;

end.
