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
    UniSkillsIDskill: TStringField;
    Label121: TLabel;
    Label122: TLabel;
    Label123: TLabel;
    Label124: TLabel;
    Label125: TLabel;
    Label126: TLabel;
    Label127: TLabel;
    LabelTemplateID: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BitBtnSaveClick(Sender: TObject);
    procedure CalendarPickerB1RUChange(Sender: TObject);
    procedure CalendarPickerB1RUCloseUp(Sender: TObject);
    procedure CalendarPickerE1RUChange(Sender: TObject);
    procedure CalendarPickerE1RUCloseUp(Sender: TObject);
    procedure CalendarPickerB2RUChange(Sender: TObject);
    procedure CalendarPickerB2RUCloseUp(Sender: TObject);
    procedure CalendarPickerE2RUChange(Sender: TObject);
    procedure CalendarPickerE2RUCloseUp(Sender: TObject);
    procedure CalendarPickerB3RUChange(Sender: TObject);
    procedure CalendarPickerB3RUCloseUp(Sender: TObject);
    procedure CalendarPickerE3RUChange(Sender: TObject);
    procedure CalendarPickerE3RUCloseUp(Sender: TObject);
    procedure CalendarPickerB4RUChange(Sender: TObject);
    procedure CalendarPickerB4RUCloseUp(Sender: TObject);
    procedure CalendarPickerE4RUChange(Sender: TObject);
    procedure CalendarPickerE4RUCloseUp(Sender: TObject);
    procedure CalendarPickerB5RUChange(Sender: TObject);
    procedure CalendarPickerB5RUCloseUp(Sender: TObject);
    procedure CalendarPickerE5RUChange(Sender: TObject);
    procedure CalendarPickerE5RUCloseUp(Sender: TObject);
    procedure CalendarPickerB6RUChange(Sender: TObject);
    procedure CalendarPickerB6RUCloseUp(Sender: TObject);
    procedure CalendarPickerE6RUChange(Sender: TObject);
    procedure CalendarPickerE6RUCloseUp(Sender: TObject);
    procedure CalendarPickerB7RUChange(Sender: TObject);
    procedure CalendarPickerB7RUCloseUp(Sender: TObject);
    procedure CalendarPickerE7RUChange(Sender: TObject);
    procedure CalendarPickerE7RUCloseUp(Sender: TObject);
    procedure CalendarPickerB8RUChange(Sender: TObject);
    procedure CalendarPickerB8RUCloseUp(Sender: TObject);
    procedure CalendarPickerE8RUChange(Sender: TObject);
    procedure CalendarPickerE8RUCloseUp(Sender: TObject);
    procedure CalendarPickerB9RUChange(Sender: TObject);
    procedure CalendarPickerB9RUCloseUp(Sender: TObject);
    procedure CalendarPickerE9RUChange(Sender: TObject);
    procedure CalendarPickerE9RUCloseUp(Sender: TObject);
    procedure CalendarPickerB10RUChange(Sender: TObject);
    procedure CalendarPickerB10RUCloseUp(Sender: TObject);
    procedure CalendarPickerE10RUChange(Sender: TObject);
    procedure CalendarPickerE10RUCloseUp(Sender: TObject);
  private
    FTemplateID:integer;
    function SaveJobs: boolean;
    procedure SetFormValues;
    procedure SetValuesFootersRU;
    procedure SetValuesJobsRU;
    procedure SetValuesTemplatesRU;
    function CheckValues: boolean;
    function SaveValues: boolean;
    function SaveTemplate: boolean;
    procedure SetEmptyFooters;
    procedure SetEmptyJobs;
    procedure SetEmptySkills;
    procedure SetEmptyTemplates;
    procedure ChangeDates10RU;
    procedure ChangeDates1RU;
    procedure ChangeDates2RU;
    procedure ChangeDates3RU;
    procedure ChangeDates4RU;
    procedure ChangeDates5RU;
    procedure ChangeDates6RU;
    procedure ChangeDates7RU;
    procedure ChangeDates8RU;
    procedure ChangeDates9RU;
  public
    procedure SetID(TemplateID:integer);
  end;

var
  FormUpdateTemplate: TFormUpdateTemplate;

implementation

{$R *.dfm}

uses MainForm;

{ TFormUpdateTemplate }

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
  if not FormMain.isEmpty(Edit1NameRU.Text) and not FormMain.isEmpty(Edit1CompanyRU.Text) then
    begin
      UniSPUpdateExperiences.Close;
      UniSPUpdateExperiences.ParamByName('p_flag').AsString := 'template_id';
//      UniSPUpdateExperiences.ParamByName('p_resume_id').AsInteger := null;
      UniSPUpdateExperiences.ParamByName('p_template_id').AsInteger := FTemplateID;
      UniSPUpdateExperiences.ParamByName('p_job_order').AsInteger := 1;
      UniSPUpdateExperiences.ParamByName('p_job_position').AsString := Edit1NameRU.Text;
      UniSPUpdateExperiences.ParamByName('p_start_date').AsDateTime :=CalendarPickerB1RU.Date;
      UniSPUpdateExperiences.ParamByName('p_end_date').AsDateTime := CalendarPickerE1RU.Date;
      UniSPUpdateExperiences.ParamByName('p_employer').AsString := Edit1CompanyRU.Text;
      UniSPUpdateExperiences.ParamByName('p_resp').AsString := Memo1RespRU.Text;
      UniSPUpdateExperiences.ParamByName('p_benefits').AsString := Edit1BenefitsRU.Text;
      UniSPUpdateExperiences.ParamByName('p_leave_reason').AsString := Edit1BottomRU.Text;
      UniSPUpdateExperiences.ExecSQL;
      FExperienceID:=UniSPUpdateExperiences.ParamByName('p_experience_id').Value;
    if (Trim(Memo1SkillsRU.Text)<>'') then
      for i := 0 to Memo1SkillsRU.Lines.Count - 1 do
//        if not FormMain.IsEmpty(Memo1SkillsRU.Lines[i]) then
          begin
          UniSPInsertSkills.Close;
          UniSPInsertSkills.ParamByName('p_experience_id').AsInteger:=FExperienceID;
          UniSPInsertSkills.ParamByName('p_skill').AsString:=Memo1SkillsRU.Lines[i];
          UniSPInsertSkills.ExecSQL;
          end;
    end;
  if not FormMain.isEmpty(Edit2NameRU.Text) and not FormMain.isEmpty(Edit2CompanyRU.Text) then
    begin
      UniSPUpdateExperiences.Close;
      UniSPUpdateExperiences.ParamByName('p_flag').AsString := 'template_id';
//      UniSPUpdateExperiences.ParamByName('p_resume_id').AsInteger := null;
      UniSPUpdateExperiences.ParamByName('p_template_id').AsInteger := FTemplateID;
      UniSPUpdateExperiences.ParamByName('p_job_order').AsInteger := 2;
      UniSPUpdateExperiences.ParamByName('p_job_position').AsString := Edit2NameRU.Text;
      UniSPUpdateExperiences.ParamByName('p_start_date').AsDateTime :=CalendarPickerB2RU.Date;
      UniSPUpdateExperiences.ParamByName('p_end_date').AsDateTime := CalendarPickerE2RU.Date;
      UniSPUpdateExperiences.ParamByName('p_employer').AsString := Edit2CompanyRU.Text;
      UniSPUpdateExperiences.ParamByName('p_resp').AsString := Memo2RespRU.Text;
      UniSPUpdateExperiences.ParamByName('p_benefits').AsString := Edit2BenefitsRU.Text;
      UniSPUpdateExperiences.ParamByName('p_leave_reason').AsString := Edit2BottomRU.Text;
      UniSPUpdateExperiences.ExecSQL;
      FExperienceID:=UniSPUpdateExperiences.ParamByName('p_experience_id').Value;
    if (Trim(Memo2SkillsRU.Text)<>'') then
      for i := 0 to Memo2SkillsRU.Lines.Count - 1 do
//        if not FormMain.IsEmpty(Memo2SkillsRU.Lines[i]) then
          begin
          UniSPInsertSkills.Close;
          UniSPInsertSkills.ParamByName('p_experience_id').AsInteger:=FExperienceID;
          UniSPInsertSkills.ParamByName('p_skill').AsString:=Memo2SkillsRU.Lines[i];
          UniSPInsertSkills.ExecSQL;
          end;
    end;
  if not FormMain.isEmpty(Edit3NameRU.Text) and not FormMain.isEmpty(Edit3CompanyRU.Text) then
    begin
      UniSPUpdateExperiences.Close;
      UniSPUpdateExperiences.ParamByName('p_flag').AsString := 'template_id';
//      UniSPUpdateExperiences.ParamByName('p_resume_id').AsInteger := null;
      UniSPUpdateExperiences.ParamByName('p_template_id').AsInteger := FTemplateID;
      UniSPUpdateExperiences.ParamByName('p_job_order').AsInteger := 3;
      UniSPUpdateExperiences.ParamByName('p_job_position').AsString := Edit3NameRU.Text;
      UniSPUpdateExperiences.ParamByName('p_start_date').AsDateTime :=CalendarPickerB3RU.Date;
      UniSPUpdateExperiences.ParamByName('p_end_date').AsDateTime := CalendarPickerE3RU.Date;
      UniSPUpdateExperiences.ParamByName('p_employer').AsString := Edit3CompanyRU.Text;
      UniSPUpdateExperiences.ParamByName('p_resp').AsString := Memo3RespRU.Text;
      UniSPUpdateExperiences.ParamByName('p_benefits').AsString := Edit3BenefitsRU.Text;
      UniSPUpdateExperiences.ParamByName('p_leave_reason').AsString := Edit3BottomRU.Text;
      UniSPUpdateExperiences.ExecSQL;
      FExperienceID:=UniSPUpdateExperiences.ParamByName('p_experience_id').Value;
    if (Trim(Memo3SkillsRU.Text)<>'') then
      for i := 0 to Memo3SkillsRU.Lines.Count - 1 do
//        if not FormMain.IsEmpty(Memo3SkillsRU.Lines[i]) then
          begin
          UniSPInsertSkills.Close;
          UniSPInsertSkills.ParamByName('p_experience_id').AsInteger:=FExperienceID;
          UniSPInsertSkills.ParamByName('p_skill').AsString:=Memo3SkillsRU.Lines[i];
          UniSPInsertSkills.ExecSQL;
          end;
    end;
  if not FormMain.isEmpty(Edit4NameRU.Text) and not FormMain.isEmpty(Edit4CompanyRU.Text) then
    begin
      UniSPUpdateExperiences.Close;
      UniSPUpdateExperiences.ParamByName('p_flag').AsString := 'template_id';
//      UniSPUpdateExperiences.ParamByName('p_resume_id').AsInteger := null;
      UniSPUpdateExperiences.ParamByName('p_template_id').AsInteger := FTemplateID;
      UniSPUpdateExperiences.ParamByName('p_job_order').AsInteger := 4;
      UniSPUpdateExperiences.ParamByName('p_job_position').AsString := Edit4NameRU.Text;
      UniSPUpdateExperiences.ParamByName('p_start_date').AsDateTime :=CalendarPickerB4RU.Date;
      UniSPUpdateExperiences.ParamByName('p_end_date').AsDateTime := CalendarPickerE4RU.Date;
      UniSPUpdateExperiences.ParamByName('p_employer').AsString := Edit4CompanyRU.Text;
      UniSPUpdateExperiences.ParamByName('p_resp').AsString := Memo4RespRU.Text;
      UniSPUpdateExperiences.ParamByName('p_benefits').AsString := Edit4BenefitsRU.Text;
      UniSPUpdateExperiences.ParamByName('p_leave_reason').AsString := Edit4BottomRU.Text;
      UniSPUpdateExperiences.ExecSQL;
      FExperienceID:=UniSPUpdateExperiences.ParamByName('p_experience_id').Value;
    if (Trim(Memo4SkillsRU.Text)<>'') then
      for i := 0 to Memo4SkillsRU.Lines.Count - 1 do
//        if not FormMain.IsEmpty(Memo4SkillsRU.Lines[i]) then
          begin
          UniSPInsertSkills.Close;
          UniSPInsertSkills.ParamByName('p_experience_id').AsInteger:=FExperienceID;
          UniSPInsertSkills.ParamByName('p_skill').AsString:=Memo4SkillsRU.Lines[i];
          UniSPInsertSkills.ExecSQL;
          end;
    end;
  if not FormMain.isEmpty(Edit5NameRU.Text) and not FormMain.isEmpty(Edit5CompanyRU.Text) then
    begin
      UniSPUpdateExperiences.Close;
      UniSPUpdateExperiences.ParamByName('p_flag').AsString := 'template_id';
//      UniSPUpdateExperiences.ParamByName('p_resume_id').AsInteger := null;
      UniSPUpdateExperiences.ParamByName('p_template_id').AsInteger := FTemplateID;
      UniSPUpdateExperiences.ParamByName('p_job_order').AsInteger := 5;
      UniSPUpdateExperiences.ParamByName('p_job_position').AsString := Edit5NameRU.Text;
      UniSPUpdateExperiences.ParamByName('p_start_date').AsDateTime :=CalendarPickerB5RU.Date;
      UniSPUpdateExperiences.ParamByName('p_end_date').AsDateTime := CalendarPickerE5RU.Date;
      UniSPUpdateExperiences.ParamByName('p_employer').AsString := Edit5CompanyRU.Text;
      UniSPUpdateExperiences.ParamByName('p_resp').AsString := Memo5RespRU.Text;
      UniSPUpdateExperiences.ParamByName('p_benefits').AsString := Edit5BenefitsRU.Text;
      UniSPUpdateExperiences.ParamByName('p_leave_reason').AsString := Edit5BottomRU.Text;
      UniSPUpdateExperiences.ExecSQL;
      FExperienceID:=UniSPUpdateExperiences.ParamByName('p_experience_id').Value;
    if (Trim(Memo5SkillsRU.Text)<>'') then
      for i := 0 to Memo5SkillsRU.Lines.Count - 1 do
//        if not FormMain.IsEmpty(Memo5SkillsRU.Lines[i]) then
          begin
          UniSPInsertSkills.Close;
          UniSPInsertSkills.ParamByName('p_experience_id').AsInteger:=FExperienceID;
          UniSPInsertSkills.ParamByName('p_skill').AsString:=Memo5SkillsRU.Lines[i];
          UniSPInsertSkills.ExecSQL;
          end;
    end;
  if not FormMain.isEmpty(Edit6NameRU.Text) and not FormMain.isEmpty(Edit6CompanyRU.Text) then
    begin
      UniSPUpdateExperiences.Close;
      UniSPUpdateExperiences.ParamByName('p_flag').AsString := 'template_id';
//      UniSPUpdateExperiences.ParamByName('p_resume_id').AsInteger := null;
      UniSPUpdateExperiences.ParamByName('p_template_id').AsInteger := FTemplateID;
      UniSPUpdateExperiences.ParamByName('p_job_order').AsInteger := 6;
      UniSPUpdateExperiences.ParamByName('p_job_position').AsString := Edit6NameRU.Text;
      UniSPUpdateExperiences.ParamByName('p_start_date').AsDateTime :=CalendarPickerB6RU.Date;
      UniSPUpdateExperiences.ParamByName('p_end_date').AsDateTime := CalendarPickerE6RU.Date;
      UniSPUpdateExperiences.ParamByName('p_employer').AsString := Edit6CompanyRU.Text;
      UniSPUpdateExperiences.ParamByName('p_resp').AsString := Memo6RespRU.Text;
      UniSPUpdateExperiences.ParamByName('p_benefits').AsString := Edit6BenefitsRU.Text;
      UniSPUpdateExperiences.ParamByName('p_leave_reason').AsString := Edit6BottomRU.Text;
      UniSPUpdateExperiences.ExecSQL;
      FExperienceID:=UniSPUpdateExperiences.ParamByName('p_experience_id').Value;
    if (Trim(Memo6SkillsRU.Text)<>'') then
      for i := 0 to Memo6SkillsRU.Lines.Count - 1 do
//        if not FormMain.IsEmpty(Memo6SkillsRU.Lines[i]) then
          begin
          UniSPInsertSkills.Close;
          UniSPInsertSkills.ParamByName('p_experience_id').AsInteger:=FExperienceID;
          UniSPInsertSkills.ParamByName('p_skill').AsString:=Memo6SkillsRU.Lines[i];
          UniSPInsertSkills.ExecSQL;
          end;
    end;
  if not FormMain.isEmpty(Edit7NameRU.Text) and not FormMain.isEmpty(Edit7CompanyRU.Text) then
    begin
      UniSPUpdateExperiences.Close;
      UniSPUpdateExperiences.ParamByName('p_flag').AsString := 'template_id';
//      UniSPUpdateExperiences.ParamByName('p_resume_id').AsInteger := null;
      UniSPUpdateExperiences.ParamByName('p_template_id').AsInteger := FTemplateID;
      UniSPUpdateExperiences.ParamByName('p_job_order').AsInteger := 7;
      UniSPUpdateExperiences.ParamByName('p_job_position').AsString := Edit7NameRU.Text;
      UniSPUpdateExperiences.ParamByName('p_start_date').AsDateTime :=CalendarPickerB7RU.Date;
      UniSPUpdateExperiences.ParamByName('p_end_date').AsDateTime := CalendarPickerE7RU.Date;
      UniSPUpdateExperiences.ParamByName('p_employer').AsString := Edit7CompanyRU.Text;
      UniSPUpdateExperiences.ParamByName('p_resp').AsString := Memo7RespRU.Text;
      UniSPUpdateExperiences.ParamByName('p_benefits').AsString := Edit7BenefitsRU.Text;
      UniSPUpdateExperiences.ParamByName('p_leave_reason').AsString := Edit7BottomRU.Text;
      UniSPUpdateExperiences.ExecSQL;
      FExperienceID:=UniSPUpdateExperiences.ParamByName('p_experience_id').Value;
    if (Trim(Memo7SkillsRU.Text)<>'') then
      for i := 0 to Memo7SkillsRU.Lines.Count - 1 do
//        if not FormMain.IsEmpty(Memo7SkillsRU.Lines[i]) then
          begin
          UniSPInsertSkills.Close;
          UniSPInsertSkills.ParamByName('p_experience_id').AsInteger:=FExperienceID;
          UniSPInsertSkills.ParamByName('p_skill').AsString:=Memo7SkillsRU.Lines[i];
          UniSPInsertSkills.ExecSQL;
          end;
    end;
  if not FormMain.isEmpty(Edit8NameRU.Text) and not FormMain.isEmpty(Edit8CompanyRU.Text) then
    begin
      UniSPUpdateExperiences.Close;
      UniSPUpdateExperiences.ParamByName('p_flag').AsString := 'template_id';
//      UniSPUpdateExperiences.ParamByName('p_resume_id').AsInteger := null;
      UniSPUpdateExperiences.ParamByName('p_template_id').AsInteger := FTemplateID;
      UniSPUpdateExperiences.ParamByName('p_job_order').AsInteger := 8;
      UniSPUpdateExperiences.ParamByName('p_job_position').AsString := Edit8NameRU.Text;
      UniSPUpdateExperiences.ParamByName('p_start_date').AsDateTime :=CalendarPickerB8RU.Date;
      UniSPUpdateExperiences.ParamByName('p_end_date').AsDateTime := CalendarPickerE8RU.Date;
      UniSPUpdateExperiences.ParamByName('p_employer').AsString := Edit8CompanyRU.Text;
      UniSPUpdateExperiences.ParamByName('p_resp').AsString := Memo8RespRU.Text;
      UniSPUpdateExperiences.ParamByName('p_benefits').AsString := Edit8BenefitsRU.Text;
      UniSPUpdateExperiences.ParamByName('p_leave_reason').AsString := Edit8BottomRU.Text;
      UniSPUpdateExperiences.ExecSQL;
      FExperienceID:=UniSPUpdateExperiences.ParamByName('p_experience_id').Value;
    if (Trim(Memo8SkillsRU.Text)<>'') then
      for i := 0 to Memo8SkillsRU.Lines.Count - 1 do
//        if not FormMain.IsEmpty(Memo8SkillsRU.Lines[i]) then
          begin
          UniSPInsertSkills.Close;
          UniSPInsertSkills.ParamByName('p_experience_id').AsInteger:=FExperienceID;
          UniSPInsertSkills.ParamByName('p_skill').AsString:=Memo8SkillsRU.Lines[i];
          UniSPInsertSkills.ExecSQL;
          end;
    end;
  if not FormMain.isEmpty(Edit9NameRU.Text) and not FormMain.isEmpty(Edit9CompanyRU.Text) then
    begin
      UniSPUpdateExperiences.Close;
      UniSPUpdateExperiences.ParamByName('p_flag').AsString := 'template_id';
//      UniSPUpdateExperiences.ParamByName('p_resume_id').AsInteger := null;
      UniSPUpdateExperiences.ParamByName('p_template_id').AsInteger := FTemplateID;
      UniSPUpdateExperiences.ParamByName('p_job_order').AsInteger := 9;
      UniSPUpdateExperiences.ParamByName('p_job_position').AsString := Edit9NameRU.Text;
      UniSPUpdateExperiences.ParamByName('p_start_date').AsDateTime :=CalendarPickerB9RU.Date;
      UniSPUpdateExperiences.ParamByName('p_end_date').AsDateTime := CalendarPickerE9RU.Date;
      UniSPUpdateExperiences.ParamByName('p_employer').AsString := Edit9CompanyRU.Text;
      UniSPUpdateExperiences.ParamByName('p_resp').AsString := Memo9RespRU.Text;
      UniSPUpdateExperiences.ParamByName('p_benefits').AsString := Edit9BenefitsRU.Text;
      UniSPUpdateExperiences.ParamByName('p_leave_reason').AsString := Edit9BottomRU.Text;
      UniSPUpdateExperiences.ExecSQL;
      FExperienceID:=UniSPUpdateExperiences.ParamByName('p_experience_id').Value;
    if (Trim(Memo9SkillsRU.Text)<>'') then
      for i := 0 to Memo9SkillsRU.Lines.Count - 1 do
//        if not FormMain.IsEmpty(Memo9SkillsRU.Lines[i]) then
          begin
          UniSPInsertSkills.Close;
          UniSPInsertSkills.ParamByName('p_experience_id').AsInteger:=FExperienceID;
          UniSPInsertSkills.ParamByName('p_skill').AsString:=Memo9SkillsRU.Lines[i];
          UniSPInsertSkills.ExecSQL;
          end;
    end;
  if not FormMain.isEmpty(Edit10NameRU.Text) and not FormMain.isEmpty(Edit10CompanyRU.Text) then
    begin
      UniSPUpdateExperiences.Close;
      UniSPUpdateExperiences.ParamByName('p_flag').AsString := 'template_id';
//      UniSPUpdateExperiences.ParamByName('p_resume_id').AsInteger := null;
      UniSPUpdateExperiences.ParamByName('p_template_id').AsInteger := FTemplateID;
      UniSPUpdateExperiences.ParamByName('p_job_order').AsInteger := 10;
      UniSPUpdateExperiences.ParamByName('p_job_position').AsString := Edit10NameRU.Text;
      UniSPUpdateExperiences.ParamByName('p_start_date').AsDateTime :=CalendarPickerB10RU.Date;
      UniSPUpdateExperiences.ParamByName('p_end_date').AsDateTime := CalendarPickerE10RU.Date;
      UniSPUpdateExperiences.ParamByName('p_employer').AsString := Edit10CompanyRU.Text;
      UniSPUpdateExperiences.ParamByName('p_resp').AsString := Memo10RespRU.Text;
      UniSPUpdateExperiences.ParamByName('p_benefits').AsString := Edit10BenefitsRU.Text;
      UniSPUpdateExperiences.ParamByName('p_leave_reason').AsString := Edit10BottomRU.Text;
      UniSPUpdateExperiences.ExecSQL;
      FExperienceID:=UniSPUpdateExperiences.ParamByName('p_experience_id').Value;
    if (Trim(Memo10SkillsRU.Text)<>'') then
      for i := 0 to Memo10SkillsRU.Lines.Count - 1 do
//        if not FormMain.IsEmpty(Memo10SkillsRU.Lines[i]) then
          begin
          UniSPInsertSkills.Close;
          UniSPInsertSkills.ParamByName('p_experience_id').AsInteger:=FExperienceID;
          UniSPInsertSkills.ParamByName('p_skill').AsString:=Memo10SkillsRU.Lines[i];
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

procedure TFormUpdateTemplate.ChangeDates1RU;
var
  FullMBYear, ShortMBYear, FullMEYear, ShortMEYear: string;
begin
  FormMain.GetMonthRegionByMask(CalendarPickerB1RU.Date, 'Template', FullMBYear, ShortMBYear);
  FormMain.GetMonthRegionByMask(CalendarPickerE1RU.Date, 'Template', FullMEYear, ShortMEYear);
  if Length(Trim(FullMBYear+FullMEYear))=0 then Edit1DatesRU.Text := '' else Edit1DatesRU.Text := FullMBYear + '-' + FullMEYear;
end;

procedure TFormUpdateTemplate.ChangeDates2RU;
var
  FullMBYear, ShortMBYear, FullMEYear, ShortMEYear: string;
begin
  FormMain.GetMonthRegionByMask(CalendarPickerB2RU.Date, 'Template', FullMBYear, ShortMBYear);
  FormMain.GetMonthRegionByMask(CalendarPickerE2RU.Date, 'Template', FullMEYear, ShortMEYear);
  if Length(Trim(FullMBYear+FullMEYear))=0 then Edit2DatesRU.Text := '' else Edit2DatesRU.Text := FullMBYear + '-' + FullMEYear;
end;

procedure TFormUpdateTemplate.ChangeDates3RU;
var
  FullMBYear, ShortMBYear, FullMEYear, ShortMEYear: string;
begin
  FormMain.GetMonthRegionByMask(CalendarPickerB3RU.Date, 'Template', FullMBYear, ShortMBYear);
  FormMain.GetMonthRegionByMask(CalendarPickerE3RU.Date, 'Template', FullMEYear, ShortMEYear);
  if Length(Trim(FullMBYear+FullMEYear))=0 then Edit3DatesRU.Text := '' else Edit3DatesRU.Text := FullMBYear + '-' + FullMEYear;
end;

procedure TFormUpdateTemplate.ChangeDates4RU;
var
  FullMBYear, ShortMBYear, FullMEYear, ShortMEYear: string;
begin
  FormMain.GetMonthRegionByMask(CalendarPickerB4RU.Date, 'Template', FullMBYear, ShortMBYear);
  FormMain.GetMonthRegionByMask(CalendarPickerE4RU.Date, 'Template', FullMEYear, ShortMEYear);
  if Length(Trim(FullMBYear+FullMEYear))=0 then Edit4DatesRU.Text := '' else Edit4DatesRU.Text := FullMBYear + '-' + FullMEYear;
end;

procedure TFormUpdateTemplate.ChangeDates5RU;
var
  FullMBYear, ShortMBYear, FullMEYear, ShortMEYear: string;
begin
  FormMain.GetMonthRegionByMask(CalendarPickerB5RU.Date, 'Template', FullMBYear, ShortMBYear);
  FormMain.GetMonthRegionByMask(CalendarPickerE5RU.Date, 'Template', FullMEYear, ShortMEYear);
  if Length(Trim(FullMBYear+FullMEYear))=0 then Edit5DatesRU.Text := '' else Edit5DatesRU.Text := FullMBYear + '-' + FullMEYear;
end;

procedure TFormUpdateTemplate.ChangeDates6RU;
var
  FullMBYear, ShortMBYear, FullMEYear, ShortMEYear: string;
begin
  FormMain.GetMonthRegionByMask(CalendarPickerB6RU.Date, 'Template', FullMBYear, ShortMBYear);
  FormMain.GetMonthRegionByMask(CalendarPickerE6RU.Date, 'Template', FullMEYear, ShortMEYear);
  if Length(Trim(FullMBYear+FullMEYear))=0 then Edit6DatesRU.Text := '' else Edit6DatesRU.Text := FullMBYear + '-' + FullMEYear;
end;

procedure TFormUpdateTemplate.ChangeDates7RU;
var
  FullMBYear, ShortMBYear, FullMEYear, ShortMEYear: string;
begin
  FormMain.GetMonthRegionByMask(CalendarPickerB7RU.Date, 'Template', FullMBYear, ShortMBYear);
  FormMain.GetMonthRegionByMask(CalendarPickerE7RU.Date, 'Template', FullMEYear, ShortMEYear);
  if Length(Trim(FullMBYear+FullMEYear))=0 then Edit7DatesRU.Text := '' else Edit7DatesRU.Text := FullMBYear + '-' + FullMEYear;
end;

procedure TFormUpdateTemplate.ChangeDates8RU;
var
  FullMBYear, ShortMBYear, FullMEYear, ShortMEYear: string;
begin
  FormMain.GetMonthRegionByMask(CalendarPickerB8RU.Date, 'Template', FullMBYear, ShortMBYear);
  FormMain.GetMonthRegionByMask(CalendarPickerE8RU.Date, 'Template', FullMEYear, ShortMEYear);
  if Length(Trim(FullMBYear+FullMEYear))=0 then Edit8DatesRU.Text := '' else Edit8DatesRU.Text := FullMBYear + '-' + FullMEYear;
end;

procedure TFormUpdateTemplate.ChangeDates9RU;
var
  FullMBYear, ShortMBYear, FullMEYear, ShortMEYear: string;
begin
  FormMain.GetMonthRegionByMask(CalendarPickerB9RU.Date, 'Template', FullMBYear, ShortMBYear);
  FormMain.GetMonthRegionByMask(CalendarPickerE9RU.Date, 'Template', FullMEYear, ShortMEYear);
  if Length(Trim(FullMBYear+FullMEYear))=0 then Edit9DatesRU.Text := '' else Edit9DatesRU.Text := FullMBYear + '-' + FullMEYear;
end;

procedure TFormUpdateTemplate.CalendarPickerB10RUChange(Sender: TObject);
begin
ChangeDates10RU;
end;

procedure TFormUpdateTemplate.CalendarPickerB10RUCloseUp(Sender: TObject);
begin
ChangeDates10RU;
end;

procedure TFormUpdateTemplate.CalendarPickerB1RUChange(Sender: TObject);
begin
ChangeDates1RU;
end;

procedure TFormUpdateTemplate.CalendarPickerB1RUCloseUp(Sender: TObject);
begin
ChangeDates1RU;
end;

procedure TFormUpdateTemplate.CalendarPickerB2RUChange(Sender: TObject);
begin
ChangeDates2RU;
end;

procedure TFormUpdateTemplate.CalendarPickerB2RUCloseUp(Sender: TObject);
begin
ChangeDates2RU;
end;

procedure TFormUpdateTemplate.CalendarPickerB3RUChange(Sender: TObject);
begin
ChangeDates3RU;
end;

procedure TFormUpdateTemplate.CalendarPickerB3RUCloseUp(Sender: TObject);
begin
ChangeDates3RU;
end;

procedure TFormUpdateTemplate.CalendarPickerB4RUChange(Sender: TObject);
begin
ChangeDates4RU;
end;

procedure TFormUpdateTemplate.CalendarPickerB4RUCloseUp(Sender: TObject);
begin
ChangeDates4RU;
end;

procedure TFormUpdateTemplate.CalendarPickerB5RUChange(Sender: TObject);
begin
ChangeDates5RU;
end;

procedure TFormUpdateTemplate.CalendarPickerB5RUCloseUp(Sender: TObject);
begin
ChangeDates5RU;
end;

procedure TFormUpdateTemplate.CalendarPickerB6RUChange(Sender: TObject);
begin
ChangeDates6RU;
end;

procedure TFormUpdateTemplate.CalendarPickerB6RUCloseUp(Sender: TObject);
begin
ChangeDates6RU;
end;

procedure TFormUpdateTemplate.CalendarPickerB7RUChange(Sender: TObject);
begin
ChangeDates7RU;
end;

procedure TFormUpdateTemplate.CalendarPickerB7RUCloseUp(Sender: TObject);
begin
ChangeDates7RU;
end;

procedure TFormUpdateTemplate.CalendarPickerB8RUChange(Sender: TObject);
begin
ChangeDates8RU;
end;

procedure TFormUpdateTemplate.CalendarPickerB8RUCloseUp(Sender: TObject);
begin
ChangeDates8RU;
end;

procedure TFormUpdateTemplate.CalendarPickerB9RUChange(Sender: TObject);
begin
ChangeDates9RU;
end;

procedure TFormUpdateTemplate.CalendarPickerB9RUCloseUp(Sender: TObject);
begin
ChangeDates9RU;
end;

procedure TFormUpdateTemplate.CalendarPickerE10RUChange(Sender: TObject);
begin
ChangeDates10RU;
end;

procedure TFormUpdateTemplate.CalendarPickerE10RUCloseUp(Sender: TObject);
begin
ChangeDates10RU;
end;

procedure TFormUpdateTemplate.CalendarPickerE1RUChange(Sender: TObject);
begin
ChangeDates1RU;
end;

procedure TFormUpdateTemplate.CalendarPickerE1RUCloseUp(Sender: TObject);
begin
ChangeDates1RU;
end;

procedure TFormUpdateTemplate.CalendarPickerE2RUChange(Sender: TObject);
begin
ChangeDates2RU;
end;

procedure TFormUpdateTemplate.CalendarPickerE2RUCloseUp(Sender: TObject);
begin
ChangeDates2RU;
end;

procedure TFormUpdateTemplate.CalendarPickerE3RUChange(Sender: TObject);
begin
ChangeDates3RU;
end;

procedure TFormUpdateTemplate.CalendarPickerE3RUCloseUp(Sender: TObject);
begin
ChangeDates3RU;
end;

procedure TFormUpdateTemplate.CalendarPickerE4RUChange(Sender: TObject);
begin
ChangeDates4RU;
end;

procedure TFormUpdateTemplate.CalendarPickerE4RUCloseUp(Sender: TObject);
begin
ChangeDates4RU;
end;

procedure TFormUpdateTemplate.CalendarPickerE5RUChange(Sender: TObject);
begin
ChangeDates5RU;
end;

procedure TFormUpdateTemplate.CalendarPickerE5RUCloseUp(Sender: TObject);
begin
ChangeDates5RU;
end;

procedure TFormUpdateTemplate.CalendarPickerE6RUChange(Sender: TObject);
begin
ChangeDates6RU;
end;

procedure TFormUpdateTemplate.CalendarPickerE6RUCloseUp(Sender: TObject);
begin
ChangeDates6RU;
end;

procedure TFormUpdateTemplate.CalendarPickerE7RUChange(Sender: TObject);
begin
ChangeDates7RU;
end;

procedure TFormUpdateTemplate.CalendarPickerE7RUCloseUp(Sender: TObject);
begin
ChangeDates7RU;
end;

procedure TFormUpdateTemplate.CalendarPickerE8RUChange(Sender: TObject);
begin
ChangeDates8RU;
end;

procedure TFormUpdateTemplate.CalendarPickerE8RUCloseUp(Sender: TObject);
begin
ChangeDates8RU;
end;

procedure TFormUpdateTemplate.CalendarPickerE9RUChange(Sender: TObject);
begin
ChangeDates9RU;
end;

procedure TFormUpdateTemplate.CalendarPickerE9RUCloseUp(Sender: TObject);
begin
ChangeDates9RU;
end;

procedure TFormUpdateTemplate.ChangeDates10RU;
var
  FullMBYear, ShortMBYear, FullMEYear, ShortMEYear: string;
begin
  FormMain.GetMonthRegionByMask(CalendarPickerB10RU.Date, 'Template', FullMBYear, ShortMBYear);
  FormMain.GetMonthRegionByMask(CalendarPickerE10RU.Date, 'Template', FullMEYear, ShortMEYear);
  if Length(Trim(FullMBYear+FullMEYear))=0 then Edit10DatesRU.Text := '' else Edit10DatesRU.Text := FullMBYear + '-' + FullMEYear;
end;

procedure TFormUpdateTemplate.SetFormValues;
begin
PageControlRU.ActivePageIndex:=0;
SetEmptyTemplates;
SetEmptyFooters;
SetEmptyJobs;
SetEmptySkills;
SetValuesTemplatesRU;
SetValuesFootersRU;
SetValuesJobsRU;
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

procedure TFormUpdateTemplate.SetValuesJobsRU;
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

UniExperienceID.Close;
UniExperienceID.ParamByName('p_template_id').AsInteger:=FTemplateID;
UniExperienceID.Open;
while not UniExperienceID.EOF do
  begin
    if UniExperienceID['job_order']=1 then
      begin
      CalendarPickerB1RU.Date:=UniExperienceID['start_date'];
      CalendarPickerE1RU.Date:=UniExperienceID['end_date'];
      ChangeDates1RU;
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
      ChangeDates2RU;
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
      ChangeDates3RU;
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
      ChangeDates4RU;
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
      ChangeDates5RU;
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
      ChangeDates6RU;
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
      ChangeDates7RU;
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
      ChangeDates8RU;
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
      ChangeDates9RU;
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
      ChangeDates10RU;
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
  //Обязательные поля
  if FormMain.IsEmpty(EditNameRU.Text) then
  begin
    ShowMessage('Пусте поле "Назва резюме"');
    Result := false;
    exit;
  end;
  if FormMain.IsEmpty(EditOpportunityRU.Text) then
  begin
    ShowMessage('Пусте поле "Посада"');
    Result := false;
    exit;
  end;
  if FormMain.IsEmpty(EditPlaceRU.Text) then
  begin
    ShowMessage('Пусте поле "Місце роботи"');
    Result := false;
    exit;
  end;
  if FormMain.IsEmpty(EditPhonesRU.Text) then
  begin
    ShowMessage('Пусте поле "Телефони"');
    Result := false;
    exit;
  end;
  if FormMain.IsEmpty(MemoIntroRU.Text) then
  begin
    ShowMessage('Пусте поле "Введення"');
    Result := false;
    exit;
  end;
  if FormMain.IsEmpty(EditArticle1RU.Text) and not FormMain.IsEmpty(MemoArticle1RU.Text) then
  begin
    ShowMessage('Пусте поле "Навички 1 - Назва"');
    Result := false;
    exit;
  end;
  if FormMain.IsEmpty(MemoArticle1RU.Text) and FormMain.IsEmpty(EditArticle1RU.Text) then
  begin
    ShowMessage('Пусте поле "Навички 1 - Текст"');
    Result := false;
    exit;
  end;
  if (Length(Trim(EditArticle2RU.Text)) = 0) and
    (Length(Trim(MemoArticle2RU.Text)) > 0) then
  begin
    ShowMessage('Пусте поле "Навички 2 - Назва"');
    Result := false;
    exit;
  end;
  if (Length(Trim(MemoArticle2RU.Text)) = 0) and
    (Length(Trim(EditArticle2RU.Text)) > 0) then
  begin
    ShowMessage('Пусте поле "Навички 2 - Текст"');
    Result := false;
    exit;
  end;
  if (Length(Trim(EditArticle3RU.Text)) = 0) and
    (Length(Trim(MemoArticle3RU.Text)) > 0) then
  begin
    ShowMessage('Пусте поле "Навички 3 - Назва"');
    Result := false;
    exit;
  end;
  if (Length(Trim(MemoArticle3RU.Text)) = 0) and
    (Length(Trim(EditArticle3RU.Text)) > 0) then
  begin
    ShowMessage('Пусте поле "Навички 3 - Текст"');
    Result := false;
    exit;
  end;
  if (Length(Trim(EditArticle4RU.Text)) = 0) and
    (Length(Trim(MemoArticle4RU.Text)) > 0) then
  begin
    ShowMessage('Пусте поле "Навички 4 - Назва"');
    Result := false;
    exit;
  end;
  if (Length(Trim(MemoArticle4RU.Text)) = 0) and
    (Length(Trim(EditArticle4RU.Text)) > 0) then
  begin
    ShowMessage('Пусте поле "Навички 4 - Текст"');
    Result := false;
    exit;
  end;
  /// Определяем активность Job через заполненные поля
  ///  Если обязательные поля в работе заполнены, тогда Job активна
  IsJob1Active := not(FormMain.IsEmpty(Edit1DatesRU.Text) or FormMain.IsEmpty(Edit1NameRU.Text) or
    FormMain.IsEmpty(Edit1CompanyRU.Text) or FormMain.IsEmpty(Memo1RespRU.Text) or
    FormMain.IsEmpty(Memo1SkillsRU.Text));

  if IsJob1Active and (Edit1DatesRU.Text='') then
  begin
    ShowMessage('Пусте поле "Дата робота 1"');
    Result := false;
    exit;
  end;

  if (IsJob1Active and FormMain.IsEmpty(Edit1NameRU.Text)) then
  begin
    ShowMessage('Пусте поле "Назва робота 1"');
    Result := false;
    exit;
  end;
  if (IsJob1Active and FormMain.IsEmpty(Edit1CompanyRU.Text)) then
  begin
    ShowMessage('Пусте поле "Компанія робота 1"');
    Result := false;
    exit;
  end;
  if (IsJob1Active and FormMain.IsEmpty(Memo1RespRU.Text)) then
  begin
    ShowMessage('Пусте поле "Обов`язки робота 1"');
    Result := false;
    exit;
  end;
  if (IsJob1Active and FormMain.IsEmpty(Memo1SkillsRU.Text)) then
  begin
    ShowMessage('Пусте поле Скіли робота 1"');
    Result := false;
    exit;
  end;

  /// ////
  IsJob2Active := not(FormMain.IsEmpty(Edit2DatesRU.Text) or FormMain.IsEmpty(Edit2NameRU.Text) or
    FormMain.IsEmpty(Edit2CompanyRU.Text) or FormMain.IsEmpty(Memo2RespRU.Text) or FormMain.IsEmpty(Memo2SkillsRU.Text));
  if (IsJob2Active and FormMain.IsEmpty(Edit2DatesRU.Text)) then
  begin
    ShowMessage('Пусте поле "Дата робота 2"');
    Result := false;
    exit;
  end;

  if (IsJob2Active and FormMain.IsEmpty(Edit2NameRU.Text)) then
  begin
    ShowMessage('Пусте поле "Назва робота 2"');
    Result := false;
    exit;
  end;
  if (IsJob2Active and FormMain.IsEmpty(Edit2CompanyRU.Text)) then
  begin
    ShowMessage('Пусте поле "Компанія робота 2"');
    Result := false;
    exit;
  end;
  if (IsJob2Active and FormMain.IsEmpty(Memo2RespRU.Text)) then
  begin
    ShowMessage('Пусте поле "Обов`язки робота 2"');
    Result := false;
    exit;
  end;
  if (IsJob2Active and FormMain.IsEmpty(Memo2SkillsRU.Text)) then
  begin
    ShowMessage('Пусте поле Скіли робота 2"');
    Result := false;
    exit;
  end;
  /// ////
  IsJob3Active := not(FormMain.IsEmpty(Edit3DatesRU.Text) or FormMain.IsEmpty(Edit3NameRU.Text) or
    FormMain.IsEmpty(Edit3CompanyRU.Text) or FormMain.IsEmpty(Memo3RespRU.Text) or FormMain.IsEmpty(Memo3SkillsRU.Text));
  if (IsJob3Active and FormMain.IsEmpty(Edit3DatesRU.Text)) then
  begin
    ShowMessage('Пусте поле "Дата робота 3"');
    Result := false;
    exit;
  end;

  if (IsJob3Active and FormMain.IsEmpty(Edit3NameRU.Text)) then
  begin
    ShowMessage('Пусте поле "Назва робота 3"');
    Result := false;
    exit;
  end;
  if (IsJob3Active and FormMain.IsEmpty(Edit3CompanyRU.Text)) then
  begin
    ShowMessage('Пусте поле "Компанія робота 3"');
    Result := false;
    exit;
  end;
  if (IsJob3Active and FormMain.IsEmpty(Memo3RespRU.Text)) then
  begin
    ShowMessage('Пусте поле "Обов`язки робота 3"');
    Result := false;
    exit;
  end;
  if (IsJob3Active and FormMain.IsEmpty(Memo3SkillsRU.Text)) then
  begin
    ShowMessage('Пусте поле Скіли робота 3"');
    Result := false;
    exit;
  end;
  /// ////
  IsJob4Active := not(FormMain.IsEmpty(Edit4DatesRU.Text) or FormMain.IsEmpty(Edit4NameRU.Text) or
    FormMain.IsEmpty(Edit4CompanyRU.Text) or FormMain.IsEmpty(Memo4RespRU.Text) or FormMain.IsEmpty(Memo4SkillsRU.Text));
  if (IsJob4Active and FormMain.IsEmpty(Edit4DatesRU.Text)) then
  begin
    ShowMessage('Пусте поле "Дата робота 4"');
    Result := false;
    exit;
  end;

  if (IsJob4Active and FormMain.IsEmpty(Edit4NameRU.Text)) then
  begin
    ShowMessage('Пусте поле "Назва робота 4"');
    Result := false;
    exit;
  end;
  if (IsJob4Active and FormMain.IsEmpty(Edit4CompanyRU.Text)) then
  begin
    ShowMessage('Пусте поле "Компанія робота 4"');
    Result := false;
    exit;
  end;
  if (IsJob4Active and FormMain.IsEmpty(Memo4RespRU.Text)) then
  begin
    ShowMessage('Пусте поле "Обов`язки робота 4"');
    Result := false;
    exit;
  end;
  if (IsJob4Active and FormMain.IsEmpty(Memo4SkillsRU.Text)) then
  begin
    ShowMessage('Пусте поле Скіли робота 4"');
    Result := false;
    exit;
  end;
  /// ////
  IsJob5Active := not(FormMain.IsEmpty(Edit5DatesRU.Text) or FormMain.IsEmpty(Edit5NameRU.Text) or
    FormMain.IsEmpty(Edit5CompanyRU.Text) or FormMain.IsEmpty(Memo5RespRU.Text) or FormMain.IsEmpty(Memo5SkillsRU.Text));
  if (IsJob5Active and FormMain.IsEmpty(Edit5DatesRU.Text)) then
  begin
    ShowMessage('Пусте поле "Дата робота 5"');
    Result := false;
    exit;
  end;

  if (IsJob5Active and FormMain.IsEmpty(Edit5NameRU.Text)) then
  begin
    ShowMessage('Пусте поле "Назва робота 5"');
    Result := false;
    exit;
  end;
  if (IsJob5Active and FormMain.IsEmpty(Edit5CompanyRU.Text)) then
  begin
    ShowMessage('Пусте поле "Компанія робота 5"');
    Result := false;
    exit;
  end;
  if (IsJob5Active and FormMain.IsEmpty(Memo5RespRU.Text)) then
  begin
    ShowMessage('Пусте поле "Обов`язки робота 5"');
    Result := false;
    exit;
  end;
  if (IsJob5Active and FormMain.IsEmpty(Memo5SkillsRU.Text)) then
  begin
    ShowMessage('Пусте поле Скіли робота 5"');
    Result := false;
    exit;
  end;
  /// ////
  IsJob6Active := not(FormMain.IsEmpty(Edit6DatesRU.Text) or FormMain.IsEmpty(Edit6NameRU.Text) or
    FormMain.IsEmpty(Edit6CompanyRU.Text) or FormMain.IsEmpty(Memo6RespRU.Text) or FormMain.IsEmpty(Memo6SkillsRU.Text));
  if (IsJob6Active and FormMain.IsEmpty(Edit6DatesRU.Text)) then
  begin
    ShowMessage('Пусте поле "Дата робота 6"');
    Result := false;
    exit;
  end;

  if (IsJob6Active and FormMain.IsEmpty(Edit6NameRU.Text)) then
  begin
    ShowMessage('Пусте поле "Назва робота 6"');
    Result := false;
    exit;
  end;
  if (IsJob6Active and FormMain.IsEmpty(Edit6CompanyRU.Text)) then
  begin
    ShowMessage('Пусте поле "Компанія робота 6"');
    Result := false;
    exit;
  end;
  if (IsJob6Active and FormMain.IsEmpty(Memo6RespRU.Text)) then
  begin
    ShowMessage('Пусте поле "Обов`язки робота 6"');
    Result := false;
    exit;
  end;
  if (IsJob6Active and FormMain.IsEmpty(Memo6SkillsRU.Text)) then
  begin
    ShowMessage('Пусте поле Скіли робота 6"');
    Result := false;
    exit;
  end;
  /// ////
  IsJob7Active := not(FormMain.IsEmpty(Edit7DatesRU.Text) or FormMain.IsEmpty(Edit7NameRU.Text) or
    FormMain.IsEmpty(Edit7CompanyRU.Text) or FormMain.IsEmpty(Memo7RespRU.Text) or FormMain.IsEmpty(Memo7SkillsRU.Text));
  if (IsJob7Active and FormMain.IsEmpty(Edit7DatesRU.Text)) then
  begin
    ShowMessage('Пусте поле "Дата робота 7"');
    Result := false;
    exit;
  end;

  if (IsJob7Active and FormMain.IsEmpty(Edit7NameRU.Text)) then
  begin
    ShowMessage('Пусте поле "Назва робота 7"');
    Result := false;
    exit;
  end;
  if (IsJob7Active and FormMain.IsEmpty(Edit7CompanyRU.Text)) then
  begin
    ShowMessage('Пусте поле "Компанія робота 7"');
    Result := false;
    exit;
  end;
  if (IsJob7Active and FormMain.IsEmpty(Memo7RespRU.Text)) then
  begin
    ShowMessage('Пусте поле "Обов`язки робота 7"');
    Result := false;
    exit;
  end;
  if (IsJob7Active and FormMain.IsEmpty(Memo7SkillsRU.Text)) then
  begin
    ShowMessage('Пусте поле Скіли робота 7"');
    Result := false;
    exit;
  end;
  /// ////
  IsJob8Active := not(FormMain.IsEmpty(Edit8DatesRU.Text) or FormMain.IsEmpty(Edit8NameRU.Text) or
    FormMain.IsEmpty(Edit8CompanyRU.Text) or FormMain.IsEmpty(Memo8RespRU.Text) or FormMain.IsEmpty(Memo8SkillsRU.Text));
  if (IsJob8Active and FormMain.IsEmpty(Edit8DatesRU.Text)) then
  begin
    ShowMessage('Пусте поле "Дата робота 8"');
    Result := false;
    exit;
  end;

  if (IsJob8Active and FormMain.IsEmpty(Edit8NameRU.Text)) then
  begin
    ShowMessage('Пусте поле "Назва робота 8"');
    Result := false;
    exit;
  end;
  if (IsJob8Active and FormMain.IsEmpty(Edit8CompanyRU.Text)) then
  begin
    ShowMessage('Пусте поле "Компанія робота 8"');
    Result := false;
    exit;
  end;
  if (IsJob8Active and FormMain.IsEmpty(Memo8RespRU.Text)) then
  begin
    ShowMessage('Пусте поле "Обов`язки робота 8"');
    Result := false;
    exit;
  end;
  if (IsJob8Active and FormMain.IsEmpty(Memo8SkillsRU.Text)) then
  begin
    ShowMessage('Пусте поле Скіли робота 8"');
    Result := false;
    exit;
  end;
  /// ////
  IsJob9Active := not(FormMain.IsEmpty(Edit9DatesRU.Text) or FormMain.IsEmpty(Edit9NameRU.Text) or
    FormMain.IsEmpty(Edit9CompanyRU.Text) or FormMain.IsEmpty(Memo9RespRU.Text) or FormMain.IsEmpty(Memo9SkillsRU.Text));
  if (IsJob9Active and FormMain.IsEmpty(Edit9DatesRU.Text)) then
  begin
    ShowMessage('Пусте поле "Дата робота 9"');
    Result := false;
    exit;
  end;

  if (IsJob9Active and FormMain.IsEmpty(Edit9NameRU.Text)) then
  begin
    ShowMessage('Пусте поле "Назва робота 9"');
    Result := false;
    exit;
  end;
  if (IsJob9Active and FormMain.IsEmpty(Edit9CompanyRU.Text)) then
  begin
    ShowMessage('Пусте поле "Компанія робота 9"');
    Result := false;
    exit;
  end;
  if (IsJob9Active and FormMain.IsEmpty(Memo9RespRU.Text)) then
  begin
    ShowMessage('Пусте поле "Обов`язки робота 9"');
    Result := false;
    exit;
  end;
  if (IsJob9Active and FormMain.IsEmpty(Memo9SkillsRU.Text)) then
  begin
    ShowMessage('Пусте поле Скіли робота 9"');
    Result := false;
    exit;
  end;
  /// ////
  IsJob10Active := not(FormMain.IsEmpty(Edit10DatesRU.Text) or FormMain.IsEmpty(Edit10NameRU.Text)
    or FormMain.IsEmpty(Edit10CompanyRU.Text) or FormMain.IsEmpty(Memo10RespRU.Text) or FormMain.IsEmpty(Memo10SkillsRU.Text));
  if (IsJob10Active and FormMain.IsEmpty(Edit10DatesRU.Text)) then
  begin
    ShowMessage('Пусте поле "Дата робота 10"');
    Result := false;
    exit;
  end;

  if (IsJob10Active and FormMain.IsEmpty(Edit10NameRU.Text)) then
  begin
    ShowMessage('Пусте поле "Назва робота 10"');
    Result := false;
    exit;
  end;
  if (IsJob10Active and FormMain.IsEmpty(Edit10CompanyRU.Text)) then
  begin
    ShowMessage('Пусте поле "Компанія робота 10"');
    Result := false;
    exit;
  end;
  if (IsJob10Active and FormMain.IsEmpty(Memo10RespRU.Text)) then
  begin
    ShowMessage('Пусте поле "Обов`язки робота 10"');
    Result := false;
    exit;
  end;
  if (IsJob10Active and FormMain.IsEmpty(Memo10SkillsRU.Text)) then
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
    UniSPUpdateTemplate.ParamByName('p_name').AsString  := trim(EditNameRU.Text);
    UniSPUpdateTemplate.ParamByName('p_job_opportunity').AsString := Trim(EditOpportunityRU.Text);
    UniSPUpdateTemplate.ParamByName('p_job_place').AsString := Trim(EditPlaceRU.Text);
    UniSPUpdateTemplate.ParamByName('p_phone_numbers_text').AsString := Trim(EditPhonesRU.Text);
    UniSPUpdateTemplate.ParamByName('p_template_introduction').AsString := Trim(MemoIntroRU.Text);
    UniSPUpdateTemplate.ParamByName('p_footer_1_header').AsString := Trim(EditArticle1RU.Text);
    UniSPUpdateTemplate.ParamByName('p_footer_1_text').AsString := Trim(MemoArticle1RU.Text);
    UniSPUpdateTemplate.ParamByName('p_footer_2_header').AsString := Trim(EditArticle2RU.Text);
    UniSPUpdateTemplate.ParamByName('p_footer_2_text').AsString := Trim(MemoArticle2RU.Text);
    UniSPUpdateTemplate.ParamByName('p_footer_3_header').AsString := Trim(EditArticle3RU.Text);
    UniSPUpdateTemplate.ParamByName('p_footer_3_text').AsString := Trim(MemoArticle3RU.Text);
    UniSPUpdateTemplate.ParamByName('p_footer_4_header').AsString := Trim(EditArticle4RU.Text);
    UniSPUpdateTemplate.ParamByName('p_footer_4_text').AsString := Trim(MemoArticle4RU.Text);
    UniSPUpdateTemplate.ExecProc;
    if UniSPUpdateTemplate.ParamByName('p_result').Value=0 then Result:=true else Result:=false;
    //FormMain.Warning(' Result='+BoolToStr(Result)+' template_id = '+IntTostr(FTemplateID));
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

end;

procedure TFormUpdateTemplate.SetEmptySkills;
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
end;

end.
