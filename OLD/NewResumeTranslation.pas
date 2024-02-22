unit NewResumeTranslation;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
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
    BitBtnCopy: TBitBtn;
    UniInsertResume2: TUniQuery;
    UniSPInsertResume: TUniStoredProc;
    UniLastInsertID: TUniQuery;
    EditLangTR: TEdit;
    EditRegionTR: TEdit;
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
  private
    ComboBoxLang_First_Value, ComboBoxRegion_First_Value: string;
    FootersAreActive: array [1 .. 4] of boolean;
    JobsAreActive: array [1 .. 10] of boolean;
    procedure SetComboBoxLanguages;
    procedure SetComboBoxRegions;
    function IsEmpty(const S: String): boolean;
    procedure SetEmptyResume;
    procedure SetJobsValues(FResumeID: integer);
    procedure SetFooterValues(FResumeID: integer);
    function CheckValues: boolean;
    function SaveValues: boolean;
    function SaveResume(var FResumeid:integer) : boolean;
    function SaveFooters(const FResumeID: integer;
      const FFooterHeader, FFooterText: string;
      const FFooterOrder: integer): boolean;
    function SaveJobs(const FResumeID: integer; const FJobPosition: string;
      const FStartDate, FEndDate: TDate; FEmployer, FResponsibilities,
      FBenefits, FLeaveReason: string; var FExperienceID: integer): boolean;
    function SaveSkillLists(const FExperienceID: integer;
      const FSkillsList: TStrings): boolean;
    function SaveSkill(const FSkill: string; var FSkillID: integer): boolean;
    function SaveSkillShowList(const FSkillID, FExperienceID: integer): boolean;
    function ArchiveResume(const FResumeName, FLang: string): boolean;
    function ArchiveFooters(FResumeID: integer): boolean;
    function ArchiveJobs(FResumeID: integer): boolean;
    function ArchiveSkills(FJobID: integer): boolean;
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
    procedure CopyFooterTRfromUA;
    procedure CopyJobsTRFromUA;
    procedure CopyResumeTRfromUA;
  public
    UniInsertFooters: TUniQuery;
    UniInsertJobs: TUniQuery;
    procedure SetEmptyTR;
    procedure SetEmptyUA;
    procedure SetFormValues;
    procedure GetValuesFromResume(Resumeid: integer);
    procedure GetValuesFromTemplate(TemplateId: integer);
  end;

var
  FormNewResume: TFormNewResume;

implementation

{$R *.dfm}

uses MainForm;

function TFormNewResume.IsEmpty(const S: String): boolean;
begin
  Result := (Length(Trim(S)) <= 0);
end;

procedure TFormNewResume.SetFormValues;
var
  i: integer;
begin
SetEmptyUA;
SetEmptyTR;
PageControlUA.ActivePage := TabSheetMainUA;
PageControlTR.ActivePage := TabSheetMainTR;
ComboBoxLangTR.Text := 'UA';
ComboBoxRegionTR.Text := 'Ukraine';
for i := 1 to 4 do
  FootersAreActive[i] := false;
for i := 1 to 10 do
  JobsAreActive[i] := false;
end;

procedure TFormNewResume.FormCreate(Sender: TObject);
begin
  PageControlTR.ActivePage := TabSheetMainTR;
  SetComboBoxLanguages;
  SetComboBoxRegions;
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

procedure TFormNewResume.SetComboBoxLanguages;
begin
  ComboBoxLangTR.Clear;
  UniLanguages.Close;
  UniLanguages.Open;
  ComboBoxLangTR.Text := UniLanguages['lang'];
  ComboBoxLang_First_Value := UniLanguages['lang'];
  while not UniLanguages.EOF do
  begin
    ComboBoxLangTR.Items.Add(UniLanguages['lang']);
    UniLanguages.Next;
  end;
  UniLanguages.Close;
end;

procedure TFormNewResume.SetComboBoxRegions;
begin
  ComboBoxRegionTR.Clear;
  UniRegions.Close;
  UniRegions.Open;
  ComboBoxRegionTR.Text := UniRegions['region_name'];
  ComboBoxRegion_First_Value := UniRegions['region_name'];
  while not UniRegions.EOF do
  begin
    ComboBoxRegionTR.Items.Add(UniRegions['region_name']);
    UniRegions.Next;
  end;
  UniRegions.Close;
end;

procedure TFormNewResume.SetEmptyResumeTR;
begin
  EditNameTR.Clear;
  EditOpportunityTR.Clear;
  EditPlaceTR.Clear;
  EditPhonesTR.Clear;
  MemoIntroTR.Clear;
  ComboBoxLangTR.Text := 'EN';
  ComboBoxRegionTR.Text := 'England';
end;

procedure TFormNewResume.SetEmptyResumeUA;
begin
  EditNameUA.Clear;
  EditOpportunityUA.Clear;
  EditPlaceUA.Clear;
  EditPhonesUA.Clear;
  MemoIntroUA.Clear;
  EditLangUA.Text := 'UA';
  EditRegionUA.Text := 'Ukraine';
end;

procedure TFormNewResume.SetEmptySkillsTR;
begin
  Memo1SkillsTR.Text := '';
  Memo2SkillsTR.Text := '';
  Memo3SkillsTR.Text := '';
  Memo4SkillsTR.Text := '';
  Memo5SkillsTR.Text := '';
  Memo6SkillsTR.Text := '';
  Memo7SkillsTR.Text := '';
  Memo8SkillsTR.Text := '';
  Memo9SkillsTR.Text := '';
  Memo10SkillsTR.Text := '';
end;

procedure TFormNewResume.SetEmptySkillsUA;
begin
  Memo1SkillsUA.Text := '';
  Memo2SkillsUA.Text := '';
  Memo3SkillsUA.Text := '';
  Memo4SkillsUA.Text := '';
  Memo5SkillsUA.Text := '';
  Memo6SkillsUA.Text := '';
  Memo7SkillsUA.Text := '';
  Memo8SkillsUA.Text := '';
  Memo9SkillsUA.Text := '';
  Memo10SkillsUA.Text := '';
end;

procedure TFormNewResume.SetEmptyTR;
begin
  SetEmptyResumeTR;
  SetEmptyFooterTR;
  SetEmptyJobsTR;
  SetEmptySkillsTR;
end;

procedure TFormNewResume.SetEmptyUA;
begin
  SetEmptyResumeUA;
  SetEmptyFooterUA;
  SetEmptySkillsUA;
  SetEmptyJobsUA;
end;

procedure TFormNewResume.GetValuesFromResume(Resumeid: integer);
begin
  ComboBoxLangTR.Text := ComboBoxLang_First_Value;
  ComboBoxRegionTR.Text := ComboBoxRegion_First_Value;
  SetEmptyResumeTR;
  if Resumeid <= 0 then
  begin
    FormMain.Warning('Форма FormNewResumeTranslation resimeid = ' +
      IntToStr(Resumeid));
    SetEmptyResumeUA;
    exit;
  end;
  if Resumeid > 0 then
  begin
    // ShowMessage(IntToStr(resume_id));
    UniGetResume.Close;
    UniGetResume.ParamByName('p_id').AsInteger := Resumeid;
    UniGetResume.ParamByName('p_lang').AsString := 'UA'; // ComboBoxLangTR.Text;
    UniGetResume.Open;
    if VarIsNull(UniGetResume['id']) then
      SetEmptyResumeUA
    else
    begin
      // resume_id:=-1;
      // resume_footer_id:=-1;
      if VarIsNull(UniGetResume['name']) then
        EditNameUA.Text := ''
      else
        EditNameUA.Text := UniGetResume['name'];
      if VarIsNull(UniGetResume['job_opportunity']) then
        EditOpportunityUA.Text := ''
      else
        EditOpportunityUA.Text := UniGetResume['job_opportunity'];
      if VarIsNull(UniGetResume['job_place']) then
        EditPlaceUA.Text := ''
      else
        EditPlaceUA.Text := UniGetResume['job_place'];
      if VarIsNull(UniGetResume['phone_numbers_text']) then
        EditPhonesUA.Text := ''
      else
        EditPhonesUA.Text := UniGetResume['phone_numbers_text'];
      if VarIsNull(UniGetResume['resume_introduction']) then
        MemoIntroUA.Text := ''
      else
        MemoIntroUA.Text := UniGetResume['resume_introduction'];
    end;
    SetFooterValues(Resumeid);
    SetJobsValues(Resumeid);
  end;
end;

procedure TFormNewResume.SetFooterValues(FResumeID: integer);
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
end;

procedure TFormNewResume.SetJobsValues(FResumeID: integer);
var
  FullMonthYearStart, ShortMonthYearStart, FullMonthYearEnd,
    ShortMonthYearEnd: string;
begin
  UniGetJobs.Prepare;
  UniGetJobs.ParamByName('p_resume_id').AsInteger := FResumeID;
  UniGetJobs.Open;
  while not UniGetJobs.EOF do
  begin
    case UniGetJobs['order_position'] of
      1:
        begin
          FormMain.GetMonthRegionByMask(UniGetJobs['start_date'], 'UA',
            FullMonthYearStart, ShortMonthYearStart);
          if VarIsNull(UniGetJobs['end_date']) then
            Edit1DatesUA.Text := FullMonthYearStart + '- Now'
          else
          begin
            FormMain.GetMonthRegionByMask(UniGetJobs['end_date'], 'UA', FullMonthYearEnd,
              ShortMonthYearEnd);
            Edit1DatesUA.Text := FullMonthYearStart + '-' + FullMonthYearEnd;
          end;
          Edit1NameUA.Text := UniGetJobs['job_position'];
          Memo1RespUA.Text := UniGetJobs['responsibilities'];
          Edit1CompanyUA.Text := UniGetJobs['employer'];
          Edit1BenefitsUA.Text := UniGetJobs['benefits'];
          Edit1BottomUA.Text := UniGetJobs['leave_reason'];
          UniGetSkills.Prepare;
          UniGetSkills.ParamByName('p_experience_id').AsInteger :=
            UniGetJobs['id'];
          UniGetSkills.Open;
          Memo1SkillsUA.Clear;
          while not UniGetSkills.EOF do
          begin
            Memo1SkillsUA.Lines.Add(UniGetSkills['skill'] + ' - ' + UniGetSkills
              ['category']);
            UniGetSkills.Next;
          end;
        end;
      2:
        begin
          FormMain.GetMonthRegionByMask(UniGetJobs['start_date'], 'UA',
            FullMonthYearStart, ShortMonthYearStart);
          if VarIsNull(UniGetJobs['end_date']) then
            Edit2DatesUA.Text := FullMonthYearStart + '- Now'
          else
          begin
            FormMain.GetMonthRegionByMask(UniGetJobs['end_date'], 'UA', FullMonthYearEnd,
              ShortMonthYearEnd);
            Edit1DatesUA.Text := FullMonthYearStart + '-' + FullMonthYearEnd;
          end;
          Edit2NameUA.Text := UniGetJobs['job_position'];
          Memo2RespUA.Text := UniGetJobs['responsibilities'];
          Edit2CompanyUA.Text := UniGetJobs['employer'];
          Edit2BenefitsUA.Text := UniGetJobs['benefits'];
          Edit2BottomUA.Text := UniGetJobs['leave_reason'];
          UniGetSkills.Prepare;
          UniGetSkills.ParamByName('p_experience_id').AsInteger :=
            UniGetJobs['id'];
          UniGetSkills.Open;
          Memo2SkillsUA.Clear;
          while not UniGetSkills.EOF do
          begin
            Memo2SkillsUA.Lines.Add(UniGetSkills['skill'] + ' - ' + UniGetSkills
              ['category']);
            UniGetSkills.Next;
          end;
        end;
      3:
        begin
          FormMain.GetMonthRegionByMask(UniGetJobs['start_date'], 'UA',
            FullMonthYearStart, ShortMonthYearStart);
          if VarIsNull(UniGetJobs['end_date']) then
            Edit3DatesUA.Text := FullMonthYearStart + '- Now'
          else
          begin
            FormMain.GetMonthRegionByMask(UniGetJobs['end_date'], 'UA', FullMonthYearEnd,
              ShortMonthYearEnd);
            Edit3DatesUA.Text := FullMonthYearStart + '-' + FullMonthYearEnd;
          end;
          Edit3NameUA.Text := UniGetJobs['job_position'];
          Memo3RespUA.Text := UniGetJobs['responsibilities'];
          Edit3CompanyUA.Text := UniGetJobs['employer'];
          Edit3BenefitsUA.Text := UniGetJobs['benefits'];
          Edit3BottomUA.Text := UniGetJobs['leave_reason'];
          UniGetSkills.Prepare;
          UniGetSkills.ParamByName('p_experience_id').AsInteger :=
            UniGetJobs['id'];
          UniGetSkills.Open;
          Memo3SkillsUA.Clear;
          while not UniGetSkills.EOF do
          begin
            Memo3SkillsUA.Lines.Add(UniGetSkills['skill'] + ' - ' + UniGetSkills
              ['category']);
            UniGetSkills.Next;
          end;
        end;
      4:
        begin
          FormMain.GetMonthRegionByMask(UniGetJobs['start_date'], 'UA',
            FullMonthYearStart, ShortMonthYearStart);
          if VarIsNull(UniGetJobs['end_date']) then
            Edit4DatesUA.Text := FullMonthYearStart + '- Now'
          else
          begin
            FormMain.GetMonthRegionByMask(UniGetJobs['end_date'], 'UA', FullMonthYearEnd,
              ShortMonthYearEnd);
            Edit4DatesUA.Text := FullMonthYearStart + '-' + FullMonthYearEnd;
          end;
          Edit4NameUA.Text := UniGetJobs['job_position'];
          Memo4RespUA.Text := UniGetJobs['responsibilities'];
          Edit4CompanyUA.Text := UniGetJobs['employer'];
          Edit4BenefitsUA.Text := UniGetJobs['benefits'];
          Edit4BottomUA.Text := UniGetJobs['leave_reason'];
          UniGetSkills.Prepare;
          UniGetSkills.ParamByName('p_experience_id').AsInteger :=
            UniGetJobs['id'];
          UniGetSkills.Open;
          Memo4SkillsUA.Clear;
          while not UniGetSkills.EOF do
          begin
            Memo4SkillsUA.Lines.Add(UniGetSkills['skill'] + ' - ' + UniGetSkills
              ['category']);
            UniGetSkills.Next;
          end;
        end;
      5:
        begin
          FormMain.GetMonthRegionByMask(UniGetJobs['start_date'], 'UA',
            FullMonthYearStart, ShortMonthYearStart);
          if VarIsNull(UniGetJobs['end_date']) then
            Edit5DatesUA.Text := FullMonthYearStart + '- Now'
          else
          begin
            FormMain.GetMonthRegionByMask(UniGetJobs['end_date'], 'UA', FullMonthYearEnd,
              ShortMonthYearEnd);
            Edit5DatesUA.Text := FullMonthYearStart + '-' + FullMonthYearEnd;
          end;
          Edit5NameUA.Text := UniGetJobs['job_position'];
          Memo5RespUA.Text := UniGetJobs['responsibilities'];
          Edit5CompanyUA.Text := UniGetJobs['employer'];
          Edit5BenefitsUA.Text := UniGetJobs['benefits'];
          Edit5BottomUA.Text := UniGetJobs['leave_reason'];
          UniGetSkills.Prepare;
          UniGetSkills.ParamByName('p_experience_id').AsInteger :=
            UniGetJobs['id'];
          UniGetSkills.Open;
          Memo5SkillsUA.Clear;
          while not UniGetSkills.EOF do
          begin
            Memo5SkillsUA.Lines.Add(UniGetSkills['skill'] + ' - ' + UniGetSkills
              ['category']);
            UniGetSkills.Next;
          end;
        end;
      6:
        begin
          FormMain.GetMonthRegionByMask(UniGetJobs['start_date'], 'UA',
            FullMonthYearStart, ShortMonthYearStart);
          if VarIsNull(UniGetJobs['end_date']) then
            Edit6DatesUA.Text := FullMonthYearStart + '- Now'
          else
          begin
            FormMain.GetMonthRegionByMask(UniGetJobs['end_date'], 'UA', FullMonthYearEnd,
              ShortMonthYearEnd);
            Edit6DatesUA.Text := FullMonthYearStart + '-' + FullMonthYearEnd;
          end;
          Edit6NameUA.Text := UniGetJobs['job_position'];
          Memo6RespUA.Text := UniGetJobs['responsibilities'];
          Edit6CompanyUA.Text := UniGetJobs['employer'];
          Edit6BenefitsUA.Text := UniGetJobs['benefits'];
          Edit6BottomUA.Text := UniGetJobs['leave_reason'];
          UniGetSkills.Prepare;
          UniGetSkills.ParamByName('p_experience_id').AsInteger :=
            UniGetJobs['id'];
          UniGetSkills.Open;
          Memo6SkillsUA.Clear;
          while not UniGetSkills.EOF do
          begin
            Memo6SkillsUA.Lines.Add(UniGetSkills['skill'] + ' - ' + UniGetSkills
              ['category']);
            UniGetSkills.Next;
          end;
        end;
      7:
        begin
          FormMain.GetMonthRegionByMask(UniGetJobs['start_date'], 'UA',
            FullMonthYearStart, ShortMonthYearStart);
          if VarIsNull(UniGetJobs['end_date']) then
            Edit7DatesUA.Text := FullMonthYearStart + '- Now'
          else
          begin
            FormMain.GetMonthRegionByMask(UniGetJobs['end_date'], 'UA', FullMonthYearEnd,
              ShortMonthYearEnd);
            Edit7DatesUA.Text := FullMonthYearStart + '-' + FullMonthYearEnd;
          end;
          Edit7NameUA.Text := UniGetJobs['job_position'];
          Memo7RespUA.Text := UniGetJobs['responsibilities'];
          Edit7CompanyUA.Text := UniGetJobs['employer'];
          Edit7BenefitsUA.Text := UniGetJobs['benefits'];
          Edit7BottomUA.Text := UniGetJobs['leave_reason'];
          UniGetSkills.Prepare;
          UniGetSkills.ParamByName('p_experience_id').AsInteger :=
            UniGetJobs['id'];
          UniGetSkills.Open;
          Memo7SkillsUA.Clear;
          while not UniGetSkills.EOF do
          begin
            Memo7SkillsUA.Lines.Add(UniGetSkills['skill'] + ' - ' + UniGetSkills
              ['category']);
            UniGetSkills.Next;
          end;
        end;
      8:
        begin
          FormMain.GetMonthRegionByMask(UniGetJobs['start_date'], 'UA',
            FullMonthYearStart, ShortMonthYearStart);
          if VarIsNull(UniGetJobs['end_date']) then
            Edit8DatesUA.Text := FullMonthYearStart + '- Now'
          else
          begin
            FormMain.GetMonthRegionByMask(UniGetJobs['end_date'], 'UA', FullMonthYearEnd,
              ShortMonthYearEnd);
            Edit8DatesUA.Text := FullMonthYearStart + '-' + FullMonthYearEnd;
          end;
          Edit8NameUA.Text := UniGetJobs['job_position'];
          Memo8RespUA.Text := UniGetJobs['responsibilities'];
          Edit8CompanyUA.Text := UniGetJobs['employer'];
          Edit8BenefitsUA.Text := UniGetJobs['benefits'];
          Edit8BottomUA.Text := UniGetJobs['leave_reason'];
          UniGetSkills.Prepare;
          UniGetSkills.ParamByName('p_experience_id').AsInteger :=
            UniGetJobs['id'];
          UniGetSkills.Open;
          Memo8SkillsUA.Clear;
          while not UniGetSkills.EOF do
          begin
            Memo8SkillsUA.Lines.Add(UniGetSkills['skill'] + ' - ' + UniGetSkills
              ['category']);
            UniGetSkills.Next;
          end;
        end;
      9:
        begin
          FormMain.GetMonthRegionByMask(UniGetJobs['start_date'], 'UA',
            FullMonthYearStart, ShortMonthYearStart);
          if VarIsNull(UniGetJobs['end_date']) then
            Edit9DatesUA.Text := FullMonthYearStart + '- Now'
          else
          begin
            FormMain.GetMonthRegionByMask(UniGetJobs['end_date'], 'UA', FullMonthYearEnd,
              ShortMonthYearEnd);
            Edit9DatesUA.Text := FullMonthYearStart + '-' + FullMonthYearEnd;
          end;
          Edit9NameUA.Text := UniGetJobs['job_position'];
          Memo9RespUA.Text := UniGetJobs['responsibilities'];
          Edit9CompanyUA.Text := UniGetJobs['employer'];
          Edit9BenefitsUA.Text := UniGetJobs['benefits'];
          Edit9BottomUA.Text := UniGetJobs['leave_reason'];
          UniGetSkills.Prepare;
          UniGetSkills.ParamByName('p_experience_id').AsInteger :=
            UniGetJobs['id'];
          UniGetSkills.Open;
          Memo9SkillsUA.Clear;
          while not UniGetSkills.EOF do
          begin
            Memo9SkillsUA.Lines.Add(UniGetSkills['skill'] + ' - ' + UniGetSkills
              ['category']);
            UniGetSkills.Next;
          end;
        end;
      10:
        begin
          FormMain.GetMonthRegionByMask(UniGetJobs['start_date'], 'UA',
            FullMonthYearStart, ShortMonthYearStart);
          if VarIsNull(UniGetJobs['end_date']) then
            Edit10DatesUA.Text := FullMonthYearStart + '- Now'
          else
          begin
            FormMain.GetMonthRegionByMask(UniGetJobs['end_date'], 'UA', FullMonthYearEnd,
              ShortMonthYearEnd);
            Edit10DatesUA.Text := FullMonthYearStart + '-' + FullMonthYearEnd;
          end;
          Edit10NameUA.Text := UniGetJobs['job_position'];
          Memo10RespUA.Text := UniGetJobs['responsibilities'];
          Edit10CompanyUA.Text := UniGetJobs['employer'];
          Edit10BenefitsUA.Text := UniGetJobs['benefits'];
          Edit10BottomUA.Text := UniGetJobs['leave_reason'];
          UniGetSkills.Prepare;
          UniGetSkills.ParamByName('p_experience_id').AsInteger :=
            UniGetJobs['id'];
          UniGetSkills.Open;
          Memo10SkillsUA.Clear;
          while not UniGetSkills.EOF do
          begin
            Memo10SkillsUA.Lines.Add(UniGetSkills['skill'] + ' - ' +
              UniGetSkills['category']);
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

function TFormNewResume.ArchiveSkills(FJobID: integer): boolean;
begin
  try
    UniArchiveSkills.Close;
    UniArchiveSkills.ParamByName('p_experience_id').AsInteger := FJobID;
    UniArchiveSkills.ExecSQL;
    Result := true;
  except
    on E: Exception do
    begin
      ShowMessage('Error во время архивирования skill_show_lists: ' +
        E.Message);
      Result := false;
    end;
  end;

end;

procedure TFormNewResume.BitBtnCopyClick(Sender: TObject);
begin
  CopyResumeTRfromUA;
  CopyFooterTRfromUA;
  CopyJobsTRFromUA;
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

function TFormNewResume.ArchiveFooters(FResumeID: integer): boolean;
begin
  try
    UniArchiveFooters.Close;
    UniArchiveFooters.ParamByName('p_resume_id').AsInteger := FResumeID;
    UniArchiveFooters.ExecSQL;
    Result := true;
  except
    on E: Exception do
    begin
      ShowMessage('Error во время архивирования resume_footers: ' + E.Message);
      Result := false;
    end;
  end;
end;

function TFormNewResume.ArchiveJobs(FResumeID: integer): boolean;
begin
  try
    UniArchiveJobs.Close;
    UniArchiveJobs.ParamByName('p_resume_id').AsInteger := FResumeID;
    UniArchiveJobs.ExecSQL;
    Result := true;
  except
    on E: Exception do
    begin
      ShowMessage('Error во время архивирования experiences: ' + E.Message);
      Result := false;
    end;
  end;
end;

function TFormNewResume.ArchiveResume(const FResumeName,
  FLang: string): boolean;
begin
  try
    UniArchiveResume.Close;
    UniArchiveResume.ParamByName('p_name').AsString := FResumeName;
    UniArchiveResume.ParamByName('p_lang').AsString := FLang;
    UniArchiveResume.ExecSQL;
    Result := true;
  except
    on E: Exception do
    begin
      ShowMessage('Error во время архивирования resumes: ' + E.Message);
      Result := false;
    end;
  end;
end;

function TFormNewResume.SaveResume(var FResumeid:integer): boolean;
var Resume_id:integer;
begin
  try
//    if not ArchiveResume(EditNameTR.Text, ComboBoxLangTR.Text) then
//    begin
//      FormMain.Warning('Ошибка при попытке архивирования resumes');
//      Result := false;
//      exit;
//    end;
    UniSPInsertResume.Close;
    UniSPInsertResume.ParamByName('p_name').AsString := EditNameTR.Text;
    UniSPInsertResume.ParamByName('p_region_id').AsString := ComboBoxRegionTR.Text;
    UniSPInsertResume.ParamByName('p_lang').AsString := ComboBoxLangTR.Text;
    UniSPInsertResume.ParamByName('p_job_opportunity').AsString := EditOpportunityTR.Text;
    UniSPInsertResume.ParamByName('p_job_place').AsString := EditPlaceTR.Text;
    UniSPInsertResume.ParamByName('p_phone_numbers_text').AsString := EditPhonesTR.Text;
    UniSPInsertResume.ParamByName('p_resume_introduction').AsString := MemoIntroTR.Text;
    UniSPInsertResume.ParamByName('p_footer_1_header').AsString := EditArticle1TR.Text;
    UniSPInsertResume.ParamByName('p_footer_1_text').AsString := MemoArticle1TR.Text;
    UniSPInsertResume.ParamByName('p_footer_2_header').AsString := EditArticle2TR.Text;
    UniSPInsertResume.ParamByName('p_footer_2_text').AsString := MemoArticle2TR.Text;
    UniSPInsertResume.ParamByName('p_footer_3_header').AsString := EditArticle3TR.Text;
    UniSPInsertResume.ParamByName('p_footer_3_text').AsString := MemoArticle3TR.Text;
    UniSPInsertResume.ParamByName('p_footer_4_header').AsString := EditArticle4TR.Text;
    UniSPInsertResume.ParamByName('p_footer_4_text').AsString := MemoArticle4TR.Text;
    UniSPInsertResume.ParamByName('p_archived').AsInteger := 0;
    UniSPInsertResume.ExecProc;
    FResumeID:=UniSPInsertResume.ParamByName('p_resume_id').AsInteger;
    if UniSPInsertResume.ParamByName('p_result').AsInteger=0 then Result:=true else Result:=false;
  except
    on E: Exception do
    begin
      ShowMessage('Ошибка во время вставки в resumes: ' + E.Message);
      Result := false;
    end;
  end;
end;

function TFormNewResume.SaveFooters(const FResumeID: integer;
  const FFooterHeader, FFooterText: string;
  const FFooterOrder: integer): boolean;
begin
  try
    if not ArchiveFooters(FResumeID) then
    begin
      FormMain.Warning('Ошибка при попытке архивирования resume_footers');
      Result := false;
      exit;
    end;
    // insert into resume_footers (resume_id,  footer_header , footer_text , footer_order, archived)
    // values (:p_resume_id, :p_footer_header, :p_footer_text, :p_footer_order, :p_archived)
    UniInsertFooters.Prepare;
    UniInsertFooters.ParamByName('p_resume_id').AsInteger := FResumeID;
    UniInsertFooters.ParamByName('p_footer_header').AsString := FFooterHeader;
    UniInsertFooters.ParamByName('p_footer_text').AsString := FFooterText;
    UniInsertFooters.ParamByName('p_footer_order').AsInteger := FFooterOrder;
    UniInsertFooters.ParamByName('p_archived').AsBoolean := false;
    UniInsertFooters.ExecSQL;
    Result := true;
  except
    on E: Exception do
    begin
      ShowMessage('Ошибка во время вставки в resume_footers: ' + E.Message);
      Result := false;
    end;
  end;
end;

function TFormNewResume.SaveJobs(const FResumeID: integer;
  const FJobPosition: string; const FStartDate, FEndDate: TDate;
  FEmployer, FResponsibilities, FBenefits, FLeaveReason: string;
  var FExperienceID: integer): boolean;
begin
  try
    if not ArchiveJobs(FResumeID) then
    begin
      FormMain.Warning('Ошибка при попытке архивирования experiences');
      Result := false;
      exit;
    end;

    // insert into experiences
    // ( resume_id, job_position, start_date,  end_date, employer,
    // responsibilities, benefits, leave_reason, archived )
    // values
    // ( :p_resume_id, :p_job_position, :p_start_date, :p_end_date, :p_employer,
    // :p_responsibilities, :p_benefits, :p_leave_reason, :p_archived)

    UniInsertFooters.Prepare;
    UniInsertFooters.ParamByName('p_resume_id').AsInteger := FResumeID;
    UniInsertFooters.ParamByName('p_job_position').AsString := FJobPosition;
    UniInsertFooters.ParamByName('p_start_date').AsDate := FStartDate;
    UniInsertFooters.ParamByName('p_end_date').AsDate := FEndDate;
    UniInsertFooters.ParamByName('p_employer').AsString := FEmployer;
    UniInsertFooters.ParamByName('p_responsibilities').AsString :=
      FResponsibilities;
    UniInsertFooters.ParamByName('p_benefits').AsString := FBenefits;
    UniInsertFooters.ParamByName('p_leave_reason').AsString := FLeaveReason;
    UniInsertFooters.ParamByName('p_archived').AsBoolean := false;
    UniInsertFooters.ExecSQL;
    UniLastJobID.Prepare;
    UniLastJobID.ParamByName('p_resume_id').AsInteger := FResumeID;
    UniLastJobID.ParamByName('p_start_date').AsDate := FStartDate;
    UniInsertFooters.Open;
    FExperienceID := UniInsertFooters['job_id'];
    Result := true;
  except
    on E: Exception do
    begin
      ShowMessage('Ошибка во время вставки в experiences: ' + E.Message);
      Result := false;
    end;
  end;
end;

function TFormNewResume.SaveSkill(const FSkill: string;
  var FSkillID: integer): boolean;
begin
  try
    UniGetSkillID.Prepare;
    UniGetSkillID.ParamByName('skill').AsString := FSkill;
    UniGetSkillID.Open;
    if VarIsNull(UniGetSkillID['id']) then
    begin
      UniInsertSkill.Prepare;
      UniInsertSkill.ParamByName('skill').AsString := FSkill;
      UniInsertSkill.ExecSQL;
    end;
    UniGetSkillID.Prepare;
    UniGetSkillID.ParamByName('skill').AsString := FSkill;
    UniGetSkillID.Open;
    FSkillID := UniGetSkillID['id'];
    Result := true;
  except
    on E: Exception do
    begin
      ShowMessage('Ошибка во время вставки в skills (SaveSkills): ' +
        E.Message);
      Result := false;
    end;
  end;

end;

function TFormNewResume.SaveSkillLists(const FExperienceID: integer;
  const FSkillsList: TStrings): boolean;
var
  i, FSkillID: integer;
begin
  try
    if not ArchiveSkills(FExperienceID) then
    begin
      FormMain.Warning('Ошибка при попытке архивирования skill_show_lists');
      Result := false;
      exit;
    end;
    // skill_id
    // experience_id
    // archived
    for i := 1 to FSkillsList.Count - 1 do
    begin
      SaveSkill(FSkillsList[i], FSkillID);
      SaveSkillShowList(FSkillID, FExperienceID);
    end;
    Result := true;
  except
    on E: Exception do
    begin
      ShowMessage
        ('Ошибка во время вставки в skill_show_lists (SaveSkillLists): ' +
        E.Message);
      Result := false;
    end;
  end;
end;

function TFormNewResume.SaveSkillShowList(const FSkillID,
  FExperienceID: integer): boolean;
begin
  // insert into skill_show_lists
  // (skill_id , experience_id, archived)
  // values (:p_skill_id ,:p_experience_id, :p_archived)
  try
    UniGetSkillList.Prepare;
    UniGetSkillList.ParamByName('p_skill_id').AsInteger := FSkillID;
    UniGetSkillList.ParamByName('p_experience_id').AsInteger := FExperienceID;
    UniGetSkillList.Open;
    if UniGetSkillList['cntr'] = 0 then
    begin
      UniInsertSkillList.Prepare;
      UniInsertSkillList.ParamByName('p_skill_id').AsInteger := FSkillID;
      UniInsertSkillList.ParamByName('p_experience_id').AsInteger :=
        FExperienceID;
      UniInsertSkillList.ExecSQL;
    end;
    Result := true;
  except
    on E: Exception do
    begin
      ShowMessage
        ('Ошибка во время вставки в skill_show_lists (SaveSkillShowList): ' +
        E.Message);
      Result := false;
    end;
  end;
end;

function TFormNewResume.SaveValues: boolean;
var
  FResumeID, FExperienceID: integer;
begin
  try
    if not SaveResume(FResumeID) then
    begin
      FormMain.Warning('Сбой при сохранении resumes');
      Result := false;
      exit;
    end;
    UniLastInsertID.Close;
    UniLastInsertID.ParamByName('p_name').AsString := EditNameTR.Text;
    UniLastInsertID.Open;

    if VarIsNull(UniLastInsertID['id']) then
    begin
      ShowMessage('Wrong value for resume.id : ');
      Result := false;
      exit;
    end
    else
      FResumeID := UniLastInsertID['id'];
//
//    if not SaveFooters(FResumeID, EditArticle1TR.Text, MemoArticle1TR.Text, 1)
//    then
//    begin
//      FormMain.Warning('Сбой при сохранении resume_footers #1');
//      Result := false;
//      exit;
//    end;
//
//    if not SaveFooters(FResumeID, EditArticle1TR.Text, MemoArticle1TR.Text, 2)
//    then
//    begin
//      FormMain.Warning('Сбой при сохранении resume_footers #2');
//      Result := false;
//      exit;
//    end;
//
//    if not SaveFooters(FResumeID, EditArticle1TR.Text, MemoArticle1TR.Text, 3)
//    then
//    begin
//      FormMain.Warning('Сбой при сохранении resume_footers #3');
//      Result := false;
//      exit;
//    end;
//
//    if not SaveFooters(FResumeID, EditArticle1TR.Text, MemoArticle1TR.Text, 4)
//    then
//    begin
//      FormMain.Warning('Сбой при сохранении resume_footers #4');
//      Result := false;
//      exit;
//    end;

    if not SaveJobs(FResumeID, Edit1NameTR.Text, CalendarPickerB1TR.Date,
      CalendarPickerE1TR.Date, Edit1CompanyTR.Text, Memo1RespTR.Text,
      Edit1BenefitsTR.Text, Edit1BottomTR.Text, FExperienceID) then
    begin
      FormMain.Warning('Сбой при сохранении jobs (experiences) #1');
      Result := false;
      exit;
    end;

    if not SaveSkillLists(FExperienceID, Memo1SkillsTR.Lines) then
    begin
      FormMain.Warning('Сбой при сохранении skills');
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

function TFormNewResume.CheckValues: boolean;
var
  IsJob1Active, IsJob2Active, IsJob3Active, IsJob4Active, IsJob5Active,
    IsJob6Active, IsJob7Active, IsJob8Active, IsJob9Active,
    IsJob10Active: boolean;
begin
  if IsEmpty(EditNameTR.Text) then
  begin
    ShowMessage('Пусте поле "Назва резюме"');
    Result := false;
    exit;
  end;
  if IsEmpty(EditOpportunityTR.Text) then
  begin
    ShowMessage('Пусте поле "Посада"');
    Result := false;
    exit;
  end;
  if IsEmpty(EditPlaceTR.Text) then
  begin
    ShowMessage('Пусте поле "Місце роботи"');
    Result := false;
    exit;
  end;
  if IsEmpty(EditPhonesTR.Text) then
  begin
    ShowMessage('Пусте поле "Телефони"');
    Result := false;
    exit;
  end;
  if IsEmpty(MemoIntroTR.Text) then
  begin
    ShowMessage('Пусте поле "Введення"');
    Result := false;
    exit;
  end;
  if IsEmpty(EditArticle1TR.Text) and not IsEmpty(MemoArticle1TR.Text) then
  begin
    ShowMessage('Пусте поле "Навички 1 - Назва"');
    Result := false;
    exit;
  end;
  if IsEmpty(MemoArticle1TR.Text) and IsEmpty(EditArticle1TR.Text) then
  begin
    ShowMessage('Пусте поле "Навички 1 - Текст"');
    Result := false;
    exit;
  end;
  if (Length(Trim(EditArticle2TR.Text)) = 0) and
    (Length(Trim(MemoArticle2TR.Text)) > 0) then
  begin
    ShowMessage('Пусте поле "Навички 2 - Назва"');
    Result := false;
    exit;
  end;
  if (Length(Trim(MemoArticle2TR.Text)) = 0) and
    (Length(Trim(EditArticle2TR.Text)) > 0) then
  begin
    ShowMessage('Пусте поле "Навички 2 - Текст"');
    Result := false;
    exit;
  end;
  if (Length(Trim(EditArticle3TR.Text)) = 0) and
    (Length(Trim(MemoArticle3TR.Text)) > 0) then
  begin
    ShowMessage('Пусте поле "Навички 3 - Назва"');
    Result := false;
    exit;
  end;
  if (Length(Trim(MemoArticle3TR.Text)) = 0) and
    (Length(Trim(EditArticle3TR.Text)) > 0) then
  begin
    ShowMessage('Пусте поле "Навички 3 - Текст"');
    Result := false;
    exit;
  end;
  if (Length(Trim(EditArticle4TR.Text)) = 0) and
    (Length(Trim(MemoArticle4TR.Text)) > 0) then
  begin
    ShowMessage('Пусте поле "Навички 4 - Назва"');
    Result := false;
    exit;
  end;
  if (Length(Trim(MemoArticle4TR.Text)) = 0) and
    (Length(Trim(EditArticle4TR.Text)) > 0) then
  begin
    ShowMessage('Пусте поле "Навички 4 - Текст"');
    Result := false;
    exit;
  end;
  /// ////
  IsJob1Active := not(IsEmpty(Edit1DatesTR.Text) or IsEmpty(Edit1NameTR.Text) or
    IsEmpty(Edit1CompanyTR.Text) or IsEmpty(Memo1RespTR.Text) or
    IsEmpty(Memo1SkillsTR.Text));

  if (IsJob1Active and IsEmpty(Edit1DatesTR.Text)) then
  begin
    ShowMessage('Пусте поле "Дата робота 1"');
    Result := false;
    exit;
  end;

  if (IsJob1Active and IsEmpty(Edit1NameTR.Text)) then
  begin
    ShowMessage('Пусте поле "Назва робота 1"');
    Result := false;
    exit;
  end;
  if (IsJob1Active and IsEmpty(Edit1CompanyTR.Text)) then
  begin
    ShowMessage('Пусте поле "Компанія робота 1"');
    Result := false;
    exit;
  end;
  if (IsJob1Active and IsEmpty(Memo1RespTR.Text)) then
  begin
    ShowMessage('Пусте поле "Обов`язки робота 1"');
    Result := false;
    exit;
  end;
  if (IsJob1Active and IsEmpty(Memo1SkillsTR.Text)) then
  begin
    ShowMessage('Пусте поле Скіли робота 1"');
    Result := false;
    exit;
  end;

  /// ////
  IsJob2Active := not(IsEmpty(Edit2DatesTR.Text) or IsEmpty(Edit2NameTR.Text) or
    IsEmpty(Edit2CompanyTR.Text) or IsEmpty(Memo2RespTR.Text) or
    IsEmpty(Memo2SkillsTR.Text));
  if (IsJob2Active and IsEmpty(Edit2DatesTR.Text)) then
  begin
    ShowMessage('Пусте поле "Дата робота 2"');
    Result := false;
    exit;
  end;

  if (IsJob2Active and IsEmpty(Edit2NameTR.Text)) then
  begin
    ShowMessage('Пусте поле "Назва робота 2"');
    Result := false;
    exit;
  end;
  if (IsJob2Active and IsEmpty(Edit2CompanyTR.Text)) then
  begin
    ShowMessage('Пусте поле "Компанія робота 2"');
    Result := false;
    exit;
  end;
  if (IsJob2Active and IsEmpty(Memo2RespTR.Text)) then
  begin
    ShowMessage('Пусте поле "Обов`язки робота 2"');
    Result := false;
    exit;
  end;
  if (IsJob2Active and IsEmpty(Memo2SkillsTR.Text)) then
  begin
    ShowMessage('Пусте поле Скіли робота 2"');
    Result := false;
    exit;
  end;
  /// ////
  IsJob3Active := not(IsEmpty(Edit3DatesTR.Text) or IsEmpty(Edit3NameTR.Text) or
    IsEmpty(Edit3CompanyTR.Text) or IsEmpty(Memo3RespTR.Text) or
    IsEmpty(Memo3SkillsTR.Text));
  if (IsJob3Active and IsEmpty(Edit3DatesTR.Text)) then
  begin
    ShowMessage('Пусте поле "Дата робота 3"');
    Result := false;
    exit;
  end;

  if (IsJob3Active and IsEmpty(Edit3NameTR.Text)) then
  begin
    ShowMessage('Пусте поле "Назва робота 3"');
    Result := false;
    exit;
  end;
  if (IsJob3Active and IsEmpty(Edit3CompanyTR.Text)) then
  begin
    ShowMessage('Пусте поле "Компанія робота 3"');
    Result := false;
    exit;
  end;
  if (IsJob3Active and IsEmpty(Memo3RespTR.Text)) then
  begin
    ShowMessage('Пусте поле "Обов`язки робота 3"');
    Result := false;
    exit;
  end;
  if (IsJob3Active and IsEmpty(Memo3SkillsTR.Text)) then
  begin
    ShowMessage('Пусте поле Скіли робота 3"');
    Result := false;
    exit;
  end;
  /// ////
  IsJob4Active := not(IsEmpty(Edit4DatesTR.Text) or IsEmpty(Edit4NameTR.Text) or
    IsEmpty(Edit4CompanyTR.Text) or IsEmpty(Memo4RespTR.Text) or
    IsEmpty(Memo4SkillsTR.Text));
  if (IsJob4Active and IsEmpty(Edit4DatesTR.Text)) then
  begin
    ShowMessage('Пусте поле "Дата робота 4"');
    Result := false;
    exit;
  end;

  if (IsJob4Active and IsEmpty(Edit4NameTR.Text)) then
  begin
    ShowMessage('Пусте поле "Назва робота 4"');
    Result := false;
    exit;
  end;
  if (IsJob4Active and IsEmpty(Edit4CompanyTR.Text)) then
  begin
    ShowMessage('Пусте поле "Компанія робота 4"');
    Result := false;
    exit;
  end;
  if (IsJob4Active and IsEmpty(Memo4RespTR.Text)) then
  begin
    ShowMessage('Пусте поле "Обов`язки робота 4"');
    Result := false;
    exit;
  end;
  if (IsJob4Active and IsEmpty(Memo4SkillsTR.Text)) then
  begin
    ShowMessage('Пусте поле Скіли робота 4"');
    Result := false;
    exit;
  end;
  /// ////
  IsJob5Active := not(IsEmpty(Edit5DatesTR.Text) or IsEmpty(Edit5NameTR.Text) or
    IsEmpty(Edit5CompanyTR.Text) or IsEmpty(Memo5RespTR.Text) or
    IsEmpty(Memo5SkillsTR.Text));
  if (IsJob5Active and IsEmpty(Edit5DatesTR.Text)) then
  begin
    ShowMessage('Пусте поле "Дата робота 5"');
    Result := false;
    exit;
  end;

  if (IsJob5Active and IsEmpty(Edit5NameTR.Text)) then
  begin
    ShowMessage('Пусте поле "Назва робота 5"');
    Result := false;
    exit;
  end;
  if (IsJob5Active and IsEmpty(Edit5CompanyTR.Text)) then
  begin
    ShowMessage('Пусте поле "Компанія робота 5"');
    Result := false;
    exit;
  end;
  if (IsJob5Active and IsEmpty(Memo5RespTR.Text)) then
  begin
    ShowMessage('Пусте поле "Обов`язки робота 5"');
    Result := false;
    exit;
  end;
  if (IsJob5Active and IsEmpty(Memo5SkillsTR.Text)) then
  begin
    ShowMessage('Пусте поле Скіли робота 5"');
    Result := false;
    exit;
  end;
  /// ////
  IsJob6Active := not(IsEmpty(Edit6DatesTR.Text) or IsEmpty(Edit6NameTR.Text) or
    IsEmpty(Edit6CompanyTR.Text) or IsEmpty(Memo6RespTR.Text) or
    IsEmpty(Memo6SkillsTR.Text));
  if (IsJob6Active and IsEmpty(Edit6DatesTR.Text)) then
  begin
    ShowMessage('Пусте поле "Дата робота 6"');
    Result := false;
    exit;
  end;

  if (IsJob6Active and IsEmpty(Edit6NameTR.Text)) then
  begin
    ShowMessage('Пусте поле "Назва робота 6"');
    Result := false;
    exit;
  end;
  if (IsJob6Active and IsEmpty(Edit6CompanyTR.Text)) then
  begin
    ShowMessage('Пусте поле "Компанія робота 6"');
    Result := false;
    exit;
  end;
  if (IsJob6Active and IsEmpty(Memo6RespTR.Text)) then
  begin
    ShowMessage('Пусте поле "Обов`язки робота 6"');
    Result := false;
    exit;
  end;
  if (IsJob6Active and IsEmpty(Memo6SkillsTR.Text)) then
  begin
    ShowMessage('Пусте поле Скіли робота 6"');
    Result := false;
    exit;
  end;
  /// ////
  IsJob7Active := not(IsEmpty(Edit7DatesTR.Text) or IsEmpty(Edit7NameTR.Text) or
    IsEmpty(Edit7CompanyTR.Text) or IsEmpty(Memo7RespTR.Text) or
    IsEmpty(Memo7SkillsTR.Text));
  if (IsJob7Active and IsEmpty(Edit7DatesTR.Text)) then
  begin
    ShowMessage('Пусте поле "Дата робота 7"');
    Result := false;
    exit;
  end;

  if (IsJob7Active and IsEmpty(Edit7NameTR.Text)) then
  begin
    ShowMessage('Пусте поле "Назва робота 7"');
    Result := false;
    exit;
  end;
  if (IsJob7Active and IsEmpty(Edit7CompanyTR.Text)) then
  begin
    ShowMessage('Пусте поле "Компанія робота 7"');
    Result := false;
    exit;
  end;
  if (IsJob7Active and IsEmpty(Memo7RespTR.Text)) then
  begin
    ShowMessage('Пусте поле "Обов`язки робота 7"');
    Result := false;
    exit;
  end;
  if (IsJob7Active and IsEmpty(Memo7SkillsTR.Text)) then
  begin
    ShowMessage('Пусте поле Скіли робота 7"');
    Result := false;
    exit;
  end;
  /// ////
  IsJob8Active := not(IsEmpty(Edit8DatesTR.Text) or IsEmpty(Edit8NameTR.Text) or
    IsEmpty(Edit8CompanyTR.Text) or IsEmpty(Memo8RespTR.Text) or
    IsEmpty(Memo8SkillsTR.Text));
  if (IsJob8Active and IsEmpty(Edit8DatesTR.Text)) then
  begin
    ShowMessage('Пусте поле "Дата робота 8"');
    Result := false;
    exit;
  end;

  if (IsJob8Active and IsEmpty(Edit8NameTR.Text)) then
  begin
    ShowMessage('Пусте поле "Назва робота 8"');
    Result := false;
    exit;
  end;
  if (IsJob8Active and IsEmpty(Edit8CompanyTR.Text)) then
  begin
    ShowMessage('Пусте поле "Компанія робота 8"');
    Result := false;
    exit;
  end;
  if (IsJob8Active and IsEmpty(Memo8RespTR.Text)) then
  begin
    ShowMessage('Пусте поле "Обов`язки робота 8"');
    Result := false;
    exit;
  end;
  if (IsJob8Active and IsEmpty(Memo8SkillsTR.Text)) then
  begin
    ShowMessage('Пусте поле Скіли робота 8"');
    Result := false;
    exit;
  end;
  /// ////
  IsJob9Active := not(IsEmpty(Edit9DatesTR.Text) or IsEmpty(Edit9NameTR.Text) or
    IsEmpty(Edit9CompanyTR.Text) or IsEmpty(Memo9RespTR.Text) or
    IsEmpty(Memo9SkillsTR.Text));
  if (IsJob9Active and IsEmpty(Edit9DatesTR.Text)) then
  begin
    ShowMessage('Пусте поле "Дата робота 9"');
    Result := false;
    exit;
  end;

  if (IsJob9Active and IsEmpty(Edit9NameTR.Text)) then
  begin
    ShowMessage('Пусте поле "Назва робота 9"');
    Result := false;
    exit;
  end;
  if (IsJob9Active and IsEmpty(Edit9CompanyTR.Text)) then
  begin
    ShowMessage('Пусте поле "Компанія робота 9"');
    Result := false;
    exit;
  end;
  if (IsJob9Active and IsEmpty(Memo9RespTR.Text)) then
  begin
    ShowMessage('Пусте поле "Обов`язки робота 9"');
    Result := false;
    exit;
  end;
  if (IsJob9Active and IsEmpty(Memo9SkillsTR.Text)) then
  begin
    ShowMessage('Пусте поле Скіли робота 9"');
    Result := false;
    exit;
  end;
  /// ////
  IsJob10Active := not(IsEmpty(Edit10DatesTR.Text) or IsEmpty(Edit10NameTR.Text)
    or IsEmpty(Edit10CompanyTR.Text) or IsEmpty(Memo10RespTR.Text) or
    IsEmpty(Memo10SkillsTR.Text));
  if (IsJob10Active and IsEmpty(Edit10DatesTR.Text)) then
  begin
    ShowMessage('Пусте поле "Дата робота 10"');
    Result := false;
    exit;
  end;

  if (IsJob10Active and IsEmpty(Edit10NameTR.Text)) then
  begin
    ShowMessage('Пусте поле "Назва робота 10"');
    Result := false;
    exit;
  end;
  if (IsJob10Active and IsEmpty(Edit10CompanyTR.Text)) then
  begin
    ShowMessage('Пусте поле "Компанія робота 10"');
    Result := false;
    exit;
  end;
  if (IsJob10Active and IsEmpty(Memo10RespTR.Text)) then
  begin
    ShowMessage('Пусте поле "Обов`язки робота 10"');
    Result := false;
    exit;
  end;
  if (IsJob10Active and IsEmpty(Memo10SkillsTR.Text)) then
  begin
    ShowMessage('Пусте поле Скіли робота 10"');
    Result := false;
    exit;
  end;
  Result := true;
end;

procedure TFormNewResume.SetEmptyFooterTR;
begin
  EditArticle1TR.Text := '';
  MemoArticle1TR.Text := '';
  EditArticle2TR.Text := '';
  MemoArticle2TR.Text := '';
  EditArticle3TR.Text := '';
  MemoArticle3TR.Text := '';
  EditArticle4TR.Text := '';
  MemoArticle4TR.Text := '';
end;

procedure TFormNewResume.CopyResumeTRfromUA;
begin
  if IsEmpty(EditNameTR.Text) then
    EditNameTR.Text := EditNameUA.Text;
  if IsEmpty(EditOpportunityTR.Text) then
    EditOpportunityTR.Text := EditOpportunityUA.Text;
  if IsEmpty(EditPlaceTR.Text) then
    EditPlaceTR.Text := EditPlaceUA.Text;
  if IsEmpty(EditPhonesTR.Text) then
    EditPhonesTR.Text := EditPhonesUA.Text;
  if IsEmpty(MemoIntroTR.Text) then
    MemoIntroTR.Text := MemoIntroUA.Text;
end;

procedure TFormNewResume.CopyFooterTRfromUA;
begin
  if IsEmpty(EditArticle1TR.Text) then
    EditArticle1TR.Text := EditArticle1UA.Text;
  if IsEmpty(MemoArticle1TR.Text) then
    MemoArticle1TR.Text := MemoArticle1UA.Text;
  if IsEmpty(EditArticle2TR.Text) then
    EditArticle2TR.Text := EditArticle2UA.Text;
  if IsEmpty(MemoArticle2TR.Text) then
    MemoArticle2TR.Text := MemoArticle2UA.Text;
  if IsEmpty(EditArticle3TR.Text) then
    EditArticle3TR.Text := EditArticle3UA.Text;
  if IsEmpty(MemoArticle3TR.Text) then
    MemoArticle3TR.Text := MemoArticle3UA.Text;
  if IsEmpty(EditArticle4TR.Text) then
    EditArticle4TR.Text := EditArticle4UA.Text;
  if IsEmpty(MemoArticle4TR.Text) then
    MemoArticle4TR.Text := MemoArticle4UA.Text;
end;

procedure TFormNewResume.CopyJobsTRFromUA;
begin
  if IsEmpty(Edit1DatesTR.Text) then
    Edit1DatesTR.Text := Edit1DatesUA.Text;
  if IsEmpty(Edit1NameTR.Text) then
    Edit1NameTR.Text := Edit1NameUA.Text;
  if IsEmpty(Edit1CompanyTR.Text) then
    Edit1CompanyTR.Text := Edit1CompanyUA.Text;
  if IsEmpty(Memo1RespTR.Text) then
    Memo1RespTR.Text := Memo1RespUA.Text;
  if IsEmpty(Edit1BenefitsTR.Text) then
    Edit1BenefitsTR.Text := Edit1BenefitsUA.Text;
  if IsEmpty(Edit1BottomTR.Text) then
    Edit1BottomTR.Text := Edit1BottomUA.Text;

  if IsEmpty(Edit2DatesTR.Text) then
    Edit2DatesTR.Text := Edit2DatesUA.Text;
  if IsEmpty(Edit2NameTR.Text) then
    Edit2NameTR.Text := Edit2NameUA.Text;
  if IsEmpty(Edit2CompanyTR.Text) then
    Edit2CompanyTR.Text := Edit2CompanyUA.Text;
  if IsEmpty(Memo2RespTR.Text) then
    Memo2RespTR.Text := Memo2RespUA.Text;
  if IsEmpty(Edit2BenefitsTR.Text) then
    Edit2BenefitsTR.Text := Edit2BenefitsUA.Text;
  if IsEmpty(Edit2BottomTR.Text) then
    Edit2BottomTR.Text := Edit2BottomUA.Text;

  if IsEmpty(Edit3DatesTR.Text) then
    Edit1DatesTR.Text := Edit1DatesUA.Text;
  if IsEmpty(Edit1NameTR.Text) then
    Edit1NameTR.Text := Edit1NameUA.Text;
  if IsEmpty(Edit1CompanyTR.Text) then
    Edit1CompanyTR.Text := Edit1CompanyUA.Text;
  if IsEmpty(Memo1RespTR.Text) then
    Memo1RespTR.Text := Memo1RespUA.Text;
  if IsEmpty(Edit1BenefitsTR.Text) then
    Edit1BenefitsTR.Text := Edit1BenefitsUA.Text;
  if IsEmpty(Edit1BottomTR.Text) then
    Edit1BottomTR.Text := Edit1BottomUA.Text;

  if IsEmpty(Edit4DatesTR.Text) then
    Edit4DatesTR.Text := Edit4DatesUA.Text;
  if IsEmpty(Edit4NameTR.Text) then
    Edit4NameTR.Text := Edit4NameUA.Text;
  if IsEmpty(Edit4CompanyTR.Text) then
    Edit4CompanyTR.Text := Edit4CompanyUA.Text;
  if IsEmpty(Memo4RespTR.Text) then
    Memo4RespTR.Text := Memo4RespUA.Text;
  if IsEmpty(Edit4BenefitsTR.Text) then
    Edit4BenefitsTR.Text := Edit4BenefitsUA.Text;
  if IsEmpty(Edit4BottomTR.Text) then
    Edit4BottomTR.Text := Edit4BottomUA.Text;

  if IsEmpty(Edit5DatesTR.Text) then
    Edit5DatesTR.Text := Edit5DatesUA.Text;
  if IsEmpty(Edit5NameTR.Text) then
    Edit5NameTR.Text := Edit5NameUA.Text;
  if IsEmpty(Edit5CompanyTR.Text) then
    Edit5CompanyTR.Text := Edit5CompanyUA.Text;
  if IsEmpty(Memo5RespTR.Text) then
    Memo5RespTR.Text := Memo5RespUA.Text;
  if IsEmpty(Edit5BenefitsTR.Text) then
    Edit5BenefitsTR.Text := Edit5BenefitsUA.Text;
  if IsEmpty(Edit5BottomTR.Text) then
    Edit5BottomTR.Text := Edit5BottomUA.Text;

  if IsEmpty(Edit6DatesTR.Text) then
    Edit6DatesTR.Text := Edit6DatesUA.Text;
  if IsEmpty(Edit6NameTR.Text) then
    Edit6NameTR.Text := Edit6NameUA.Text;
  if IsEmpty(Edit6CompanyTR.Text) then
    Edit6CompanyTR.Text := Edit6CompanyUA.Text;
  if IsEmpty(Memo6RespTR.Text) then
    Memo6RespTR.Text := Memo6RespUA.Text;
  if IsEmpty(Edit6BenefitsTR.Text) then
    Edit6BenefitsTR.Text := Edit6BenefitsUA.Text;
  if IsEmpty(Edit6BottomTR.Text) then
    Edit6BottomTR.Text := Edit6BottomUA.Text;

  if IsEmpty(Edit7DatesTR.Text) then
    Edit7DatesTR.Text := Edit7DatesUA.Text;
  if IsEmpty(Edit7NameTR.Text) then
    Edit7NameTR.Text := Edit7NameUA.Text;
  if IsEmpty(Edit7CompanyTR.Text) then
    Edit7CompanyTR.Text := Edit7CompanyUA.Text;
  if IsEmpty(Memo7RespTR.Text) then
    Memo7RespTR.Text := Memo7RespUA.Text;
  if IsEmpty(Edit7BenefitsTR.Text) then
    Edit7BenefitsTR.Text := Edit7BenefitsUA.Text;
  if IsEmpty(Edit7BottomTR.Text) then
    Edit7BottomTR.Text := Edit7BottomUA.Text;

  if IsEmpty(Edit8DatesTR.Text) then
    Edit8DatesTR.Text := Edit8DatesUA.Text;
  if IsEmpty(Edit8NameTR.Text) then
    Edit8NameTR.Text := Edit8NameUA.Text;
  if IsEmpty(Edit8CompanyTR.Text) then
    Edit8CompanyTR.Text := Edit8CompanyUA.Text;
  if IsEmpty(Memo8RespTR.Text) then
    Memo8RespTR.Text := Memo8RespUA.Text;
  if IsEmpty(Edit8BenefitsTR.Text) then
    Edit8BenefitsTR.Text := Edit8BenefitsUA.Text;
  if IsEmpty(Edit8BottomTR.Text) then
    Edit8BottomTR.Text := Edit8BottomUA.Text;

  if IsEmpty(Edit9DatesTR.Text) then
    Edit9DatesTR.Text := Edit9DatesUA.Text;
  if IsEmpty(Edit9NameTR.Text) then
    Edit9NameTR.Text := Edit9NameUA.Text;
  if IsEmpty(Edit9CompanyTR.Text) then
    Edit9CompanyTR.Text := Edit9CompanyUA.Text;
  if IsEmpty(Memo9RespTR.Text) then
    Memo9RespTR.Text := Memo9RespUA.Text;
  if IsEmpty(Edit9BenefitsTR.Text) then
    Edit9BenefitsTR.Text := Edit9BenefitsUA.Text;
  if IsEmpty(Edit9BottomTR.Text) then
    Edit9BottomTR.Text := Edit9BottomUA.Text;

  if IsEmpty(Edit10DatesTR.Text) then
    Edit10DatesTR.Text := Edit10DatesUA.Text;
  if IsEmpty(Edit10NameTR.Text) then
    Edit10NameTR.Text := Edit10NameUA.Text;
  if IsEmpty(Edit10CompanyTR.Text) then
    Edit10CompanyTR.Text := Edit10CompanyUA.Text;
  if IsEmpty(Memo10RespTR.Text) then
    Memo10RespTR.Text := Memo10RespUA.Text;
  if IsEmpty(Edit10BenefitsTR.Text) then
    Edit10BenefitsTR.Text := Edit10BenefitsUA.Text;
  if IsEmpty(Edit10BottomTR.Text) then
    Edit10BottomTR.Text := Edit10BottomUA.Text;

end;

procedure TFormNewResume.SetEmptyFooterUA;
begin
  MemoArticle1UA.Text := '';
  EditArticle1UA.Text := '';
  MemoArticle2UA.Text := '';
  EditArticle2UA.Text := '';
  MemoArticle3UA.Text := '';
  EditArticle3UA.Text := '';
  MemoArticle4UA.Text := '';
  EditArticle4UA.Text := '';
end;

procedure TFormNewResume.SetEmptyJobsTR;
begin
  Edit1DatesTR.Text := '';
  Edit1NameTR.Text := '';
  Edit1CompanyTR.Text := '';
  Memo1RespTR.Text := '';
  Edit1BenefitsTR.Text := '';
  Edit1BottomTR.Text := '';

  Edit2DatesTR.Text := '';
  Edit2NameTR.Text := '';
  Edit2CompanyTR.Text := '';
  Memo2RespTR.Text := '';
  Edit2BenefitsTR.Text := '';
  Edit2BottomTR.Text := '';

  Edit3DatesTR.Text := '';
  Edit3NameTR.Text := '';
  Edit3CompanyTR.Text := '';
  Memo3RespTR.Text := '';
  Edit3BenefitsTR.Text := '';
  Edit3BottomTR.Text := '';

  Edit4DatesTR.Text := '';
  Edit4NameTR.Text := '';
  Edit4CompanyTR.Text := '';
  Memo4RespTR.Text := '';
  Edit4BenefitsTR.Text := '';
  Edit4BottomTR.Text := '';

  Edit5DatesTR.Text := '';
  Edit5NameTR.Text := '';
  Edit5CompanyTR.Text := '';
  Memo5RespTR.Text := '';
  Edit5BenefitsTR.Text := '';
  Edit5BottomTR.Text := '';

  Edit6DatesTR.Text := '';
  Edit6NameTR.Text := '';
  Edit6CompanyTR.Text := '';
  Memo6RespTR.Text := '';
  Edit6BenefitsTR.Text := '';
  Edit6BottomTR.Text := '';

  Edit7DatesTR.Text := '';
  Edit7NameTR.Text := '';
  Edit7CompanyTR.Text := '';
  Memo7RespTR.Text := '';
  Edit7BenefitsTR.Text := '';
  Edit7BottomTR.Text := '';

  Edit8DatesTR.Text := '';
  Edit8NameTR.Text := '';
  Edit8CompanyTR.Text := '';
  Memo8RespTR.Text := '';
  Edit8BenefitsTR.Text := '';
  Edit8BottomTR.Text := '';

  Edit9DatesTR.Text := '';
  Edit9NameTR.Text := '';
  Edit9CompanyTR.Text := '';
  Memo9RespTR.Text := '';
  Edit9BenefitsTR.Text := '';
  Edit9BottomTR.Text := '';

  Edit10DatesTR.Text := '';
  Edit10NameTR.Text := '';
  Edit10CompanyTR.Text := '';
  Memo10RespTR.Text := '';
  Edit10BenefitsTR.Text := '';
  Edit10BottomTR.Text := '';
end;

procedure TFormNewResume.SetEmptyJobsUA;
begin
  Edit1DatesUA.Text := '';
  Edit1NameUA.Text := '';
  Edit1CompanyUA.Text := '';
  Memo1RespUA.Text := '';
  Edit1BenefitsUA.Text := '';
  Edit1BottomUA.Text := '';

  Edit2DatesUA.Text := '';
  Edit2NameUA.Text := '';
  Edit2CompanyUA.Text := '';
  Memo2RespUA.Text := '';
  Edit2BenefitsUA.Text := '';
  Memo2SkillsUA.Text := '';
  Edit2BottomUA.Text := '';

  Edit3DatesUA.Text := '';
  Edit3NameUA.Text := '';
  Edit3CompanyUA.Text := '';
  Memo3RespUA.Text := '';
  Edit3BenefitsUA.Text := '';
  Memo3SkillsUA.Text := '';
  Edit3BottomUA.Text := '';

  Edit4DatesUA.Text := '';
  Edit4NameUA.Text := '';
  Edit4CompanyUA.Text := '';
  Memo4RespUA.Text := '';
  Edit4BenefitsUA.Text := '';
  Memo4SkillsUA.Text := '';
  Edit4BottomUA.Text := '';

  Edit5DatesUA.Text := '';
  Edit5NameUA.Text := '';
  Edit5CompanyUA.Text := '';
  Memo5RespUA.Text := '';
  Edit5BenefitsUA.Text := '';
  Memo5SkillsUA.Text := '';
  Edit5BottomUA.Text := '';

  Edit6DatesUA.Text := '';
  Edit6NameUA.Text := '';
  Edit6CompanyUA.Text := '';
  Memo6RespUA.Text := '';
  Edit6BenefitsUA.Text := '';
  Memo6SkillsUA.Text := '';
  Edit6BottomUA.Text := '';

  Edit7DatesUA.Text := '';
  Edit7NameUA.Text := '';
  Edit7CompanyUA.Text := '';
  Memo7RespUA.Text := '';
  Edit7BenefitsUA.Text := '';
  Memo7SkillsUA.Text := '';
  Edit7BottomUA.Text := '';

  Edit8DatesUA.Text := '';
  Edit8NameUA.Text := '';
  Edit8CompanyUA.Text := '';
  Memo8RespUA.Text := '';
  Edit8BenefitsUA.Text := '';
  Memo8SkillsUA.Text := '';
  Edit8BottomUA.Text := '';

  Edit9DatesUA.Text := '';
  Edit9NameUA.Text := '';
  Edit9CompanyUA.Text := '';
  Memo9RespUA.Text := '';
  Edit9BenefitsUA.Text := '';
  Memo9SkillsUA.Text := '';
  Edit9BottomUA.Text := '';

  Edit10DatesUA.Text := '';
  Edit10NameUA.Text := '';
  Edit10CompanyUA.Text := '';
  Memo10RespUA.Text := '';
  Edit10BenefitsUA.Text := '';
  Memo10SkillsUA.Text := '';
  Edit10BottomUA.Text := '';
end;

procedure TFormNewResume.SetEmptyResume;
begin
  EditNameTR.Clear;
  EditOpportunityTR.Clear;
  EditPlaceTR.Text := 'Віддалена (за кордоном)';
  EditPhonesTR.Text := '+380 (93)1775176 (WhatsApp, Viber)';
  MemoIntroTR.Clear;
  ComboBoxLangTR.Text := 'UA';
  ComboBoxRegionTR.Text := 'Ukraine';
end;

procedure TFormNewResume.GetValuesFromTemplate(TemplateId: integer);
begin
  if TemplateId <= 0 then
    SetEmptyResume;
  if TemplateId > 0 then
  begin
    UniGetTemplate.Close;
    UniGetTemplate.ParamByName('p_id').AsInteger := TemplateId;
    UniGetTemplate.Open;
    if VarIsNull(UniGetTemplate['id']) then
      SetEmptyResume
    else
    begin
      if VarIsNull(UniGetTemplate['name']) then
        EditNameUA.Text := ''
      else
        EditNameUA.Text := UniGetTemplate['name'];
      if VarIsNull(UniGetTemplate['job_opportunity']) then
        EditOpportunityUA.Text := ''
      else
        EditOpportunityUA.Text := UniGetTemplate['job_opportunity'];
      if VarIsNull(UniGetTemplate['job_place']) then
        EditPlaceUA.Text := ''
      else
        EditPlaceUA.Text := UniGetTemplate['job_place'];
      if VarIsNull(UniGetTemplate['phone_numbers_text']) then
        EditPhonesUA.Text := ''
      else
        EditPhonesUA.Text := UniGetTemplate['phone_numbers_text'];
      if VarIsNull(UniGetTemplate['resume_introduction']) then
        MemoIntroUA.Text := ''
      else
        MemoIntroUA.Text := UniGetTemplate['resume_introduction'];
    end;
  end;
end;

procedure TFormNewResume.ChangeDates1;
var
  FullMBYear, ShortMBYear, FullMEYear, ShortMEYear: string;
begin
  FormMain.GetMonthRegionByMask(CalendarPickerB1TR.Date, 'EN', FullMBYear, ShortMBYear);
  FormMain.GetMonthRegionByMask(CalendarPickerE1TR.Date, 'EN', FullMEYear, ShortMEYear);
  Edit1DatesTR.Text := FullMBYear + '-' + FullMEYear;
end;

procedure TFormNewResume.ChangeDates2;
var
  FullMBYear, ShortMBYear, FullMEYear, ShortMEYear: string;
begin
  FormMain.GetMonthRegionByMask(CalendarPickerB2TR.Date, 'EN', FullMBYear, ShortMBYear);
  FormMain.GetMonthRegionByMask(CalendarPickerE2TR.Date, 'EN', FullMEYear, ShortMEYear);
  Edit2DatesTR.Text := FullMBYear + '-' + FullMEYear;
end;

procedure TFormNewResume.ChangeDates3;
var
  FullMBYear, ShortMBYear, FullMEYear, ShortMEYear: string;
begin
  FormMain.GetMonthRegionByMask(CalendarPickerB3TR.Date, 'EN', FullMBYear, ShortMBYear);
  FormMain.GetMonthRegionByMask(CalendarPickerE3TR.Date, 'EN', FullMEYear, ShortMEYear);
  Edit3DatesTR.Text := FullMBYear + '-' + FullMEYear;
end;

procedure TFormNewResume.ChangeDates4;
var
  FullMBYear, ShortMBYear, FullMEYear, ShortMEYear: string;
begin
  FormMain.GetMonthRegionByMask(CalendarPickerB4TR.Date, 'EN', FullMBYear, ShortMBYear);
  FormMain.GetMonthRegionByMask(CalendarPickerE4TR.Date, 'EN', FullMEYear, ShortMEYear);
  Edit4DatesTR.Text := FullMBYear + '-' + FullMEYear;
end;

procedure TFormNewResume.ChangeDates5;
var
  FullMBYear, ShortMBYear, FullMEYear, ShortMEYear: string;
begin
  FormMain.GetMonthRegionByMask(CalendarPickerB5TR.Date, 'EN', FullMBYear, ShortMBYear);
  FormMain.GetMonthRegionByMask(CalendarPickerE5TR.Date, 'EN', FullMEYear, ShortMEYear);
  Edit5DatesTR.Text := FullMBYear + '-' + FullMEYear;
end;

procedure TFormNewResume.ChangeDates6;
var
  FullMBYear, ShortMBYear, FullMEYear, ShortMEYear: string;
begin
  FormMain.GetMonthRegionByMask(CalendarPickerB6TR.Date, 'EN', FullMBYear, ShortMBYear);
  FormMain.GetMonthRegionByMask(CalendarPickerE6TR.Date, 'EN', FullMEYear, ShortMEYear);
  Edit6DatesTR.Text := FullMBYear + '-' + FullMEYear;
end;

procedure TFormNewResume.ChangeDates7;
var
  FullMBYear, ShortMBYear, FullMEYear, ShortMEYear: string;
begin
  FormMain.GetMonthRegionByMask(CalendarPickerB7TR.Date, 'EN', FullMBYear, ShortMBYear);
  FormMain.GetMonthRegionByMask(CalendarPickerE7TR.Date, 'EN', FullMEYear, ShortMEYear);
  Edit7DatesTR.Text := FullMBYear + '-' + FullMEYear;
end;

procedure TFormNewResume.ChangeDates8;
var
  FullMBYear, ShortMBYear, FullMEYear, ShortMEYear: string;
begin
  FormMain.GetMonthRegionByMask(CalendarPickerB8TR.Date, 'EN', FullMBYear, ShortMBYear);
  FormMain.GetMonthRegionByMask(CalendarPickerE8TR.Date, 'EN', FullMEYear, ShortMEYear);
  Edit8DatesTR.Text := FullMBYear + '-' + FullMEYear;
end;

procedure TFormNewResume.ChangeDates9;
var
  FullMBYear, ShortMBYear, FullMEYear, ShortMEYear: string;
begin
  FormMain.GetMonthRegionByMask(CalendarPickerB9TR.Date, 'EN', FullMBYear, ShortMBYear);
  FormMain.GetMonthRegionByMask(CalendarPickerE9TR.Date, 'EN', FullMEYear, ShortMEYear);
  Edit9DatesTR.Text := FullMBYear + '-' + FullMEYear;
end;

procedure TFormNewResume.ChangeDates10;
var
  FullMBYear, ShortMBYear, FullMEYear, ShortMEYear: string;
begin
  FormMain.GetMonthRegionByMask(CalendarPickerB10TR.Date, 'EN', FullMBYear, ShortMBYear);
  FormMain.GetMonthRegionByMask(CalendarPickerE10TR.Date, 'EN', FullMEYear, ShortMEYear);
  Edit10DatesTR.Text := FullMBYear + '-' + FullMEYear;
end;

procedure TFormNewResume.CalendarPickerB10TRCloseUp(Sender: TObject);
begin
  ChangeDates10;
end;

procedure TFormNewResume.CalendarPickerB1TRCloseUp(Sender: TObject);
begin
  ChangeDates1;
end;

procedure TFormNewResume.CalendarPickerB2TRCloseUp(Sender: TObject);
begin
  ChangeDates2;
end;

procedure TFormNewResume.CalendarPickerB3TRCloseUp(Sender: TObject);
begin
  ChangeDates3;
end;

procedure TFormNewResume.CalendarPickerB4TRCloseUp(Sender: TObject);
begin
  ChangeDates4;
end;

procedure TFormNewResume.CalendarPickerB5TRCloseUp(Sender: TObject);
begin
  ChangeDates5;
end;

procedure TFormNewResume.CalendarPickerB6TRCloseUp(Sender: TObject);
begin
  ChangeDates6;
end;

procedure TFormNewResume.CalendarPickerB7TRCloseUp(Sender: TObject);
begin
  ChangeDates7;
end;

procedure TFormNewResume.CalendarPickerB8TRCloseUp(Sender: TObject);
begin
  ChangeDates8;
end;

procedure TFormNewResume.CalendarPickerB9TRCloseUp(Sender: TObject);
begin
  ChangeDates9;
end;

procedure TFormNewResume.CalendarPickerE10TRCloseUp(Sender: TObject);
begin
  ChangeDates10;
end;

procedure TFormNewResume.CalendarPickerE1TRCloseUp(Sender: TObject);
begin
  ChangeDates1;
end;

procedure TFormNewResume.CalendarPickerE2TRCloseUp(Sender: TObject);
begin
  ChangeDates2;
end;

procedure TFormNewResume.CalendarPickerE3TRCloseUp(Sender: TObject);
begin
  ChangeDates3;
end;

procedure TFormNewResume.CalendarPickerE4TRCloseUp(Sender: TObject);
begin
  ChangeDates4;
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

procedure TFormNewResume.CalendarPickerE8TRCloseUp(Sender: TObject);
begin
  ChangeDates8;
end;

procedure TFormNewResume.CalendarPickerE9TRCloseUp(Sender: TObject);
begin
  ChangeDates9;
end;

end.
