unit UpdateTemplate;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, MemDS, DBAccess, Uni,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.WinXCalendars, Vcl.ComCtrls;

type
  TFormUpdateTemplate = class(TForm)
    UniTemplateID: TUniQuery;
    BitBtnClose: TBitBtn;
    UniTemplateIDid: TIntegerField;
    UniTemplateIDname: TStringField;
    UniTemplateIDjob_opportunity: TStringField;
    UniTemplateIDjob_place: TStringField;
    UniTemplateIDphone_numbers_text: TStringField;
    UniTemplateIDcreated: TDateTimeField;
    UniTemplateIDupdated: TDateTimeField;
    BitBtnSave: TBitBtn;
    UniTemplateIDtemplate_introduction: TStringField;
    UniTemplateIDarchived: TBooleanField;
    PageControlRU: TPageControl;
    TabSheetMainRU: TTabSheet;
    EditNameRU: TEdit;
    EditOpportunityRU: TEdit;
    EditPlaceRU: TEdit;
    EditPhonesRU: TEdit;
    MemoIntroRU: TMemo;
    EditLangRU: TEdit;
    EditRegionRU: TEdit;
    TabSheetFooterRU: TTabSheet;
    StaticText1: TStaticText;
    EditArticle1RU: TEdit;
    EditArticle2RU: TEdit;
    MemoArticle1RU: TMemo;
    MemoArticle2RU: TMemo;
    EditArticle3RU: TEdit;
    EditArticle4RU: TEdit;
    MemoArticle3RU: TMemo;
    MemoArticle4RU: TMemo;
    TabSheetJob1RU: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit1DatesRU: TEdit;
    Edit1NameRU: TEdit;
    Edit1CompanyRU: TEdit;
    Memo1RespRU: TMemo;
    Edit1BenefitsRU: TEdit;
    Edit1BottomRU: TEdit;
    Memo1SkillsRU: TMemo;
    CalendarPickerB1RU: TCalendarPicker;
    CalendarPickerE1RU: TCalendarPicker;
    TabSheetJob2RU: TTabSheet;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Edit2DatesRU: TEdit;
    Edit2NameRU: TEdit;
    Edit2CompanyRU: TEdit;
    Memo2RespRU: TMemo;
    Edit2BenefitsRU: TEdit;
    Edit2BottomRU: TEdit;
    Memo2SkillsRU: TMemo;
    CalendarPickerB2RU: TCalendarPicker;
    CalendarPickerE2RU: TCalendarPicker;
    TabSheetJob3RU: TTabSheet;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Edit3DatesRU: TEdit;
    Edit3NameRU: TEdit;
    Edit3CompanyRU: TEdit;
    Memo3RespRU: TMemo;
    Edit3BenefitsRU: TEdit;
    Edit3BottomRU: TEdit;
    Memo3SkillsRU: TMemo;
    CalendarPickerB3RU: TCalendarPicker;
    CalendarPickerE3RU: TCalendarPicker;
    TabSheetJob4RU: TTabSheet;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Edit4DatesRU: TEdit;
    Edit4NameRU: TEdit;
    Edit4CompanyRU: TEdit;
    Memo4RespRU: TMemo;
    Edit4BenefitsRU: TEdit;
    Edit4BottomRU: TEdit;
    Memo4SkillsRU: TMemo;
    CalendarPickerB4RU: TCalendarPicker;
    CalendarPickerE4RU: TCalendarPicker;
    TabSheetJob5RU: TTabSheet;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Edit5DatesRU: TEdit;
    Edit5NameRU: TEdit;
    Edit5CompanyRU: TEdit;
    Memo5RespRU: TMemo;
    Edit5BenefitsRU: TEdit;
    Edit5BottomRU: TEdit;
    Memo5SkillsRU: TMemo;
    CalendarPickerB5RU: TCalendarPicker;
    CalendarPickerE5RU: TCalendarPicker;
    TabSheetJob6RU: TTabSheet;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Memo6RespRU: TMemo;
    Edit6BenefitsRU: TEdit;
    Edit6BottomRU: TEdit;
    Edit6DatesRU: TEdit;
    Edit6NameRU: TEdit;
    Edit6CompanyRU: TEdit;
    Memo6SkillsRU: TMemo;
    CalendarPickerB6RU: TCalendarPicker;
    CalendarPickerE6RU: TCalendarPicker;
    TabSheetJob7RU: TTabSheet;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Memo7RespRU: TMemo;
    Edit7BenefitsRU: TEdit;
    Edit7BottomRU: TEdit;
    Edit7DatesRU: TEdit;
    Edit7NameRU: TEdit;
    Edit7CompanyRU: TEdit;
    Memo7SkillsRU: TMemo;
    CalendarPickerB7RU: TCalendarPicker;
    CalendarPickerE7RU: TCalendarPicker;
    TabSheetJob8RU: TTabSheet;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Memo8RespRU: TMemo;
    Edit8BenefitsRU: TEdit;
    Edit8BottomRU: TEdit;
    Edit8DatesRU: TEdit;
    Edit8NameRU: TEdit;
    Edit8CompanyRU: TEdit;
    Memo8SkillsRU: TMemo;
    CalendarPickerB8RU: TCalendarPicker;
    CalendarPickerE8RU: TCalendarPicker;
    TabSheetJob9RU: TTabSheet;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Memo9RespRU: TMemo;
    Edit9BenefitsRU: TEdit;
    Edit9BottomRU: TEdit;
    Edit9DatesRU: TEdit;
    Edit9NameRU: TEdit;
    Edit9CompanyRU: TEdit;
    Memo9SkillsRU: TMemo;
    CalendarPickerB9RU: TCalendarPicker;
    CalendarPickerE9RU: TCalendarPicker;
    TabSheet10RU: TTabSheet;
    Label68: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    Memo10RespRU: TMemo;
    Edit10BenefitsRU: TEdit;
    Edit10BottomRU: TEdit;
    Edit10DatesRU: TEdit;
    Edit10NameRU: TEdit;
    Edit10CompanyRU: TEdit;
    Memo10SkillsRU: TMemo;
    CalendarPickerB10RU: TCalendarPicker;
    CalendarPickerE10RU: TCalendarPicker;
    PageControlTR: TPageControl;
    TabSheet1: TTabSheet;
    EditNameTR: TEdit;
    EditOpportunityTR: TEdit;
    EditPlaceTR: TEdit;
    EditPhonesTR: TEdit;
    MemoIntroTR: TMemo;
    EditLangTR: TEdit;
    EditRegionTR: TEdit;
    TabSheet2: TTabSheet;
    StaticText2: TStaticText;
    EditArticle1TR: TEdit;
    EditArticle2TR: TEdit;
    MemoArticle1TR: TMemo;
    MemoArticle2TR: TMemo;
    EditArticle3TR: TEdit;
    EditArticle4TR: TEdit;
    MemoArticle3TR: TMemo;
    MemoArticle4TR: TMemo;
    TabSheet3: TTabSheet;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Edit1DatesTR: TEdit;
    Edit1NameTR: TEdit;
    Edit1CompanyTR: TEdit;
    Memo1RespTR: TMemo;
    Edit1BenefitsTR: TEdit;
    Edit1BottomTR: TEdit;
    Memo1SkillsTR: TMemo;
    CalendarPickerB1TR: TCalendarPicker;
    CalendarPickerE1TR: TCalendarPicker;
    TabSheet4: TTabSheet;
    Label13: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    Edit2DatesTR: TEdit;
    Edit2NameTR: TEdit;
    Edit2CompanyTR: TEdit;
    Memo2RespTR: TMemo;
    Edit2BenefitsTR: TEdit;
    Edit2BottomTR: TEdit;
    Memo2SkillsTR: TMemo;
    CalendarPickerB2TR: TCalendarPicker;
    CalendarPickerE2TR: TCalendarPicker;
    TabSheet5: TTabSheet;
    Label67: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    Label77: TLabel;
    Label78: TLabel;
    Edit3DatesTR: TEdit;
    Edit3NameTR: TEdit;
    Edit3CompanyTR: TEdit;
    Memo3RespTR: TMemo;
    Edit3BenefitsTR: TEdit;
    Edit3BottomTR: TEdit;
    Memo3SkillsTR: TMemo;
    CalendarPickerB3TR: TCalendarPicker;
    CalendarPickerE3TR: TCalendarPicker;
    TabSheet6: TTabSheet;
    Label79: TLabel;
    Label80: TLabel;
    Label81: TLabel;
    Label82: TLabel;
    Label83: TLabel;
    Label84: TLabel;
    Edit4DatesTR: TEdit;
    Edit4NameTR: TEdit;
    Edit4CompanyTR: TEdit;
    Memo4RespTR: TMemo;
    Edit4BenefitsTR: TEdit;
    Edit4BottomTR: TEdit;
    Memo4SkillsTR: TMemo;
    CalendarPickerB4TR: TCalendarPicker;
    CalendarPickerE4TR: TCalendarPicker;
    TabSheet7: TTabSheet;
    Label85: TLabel;
    Label86: TLabel;
    Label87: TLabel;
    Label88: TLabel;
    Label89: TLabel;
    Label90: TLabel;
    Edit5DatesTR: TEdit;
    Edit5NameTR: TEdit;
    Edit5CompanyTR: TEdit;
    Memo5RespTR: TMemo;
    Edit5BenefitsTR: TEdit;
    Edit5BottomTR: TEdit;
    Memo5SkillsTR: TMemo;
    CalendarPickerB5TR: TCalendarPicker;
    CalendarPickerE5TR: TCalendarPicker;
    TabSheet8: TTabSheet;
    Label91: TLabel;
    Label92: TLabel;
    Label93: TLabel;
    Label94: TLabel;
    Label95: TLabel;
    Label96: TLabel;
    Memo6RespTR: TMemo;
    Edit6BenefitsTR: TEdit;
    Edit6BottomTR: TEdit;
    Edit6DatesTR: TEdit;
    Edit6NameTR: TEdit;
    Edit6CompanyTR: TEdit;
    Memo6SkillsTR: TMemo;
    CalendarPickerB6TR: TCalendarPicker;
    CalendarPickerE6TR: TCalendarPicker;
    TabSheet9: TTabSheet;
    Label97: TLabel;
    Label98: TLabel;
    Label99: TLabel;
    Label100: TLabel;
    Label101: TLabel;
    Label102: TLabel;
    Memo7RespTR: TMemo;
    Edit7BenefitsTR: TEdit;
    Edit7BottomTR: TEdit;
    Edit7DatesTR: TEdit;
    Edit7NameTR: TEdit;
    Edit7CompanyTR: TEdit;
    Memo7SkillsTR: TMemo;
    CalendarPickerB7TR: TCalendarPicker;
    CalendarPickerE7TR: TCalendarPicker;
    TabSheet10: TTabSheet;
    Label103: TLabel;
    Label104: TLabel;
    Label105: TLabel;
    Label106: TLabel;
    Label107: TLabel;
    Label108: TLabel;
    Memo8RespTR: TMemo;
    Edit8BenefitsTR: TEdit;
    Edit8BottomTR: TEdit;
    Edit8DatesTR: TEdit;
    Edit8NameTR: TEdit;
    Edit8CompanyTR: TEdit;
    Memo8SkillsTR: TMemo;
    CalendarPickerB8TR: TCalendarPicker;
    CalendarPickerE8TR: TCalendarPicker;
    TabSheet11: TTabSheet;
    Label109: TLabel;
    Label110: TLabel;
    Label111: TLabel;
    Label112: TLabel;
    Label113: TLabel;
    Label114: TLabel;
    Memo9RespTR: TMemo;
    Edit9BenefitsTR: TEdit;
    Edit9BottomTR: TEdit;
    Edit9DatesTR: TEdit;
    Edit9NameTR: TEdit;
    Edit9CompanyTR: TEdit;
    Memo9SkillsTR: TMemo;
    CalendarPickerB9TR: TCalendarPicker;
    CalendarPickerE9TR: TCalendarPicker;
    TabSheet12: TTabSheet;
    Label115: TLabel;
    Label116: TLabel;
    Label117: TLabel;
    Label118: TLabel;
    Label119: TLabel;
    Label120: TLabel;
    Memo10RespTR: TMemo;
    Edit10BenefitsTR: TEdit;
    Edit10BottomTR: TEdit;
    Edit10DatesTR: TEdit;
    Edit10NameTR: TEdit;
    Edit10CompanyTR: TEdit;
    Memo10SkillsTR: TMemo;
    CalendarPickerB10TR: TCalendarPicker;
    CalendarPickerE10TR: TCalendarPicker;
    UniSPUpdateExperiences: TUniStoredProc;
    UniSPInsertSkills: TUniStoredProc;
    UniFootersID: TUniQuery;
    UniFootersIDid: TIntegerField;
    UniFootersIDtemplate_id: TIntegerField;
    UniFootersIDfooter_header: TStringField;
    UniFootersIDfooter_text: TStringField;
    UniFootersIDfooter_order: TIntegerField;
    UniFootersIDcreated: TDateTimeField;
    UniFootersIDupdated: TDateTimeField;
    UniSPUpdateTemplate: TUniStoredProc;
    UniExperienceID: TUniQuery;
    UniSkillsID: TUniQuery;
    UniExperienceIDexperience_id: TIntegerField;
    UniExperienceIDresume_id: TIntegerField;
    UniExperienceIDtemplate_id: TIntegerField;
    UniExperienceIDjob_order: TIntegerField;
    UniExperienceIDjob_position: TStringField;
    UniExperienceIDstart_date: TDateField;
    UniExperienceIDend_date: TDateField;
    UniExperienceIDemployer: TStringField;
    UniExperienceIDresponsibilities: TStringField;
    UniExperienceIDbenefits: TStringField;
    UniExperienceIDleave_reason: TStringField;
    UniExperienceIDcreated: TDateTimeField;
    UniExperienceIDt: TDateTimeField;
    UniSkillsIDskill_id: TIntegerField;
    UniSkillsIDexperience_id: TIntegerField;
    UniSkillsIDskill: TStringField;
    Label121: TLabel;
    Label122: TLabel;
    Label123: TLabel;
    Label124: TLabel;
    Label125: TLabel;
    Label126: TLabel;
    Label127: TLabel;
    BitBtnCopy: TBitBtn;
    Label128: TLabel;
    Label129: TLabel;
    Label130: TLabel;
    Label131: TLabel;
    Label132: TLabel;
    Label133: TLabel;
    Label134: TLabel;
    LabelTemplateID: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BitBtnSaveClick(Sender: TObject);
    procedure PageControlRUChange(Sender: TObject);
    procedure PageControlTRChange(Sender: TObject);
    procedure CalendarPickerB1TRChange(Sender: TObject);
    procedure CalendarPickerB1TRCloseUp(Sender: TObject);
    procedure CalendarPickerE1TRChange(Sender: TObject);
    procedure CalendarPickerE1TRCloseUp(Sender: TObject);
    procedure CalendarPickerB2TRChange(Sender: TObject);
    procedure CalendarPickerB2TRCloseUp(Sender: TObject);
    procedure CalendarPickerE2TRChange(Sender: TObject);
    procedure CalendarPickerE2TRCloseUp(Sender: TObject);
    procedure CalendarPickerB3TRChange(Sender: TObject);
    procedure CalendarPickerE3TRChange(Sender: TObject);
    procedure CalendarPickerE3TRCloseUp(Sender: TObject);
    procedure CalendarPickerB3TRCloseUp(Sender: TObject);
    procedure CalendarPickerB4TRChange(Sender: TObject);
    procedure CalendarPickerB4TRCloseUp(Sender: TObject);
    procedure CalendarPickerE4TRChange(Sender: TObject);
    procedure CalendarPickerE4TRCloseUp(Sender: TObject);
    procedure CalendarPickerB5TRChange(Sender: TObject);
    procedure CalendarPickerB5TRCloseUp(Sender: TObject);
    procedure CalendarPickerE5TRChange(Sender: TObject);
    procedure CalendarPickerE5TRCloseUp(Sender: TObject);
    procedure CalendarPickerB6TRChange(Sender: TObject);
    procedure CalendarPickerB6TRCloseUp(Sender: TObject);
    procedure CalendarPickerE6TRChange(Sender: TObject);
    procedure CalendarPickerE6TRCloseUp(Sender: TObject);
    procedure CalendarPickerB7TRChange(Sender: TObject);
    procedure CalendarPickerB7TRCloseUp(Sender: TObject);
    procedure CalendarPickerE7TRChange(Sender: TObject);
    procedure CalendarPickerE7TRCloseUp(Sender: TObject);
    procedure CalendarPickerB8TRChange(Sender: TObject);
    procedure CalendarPickerB8TRCloseUp(Sender: TObject);
    procedure CalendarPickerE8TRChange(Sender: TObject);
    procedure CalendarPickerE8TRCloseUp(Sender: TObject);
    procedure CalendarPickerB9TRChange(Sender: TObject);
    procedure CalendarPickerB9TRCloseUp(Sender: TObject);
    procedure CalendarPickerE9TRChange(Sender: TObject);
    procedure CalendarPickerE9TRCloseUp(Sender: TObject);
    procedure CalendarPickerB10TRChange(Sender: TObject);
    procedure CalendarPickerB10TRCloseUp(Sender: TObject);
    procedure CalendarPickerE10TRChange(Sender: TObject);
    procedure CalendarPickerE10TRCloseUp(Sender: TObject);
    procedure BitBtnCopyClick(Sender: TObject);
  private
    FTemplateID:integer;
    function SaveJobs: boolean;
    procedure ChangeDates1TR;
    procedure ChangeDates10TR;
    procedure ChangeDates2TR;
    procedure ChangeDates3TR;
    procedure ChangeDates4TR;
    procedure ChangeDates5TR;
    procedure ChangeDates6TR;
    procedure ChangeDates7TR;
    procedure ChangeDates8TR;
    procedure ChangeDates9TR;
    procedure SetFormValues;
    procedure SetValuesFootersRU;
    procedure SetValuesJobsRU;
    procedure SetValuesSkillsRU;
    procedure SetValuesTemplatesRU;
    function CheckValues: boolean;
    function SaveValues: boolean;
    function SaveTemplate: boolean;
    procedure SetEmptyFooters;
    procedure SetEmptyJobs;
    procedure SetEmptySkills;
    procedure SetEmptyTemplates;
    procedure CopyFooterTRfromUA;
    procedure CopyJobsTRFromUA;
    procedure CopyResumeTRfromUA;
  public
    procedure SetID(TemplateID:integer);
  end;

var
  FormUpdateTemplate: TFormUpdateTemplate;

implementation

{$R *.dfm}

uses MainForm;

{ TFormUpdateTemplate }

procedure TFormUpdateTemplate.BitBtnCopyClick(Sender: TObject);
begin
  CopyResumeTRfromUA;
  CopyFooterTRfromUA;
  CopyJobsTRFromUA;
end;

procedure TFormUpdateTemplate.BitBtnSaveClick(Sender: TObject);
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

procedure TFormUpdateTemplate.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
UniTemplateID.Close;
UniFootersID.Close;
UniSPUpdateExperiences.Close;
UniSPUpdateTemplate.Close;
UniSPInsertSkills.Close;
end;

procedure TFormUpdateTemplate.FormDestroy(Sender: TObject);
begin
UniTemplateID.Destroy;
UniFootersID.Destroy;
UniSPUpdateExperiences.Destroy;
UniSPUpdateTemplate.Destroy;
UniSPInsertSkills.Destroy;
end;

procedure TFormUpdateTemplate.PageControlTRChange(Sender: TObject);
begin
  PageControlRU.ActivePageIndex := PageControlTR.ActivePageIndex;
end;

procedure TFormUpdateTemplate.PageControlRUChange(Sender: TObject);
begin
  PageControlTR.ActivePageIndex := PageControlRU.ActivePageIndex;
end;

procedure TFormUpdateTemplate.SetID(TemplateID: integer);
begin
FTemplateID:=TemplateID;
LabelTemplateID.Caption:=IntToStr(TemplateID);
SetFormValues;
end;

function TFormUpdateTemplate.SaveJobs: boolean;
var i, FExperienceID:integer;
begin
  try
  if not FormMain.isEmpty(Edit1NameTR.Text) and not FormMain.isEmpty(Edit1CompanyTR.Text) then
    begin
      UniSPUpdateExperiences.Close;
      UniSPUpdateExperiences.ParamByName('p_flag').AsString := 'template_id';
//      UniSPUpdateExperiences.ParamByName('p_resume_id').AsInteger := null;
      UniSPUpdateExperiences.ParamByName('p_template_id').AsInteger := FTemplateID;
      UniSPUpdateExperiences.ParamByName('p_job_order').AsInteger := 1;
      UniSPUpdateExperiences.ParamByName('p_job_position').AsString := Edit1NameTR.Text;
      UniSPUpdateExperiences.ParamByName('p_start_date').AsDateTime :=CalendarPickerB1TR.Date;
      UniSPUpdateExperiences.ParamByName('p_end_date').AsDateTime := CalendarPickerE1TR.Date;
      UniSPUpdateExperiences.ParamByName('p_employer').AsString := Edit1CompanyTR.Text;
      UniSPUpdateExperiences.ParamByName('p_resp').AsString := Memo1RespTR.Text;
      UniSPUpdateExperiences.ParamByName('p_benefits').AsString := Edit1BenefitsTR.Text;
      UniSPUpdateExperiences.ParamByName('p_leave_reason').AsString := Edit1BottomTR.Text;
      UniSPUpdateExperiences.ExecSQL;
      FExperienceID:=UniSPUpdateExperiences.ParamByName('p_experience_id').Value;
    if (Trim(Memo1SkillsTR.Text)<>'') then
      for i := 0 to Memo1SkillsTR.Lines.Count - 1 do
//        if not FormMain.IsEmpty(Memo1SkillsTR.Lines[i]) then
          begin
          UniSPInsertSkills.Close;
          UniSPInsertSkills.ParamByName('p_experience_id').AsInteger:=FExperienceID;
          UniSPInsertSkills.ParamByName('p_skill').AsString:=Memo1SkillsTR.Lines[i];
          UniSPInsertSkills.ExecSQL;
          end;
    end;
  if not FormMain.isEmpty(Edit2NameTR.Text) and not FormMain.isEmpty(Edit2CompanyTR.Text) then
    begin
      UniSPUpdateExperiences.Close;
      UniSPUpdateExperiences.ParamByName('p_flag').AsString := 'template_id';
//      UniSPUpdateExperiences.ParamByName('p_resume_id').AsInteger := null;
      UniSPUpdateExperiences.ParamByName('p_template_id').AsInteger := FTemplateID;
      UniSPUpdateExperiences.ParamByName('p_job_order').AsInteger := 2;
      UniSPUpdateExperiences.ParamByName('p_job_position').AsString := Edit2NameTR.Text;
      UniSPUpdateExperiences.ParamByName('p_start_date').AsDateTime :=CalendarPickerB2TR.Date;
      UniSPUpdateExperiences.ParamByName('p_end_date').AsDateTime := CalendarPickerE2TR.Date;
      UniSPUpdateExperiences.ParamByName('p_employer').AsString := Edit2CompanyTR.Text;
      UniSPUpdateExperiences.ParamByName('p_resp').AsString := Memo2RespTR.Text;
      UniSPUpdateExperiences.ParamByName('p_benefits').AsString := Edit2BenefitsTR.Text;
      UniSPUpdateExperiences.ParamByName('p_leave_reason').AsString := Edit2BottomTR.Text;
      UniSPUpdateExperiences.ExecSQL;
      FExperienceID:=UniSPUpdateExperiences.ParamByName('p_experience_id').Value;
    if (Trim(Memo2SkillsTR.Text)<>'') then
      for i := 0 to Memo2SkillsTR.Lines.Count - 1 do
//        if not FormMain.IsEmpty(Memo2SkillsTR.Lines[i]) then
          begin
          UniSPInsertSkills.Close;
          UniSPInsertSkills.ParamByName('p_experience_id').AsInteger:=FExperienceID;
          UniSPInsertSkills.ParamByName('p_skill').AsString:=Memo2SkillsTR.Lines[i];
          UniSPInsertSkills.ExecSQL;
          end;
    end;
  if not FormMain.isEmpty(Edit3NameTR.Text) and not FormMain.isEmpty(Edit3CompanyTR.Text) then
    begin
      UniSPUpdateExperiences.Close;
      UniSPUpdateExperiences.ParamByName('p_flag').AsString := 'template_id';
//      UniSPUpdateExperiences.ParamByName('p_resume_id').AsInteger := null;
      UniSPUpdateExperiences.ParamByName('p_template_id').AsInteger := FTemplateID;
      UniSPUpdateExperiences.ParamByName('p_job_order').AsInteger := 3;
      UniSPUpdateExperiences.ParamByName('p_job_position').AsString := Edit3NameTR.Text;
      UniSPUpdateExperiences.ParamByName('p_start_date').AsDateTime :=CalendarPickerB3TR.Date;
      UniSPUpdateExperiences.ParamByName('p_end_date').AsDateTime := CalendarPickerE3TR.Date;
      UniSPUpdateExperiences.ParamByName('p_employer').AsString := Edit3CompanyTR.Text;
      UniSPUpdateExperiences.ParamByName('p_resp').AsString := Memo3RespTR.Text;
      UniSPUpdateExperiences.ParamByName('p_benefits').AsString := Edit3BenefitsTR.Text;
      UniSPUpdateExperiences.ParamByName('p_leave_reason').AsString := Edit3BottomTR.Text;
      UniSPUpdateExperiences.ExecSQL;
      FExperienceID:=UniSPUpdateExperiences.ParamByName('p_experience_id').Value;
    if (Trim(Memo3SkillsTR.Text)<>'') then
      for i := 0 to Memo3SkillsTR.Lines.Count - 1 do
//        if not FormMain.IsEmpty(Memo3SkillsTR.Lines[i]) then
          begin
          UniSPInsertSkills.Close;
          UniSPInsertSkills.ParamByName('p_experience_id').AsInteger:=FExperienceID;
          UniSPInsertSkills.ParamByName('p_skill').AsString:=Memo3SkillsTR.Lines[i];
          UniSPInsertSkills.ExecSQL;
          end;
    end;
  if not FormMain.isEmpty(Edit4NameTR.Text) and not FormMain.isEmpty(Edit4CompanyTR.Text) then
    begin
      UniSPUpdateExperiences.Close;
      UniSPUpdateExperiences.ParamByName('p_flag').AsString := 'template_id';
//      UniSPUpdateExperiences.ParamByName('p_resume_id').AsInteger := null;
      UniSPUpdateExperiences.ParamByName('p_template_id').AsInteger := FTemplateID;
      UniSPUpdateExperiences.ParamByName('p_job_order').AsInteger := 4;
      UniSPUpdateExperiences.ParamByName('p_job_position').AsString := Edit4NameTR.Text;
      UniSPUpdateExperiences.ParamByName('p_start_date').AsDateTime :=CalendarPickerB4TR.Date;
      UniSPUpdateExperiences.ParamByName('p_end_date').AsDateTime := CalendarPickerE4TR.Date;
      UniSPUpdateExperiences.ParamByName('p_employer').AsString := Edit4CompanyTR.Text;
      UniSPUpdateExperiences.ParamByName('p_resp').AsString := Memo4RespTR.Text;
      UniSPUpdateExperiences.ParamByName('p_benefits').AsString := Edit4BenefitsTR.Text;
      UniSPUpdateExperiences.ParamByName('p_leave_reason').AsString := Edit4BottomTR.Text;
      UniSPUpdateExperiences.ExecSQL;
      FExperienceID:=UniSPUpdateExperiences.ParamByName('p_experience_id').Value;
    if (Trim(Memo4SkillsTR.Text)<>'') then
      for i := 0 to Memo4SkillsTR.Lines.Count - 1 do
//        if not FormMain.IsEmpty(Memo4SkillsTR.Lines[i]) then
          begin
          UniSPInsertSkills.Close;
          UniSPInsertSkills.ParamByName('p_experience_id').AsInteger:=FExperienceID;
          UniSPInsertSkills.ParamByName('p_skill').AsString:=Memo4SkillsTR.Lines[i];
          UniSPInsertSkills.ExecSQL;
          end;
    end;
  if not FormMain.isEmpty(Edit5NameTR.Text) and not FormMain.isEmpty(Edit5CompanyTR.Text) then
    begin
      UniSPUpdateExperiences.Close;
      UniSPUpdateExperiences.ParamByName('p_flag').AsString := 'template_id';
//      UniSPUpdateExperiences.ParamByName('p_resume_id').AsInteger := null;
      UniSPUpdateExperiences.ParamByName('p_template_id').AsInteger := FTemplateID;
      UniSPUpdateExperiences.ParamByName('p_job_order').AsInteger := 5;
      UniSPUpdateExperiences.ParamByName('p_job_position').AsString := Edit5NameTR.Text;
      UniSPUpdateExperiences.ParamByName('p_start_date').AsDateTime :=CalendarPickerB5TR.Date;
      UniSPUpdateExperiences.ParamByName('p_end_date').AsDateTime := CalendarPickerE5TR.Date;
      UniSPUpdateExperiences.ParamByName('p_employer').AsString := Edit5CompanyTR.Text;
      UniSPUpdateExperiences.ParamByName('p_resp').AsString := Memo5RespTR.Text;
      UniSPUpdateExperiences.ParamByName('p_benefits').AsString := Edit5BenefitsTR.Text;
      UniSPUpdateExperiences.ParamByName('p_leave_reason').AsString := Edit5BottomTR.Text;
      UniSPUpdateExperiences.ExecSQL;
      FExperienceID:=UniSPUpdateExperiences.ParamByName('p_experience_id').Value;
    if (Trim(Memo5SkillsTR.Text)<>'') then
      for i := 0 to Memo5SkillsTR.Lines.Count - 1 do
//        if not FormMain.IsEmpty(Memo5SkillsTR.Lines[i]) then
          begin
          UniSPInsertSkills.Close;
          UniSPInsertSkills.ParamByName('p_experience_id').AsInteger:=FExperienceID;
          UniSPInsertSkills.ParamByName('p_skill').AsString:=Memo5SkillsTR.Lines[i];
          UniSPInsertSkills.ExecSQL;
          end;
    end;
  if not FormMain.isEmpty(Edit6NameTR.Text) and not FormMain.isEmpty(Edit6CompanyTR.Text) then
    begin
      UniSPUpdateExperiences.Close;
      UniSPUpdateExperiences.ParamByName('p_flag').AsString := 'template_id';
//      UniSPUpdateExperiences.ParamByName('p_resume_id').AsInteger := null;
      UniSPUpdateExperiences.ParamByName('p_template_id').AsInteger := FTemplateID;
      UniSPUpdateExperiences.ParamByName('p_job_order').AsInteger := 6;
      UniSPUpdateExperiences.ParamByName('p_job_position').AsString := Edit6NameTR.Text;
      UniSPUpdateExperiences.ParamByName('p_start_date').AsDateTime :=CalendarPickerB6TR.Date;
      UniSPUpdateExperiences.ParamByName('p_end_date').AsDateTime := CalendarPickerE6TR.Date;
      UniSPUpdateExperiences.ParamByName('p_employer').AsString := Edit6CompanyTR.Text;
      UniSPUpdateExperiences.ParamByName('p_resp').AsString := Memo6RespTR.Text;
      UniSPUpdateExperiences.ParamByName('p_benefits').AsString := Edit6BenefitsTR.Text;
      UniSPUpdateExperiences.ParamByName('p_leave_reason').AsString := Edit6BottomTR.Text;
      UniSPUpdateExperiences.ExecSQL;
      FExperienceID:=UniSPUpdateExperiences.ParamByName('p_experience_id').Value;
    if (Trim(Memo6SkillsTR.Text)<>'') then
      for i := 0 to Memo6SkillsTR.Lines.Count - 1 do
//        if not FormMain.IsEmpty(Memo6SkillsTR.Lines[i]) then
          begin
          UniSPInsertSkills.Close;
          UniSPInsertSkills.ParamByName('p_experience_id').AsInteger:=FExperienceID;
          UniSPInsertSkills.ParamByName('p_skill').AsString:=Memo6SkillsTR.Lines[i];
          UniSPInsertSkills.ExecSQL;
          end;
    end;
  if not FormMain.isEmpty(Edit7NameTR.Text) and not FormMain.isEmpty(Edit7CompanyTR.Text) then
    begin
      UniSPUpdateExperiences.Close;
      UniSPUpdateExperiences.ParamByName('p_flag').AsString := 'template_id';
//      UniSPUpdateExperiences.ParamByName('p_resume_id').AsInteger := null;
      UniSPUpdateExperiences.ParamByName('p_template_id').AsInteger := FTemplateID;
      UniSPUpdateExperiences.ParamByName('p_job_order').AsInteger := 7;
      UniSPUpdateExperiences.ParamByName('p_job_position').AsString := Edit7NameTR.Text;
      UniSPUpdateExperiences.ParamByName('p_start_date').AsDateTime :=CalendarPickerB7TR.Date;
      UniSPUpdateExperiences.ParamByName('p_end_date').AsDateTime := CalendarPickerE7TR.Date;
      UniSPUpdateExperiences.ParamByName('p_employer').AsString := Edit7CompanyTR.Text;
      UniSPUpdateExperiences.ParamByName('p_resp').AsString := Memo7RespTR.Text;
      UniSPUpdateExperiences.ParamByName('p_benefits').AsString := Edit7BenefitsTR.Text;
      UniSPUpdateExperiences.ParamByName('p_leave_reason').AsString := Edit7BottomTR.Text;
      UniSPUpdateExperiences.ExecSQL;
      FExperienceID:=UniSPUpdateExperiences.ParamByName('p_experience_id').Value;
    if (Trim(Memo7SkillsTR.Text)<>'') then
      for i := 0 to Memo7SkillsTR.Lines.Count - 1 do
//        if not FormMain.IsEmpty(Memo7SkillsTR.Lines[i]) then
          begin
          UniSPInsertSkills.Close;
          UniSPInsertSkills.ParamByName('p_experience_id').AsInteger:=FExperienceID;
          UniSPInsertSkills.ParamByName('p_skill').AsString:=Memo7SkillsTR.Lines[i];
          UniSPInsertSkills.ExecSQL;
          end;
    end;
  if not FormMain.isEmpty(Edit8NameTR.Text) and not FormMain.isEmpty(Edit8CompanyTR.Text) then
    begin
      UniSPUpdateExperiences.Close;
      UniSPUpdateExperiences.ParamByName('p_flag').AsString := 'template_id';
//      UniSPUpdateExperiences.ParamByName('p_resume_id').AsInteger := null;
      UniSPUpdateExperiences.ParamByName('p_template_id').AsInteger := FTemplateID;
      UniSPUpdateExperiences.ParamByName('p_job_order').AsInteger := 8;
      UniSPUpdateExperiences.ParamByName('p_job_position').AsString := Edit8NameTR.Text;
      UniSPUpdateExperiences.ParamByName('p_start_date').AsDateTime :=CalendarPickerB8TR.Date;
      UniSPUpdateExperiences.ParamByName('p_end_date').AsDateTime := CalendarPickerE8TR.Date;
      UniSPUpdateExperiences.ParamByName('p_employer').AsString := Edit8CompanyTR.Text;
      UniSPUpdateExperiences.ParamByName('p_resp').AsString := Memo8RespTR.Text;
      UniSPUpdateExperiences.ParamByName('p_benefits').AsString := Edit8BenefitsTR.Text;
      UniSPUpdateExperiences.ParamByName('p_leave_reason').AsString := Edit8BottomTR.Text;
      UniSPUpdateExperiences.ExecSQL;
      FExperienceID:=UniSPUpdateExperiences.ParamByName('p_experience_id').Value;
    if (Trim(Memo8SkillsTR.Text)<>'') then
      for i := 0 to Memo8SkillsTR.Lines.Count - 1 do
//        if not FormMain.IsEmpty(Memo8SkillsTR.Lines[i]) then
          begin
          UniSPInsertSkills.Close;
          UniSPInsertSkills.ParamByName('p_experience_id').AsInteger:=FExperienceID;
          UniSPInsertSkills.ParamByName('p_skill').AsString:=Memo8SkillsTR.Lines[i];
          UniSPInsertSkills.ExecSQL;
          end;
    end;
  if not FormMain.isEmpty(Edit9NameTR.Text) and not FormMain.isEmpty(Edit9CompanyTR.Text) then
    begin
      UniSPUpdateExperiences.Close;
      UniSPUpdateExperiences.ParamByName('p_flag').AsString := 'template_id';
//      UniSPUpdateExperiences.ParamByName('p_resume_id').AsInteger := null;
      UniSPUpdateExperiences.ParamByName('p_template_id').AsInteger := FTemplateID;
      UniSPUpdateExperiences.ParamByName('p_job_order').AsInteger := 9;
      UniSPUpdateExperiences.ParamByName('p_job_position').AsString := Edit9NameTR.Text;
      UniSPUpdateExperiences.ParamByName('p_start_date').AsDateTime :=CalendarPickerB9TR.Date;
      UniSPUpdateExperiences.ParamByName('p_end_date').AsDateTime := CalendarPickerE9TR.Date;
      UniSPUpdateExperiences.ParamByName('p_employer').AsString := Edit9CompanyTR.Text;
      UniSPUpdateExperiences.ParamByName('p_resp').AsString := Memo9RespTR.Text;
      UniSPUpdateExperiences.ParamByName('p_benefits').AsString := Edit9BenefitsTR.Text;
      UniSPUpdateExperiences.ParamByName('p_leave_reason').AsString := Edit9BottomTR.Text;
      UniSPUpdateExperiences.ExecSQL;
      FExperienceID:=UniSPUpdateExperiences.ParamByName('p_experience_id').Value;
    if (Trim(Memo9SkillsTR.Text)<>'') then
      for i := 0 to Memo9SkillsTR.Lines.Count - 1 do
//        if not FormMain.IsEmpty(Memo9SkillsTR.Lines[i]) then
          begin
          UniSPInsertSkills.Close;
          UniSPInsertSkills.ParamByName('p_experience_id').AsInteger:=FExperienceID;
          UniSPInsertSkills.ParamByName('p_skill').AsString:=Memo9SkillsTR.Lines[i];
          UniSPInsertSkills.ExecSQL;
          end;
    end;
  if not FormMain.isEmpty(Edit10NameTR.Text) and not FormMain.isEmpty(Edit10CompanyTR.Text) then
    begin
      UniSPUpdateExperiences.Close;
      UniSPUpdateExperiences.ParamByName('p_flag').AsString := 'template_id';
//      UniSPUpdateExperiences.ParamByName('p_resume_id').AsInteger := null;
      UniSPUpdateExperiences.ParamByName('p_template_id').AsInteger := FTemplateID;
      UniSPUpdateExperiences.ParamByName('p_job_order').AsInteger := 10;
      UniSPUpdateExperiences.ParamByName('p_job_position').AsString := Edit10NameTR.Text;
      UniSPUpdateExperiences.ParamByName('p_start_date').AsDateTime :=CalendarPickerB10TR.Date;
      UniSPUpdateExperiences.ParamByName('p_end_date').AsDateTime := CalendarPickerE10TR.Date;
      UniSPUpdateExperiences.ParamByName('p_employer').AsString := Edit10CompanyTR.Text;
      UniSPUpdateExperiences.ParamByName('p_resp').AsString := Memo10RespTR.Text;
      UniSPUpdateExperiences.ParamByName('p_benefits').AsString := Edit10BenefitsTR.Text;
      UniSPUpdateExperiences.ParamByName('p_leave_reason').AsString := Edit10BottomTR.Text;
      UniSPUpdateExperiences.ExecSQL;
      FExperienceID:=UniSPUpdateExperiences.ParamByName('p_experience_id').Value;
    if (Trim(Memo10SkillsTR.Text)<>'') then
      for i := 0 to Memo10SkillsTR.Lines.Count - 1 do
//        if not FormMain.IsEmpty(Memo10SkillsTR.Lines[i]) then
          begin
          UniSPInsertSkills.Close;
          UniSPInsertSkills.ParamByName('p_experience_id').AsInteger:=FExperienceID;
          UniSPInsertSkills.ParamByName('p_skill').AsString:=Memo10SkillsTR.Lines[i];
          UniSPInsertSkills.ExecSQL;
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

procedure TFormUpdateTemplate.CalendarPickerB10TRChange(Sender: TObject);
begin
ChangeDates10TR;
end;

procedure TFormUpdateTemplate.CalendarPickerB10TRCloseUp(Sender: TObject);
begin
ChangeDates10TR;
end;

procedure TFormUpdateTemplate.CalendarPickerB1TRChange(Sender: TObject);
begin
ChangeDates1TR;
end;

procedure TFormUpdateTemplate.CalendarPickerB1TRCloseUp(Sender: TObject);
begin
ChangeDates1TR;
end;

procedure TFormUpdateTemplate.CalendarPickerB2TRChange(Sender: TObject);
begin
ChangeDates2TR;
end;

procedure TFormUpdateTemplate.CalendarPickerB2TRCloseUp(Sender: TObject);
begin
ChangeDates2TR;
end;

procedure TFormUpdateTemplate.CalendarPickerB3TRChange(Sender: TObject);
begin
ChangeDates3TR;
end;

procedure TFormUpdateTemplate.CalendarPickerB3TRCloseUp(Sender: TObject);
begin
ChangeDates3TR;
end;

procedure TFormUpdateTemplate.CalendarPickerB4TRChange(Sender: TObject);
begin
ChangeDates4TR;
end;

procedure TFormUpdateTemplate.CalendarPickerB4TRCloseUp(Sender: TObject);
begin
ChangeDates4TR;
end;

procedure TFormUpdateTemplate.CalendarPickerB5TRChange(Sender: TObject);
begin
ChangeDates5TR;
end;

procedure TFormUpdateTemplate.CalendarPickerB5TRCloseUp(Sender: TObject);
begin
ChangeDates5TR;
end;

procedure TFormUpdateTemplate.CalendarPickerB6TRChange(Sender: TObject);
begin
ChangeDates6TR;
end;

procedure TFormUpdateTemplate.CalendarPickerB6TRCloseUp(Sender: TObject);
begin
ChangeDates6TR;
end;

procedure TFormUpdateTemplate.CalendarPickerB7TRChange(Sender: TObject);
begin
ChangeDates7TR;
end;

procedure TFormUpdateTemplate.CalendarPickerB7TRCloseUp(Sender: TObject);
begin
ChangeDates7TR;
end;

procedure TFormUpdateTemplate.CalendarPickerB8TRChange(Sender: TObject);
begin
ChangeDates8TR;
end;

procedure TFormUpdateTemplate.CalendarPickerB8TRCloseUp(Sender: TObject);
begin
ChangeDates8TR;
end;

procedure TFormUpdateTemplate.CalendarPickerB9TRChange(Sender: TObject);
begin
ChangeDates9TR;
end;

procedure TFormUpdateTemplate.CalendarPickerB9TRCloseUp(Sender: TObject);
begin
ChangeDates9TR;
end;

procedure TFormUpdateTemplate.CalendarPickerE10TRChange(Sender: TObject);
begin
ChangeDates10TR;
end;

procedure TFormUpdateTemplate.CalendarPickerE10TRCloseUp(Sender: TObject);
begin
ChangeDates10TR;
end;

procedure TFormUpdateTemplate.CalendarPickerE1TRChange(Sender: TObject);
begin
ChangeDates1TR;
end;

procedure TFormUpdateTemplate.CalendarPickerE1TRCloseUp(Sender: TObject);
begin
ChangeDates1TR;
end;

procedure TFormUpdateTemplate.CalendarPickerE2TRChange(Sender: TObject);
begin
ChangeDates2TR;
end;

procedure TFormUpdateTemplate.CalendarPickerE2TRCloseUp(Sender: TObject);
begin
ChangeDates2TR;
end;

procedure TFormUpdateTemplate.CalendarPickerE3TRChange(Sender: TObject);
begin
ChangeDates3TR;
end;

procedure TFormUpdateTemplate.CalendarPickerE3TRCloseUp(Sender: TObject);
begin
ChangeDates3TR;
end;

procedure TFormUpdateTemplate.CalendarPickerE4TRChange(Sender: TObject);
begin
ChangeDates4TR;
end;

procedure TFormUpdateTemplate.CalendarPickerE4TRCloseUp(Sender: TObject);
begin
ChangeDates4TR;
end;

procedure TFormUpdateTemplate.CalendarPickerE5TRChange(Sender: TObject);
begin
ChangeDates5TR;
end;

procedure TFormUpdateTemplate.CalendarPickerE5TRCloseUp(Sender: TObject);
begin
ChangeDates5TR;
end;

procedure TFormUpdateTemplate.CalendarPickerE6TRChange(Sender: TObject);
begin
ChangeDates6TR;
end;

procedure TFormUpdateTemplate.CalendarPickerE6TRCloseUp(Sender: TObject);
begin
ChangeDates6TR;
end;

procedure TFormUpdateTemplate.CalendarPickerE7TRChange(Sender: TObject);
begin
ChangeDates7TR;
end;

procedure TFormUpdateTemplate.CalendarPickerE7TRCloseUp(Sender: TObject);
begin
ChangeDates7TR;
end;

procedure TFormUpdateTemplate.CalendarPickerE8TRChange(Sender: TObject);
begin
ChangeDates8TR;
end;

procedure TFormUpdateTemplate.CalendarPickerE8TRCloseUp(Sender: TObject);
begin
ChangeDates8TR;
end;

procedure TFormUpdateTemplate.CalendarPickerE9TRChange(Sender: TObject);
begin
ChangeDates9TR;
end;

procedure TFormUpdateTemplate.CalendarPickerE9TRCloseUp(Sender: TObject);
begin
ChangeDates9TR;
end;

procedure TFormUpdateTemplate.ChangeDates1TR;
var
  FullMBYear, ShortMBYear, FullMEYear, ShortMEYear: string;
begin
  FormMain.GetMonthRegionByMask(CalendarPickerB1TR.Date, 'Template', FullMBYear, ShortMBYear);
  FormMain.GetMonthRegionByMask(CalendarPickerE1TR.Date, 'Template', FullMEYear, ShortMEYear);
  if Length(Trim(FullMBYear+FullMEYear))=0 then Edit1DatesTR.Text := '' else Edit1DatesTR.Text := FullMBYear + '-' + FullMEYear;
end;

procedure TFormUpdateTemplate.ChangeDates2TR;
var
  FullMBYear, ShortMBYear, FullMEYear, ShortMEYear: string;
begin
  FormMain.GetMonthRegionByMask(CalendarPickerB2TR.Date, 'Template', FullMBYear, ShortMBYear);
  FormMain.GetMonthRegionByMask(CalendarPickerE2TR.Date, 'Template', FullMEYear, ShortMEYear);
  if Length(Trim(FullMBYear+FullMEYear))=0 then Edit2DatesTR.Text := '' else Edit2DatesTR.Text := FullMBYear + '-' + FullMEYear;
end;

procedure TFormUpdateTemplate.ChangeDates3TR;
var
  FullMBYear, ShortMBYear, FullMEYear, ShortMEYear: string;
begin
  FormMain.GetMonthRegionByMask(CalendarPickerB3TR.Date, 'Template', FullMBYear, ShortMBYear);
  FormMain.GetMonthRegionByMask(CalendarPickerE3TR.Date, 'Template', FullMEYear, ShortMEYear);
  if Length(Trim(FullMBYear+FullMEYear))=0 then Edit3DatesTR.Text := '' else Edit3DatesTR.Text := FullMBYear + '-' + FullMEYear;
end;

procedure TFormUpdateTemplate.ChangeDates4TR;
var
  FullMBYear, ShortMBYear, FullMEYear, ShortMEYear: string;
begin
  FormMain.GetMonthRegionByMask(CalendarPickerB4TR.Date, 'Template', FullMBYear, ShortMBYear);
  FormMain.GetMonthRegionByMask(CalendarPickerE4TR.Date, 'Template', FullMEYear, ShortMEYear);
  if Length(Trim(FullMBYear+FullMEYear))=0 then Edit4DatesTR.Text := '' else Edit4DatesTR.Text := FullMBYear + '-' + FullMEYear;
end;

procedure TFormUpdateTemplate.ChangeDates5TR;
var
  FullMBYear, ShortMBYear, FullMEYear, ShortMEYear: string;
begin
  FormMain.GetMonthRegionByMask(CalendarPickerB5TR.Date, 'Template', FullMBYear, ShortMBYear);
  FormMain.GetMonthRegionByMask(CalendarPickerE5TR.Date, 'Template', FullMEYear, ShortMEYear);
  if Length(Trim(FullMBYear+FullMEYear))=0 then Edit5DatesTR.Text := '' else Edit5DatesTR.Text := FullMBYear + '-' + FullMEYear;
end;

procedure TFormUpdateTemplate.ChangeDates6TR;
var
  FullMBYear, ShortMBYear, FullMEYear, ShortMEYear: string;
begin
  FormMain.GetMonthRegionByMask(CalendarPickerB6TR.Date, 'Template', FullMBYear, ShortMBYear);
  FormMain.GetMonthRegionByMask(CalendarPickerE6TR.Date, 'Template', FullMEYear, ShortMEYear);
  if Length(Trim(FullMBYear+FullMEYear))=0 then Edit6DatesTR.Text := '' else Edit6DatesTR.Text := FullMBYear + '-' + FullMEYear;
end;

procedure TFormUpdateTemplate.ChangeDates7TR;
var
  FullMBYear, ShortMBYear, FullMEYear, ShortMEYear: string;
begin
  FormMain.GetMonthRegionByMask(CalendarPickerB7TR.Date, 'Template', FullMBYear, ShortMBYear);
  FormMain.GetMonthRegionByMask(CalendarPickerE7TR.Date, 'Template', FullMEYear, ShortMEYear);
  if Length(Trim(FullMBYear+FullMEYear))=0 then Edit7DatesTR.Text := '' else Edit7DatesTR.Text := FullMBYear + '-' + FullMEYear;
end;

procedure TFormUpdateTemplate.ChangeDates8TR;
var
  FullMBYear, ShortMBYear, FullMEYear, ShortMEYear: string;
begin
  FormMain.GetMonthRegionByMask(CalendarPickerB8TR.Date, 'Template', FullMBYear, ShortMBYear);
  FormMain.GetMonthRegionByMask(CalendarPickerE8TR.Date, 'Template', FullMEYear, ShortMEYear);
  if Length(Trim(FullMBYear+FullMEYear))=0 then Edit8DatesTR.Text := '' else Edit8DatesTR.Text := FullMBYear + '-' + FullMEYear;
end;

procedure TFormUpdateTemplate.ChangeDates9TR;
var
  FullMBYear, ShortMBYear, FullMEYear, ShortMEYear: string;
begin
  FormMain.GetMonthRegionByMask(CalendarPickerB9TR.Date, 'Template', FullMBYear, ShortMBYear);
  FormMain.GetMonthRegionByMask(CalendarPickerE9TR.Date, 'Template', FullMEYear, ShortMEYear);
  if Length(Trim(FullMBYear+FullMEYear))=0 then Edit9DatesTR.Text := '' else Edit9DatesTR.Text := FullMBYear + '-' + FullMEYear;
end;

procedure TFormUpdateTemplate.ChangeDates10TR;
var
  FullMBYear, ShortMBYear, FullMEYear, ShortMEYear: string;
begin
  FormMain.GetMonthRegionByMask(CalendarPickerB10TR.Date, 'Template', FullMBYear, ShortMBYear);
  FormMain.GetMonthRegionByMask(CalendarPickerE10TR.Date, 'Template', FullMEYear, ShortMEYear);
  if Length(Trim(FullMBYear+FullMEYear))=0 then Edit10DatesTR.Text := '' else Edit10DatesTR.Text := FullMBYear + '-' + FullMEYear;
end;

procedure TFormUpdateTemplate.SetFormValues;
begin
PageControlRu.ActivePageIndex:=0;
PageControlTR.ActivePageIndex:=0;
SetEmptyTemplates;
SetEmptyFooters;
SetEmptyJobs;
SetEmptySkills;
SetValuesTemplatesRU;
SetValuesFootersRU;
SetValuesJobsRU;
SetValuesSkillsRU;
end;

procedure TFormUpdateTemplate.SetValuesFootersRU;
begin
UniFootersID.Close;
UniFootersID.ParamByName('p_template_id').AsInteger:=FTemplateID;
UniFootersID.Open;

while not UniFootersID.EOF  do
  begin
  if UniFootersID['footer_order']=1 then
    begin
    EditArticle1RU.Text := UniFootersID['footer_header'];
    MemoArticle1RU.Text := UniFootersID['footer_text'];
    end;
  if UniFootersID['footer_order']=2 then
    begin
    EditArticle2RU.Text := UniFootersID['footer_header'];
    MemoArticle2RU.Text := UniFootersID['footer_text'];
    end;
  if UniFootersID['footer_order']=3 then
    begin
    EditArticle3RU.Text := UniFootersID['footer_header'];
    MemoArticle3RU.Text := UniFootersID['footer_text'];
    end;
  if UniFootersID['footer_order']=4 then
    begin
    EditArticle4RU.Text := UniFootersID['footer_header'];
    MemoArticle4RU.Text := UniFootersID['footer_text'];
    end;
  UniFootersID.Next;
  end;
end;

procedure TFormUpdateTemplate.SetValuesTemplatesRU;
begin
UniTemplateID.Close;
UniTemplateID.ParamByName('P_ID').AsInteger:=FTemplateID;
UniTemplateID.Open;
EditNameRU.Text:=UniTemplateID['name'];
EditOpportunityRU.Text:=UniTemplateID['job_opportunity'];
EditPlaceRU.Text:=UniTemplateID['job_place'];
EditPhonesRu.Text:=UniTemplateID['phone_numbers_text'];
MemoIntroRU.Text:=UniTemplateID['template_introduction'];
end;

procedure TFormUpdateTemplate.SetValuesSkillsRU;
begin
  Memo1SkillsRU.Text := '';
  Memo2SkillsRU.Text := '';
  Memo3SkillsRU.Text := '';
  Memo4SkillsRU.Text := '';
  Memo5SkillsRU.Text := '';
  Memo6SkillsRU.Text := '';
  Memo7SkillsRU.Text := '';
  Memo8SkillsRU.Text := '';
  Memo9SkillsRU.Text := '';
  Memo10SkillsRU.Text := '';
end;

procedure TFormUpdateTemplate.SetValuesJobsRU;
begin
UniExperienceID.Close;
UniExperienceID.ParamByName('p_template_id').AsInteger:=FTemplateID;
UniExperienceID.Open;
while not UniExperienceID.EOF do
  begin
    if UniExperienceID['job_order']=1 then
      begin
      CalendarPickerB1RU.Date:=UniExperienceID['start_date'];
      CalendarPickerE1RU.Date:=UniExperienceID['end_date'];
      ChangeDates1TR;
      Edit1NameRU.Text := UniExperienceID['job_position'];
      Edit1CompanyRU.Text := UniExperienceID['employer'];
      Memo1RespRU.Text := UniExperienceID['responsibilities'];
      Edit1BenefitsRU.Text := UniExperienceID['benefits'];
      Edit1BottomRU.Text := UniExperienceID['leave_reason'];
      UniSkillsID.Close;
      UniSkillsID.ParamByName('p_experience_id').AsInteger:=UniExperienceID['experience_id'];
      UniSkillsID.Open;
      Memo1SkillsRu.Clear;
      while not UniSkillsID.EOF do
        begin
          if not FormMain.IsEmpty(UniSkillsID['skill']) then Memo1SkillsRu.Lines.Add(UniSkillsID['skill']);
          UniSkillsID.Next;
        end;
      end;

    if UniExperienceID['job_order']=2 then
      begin
      CalendarPickerB2RU.Date:=UniExperienceID['start_date'];
      CalendarPickerE2RU.Date:=UniExperienceID['end_date'];
      ChangeDates2TR;
      Edit2NameRU.Text := UniExperienceID['job_position'];
      Edit2CompanyRU.Text := UniExperienceID['employer'];
      Memo2RespRU.Text := UniExperienceID['responsibilities'];
      Edit2BenefitsRU.Text := UniExperienceID['benefits'];
      Edit2BottomRU.Text := UniExperienceID['leave_reason'];
      UniSkillsID.Close;
      UniSkillsID.ParamByName('p_experience_id').AsInteger:=UniExperienceID['experience_id'];
      UniSkillsID.Open;
      Memo2SkillsRu.Clear;
      while not UniSkillsID.EOF do
        begin
          if not FormMain.IsEmpty(UniSkillsID['skill']) then Memo2SkillsRu.Lines.Add(UniSkillsID['skill']);
          UniSkillsID.Next;
        end;
      end;

    if UniExperienceID['job_order']=3 then
      begin
      CalendarPickerB3RU.Date:=UniExperienceID['start_date'];
      CalendarPickerE3RU.Date:=UniExperienceID['end_date'];
      ChangeDates3TR;
      Edit3NameRU.Text := UniExperienceID['job_position'];
      Edit3CompanyRU.Text := UniExperienceID['employer'];
      Memo3RespRU.Text := UniExperienceID['responsibilities'];
      Edit3BenefitsRU.Text := UniExperienceID['benefits'];
      Edit3BottomRU.Text := UniExperienceID['leave_reason'];
      UniSkillsID.Close;
      UniSkillsID.ParamByName('p_experience_id').AsInteger:=UniExperienceID['experience_id'];
      UniSkillsID.Open;
      Memo3SkillsRu.Clear;
      while not UniSkillsID.EOF do
        begin
          if not FormMain.IsEmpty(UniSkillsID['skill']) then Memo3SkillsRu.Lines.Add(UniSkillsID['skill']);
          UniSkillsID.Next;
        end;
      end;

    if UniExperienceID['job_order']=4 then
      begin
      CalendarPickerB4RU.Date:=UniExperienceID['start_date'];
      CalendarPickerE4RU.Date:=UniExperienceID['end_date'];
      ChangeDates4TR;
      Edit4NameRU.Text := UniExperienceID['job_position'];
      Edit4CompanyRU.Text := UniExperienceID['employer'];
      Memo4RespRU.Text := UniExperienceID['responsibilities'];
      Edit4BenefitsRU.Text := UniExperienceID['benefits'];
      Edit4BottomRU.Text := UniExperienceID['leave_reason'];
      UniSkillsID.Close;
      UniSkillsID.ParamByName('p_experience_id').AsInteger:=UniExperienceID['experience_id'];
      UniSkillsID.Open;
      Memo4SkillsRu.Clear;
      while not UniSkillsID.EOF do
        begin
          if not FormMain.IsEmpty(UniSkillsID['skill']) then Memo4SkillsRu.Lines.Add(UniSkillsID['skill']);
          UniSkillsID.Next;
        end;
      end;

    if UniExperienceID['job_order']=5 then
      begin
      CalendarPickerB5RU.Date:=UniExperienceID['start_date'];
      CalendarPickerE5RU.Date:=UniExperienceID['end_date'];
      ChangeDates5TR;
      Edit5NameRU.Text := UniExperienceID['job_position'];
      Edit5CompanyRU.Text := UniExperienceID['employer'];
      Memo5RespRU.Text := UniExperienceID['responsibilities'];
      Edit5BenefitsRU.Text := UniExperienceID['benefits'];
      Edit5BottomRU.Text := UniExperienceID['leave_reason'];
      UniSkillsID.Close;
      UniSkillsID.ParamByName('p_experience_id').AsInteger:=UniExperienceID['experience_id'];
      UniSkillsID.Open;
      Memo5SkillsRu.Clear;
      while not UniSkillsID.EOF do
        begin
          if not FormMain.IsEmpty(UniSkillsID['skill']) then Memo5SkillsRu.Lines.Add(UniSkillsID['skill']);
          UniSkillsID.Next;
        end;
      end;

    if UniExperienceID['job_order']=6 then
      begin
      CalendarPickerB6RU.Date:=UniExperienceID['start_date'];
      CalendarPickerE6RU.Date:=UniExperienceID['end_date'];
      ChangeDates6TR;
      Edit6NameRU.Text := UniExperienceID['job_position'];
      Edit6CompanyRU.Text := UniExperienceID['employer'];
      Memo6RespRU.Text := UniExperienceID['responsibilities'];
      Edit6BenefitsRU.Text := UniExperienceID['benefits'];
      Edit6BottomRU.Text := UniExperienceID['leave_reason'];
      UniSkillsID.Close;
      UniSkillsID.ParamByName('p_experience_id').AsInteger:=UniExperienceID['experience_id'];
      UniSkillsID.Open;
      Memo6SkillsRu.Clear;
      while not UniSkillsID.EOF do
        begin
          if not FormMain.IsEmpty(UniSkillsID['skill']) then Memo6SkillsRu.Lines.Add(UniSkillsID['skill']);
          UniSkillsID.Next;
        end;
      end;

    if UniExperienceID['job_order']=7 then
      begin
      CalendarPickerB7RU.Date:=UniExperienceID['start_date'];
      CalendarPickerE7RU.Date:=UniExperienceID['end_date'];
      ChangeDates7TR;
      Edit7NameRU.Text := UniExperienceID['job_position'];
      Edit7CompanyRU.Text := UniExperienceID['employer'];
      Memo7RespRU.Text := UniExperienceID['responsibilities'];
      Edit7BenefitsRU.Text := UniExperienceID['benefits'];
      Edit7BottomRU.Text := UniExperienceID['leave_reason'];
      UniSkillsID.Close;
      UniSkillsID.ParamByName('p_experience_id').AsInteger:=UniExperienceID['experience_id'];
      UniSkillsID.Open;
      Memo7SkillsRu.Clear;
      while not UniSkillsID.EOF do
        begin
          if not FormMain.IsEmpty(UniSkillsID['skill']) then Memo7SkillsRu.Lines.Add(UniSkillsID['skill']);
          UniSkillsID.Next;
        end;
      end;

    if UniExperienceID['job_order']=8 then
      begin
      CalendarPickerB8RU.Date:=UniExperienceID['start_date'];
      CalendarPickerE8RU.Date:=UniExperienceID['end_date'];
      ChangeDates8TR;
      Edit8NameRU.Text := UniExperienceID['job_position'];
      Edit8CompanyRU.Text := UniExperienceID['employer'];
      Memo8RespRU.Text := UniExperienceID['responsibilities'];
      Edit8BenefitsRU.Text := UniExperienceID['benefits'];
      Edit8BottomRU.Text := UniExperienceID['leave_reason'];
      UniSkillsID.Close;
      UniSkillsID.ParamByName('p_experience_id').AsInteger:=UniExperienceID['experience_id'];
      UniSkillsID.Open;
      Memo8SkillsRu.Clear;
      while not UniSkillsID.EOF do
        begin
          if not FormMain.IsEmpty(UniSkillsID['skill']) then Memo8SkillsRu.Lines.Add(UniSkillsID['skill']);
          UniSkillsID.Next;
        end;
      end;

    if UniExperienceID['job_order']=9 then
      begin
      CalendarPickerB9RU.Date:=UniExperienceID['start_date'];
      CalendarPickerE9RU.Date:=UniExperienceID['end_date'];
      ChangeDates9TR;
      Edit9NameRU.Text := UniExperienceID['job_position'];
      Edit9CompanyRU.Text := UniExperienceID['employer'];
      Memo9RespRU.Text := UniExperienceID['responsibilities'];
      Edit9BenefitsRU.Text := UniExperienceID['benefits'];
      Edit9BottomRU.Text := UniExperienceID['leave_reason'];
      UniSkillsID.Close;
      UniSkillsID.ParamByName('p_experience_id').AsInteger:=UniExperienceID['experience_id'];
      UniSkillsID.Open;
      Memo9SkillsRu.Clear;
      while not UniSkillsID.EOF do
        begin
          if not FormMain.IsEmpty(UniSkillsID['skill']) then Memo9SkillsRu.Lines.Add(UniSkillsID['skill']);
          UniSkillsID.Next;
        end;
      end;

    if UniExperienceID['job_order']=10 then
      begin
      CalendarPickerB10RU.Date:=UniExperienceID['start_date'];
      CalendarPickerE10RU.Date:=UniExperienceID['end_date'];
      ChangeDates10TR;
      Edit10NameRU.Text := UniExperienceID['job_position'];
      Edit10CompanyRU.Text := UniExperienceID['employer'];
      Memo10RespRU.Text := UniExperienceID['responsibilities'];
      Edit10BenefitsRU.Text := UniExperienceID['benefits'];
      Edit10BottomRU.Text := UniExperienceID['leave_reason'];
      UniSkillsID.Close;
      UniSkillsID.ParamByName('p_experience_id').AsInteger:=UniExperienceID['experience_id'];
      UniSkillsID.Open;
      Memo10SkillsRu.Clear;
      while not UniSkillsID.EOF do
        begin
          if not FormMain.IsEmpty(UniSkillsID['skill']) then Memo10SkillsRu.Lines.Add(UniSkillsID['skill']);
          UniSkillsID.Next;
        end;
      end;

    UniExperienceID.Next;
  end;
end;

function TFormUpdateTemplate.CheckValues: boolean;
var
  IsJob1Active, IsJob2Active, IsJob3Active, IsJob4Active, IsJob5Active,
    IsJob6Active, IsJob7Active, IsJob8Active, IsJob9Active,
    IsJob10Active: boolean;
begin
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
  IsJob1Active := not(FormMain.IsEmpty(Edit1DatesTR.Text) or FormMain.IsEmpty(Edit1NameTR.Text) or
    FormMain.IsEmpty(Edit1CompanyTR.Text) or FormMain.IsEmpty(Memo1RespTR.Text) or
    FormMain.IsEmpty(Memo1SkillsTR.Text));

  if IsJob1Active and (Edit1DatesTR.Text='') then
  begin
    ShowMessage('Пусте поле "Дата робота 1"');
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
  IsJob2Active := not(FormMain.IsEmpty(Edit2DatesTR.Text) or FormMain.IsEmpty(Edit2NameTR.Text) or
    FormMain.IsEmpty(Edit2CompanyTR.Text) or FormMain.IsEmpty(Memo2RespTR.Text) or FormMain.IsEmpty(Memo2SkillsTR.Text));
  if (IsJob2Active and FormMain.IsEmpty(Edit2DatesTR.Text)) then
  begin
    ShowMessage('Пусте поле "Дата робота 2"');
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
  IsJob3Active := not(FormMain.IsEmpty(Edit3DatesTR.Text) or FormMain.IsEmpty(Edit3NameTR.Text) or
    FormMain.IsEmpty(Edit3CompanyTR.Text) or FormMain.IsEmpty(Memo3RespTR.Text) or FormMain.IsEmpty(Memo3SkillsTR.Text));
  if (IsJob3Active and FormMain.IsEmpty(Edit3DatesTR.Text)) then
  begin
    ShowMessage('Пусте поле "Дата робота 3"');
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
  IsJob4Active := not(FormMain.IsEmpty(Edit4DatesTR.Text) or FormMain.IsEmpty(Edit4NameTR.Text) or
    FormMain.IsEmpty(Edit4CompanyTR.Text) or FormMain.IsEmpty(Memo4RespTR.Text) or FormMain.IsEmpty(Memo4SkillsTR.Text));
  if (IsJob4Active and FormMain.IsEmpty(Edit4DatesTR.Text)) then
  begin
    ShowMessage('Пусте поле "Дата робота 4"');
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
  IsJob5Active := not(FormMain.IsEmpty(Edit5DatesTR.Text) or FormMain.IsEmpty(Edit5NameTR.Text) or
    FormMain.IsEmpty(Edit5CompanyTR.Text) or FormMain.IsEmpty(Memo5RespTR.Text) or FormMain.IsEmpty(Memo5SkillsTR.Text));
  if (IsJob5Active and FormMain.IsEmpty(Edit5DatesTR.Text)) then
  begin
    ShowMessage('Пусте поле "Дата робота 5"');
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
  IsJob6Active := not(FormMain.IsEmpty(Edit6DatesTR.Text) or FormMain.IsEmpty(Edit6NameTR.Text) or
    FormMain.IsEmpty(Edit6CompanyTR.Text) or FormMain.IsEmpty(Memo6RespTR.Text) or FormMain.IsEmpty(Memo6SkillsTR.Text));
  if (IsJob6Active and FormMain.IsEmpty(Edit6DatesTR.Text)) then
  begin
    ShowMessage('Пусте поле "Дата робота 6"');
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
  IsJob7Active := not(FormMain.IsEmpty(Edit7DatesTR.Text) or FormMain.IsEmpty(Edit7NameTR.Text) or
    FormMain.IsEmpty(Edit7CompanyTR.Text) or FormMain.IsEmpty(Memo7RespTR.Text) or FormMain.IsEmpty(Memo7SkillsTR.Text));
  if (IsJob7Active and FormMain.IsEmpty(Edit7DatesTR.Text)) then
  begin
    ShowMessage('Пусте поле "Дата робота 7"');
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
  IsJob8Active := not(FormMain.IsEmpty(Edit8DatesTR.Text) or FormMain.IsEmpty(Edit8NameTR.Text) or
    FormMain.IsEmpty(Edit8CompanyTR.Text) or FormMain.IsEmpty(Memo8RespTR.Text) or FormMain.IsEmpty(Memo8SkillsTR.Text));
  if (IsJob8Active and FormMain.IsEmpty(Edit8DatesTR.Text)) then
  begin
    ShowMessage('Пусте поле "Дата робота 8"');
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
  IsJob9Active := not(FormMain.IsEmpty(Edit9DatesTR.Text) or FormMain.IsEmpty(Edit9NameTR.Text) or
    FormMain.IsEmpty(Edit9CompanyTR.Text) or FormMain.IsEmpty(Memo9RespTR.Text) or FormMain.IsEmpty(Memo9SkillsTR.Text));
  if (IsJob9Active and FormMain.IsEmpty(Edit9DatesTR.Text)) then
  begin
    ShowMessage('Пусте поле "Дата робота 9"');
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
  IsJob10Active := not(FormMain.IsEmpty(Edit10DatesTR.Text) or FormMain.IsEmpty(Edit10NameTR.Text)
    or FormMain.IsEmpty(Edit10CompanyTR.Text) or FormMain.IsEmpty(Memo10RespTR.Text) or FormMain.IsEmpty(Memo10SkillsTR.Text));
  if (IsJob10Active and FormMain.IsEmpty(Edit10DatesTR.Text)) then
  begin
    ShowMessage('Пусте поле "Дата робота 10"');
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
  Result := true;
end;

function TFormUpdateTemplate.SaveValues: boolean;
begin
  try
  if not SaveTemplate then
    begin
      FormMain.Warning('Сбой при сохранении templates');
      Result := false;
      exit;
    end;
    if not SaveJobs then
    begin
      FormMain.Warning('Сбой при сохранении jobs (experiences) #1');
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

function TFormUpdateTemplate.SaveTemplate:boolean;
begin
  try
    UniSPUpdateTemplate.Prepare;
    UniSPUpdateTemplate.ParamByName('p_template_id').AsInteger := FTemplateID;
    UniSPUpdateTemplate.ParamByName('p_name').AsString  := trim(EditNameTR.Text);
    UniSPUpdateTemplate.ParamByName('p_job_opportunity').AsString := Trim(EditOpportunityTR.Text);
    UniSPUpdateTemplate.ParamByName('p_job_place').AsString := Trim(EditPlaceTR.Text);
    UniSPUpdateTemplate.ParamByName('p_phone_numbers_text').AsString := Trim(EditPhonesTR.Text);
    UniSPUpdateTemplate.ParamByName('p_template_introduction').AsString := Trim(MemoIntroTR.Text);
    UniSPUpdateTemplate.ParamByName('p_footer_1_header').AsString := Trim(EditArticle1TR.Text);
    UniSPUpdateTemplate.ParamByName('p_footer_1_text').AsString := Trim(MemoArticle1TR.Text);
    UniSPUpdateTemplate.ParamByName('p_footer_2_header').AsString := Trim(EditArticle2TR.Text);
    UniSPUpdateTemplate.ParamByName('p_footer_2_text').AsString := Trim(MemoArticle2TR.Text);
    UniSPUpdateTemplate.ParamByName('p_footer_3_header').AsString := Trim(EditArticle3TR.Text);
    UniSPUpdateTemplate.ParamByName('p_footer_3_text').AsString := Trim(MemoArticle3TR.Text);
    UniSPUpdateTemplate.ParamByName('p_footer_4_header').AsString := Trim(EditArticle4TR.Text);
    UniSPUpdateTemplate.ParamByName('p_footer_4_text').AsString := Trim(MemoArticle4TR.Text);
    UniSPUpdateTemplate.ExecProc;
    if UniSPUpdateTemplate.ParamByName('p_result').Value=0 then Result:=true else Result:=false;
    FormMain.Warning(' Result='+BoolToStr(Result)+' template_id = '+IntTostr(FTemplateID));
    except
    on E: Exception do
    begin
    ShowMessage('Ошибка во время вставки в Templates: ' + E.Message);
    Result := false;
    end;
  end;
end;

procedure TFormUpdateTemplate.SetEmptyFooters;
begin
  MemoArticle1TR.Text := '';
  EditArticle1TR.Text := '';
  MemoArticle2TR.Text := '';
  EditArticle2TR.Text := '';
  MemoArticle3TR.Text := '';
  EditArticle3TR.Text := '';
  MemoArticle4TR.Text := '';
  EditArticle4TR.Text := '';

  MemoArticle1RU.Text := '';
  EditArticle1RU.Text := '';
  MemoArticle2RU.Text := '';
  EditArticle2RU.Text := '';
  MemoArticle3RU.Text := '';
  EditArticle3RU.Text := '';
  MemoArticle4RU.Text := '';
  EditArticle4RU.Text := '';
end;

procedure TFormUpdateTemplate.SetEmptyTemplates;
begin
  EditNameRU.Text:='';
  EditOpportunityRU.Text:='';
  EditPlaceRU.Text:='';
  EditPhonesRU.Text:='';
  MemoIntroRU.Text:='';

  EditNameTR.Text:='';
  EditOpportunityTR.Text:='';
  EditPlaceTR.Text:='';
  EditPhonesTR.Text:='';
  MemoIntroTR.Text:='';
end;

procedure TFormUpdateTemplate.SetEmptySkills;
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

  Memo1SkillsRU.Text := '';
  Memo2SkillsRU.Text := '';
  Memo3SkillsRU.Text := '';
  Memo4SkillsRU.Text := '';
  Memo5SkillsRU.Text := '';
  Memo6SkillsRU.Text := '';
  Memo7SkillsRU.Text := '';
  Memo8SkillsRU.Text := '';
  Memo9SkillsRU.Text := '';
  Memo10SkillsRU.Text := '';
end;

procedure TFormUpdateTemplate.SetEmptyJobs;
begin
  Edit1DatesRU.Text := '';
  Edit1NameRU.Text := '';
  Edit1CompanyRU.Text := '';
  Memo1RespRU.Text := '';
  Edit1BenefitsRU.Text := '';
  Edit1BottomRU.Text := '';

  Edit2DatesRU.Text := '';
  Edit2NameRU.Text := '';
  Edit2CompanyRU.Text := '';
  Memo2RespRU.Text := '';
  Edit2BenefitsRU.Text := '';
  Edit2BottomRU.Text := '';

  Edit3DatesRU.Text := '';
  Edit3NameRU.Text := '';
  Edit3CompanyRU.Text := '';
  Memo3RespRU.Text := '';
  Edit3BenefitsRU.Text := '';
  Edit3BottomRU.Text := '';

  Edit4DatesRU.Text := '';
  Edit4NameRU.Text := '';
  Edit4CompanyRU.Text := '';
  Memo4RespRU.Text := '';
  Edit4BenefitsRU.Text := '';
  Edit4BottomRU.Text := '';

  Edit5DatesRU.Text := '';
  Edit5NameRU.Text := '';
  Edit5CompanyRU.Text := '';
  Memo5RespRU.Text := '';
  Edit5BenefitsRU.Text := '';
  Edit5BottomRU.Text := '';

  Edit6DatesRU.Text := '';
  Edit6NameRU.Text := '';
  Edit6CompanyRU.Text := '';
  Memo6RespRU.Text := '';
  Edit6BenefitsRU.Text := '';
  Edit6BottomRU.Text := '';

  Edit7DatesRU.Text := '';
  Edit7NameRU.Text := '';
  Edit7CompanyRU.Text := '';
  Memo7RespRU.Text := '';
  Edit7BenefitsRU.Text := '';
  Edit7BottomRU.Text := '';

  Edit8DatesRU.Text := '';
  Edit8NameRU.Text := '';
  Edit8CompanyRU.Text := '';
  Memo8RespRU.Text := '';
  Edit8BenefitsRU.Text := '';
  Edit8BottomRU.Text := '';

  Edit9DatesRU.Text := '';
  Edit9NameRU.Text := '';
  Edit9CompanyRU.Text := '';
  Memo9RespRU.Text := '';
  Edit9BenefitsRU.Text := '';
  Edit9BottomRU.Text := '';

  Edit10DatesRU.Text := '';
  Edit10NameRU.Text := '';
  Edit10CompanyRU.Text := '';
  Memo10RespRU.Text := '';
  Edit10BenefitsRU.Text := '';
  Edit10BottomRU.Text := '';

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

procedure TFormUpdateTemplate.CopyResumeTRfromUA;
begin
  if FormMain.IsEmpty(EditNameTR.Text) then
    EditNameTR.Text := EditNameRU.Text;
  if FormMain.IsEmpty(EditOpportunityTR.Text) then
    EditOpportunityTR.Text := EditOpportunityRU.Text;
  if FormMain.IsEmpty(EditPlaceTR.Text) then
    EditPlaceTR.Text := EditPlaceRU.Text;
  if FormMain.IsEmpty(EditPhonesTR.Text) then
    EditPhonesTR.Text := EditPhonesRU.Text;
  if FormMain.IsEmpty(MemoIntroTR.Text) then
    MemoIntroTR.Text := MemoIntroRU.Text;
end;

procedure TFormUpdateTemplate.CopyFooterTRfromUA;
begin
  if FormMain.IsEmpty(EditArticle1TR.Text) then
    EditArticle1TR.Text := EditArticle1RU.Text;
  if FormMain.IsEmpty(MemoArticle1TR.Text) then
    MemoArticle1TR.Text := MemoArticle1RU.Text;
  if FormMain.IsEmpty(EditArticle2TR.Text) then
    EditArticle2TR.Text := EditArticle2RU.Text;
  if FormMain.IsEmpty(MemoArticle2TR.Text) then
    MemoArticle2TR.Text := MemoArticle2RU.Text;
  if FormMain.IsEmpty(EditArticle3TR.Text) then
    EditArticle3TR.Text := EditArticle3RU.Text;
  if FormMain.IsEmpty(MemoArticle3TR.Text) then
    MemoArticle3TR.Text := MemoArticle3RU.Text;
  if FormMain.IsEmpty(EditArticle4TR.Text) then
    EditArticle4TR.Text := EditArticle4RU.Text;
  if FormMain.IsEmpty(MemoArticle4TR.Text) then
    MemoArticle4TR.Text := MemoArticle4RU.Text;
end;

procedure TFormUpdateTemplate.CopyJobsTRFromUA;
begin
  if FormMain.IsEmpty(Edit1DatesTR.Text) then
    Edit1DatesTR.Text := Edit1DatesRU.Text;
  if FormMain.IsEmpty(Edit1NameTR.Text) then
    Edit1NameTR.Text := Edit1NameRU.Text;
  if FormMain.IsEmpty(Edit1CompanyTR.Text) then
    Edit1CompanyTR.Text := Edit1CompanyRU.Text;
  if FormMain.IsEmpty(Memo1RespTR.Text) then
    Memo1RespTR.Text := Memo1RespRU.Text;
  if FormMain.IsEmpty(Edit1BenefitsTR.Text) then
    Edit1BenefitsTR.Text := Edit1BenefitsRU.Text;
  if FormMain.IsEmpty(Edit1BottomTR.Text) then
    Edit1BottomTR.Text := Edit1BottomRU.Text;

  if FormMain.IsEmpty(Edit2DatesTR.Text) then
    Edit2DatesTR.Text := Edit2DatesRU.Text;
  if FormMain.IsEmpty(Edit2NameTR.Text) then
    Edit2NameTR.Text := Edit2NameRU.Text;
  if FormMain.IsEmpty(Edit2CompanyTR.Text) then
    Edit2CompanyTR.Text := Edit2CompanyRU.Text;
  if FormMain.IsEmpty(Memo2RespTR.Text) then
    Memo2RespTR.Text := Memo2RespRU.Text;
  if FormMain.IsEmpty(Edit2BenefitsTR.Text) then
    Edit2BenefitsTR.Text := Edit2BenefitsRU.Text;
  if FormMain.IsEmpty(Edit2BottomTR.Text) then
    Edit2BottomTR.Text := Edit2BottomRU.Text;

  if FormMain.IsEmpty(Edit3DatesTR.Text) then
    Edit1DatesTR.Text := Edit1DatesRU.Text;
  if FormMain.IsEmpty(Edit1NameTR.Text) then
    Edit1NameTR.Text := Edit1NameRU.Text;
  if FormMain.IsEmpty(Edit1CompanyTR.Text) then
    Edit1CompanyTR.Text := Edit1CompanyRU.Text;
  if FormMain.IsEmpty(Memo1RespTR.Text) then
    Memo1RespTR.Text := Memo1RespRU.Text;
  if FormMain.IsEmpty(Edit1BenefitsTR.Text) then
    Edit1BenefitsTR.Text := Edit1BenefitsRU.Text;
  if FormMain.IsEmpty(Edit1BottomTR.Text) then
    Edit1BottomTR.Text := Edit1BottomRU.Text;

  if FormMain.IsEmpty(Edit4DatesTR.Text) then
    Edit4DatesTR.Text := Edit4DatesRU.Text;
  if FormMain.IsEmpty(Edit4NameTR.Text) then
    Edit4NameTR.Text := Edit4NameRU.Text;
  if FormMain.IsEmpty(Edit4CompanyTR.Text) then
    Edit4CompanyTR.Text := Edit4CompanyRU.Text;
  if FormMain.IsEmpty(Memo4RespTR.Text) then
    Memo4RespTR.Text := Memo4RespRU.Text;
  if FormMain.IsEmpty(Edit4BenefitsTR.Text) then
    Edit4BenefitsTR.Text := Edit4BenefitsRU.Text;
  if FormMain.IsEmpty(Edit4BottomTR.Text) then
    Edit4BottomTR.Text := Edit4BottomRU.Text;

  if FormMain.IsEmpty(Edit5DatesTR.Text) then
    Edit5DatesTR.Text := Edit5DatesRU.Text;
  if FormMain.IsEmpty(Edit5NameTR.Text) then
    Edit5NameTR.Text := Edit5NameRU.Text;
  if FormMain.IsEmpty(Edit5CompanyTR.Text) then
    Edit5CompanyTR.Text := Edit5CompanyRU.Text;
  if FormMain.IsEmpty(Memo5RespTR.Text) then
    Memo5RespTR.Text := Memo5RespRU.Text;
  if FormMain.IsEmpty(Edit5BenefitsTR.Text) then
    Edit5BenefitsTR.Text := Edit5BenefitsRU.Text;
  if FormMain.IsEmpty(Edit5BottomTR.Text) then
    Edit5BottomTR.Text := Edit5BottomRU.Text;

  if FormMain.IsEmpty(Edit6DatesTR.Text) then
    Edit6DatesTR.Text := Edit6DatesRU.Text;
  if FormMain.IsEmpty(Edit6NameTR.Text) then
    Edit6NameTR.Text := Edit6NameRU.Text;
  if FormMain.IsEmpty(Edit6CompanyTR.Text) then
    Edit6CompanyTR.Text := Edit6CompanyRU.Text;
  if FormMain.IsEmpty(Memo6RespTR.Text) then
    Memo6RespTR.Text := Memo6RespRU.Text;
  if FormMain.IsEmpty(Edit6BenefitsTR.Text) then
    Edit6BenefitsTR.Text := Edit6BenefitsRU.Text;
  if FormMain.IsEmpty(Edit6BottomTR.Text) then
    Edit6BottomTR.Text := Edit6BottomRU.Text;

  if FormMain.IsEmpty(Edit7DatesTR.Text) then
    Edit7DatesTR.Text := Edit7DatesRU.Text;
  if FormMain.IsEmpty(Edit7NameTR.Text) then
    Edit7NameTR.Text := Edit7NameRU.Text;
  if FormMain.IsEmpty(Edit7CompanyTR.Text) then
    Edit7CompanyTR.Text := Edit7CompanyRU.Text;
  if FormMain.IsEmpty(Memo7RespTR.Text) then
    Memo7RespTR.Text := Memo7RespRU.Text;
  if FormMain.IsEmpty(Edit7BenefitsTR.Text) then
    Edit7BenefitsTR.Text := Edit7BenefitsRU.Text;
  if FormMain.IsEmpty(Edit7BottomTR.Text) then
    Edit7BottomTR.Text := Edit7BottomRU.Text;

  if FormMain.IsEmpty(Edit8DatesTR.Text) then
    Edit8DatesTR.Text := Edit8DatesRU.Text;
  if FormMain.IsEmpty(Edit8NameTR.Text) then
    Edit8NameTR.Text := Edit8NameRU.Text;
  if FormMain.IsEmpty(Edit8CompanyTR.Text) then
    Edit8CompanyTR.Text := Edit8CompanyRU.Text;
  if FormMain.IsEmpty(Memo8RespTR.Text) then
    Memo8RespTR.Text := Memo8RespRU.Text;
  if FormMain.IsEmpty(Edit8BenefitsTR.Text) then
    Edit8BenefitsTR.Text := Edit8BenefitsRU.Text;
  if FormMain.IsEmpty(Edit8BottomTR.Text) then
    Edit8BottomTR.Text := Edit8BottomRU.Text;

  if FormMain.IsEmpty(Edit9DatesTR.Text) then
    Edit9DatesTR.Text := Edit9DatesRU.Text;
  if FormMain.IsEmpty(Edit9NameTR.Text) then
    Edit9NameTR.Text := Edit9NameRU.Text;
  if FormMain.IsEmpty(Edit9CompanyTR.Text) then
    Edit9CompanyTR.Text := Edit9CompanyRU.Text;
  if FormMain.IsEmpty(Memo9RespTR.Text) then
    Memo9RespTR.Text := Memo9RespRU.Text;
  if FormMain.IsEmpty(Edit9BenefitsTR.Text) then
    Edit9BenefitsTR.Text := Edit9BenefitsRU.Text;
  if FormMain.IsEmpty(Edit9BottomTR.Text) then
    Edit9BottomTR.Text := Edit9BottomRU.Text;

  if FormMain.IsEmpty(Edit10DatesTR.Text) then
    Edit10DatesTR.Text := Edit10DatesRU.Text;
  if FormMain.IsEmpty(Edit10NameTR.Text) then
    Edit10NameTR.Text := Edit10NameRU.Text;
  if FormMain.IsEmpty(Edit10CompanyTR.Text) then
    Edit10CompanyTR.Text := Edit10CompanyRU.Text;
  if FormMain.IsEmpty(Memo10RespTR.Text) then
    Memo10RespTR.Text := Memo10RespRU.Text;
  if FormMain.IsEmpty(Edit10BenefitsTR.Text) then
    Edit10BenefitsTR.Text := Edit10BenefitsRU.Text;
  if FormMain.IsEmpty(Edit10BottomTR.Text) then
    Edit10BottomTR.Text := Edit10BottomRU.Text;

end;
end.
