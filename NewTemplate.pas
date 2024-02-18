unit NewTemplate;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.WinXCalendars, Vcl.DBCtrls, Vcl.ComCtrls, Data.DB, MemDS, DBAccess, Uni;

type
  TFormNewTemplate = class(TForm)
    BitBtnClose: TBitBtn;
    BitBtnSave: TBitBtn;
    PageControlRU: TPageControl;
    TabSheetMainRU: TTabSheet;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    LabelFooterID: TLabel;
    Label11: TLabel;
    EditNameRU: TEdit;
    EditOpportunityRU: TEdit;
    EditPlaceRU: TEdit;
    EditPhonesRU: TEdit;
    MemoIntroRU: TMemo;
    EditLangTR: TEdit;
    EditRegionTR: TEdit;
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
    Edit1DatesRU: TEdit;
    Edit1NameRU: TEdit;
    Edit1CompanyRU: TEdit;
    Memo1RespRU: TMemo;
    Edit1BenefitsRU: TEdit;
    Edit1BottomRU: TEdit;
    Memo1SkillsRU: TMemo;
    TabSheetJob2RU: TTabSheet;
    Edit2DatesRU: TEdit;
    Edit2NameRU: TEdit;
    Edit2CompanyRU: TEdit;
    Memo2RespRU: TMemo;
    Edit2BenefitsRU: TEdit;
    Edit2BottomRU: TEdit;
    Memo2SkillsRU: TMemo;
    TabSheetJob3RU: TTabSheet;
    Edit3DatesRU: TEdit;
    Edit3NameRU: TEdit;
    Edit3CompanyRU: TEdit;
    Memo3RespRU: TMemo;
    Edit3BenefitsRU: TEdit;
    Edit3BottomRU: TEdit;
    Memo3SkillsRU: TMemo;
    TabSheetJob4RU: TTabSheet;
    Edit4DatesRU: TEdit;
    Edit4NameRU: TEdit;
    Edit4CompanyRU: TEdit;
    Memo4RespRU: TMemo;
    Edit4BenefitsRU: TEdit;
    Edit4BottomRU: TEdit;
    Memo4SkillsRU: TMemo;
    TabSheetJob5RU: TTabSheet;
    Edit5DatesRU: TEdit;
    Edit5NameRU: TEdit;
    Edit5CompanyRU: TEdit;
    Memo5RespRU: TMemo;
    Edit5BenefitsRU: TEdit;
    Edit5BottomRU: TEdit;
    Memo5SkillsRU: TMemo;
    TabSheetJob6RU: TTabSheet;
    Memo6RespRU: TMemo;
    Edit6BenefitsRU: TEdit;
    Edit6BottomRU: TEdit;
    Edit6DatesRU: TEdit;
    Edit6NameRU: TEdit;
    Edit6CompanyRU: TEdit;
    Memo6SkillsRU: TMemo;
    TabSheetJob7RU: TTabSheet;
    Memo7RespRU: TMemo;
    Edit7BenefitsRU: TEdit;
    Edit7BottomRU: TEdit;
    Edit7DatesRU: TEdit;
    Edit7NameRU: TEdit;
    Edit7CompanyRU: TEdit;
    Memo7SkillsRU: TMemo;
    TabSheetJob8RU: TTabSheet;
    Memo8RespRU: TMemo;
    Edit8BenefitsRU: TEdit;
    Edit8BottomRU: TEdit;
    Edit8DatesRU: TEdit;
    Edit8NameRU: TEdit;
    Edit8CompanyRU: TEdit;
    Memo8SkillsRU: TMemo;
    TabSheetJob9RU: TTabSheet;
    Memo9RespRU: TMemo;
    Edit9BenefitsRU: TEdit;
    Edit9BottomRU: TEdit;
    Edit9DatesRU: TEdit;
    Edit9NameRU: TEdit;
    Edit9CompanyRU: TEdit;
    Memo9SkillsRU: TMemo;
    TabSheet10RU: TTabSheet;
    Memo10RespRU: TMemo;
    Edit10BenefitsRU: TEdit;
    Edit10BottomRU: TEdit;
    Edit10DatesRU: TEdit;
    Edit10NameRU: TEdit;
    Edit10CompanyRU: TEdit;
    Memo10SkillsRU: TMemo;
    CalendarPickerB1RU: TCalendarPicker;
    CalendarPickerE1RU: TCalendarPicker;
    CalendarPickerB2RU: TCalendarPicker;
    CalendarPickerE2RU: TCalendarPicker;
    CalendarPickerB3RU: TCalendarPicker;
    CalendarPickerE3RU: TCalendarPicker;
    CalendarPickerB4RU: TCalendarPicker;
    CalendarPickerE4RU: TCalendarPicker;
    CalendarPickerB5RU: TCalendarPicker;
    CalendarPickerE5RU: TCalendarPicker;
    CalendarPickerB6RU: TCalendarPicker;
    CalendarPickerE6RU: TCalendarPicker;
    CalendarPickerB7RU: TCalendarPicker;
    CalendarPickerE7RU: TCalendarPicker;
    CalendarPickerB8RU: TCalendarPicker;
    CalendarPickerE8RU: TCalendarPicker;
    CalendarPickerB9RU: TCalendarPicker;
    CalendarPickerE9RU: TCalendarPicker;
    CalendarPickerB10RU: TCalendarPicker;
    CalendarPickerE10RU: TCalendarPicker;
    UniSPInsertTemplate: TUniStoredProc;
    UniSPInsertExperiences: TUniStoredProc;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label14: TLabel;
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
    UniSPInsertSkills: TUniStoredProc;
    Label74: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    procedure BitBtnCloseClick(Sender: TObject);
    procedure BitBtnSaveClick(Sender: TObject);
    procedure CalendarPickerB2RUCloseUp(Sender: TObject);
    procedure CalendarPickerE2RUCloseUp(Sender: TObject);
    procedure CalendarPickerB1RUCloseUp(Sender: TObject);
    procedure CalendarPickerE1RUCloseUp(Sender: TObject);
    procedure CalendarPickerB3RUCloseUp(Sender: TObject);
    procedure CalendarPickerE3RUCloseUp(Sender: TObject);
    procedure CalendarPickerB4RUCloseUp(Sender: TObject);
    procedure CalendarPickerE4RUCloseUp(Sender: TObject);
    procedure CalendarPickerB5RUCloseUp(Sender: TObject);
    procedure CalendarPickerE5RUCloseUp(Sender: TObject);
    procedure CalendarPickerB6RUCloseUp(Sender: TObject);
    procedure CalendarPickerE6RUCloseUp(Sender: TObject);
    procedure CalendarPickerB7RUCloseUp(Sender: TObject);
    procedure CalendarPickerE7RUCloseUp(Sender: TObject);
    procedure CalendarPickerB8RUCloseUp(Sender: TObject);
    procedure CalendarPickerE8RUCloseUp(Sender: TObject);
    procedure CalendarPickerB9RUCloseUp(Sender: TObject);
    procedure CalendarPickerE9RUCloseUp(Sender: TObject);
    procedure CalendarPickerB10RUCloseUp(Sender: TObject);
    procedure CalendarPickerE10RUCloseUp(Sender: TObject);
    procedure CalendarPickerB1RUChange(Sender: TObject);
    procedure CalendarPickerE1RUChange(Sender: TObject);
    procedure CalendarPickerB2RUChange(Sender: TObject);
    procedure CalendarPickerE2RUChange(Sender: TObject);
    procedure CalendarPickerB3RUChange(Sender: TObject);
    procedure CalendarPickerE3RUChange(Sender: TObject);
    procedure CalendarPickerB4RUChange(Sender: TObject);
    procedure CalendarPickerE4RUChange(Sender: TObject);
    procedure CalendarPickerB5RUChange(Sender: TObject);
    procedure CalendarPickerE5RUChange(Sender: TObject);
    procedure CalendarPickerB6RUChange(Sender: TObject);
    procedure CalendarPickerE6RUChange(Sender: TObject);
    procedure CalendarPickerB7RUChange(Sender: TObject);
    procedure CalendarPickerE7RUChange(Sender: TObject);
    procedure CalendarPickerB8RUChange(Sender: TObject);
    procedure CalendarPickerE8RUChange(Sender: TObject);
    procedure CalendarPickerB9RUChange(Sender: TObject);
    procedure CalendarPickerE9RUChange(Sender: TObject);
    procedure CalendarPickerB10RUChange(Sender: TObject);
    procedure CalendarPickerE10RUChange(Sender: TObject);
  private
    function CheckValues: boolean;
    function SaveTemplate(var FTemplateID:integer):boolean;
    function SaveValues: boolean;
    function SaveJobs(const FTemplateID: integer): boolean;
//    function SaveSkill(const FExperienceID: integer; const Memo: TMemo): boolean;
    procedure SetEmptySkillsRU;
    procedure SetEmptyJobsRU;
    procedure SetEmptyTemplatesRU;
    procedure SetEmptyFootersRU;
    procedure ChangeDates1;
    procedure ChangeDates10;
    procedure ChangeDates2;
    procedure ChangeDates3;
    procedure ChangeDates4;
    procedure ChangeDates5;
    procedure ChangeDates6;
    procedure ChangeDates7;
    procedure ChangeDates8;
    procedure ChangeDates9;
    { Private declarations }
  public
    procedure SetFormValues;
  end;

var
  FormNewTemplate: TFormNewTemplate;

implementation

{$R *.dfm}

uses MainForm;

procedure TFormNewTemplate.BitBtnCloseClick(Sender: TObject);
begin
Close;
end;

function TFormNewTemplate.SaveJobs(const FTemplateID: integer): boolean;
var i, FExperienceID:integer;
begin
  try
  if not FormMain.isEmpty(Edit1NameRU.Text) and not FormMain.isEmpty(Edit1CompanyRU.Text) then
    begin
      UniSPInsertExperiences.Close;
      UniSPInsertExperiences.ParamByName('p_flag').AsString := 'template_id';
      UniSPInsertExperiences.ParamByName('p_template_id').AsInteger := FTemplateID;
      UniSPInsertExperiences.ParamByName('p_job_order').AsInteger := 1;
      UniSPInsertExperiences.ParamByName('p_job_position').AsString := Edit1NameRU.Text;
      UniSPInsertExperiences.ParamByName('p_start_date').AsDateTime :=CalendarPickerB1RU.Date;
      UniSPInsertExperiences.ParamByName('p_end_date').AsDateTime := CalendarPickerE1RU.Date;
      UniSPInsertExperiences.ParamByName('p_employer').AsString := Edit1CompanyRU.Text;
      UniSPInsertExperiences.ParamByName('p_resp').AsString := Memo1RespRU.Text;
      UniSPInsertExperiences.ParamByName('p_benefits').AsString := Edit1BenefitsRU.Text;
      UniSPInsertExperiences.ParamByName('p_leave_reason').AsString := Edit1BottomRU.Text;
      UniSPInsertExperiences.ExecSQL;
      FExperienceID:=UniSPInsertExperiences.ParamByName('p_experience_id').Value;
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
      UniSPInsertExperiences.Close;
      UniSPInsertExperiences.ParamByName('p_flag').AsString := 'template_id';
      UniSPInsertExperiences.ParamByName('p_template_id').AsInteger := FTemplateID;
      UniSPInsertExperiences.ParamByName('p_job_order').AsInteger := 2;
      UniSPInsertExperiences.ParamByName('p_job_position').AsString := Edit2NameRU.Text;
      UniSPInsertExperiences.ParamByName('p_start_date').AsDateTime :=CalendarPickerB2RU.Date;
      UniSPInsertExperiences.ParamByName('p_end_date').AsDateTime := CalendarPickerE2RU.Date;
      UniSPInsertExperiences.ParamByName('p_employer').AsString := Edit2CompanyRU.Text;
      UniSPInsertExperiences.ParamByName('p_resp').AsString := Memo2RespRU.Text;
      UniSPInsertExperiences.ParamByName('p_benefits').AsString := Edit2BenefitsRU.Text;
      UniSPInsertExperiences.ParamByName('p_leave_reason').AsString := Edit2BottomRU.Text;
      UniSPInsertExperiences.ExecSQL;
      FExperienceID:=UniSPInsertExperiences.ParamByName('p_experience_id').Value;
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
      UniSPInsertExperiences.Close;
      UniSPInsertExperiences.ParamByName('p_flag').AsString := 'template_id';
      UniSPInsertExperiences.ParamByName('p_template_id').AsInteger := FTemplateID;
      UniSPInsertExperiences.ParamByName('p_job_order').AsInteger := 3;
      UniSPInsertExperiences.ParamByName('p_job_position').AsString := Edit3NameRU.Text;
      UniSPInsertExperiences.ParamByName('p_start_date').AsDateTime :=CalendarPickerB3RU.Date;
      UniSPInsertExperiences.ParamByName('p_end_date').AsDateTime := CalendarPickerE3RU.Date;
      UniSPInsertExperiences.ParamByName('p_employer').AsString := Edit3CompanyRU.Text;
      UniSPInsertExperiences.ParamByName('p_resp').AsString := Memo3RespRU.Text;
      UniSPInsertExperiences.ParamByName('p_benefits').AsString := Edit3BenefitsRU.Text;
      UniSPInsertExperiences.ParamByName('p_leave_reason').AsString := Edit3BottomRU.Text;
      UniSPInsertExperiences.ExecSQL;
      FExperienceID:=UniSPInsertExperiences.ParamByName('p_experience_id').Value;
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
      UniSPInsertExperiences.Close;
      UniSPInsertExperiences.ParamByName('p_flag').AsString := 'template_id';
      UniSPInsertExperiences.ParamByName('p_template_id').AsInteger := FTemplateID;
      UniSPInsertExperiences.ParamByName('p_job_order').AsInteger := 4;
      UniSPInsertExperiences.ParamByName('p_job_position').AsString := Edit4NameRU.Text;
      UniSPInsertExperiences.ParamByName('p_start_date').AsDateTime :=CalendarPickerB4RU.Date;
      UniSPInsertExperiences.ParamByName('p_end_date').AsDateTime := CalendarPickerE4RU.Date;
      UniSPInsertExperiences.ParamByName('p_employer').AsString := Edit4CompanyRU.Text;
      UniSPInsertExperiences.ParamByName('p_resp').AsString := Memo4RespRU.Text;
      UniSPInsertExperiences.ParamByName('p_benefits').AsString := Edit4BenefitsRU.Text;
      UniSPInsertExperiences.ParamByName('p_leave_reason').AsString := Edit4BottomRU.Text;
      UniSPInsertExperiences.ExecSQL;
      FExperienceID:=UniSPInsertExperiences.ParamByName('p_experience_id').Value;
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
      UniSPInsertExperiences.Close;
      UniSPInsertExperiences.ParamByName('p_flag').AsString := 'template_id';
      UniSPInsertExperiences.ParamByName('p_template_id').AsInteger := FTemplateID;
      UniSPInsertExperiences.ParamByName('p_job_order').AsInteger := 5;
      UniSPInsertExperiences.ParamByName('p_job_position').AsString := Edit5NameRU.Text;
      UniSPInsertExperiences.ParamByName('p_start_date').AsDateTime :=CalendarPickerB5RU.Date;
      UniSPInsertExperiences.ParamByName('p_end_date').AsDateTime := CalendarPickerE5RU.Date;
      UniSPInsertExperiences.ParamByName('p_employer').AsString := Edit5CompanyRU.Text;
      UniSPInsertExperiences.ParamByName('p_resp').AsString := Memo5RespRU.Text;
      UniSPInsertExperiences.ParamByName('p_benefits').AsString := Edit5BenefitsRU.Text;
      UniSPInsertExperiences.ParamByName('p_leave_reason').AsString := Edit5BottomRU.Text;
      UniSPInsertExperiences.ExecSQL;
      FExperienceID:=UniSPInsertExperiences.ParamByName('p_experience_id').Value;
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
      UniSPInsertExperiences.Close;
      UniSPInsertExperiences.ParamByName('p_flag').AsString := 'template_id';
      UniSPInsertExperiences.ParamByName('p_template_id').AsInteger := FTemplateID;
      UniSPInsertExperiences.ParamByName('p_job_order').AsInteger := 6;
      UniSPInsertExperiences.ParamByName('p_job_position').AsString := Edit6NameRU.Text;
      UniSPInsertExperiences.ParamByName('p_start_date').AsDateTime :=CalendarPickerB6RU.Date;
      UniSPInsertExperiences.ParamByName('p_end_date').AsDateTime := CalendarPickerE6RU.Date;
      UniSPInsertExperiences.ParamByName('p_employer').AsString := Edit6CompanyRU.Text;
      UniSPInsertExperiences.ParamByName('p_resp').AsString := Memo6RespRU.Text;
      UniSPInsertExperiences.ParamByName('p_benefits').AsString := Edit6BenefitsRU.Text;
      UniSPInsertExperiences.ParamByName('p_leave_reason').AsString := Edit6BottomRU.Text;
      UniSPInsertExperiences.ExecSQL;
      FExperienceID:=UniSPInsertExperiences.ParamByName('p_experience_id').Value;
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
      UniSPInsertExperiences.Close;
      UniSPInsertExperiences.ParamByName('p_flag').AsString := 'template_id';
      UniSPInsertExperiences.ParamByName('p_template_id').AsInteger := FTemplateID;
      UniSPInsertExperiences.ParamByName('p_job_order').AsInteger := 7;
      UniSPInsertExperiences.ParamByName('p_job_position').AsString := Edit7NameRU.Text;
      UniSPInsertExperiences.ParamByName('p_start_date').AsDateTime :=CalendarPickerB7RU.Date;
      UniSPInsertExperiences.ParamByName('p_end_date').AsDateTime := CalendarPickerE7RU.Date;
      UniSPInsertExperiences.ParamByName('p_employer').AsString := Edit7CompanyRU.Text;
      UniSPInsertExperiences.ParamByName('p_resp').AsString := Memo7RespRU.Text;
      UniSPInsertExperiences.ParamByName('p_benefits').AsString := Edit7BenefitsRU.Text;
      UniSPInsertExperiences.ParamByName('p_leave_reason').AsString := Edit7BottomRU.Text;
      UniSPInsertExperiences.ExecSQL;
      FExperienceID:=UniSPInsertExperiences.ParamByName('p_experience_id').Value;
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
      UniSPInsertExperiences.Close;
      UniSPInsertExperiences.ParamByName('p_flag').AsString := 'template_id';
      UniSPInsertExperiences.ParamByName('p_template_id').AsInteger := FTemplateID;
      UniSPInsertExperiences.ParamByName('p_job_order').AsInteger := 8;
      UniSPInsertExperiences.ParamByName('p_job_position').AsString := Edit8NameRU.Text;
      UniSPInsertExperiences.ParamByName('p_start_date').AsDateTime :=CalendarPickerB8RU.Date;
      UniSPInsertExperiences.ParamByName('p_end_date').AsDateTime := CalendarPickerE8RU.Date;
      UniSPInsertExperiences.ParamByName('p_employer').AsString := Edit8CompanyRU.Text;
      UniSPInsertExperiences.ParamByName('p_resp').AsString := Memo8RespRU.Text;
      UniSPInsertExperiences.ParamByName('p_benefits').AsString := Edit8BenefitsRU.Text;
      UniSPInsertExperiences.ParamByName('p_leave_reason').AsString := Edit8BottomRU.Text;
      UniSPInsertExperiences.ExecSQL;
      FExperienceID:=UniSPInsertExperiences.ParamByName('p_experience_id').Value;
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
      UniSPInsertExperiences.Close;
      UniSPInsertExperiences.ParamByName('p_flag').AsString := 'template_id';
      UniSPInsertExperiences.ParamByName('p_template_id').AsInteger := FTemplateID;
      UniSPInsertExperiences.ParamByName('p_job_order').AsInteger := 9;
      UniSPInsertExperiences.ParamByName('p_job_position').AsString := Edit9NameRU.Text;
      UniSPInsertExperiences.ParamByName('p_start_date').AsDateTime :=CalendarPickerB9RU.Date;
      UniSPInsertExperiences.ParamByName('p_end_date').AsDateTime := CalendarPickerE9RU.Date;
      UniSPInsertExperiences.ParamByName('p_employer').AsString := Edit9CompanyRU.Text;
      UniSPInsertExperiences.ParamByName('p_resp').AsString := Memo9RespRU.Text;
      UniSPInsertExperiences.ParamByName('p_benefits').AsString := Edit9BenefitsRU.Text;
      UniSPInsertExperiences.ParamByName('p_leave_reason').AsString := Edit9BottomRU.Text;
      UniSPInsertExperiences.ExecSQL;
      FExperienceID:=UniSPInsertExperiences.ParamByName('p_experience_id').Value;
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
      UniSPInsertExperiences.Close;
      UniSPInsertExperiences.ParamByName('p_flag').AsString := 'template_id';
      UniSPInsertExperiences.ParamByName('p_template_id').AsInteger := FTemplateID;
      UniSPInsertExperiences.ParamByName('p_job_order').AsInteger := 10;
      UniSPInsertExperiences.ParamByName('p_job_position').AsString := Edit10NameRU.Text;
      UniSPInsertExperiences.ParamByName('p_start_date').AsDateTime :=CalendarPickerB10RU.Date;
      UniSPInsertExperiences.ParamByName('p_end_date').AsDateTime := CalendarPickerE10RU.Date;
      UniSPInsertExperiences.ParamByName('p_employer').AsString := Edit10CompanyRU.Text;
      UniSPInsertExperiences.ParamByName('p_resp').AsString := Memo10RespRU.Text;
      UniSPInsertExperiences.ParamByName('p_benefits').AsString := Edit10BenefitsRU.Text;
      UniSPInsertExperiences.ParamByName('p_leave_reason').AsString := Edit10BottomRU.Text;
      UniSPInsertExperiences.ExecSQL;
      FExperienceID:=UniSPInsertExperiences.ParamByName('p_experience_id').Value;
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

function TFormNewTemplate.SaveValues: boolean;
var
  FTemplateID, FExperienceID: integer;
  R:boolean;
begin
Result := true;
  try
  if not SaveTemplate(FTemplateID) then
    begin
      FormMain.Warning('Сбой при сохранении templates');
      Result := false;
      exit;
    end;
    if not SaveJobs(FTemplateID) then
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

//function TFormNewTemplate.SaveSkill(const FExperienceID: integer; const Memo: TMemo): boolean;
//var i:integer;
//begin
//  try
//  for i := 1 to Memo.Lines.Count - 1 do
//    begin
//      UniSPInsertSkill.Close;
//      UniSPInsertSkill.ParamByName('p_experience_id').AsInteger:=FExperienceID;
//      UniSPInsertSkill.ParamByName('p_skill').AsString:=Memo.Lines[i];
//      if Trim(Memo.Lines[i])<>'' then UniSPInsertSkill.ExecSQL;
//    end;
//    Result := true;
//  except
//    on E: Exception do
//    begin
//      ShowMessage('Ошибка во время вставки в skills (SaveSkills): ' +
//        E.Message);
//      Result := false;
//    end;
//  end;
//end;

procedure TFormNewTemplate.BitBtnSaveClick(Sender: TObject);
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

function TFormNewTemplate.SaveTemplate(var FTemplateID:integer):boolean;
var Resume_id:integer;
begin
Result:=true;
  try
    UniSPInsertTemplate.Prepare;
    UniSPInsertTemplate.ParamByName('p_name').AsString := trim(EditNameRU.Text);
    UniSPInsertTemplate.ParamByName('p_job_opportunity').AsString := Trim(EditOpportunityRU.Text);
    UniSPInsertTemplate.ParamByName('p_job_place').AsString := Trim(EditPlaceRU.Text);
    UniSPInsertTemplate.ParamByName('p_phone_numbers_text').AsString := Trim(EditPhonesRU.Text);
    UniSPInsertTemplate.ParamByName('p_template_introduction').AsString := Trim(MemoIntroRU.Text);
    UniSPInsertTemplate.ParamByName('p_footer_1_header').AsString := Trim(EditArticle1RU.Text);
    UniSPInsertTemplate.ParamByName('p_footer_1_text').AsString := Trim(MemoArticle1RU.Text);
    UniSPInsertTemplate.ParamByName('p_footer_2_header').AsString := Trim(EditArticle2RU.Text);
    UniSPInsertTemplate.ParamByName('p_footer_2_text').AsString := Trim(MemoArticle2RU.Text);
    UniSPInsertTemplate.ParamByName('p_footer_3_header').AsString := Trim(EditArticle3RU.Text);
    UniSPInsertTemplate.ParamByName('p_footer_3_text').AsString := Trim(MemoArticle3RU.Text);
    UniSPInsertTemplate.ParamByName('p_footer_4_header').AsString := Trim(EditArticle4RU.Text);
    UniSPInsertTemplate.ParamByName('p_footer_4_text').AsString := Trim(MemoArticle4RU.Text);
    UniSPInsertTemplate.ExecProc;
    FTemplateID:=UniSPInsertTemplate.ParamByName('p_template_id').Value;
    if UniSPInsertTemplate.ParamByName('p_result').Value=0 then Result:=true else Result:=false;
    FormMain.Warning(' Result='+BoolToStr(Result)+' template_id = '+IntTostr(FTemplateID));
    except
    on E: Exception do
    begin
    ShowMessage('Ошибка во время вставки в Templates: ' + E.Message);
    Result := false;
    end;
  end;
end;

procedure TFormNewTemplate.CalendarPickerB10RUChange(Sender: TObject);
begin
  ChangeDates10;
end;

procedure TFormNewTemplate.CalendarPickerB10RUCloseUp(Sender: TObject);
begin
  ChangeDates10;
end;

procedure TFormNewTemplate.CalendarPickerB1RUChange(Sender: TObject);
begin
  ChangeDates1;
end;

procedure TFormNewTemplate.CalendarPickerB1RUCloseUp(Sender: TObject);
begin
  ChangeDates1;
end;

procedure TFormNewTemplate.CalendarPickerB2RUChange(Sender: TObject);
begin
  ChangeDates2;
end;

procedure TFormNewTemplate.CalendarPickerB2RUCloseUp(Sender: TObject);
begin
  ChangeDates2;
end;

procedure TFormNewTemplate.CalendarPickerB3RUChange(Sender: TObject);
begin
  ChangeDates3;
end;

procedure TFormNewTemplate.CalendarPickerB3RUCloseUp(Sender: TObject);
begin
  ChangeDates3;
end;

procedure TFormNewTemplate.CalendarPickerB4RUChange(Sender: TObject);
begin
  ChangeDates4;
end;

procedure TFormNewTemplate.CalendarPickerB4RUCloseUp(Sender: TObject);
begin
  ChangeDates4;
end;

procedure TFormNewTemplate.CalendarPickerB5RUChange(Sender: TObject);
begin
  ChangeDates5;
end;

procedure TFormNewTemplate.CalendarPickerB5RUCloseUp(Sender: TObject);
begin
  ChangeDates5;
end;

procedure TFormNewTemplate.CalendarPickerB6RUChange(Sender: TObject);
begin
  ChangeDates6;
end;

procedure TFormNewTemplate.CalendarPickerB6RUCloseUp(Sender: TObject);
begin
  ChangeDates6;
end;

procedure TFormNewTemplate.CalendarPickerB7RUChange(Sender: TObject);
begin
  ChangeDates7;
end;

procedure TFormNewTemplate.CalendarPickerB7RUCloseUp(Sender: TObject);
begin
  ChangeDates7;
end;

procedure TFormNewTemplate.CalendarPickerB8RUChange(Sender: TObject);
begin
  ChangeDates8;
end;

procedure TFormNewTemplate.CalendarPickerB8RUCloseUp(Sender: TObject);
begin
  ChangeDates8;
end;

procedure TFormNewTemplate.CalendarPickerB9RUChange(Sender: TObject);
begin
  ChangeDates9;
end;

procedure TFormNewTemplate.CalendarPickerB9RUCloseUp(Sender: TObject);
begin
  ChangeDates9;
end;

procedure TFormNewTemplate.CalendarPickerE10RUChange(Sender: TObject);
begin
  ChangeDates10;
end;

procedure TFormNewTemplate.CalendarPickerE10RUCloseUp(Sender: TObject);
begin
  ChangeDates10;
end;

procedure TFormNewTemplate.CalendarPickerE1RUChange(Sender: TObject);
begin
  ChangeDates1;
end;

procedure TFormNewTemplate.CalendarPickerE1RUCloseUp(Sender: TObject);
begin
  ChangeDates2;
end;

procedure TFormNewTemplate.CalendarPickerE2RUChange(Sender: TObject);
begin
  ChangeDates2;
end;

procedure TFormNewTemplate.CalendarPickerE2RUCloseUp(Sender: TObject);
begin
  ChangeDates1;
end;

procedure TFormNewTemplate.CalendarPickerE3RUChange(Sender: TObject);
begin
  ChangeDates3;
end;

procedure TFormNewTemplate.CalendarPickerE3RUCloseUp(Sender: TObject);
begin
  ChangeDates3;
end;

procedure TFormNewTemplate.CalendarPickerE4RUChange(Sender: TObject);
begin
  ChangeDates4;
end;

procedure TFormNewTemplate.CalendarPickerE4RUCloseUp(Sender: TObject);
begin
  ChangeDates4;
end;

procedure TFormNewTemplate.CalendarPickerE5RUChange(Sender: TObject);
begin
  ChangeDates5;
end;

procedure TFormNewTemplate.CalendarPickerE5RUCloseUp(Sender: TObject);
begin
  ChangeDates5;
end;

procedure TFormNewTemplate.CalendarPickerE6RUChange(Sender: TObject);
begin
  ChangeDates6;
end;

procedure TFormNewTemplate.CalendarPickerE6RUCloseUp(Sender: TObject);
begin
  ChangeDates6;
end;

procedure TFormNewTemplate.CalendarPickerE7RUChange(Sender: TObject);
begin
  ChangeDates7;
end;

procedure TFormNewTemplate.CalendarPickerE7RUCloseUp(Sender: TObject);
begin
  ChangeDates7;
end;

procedure TFormNewTemplate.CalendarPickerE8RUChange(Sender: TObject);
begin
  ChangeDates8;
end;

procedure TFormNewTemplate.CalendarPickerE8RUCloseUp(Sender: TObject);
begin
  ChangeDates8;
end;

procedure TFormNewTemplate.CalendarPickerE9RUChange(Sender: TObject);
begin
  ChangeDates9;
end;

procedure TFormNewTemplate.CalendarPickerE9RUCloseUp(Sender: TObject);
begin
  ChangeDates9;
end;

function TFormNewTemplate.CheckValues: boolean;
var
  IsJob1Active, IsJob2Active, IsJob3Active, IsJob4Active, IsJob5Active,
    IsJob6Active, IsJob7Active, IsJob8Active, IsJob9Active,
    IsJob10Active: boolean;
begin
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
  /// ////
  IsJob1Active := not(FormMain.IsEmpty(Edit1DatesRU.Text) or FormMain.IsEmpty(Edit1NameRU.Text) or
    FormMain.IsEmpty(Edit1CompanyRU.Text) or FormMain.IsEmpty(Memo1RespRU.Text) or
    FormMain.IsEmpty(Memo1SkillsRU.Text));

  if (IsJob1Active and FormMain.IsEmpty(Edit1DatesRU.Text)) then
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

procedure TFormNewTemplate.SetFormValues;
begin
PageControlRU.ActivePageIndex:=0;
SetEmptyTemplatesRU;
SetEmptyFootersRU;
SetEmptyJobsRU;
SetEmptySkillsRU;
end;

procedure TFormNewTemplate.SetEmptyFootersRU;
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

procedure TFormNewTemplate.SetEmptyTemplatesRU;
begin
  EditNameRU.Text:='';
  EditOpportunityRU.Text:='';
  EditPlaceRU.Text:='';
  EditPhonesRU.Text:='';
  MemoIntroRU.Text:='';
end;

procedure TFormNewTemplate.SetEmptySkillsRU;
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

procedure TFormNewTemplate.SetEmptyJobsRU;
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

procedure TFormNewTemplate.ChangeDates1;
var
  FullMBYear, ShortMBYear, FullMEYear, ShortMEYear: string;
begin
  FormMain.GetMonthRegionByMask(CalendarPickerB1RU.Date, 'Template', FullMBYear, ShortMBYear);
  FormMain.GetMonthRegionByMask(CalendarPickerE1RU.Date, 'Template', FullMEYear, ShortMEYear);
  Edit1DatesRU.Text := FullMBYear + '-' + FullMEYear;
end;

procedure TFormNewTemplate.ChangeDates2;
var
  FullMBYear, ShortMBYear, FullMEYear, ShortMEYear: string;
begin
  FormMain.GetMonthRegionByMask(CalendarPickerB2RU.Date, 'Template', FullMBYear, ShortMBYear);
  FormMain.GetMonthRegionByMask(CalendarPickerE2RU.Date, 'Template', FullMEYear, ShortMEYear);
  Edit2DatesRU.Text := FullMBYear + '-' + FullMEYear;
end;

procedure TFormNewTemplate.ChangeDates3;
var
  FullMBYear, ShortMBYear, FullMEYear, ShortMEYear: string;
begin
  FormMain.GetMonthRegionByMask(CalendarPickerB3RU.Date, 'Template', FullMBYear, ShortMBYear);
  FormMain.GetMonthRegionByMask(CalendarPickerE3RU.Date, 'Template', FullMEYear, ShortMEYear);
  Edit3DatesRU.Text := FullMBYear + '-' + FullMEYear;
end;

procedure TFormNewTemplate.ChangeDates4;
var
  FullMBYear, ShortMBYear, FullMEYear, ShortMEYear: string;
begin
  FormMain.GetMonthRegionByMask(CalendarPickerB4RU.Date, 'Template', FullMBYear, ShortMBYear);
  FormMain.GetMonthRegionByMask(CalendarPickerE4RU.Date, 'Template', FullMEYear, ShortMEYear);
  Edit4DatesRU.Text := FullMBYear + '-' + FullMEYear;
end;

procedure TFormNewTemplate.ChangeDates5;
var
  FullMBYear, ShortMBYear, FullMEYear, ShortMEYear: string;
begin
  FormMain.GetMonthRegionByMask(CalendarPickerB5RU.Date, 'Template', FullMBYear, ShortMBYear);
  FormMain.GetMonthRegionByMask(CalendarPickerE5RU.Date, 'Template', FullMEYear, ShortMEYear);
  Edit5DatesRU.Text := FullMBYear + '-' + FullMEYear;
end;

procedure TFormNewTemplate.ChangeDates6;
var
  FullMBYear, ShortMBYear, FullMEYear, ShortMEYear: string;
begin
  FormMain.GetMonthRegionByMask(CalendarPickerB6RU.Date, 'Template', FullMBYear, ShortMBYear);
  FormMain.GetMonthRegionByMask(CalendarPickerE6RU.Date, 'Template', FullMEYear, ShortMEYear);
  Edit6DatesRU.Text := FullMBYear + '-' + FullMEYear;
end;

procedure TFormNewTemplate.ChangeDates7;
var
  FullMBYear, ShortMBYear, FullMEYear, ShortMEYear: string;
begin
  FormMain.GetMonthRegionByMask(CalendarPickerB7RU.Date, 'Template', FullMBYear, ShortMBYear);
  FormMain.GetMonthRegionByMask(CalendarPickerE7RU.Date, 'Template', FullMEYear, ShortMEYear);
  Edit7DatesRU.Text := FullMBYear + '-' + FullMEYear;
end;

procedure TFormNewTemplate.ChangeDates8;
var
  FullMBYear, ShortMBYear, FullMEYear, ShortMEYear: string;
begin
  FormMain.GetMonthRegionByMask(CalendarPickerB8RU.Date, 'Template', FullMBYear, ShortMBYear);
  FormMain.GetMonthRegionByMask(CalendarPickerE8RU.Date, 'Template', FullMEYear, ShortMEYear);
  Edit8DatesRU.Text := FullMBYear + '-' + FullMEYear;
end;

procedure TFormNewTemplate.ChangeDates9;
var
  FullMBYear, ShortMBYear, FullMEYear, ShortMEYear: string;
begin
  FormMain.GetMonthRegionByMask(CalendarPickerB9RU.Date, 'Template', FullMBYear, ShortMBYear);
  FormMain.GetMonthRegionByMask(CalendarPickerE9RU.Date, 'Template', FullMEYear, ShortMEYear);
  Edit9DatesRU.Text := FullMBYear + '-' + FullMEYear;
end;

procedure TFormNewTemplate.ChangeDates10;
var
  FullMBYear, ShortMBYear, FullMEYear, ShortMEYear: string;
begin
  FormMain.GetMonthRegionByMask(CalendarPickerB10RU.Date, 'Template', FullMBYear, ShortMBYear);
  FormMain.GetMonthRegionByMask(CalendarPickerE10RU.Date, 'Template', FullMEYear, ShortMEYear);
  Edit10DatesRU.Text := FullMBYear + '-' + FullMEYear;
end;

end.
