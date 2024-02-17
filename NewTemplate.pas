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
    PageControlTR: TPageControl;
    TabSheetMainRU: TTabSheet;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    LabelFooterID: TLabel;
    Label11: TLabel;
    EditNameTR: TEdit;
    EditOpportunityTR: TEdit;
    EditPlaceTR: TEdit;
    EditPhonesTR: TEdit;
    MemoIntroTR: TMemo;
    EditLangTR: TEdit;
    EditRegionTR: TEdit;
    TabSheetFooterRU: TTabSheet;
    StaticText1: TStaticText;
    EditArticle1TR: TEdit;
    EditArticle2TR: TEdit;
    MemoArticle1TR: TMemo;
    MemoArticle2TR: TMemo;
    EditArticle3TR: TEdit;
    EditArticle4TR: TEdit;
    MemoArticle3TR: TMemo;
    MemoArticle4TR: TMemo;
    TabSheetJob1RU: TTabSheet;
    Edit1DatesTR: TEdit;
    Edit1NameTR: TEdit;
    Edit1CompanyTR: TEdit;
    Memo1RespTR: TMemo;
    Edit1BenefitsTR: TEdit;
    Edit1BottomTR: TEdit;
    Memo1SkillsTR: TMemo;
    TabSheetJob2RU: TTabSheet;
    Edit2DatesTR: TEdit;
    Edit2NameTR: TEdit;
    Edit2CompanyTR: TEdit;
    Memo2RespTR: TMemo;
    Edit2BenefitsTR: TEdit;
    Edit2BottomTR: TEdit;
    Memo2SkillsTR: TMemo;
    TabSheetJob3RU: TTabSheet;
    Edit3DatesTR: TEdit;
    Edit3NameTR: TEdit;
    Edit3CompanyTR: TEdit;
    Memo3RespTR: TMemo;
    Edit3BenefitsTR: TEdit;
    Edit3BottomTR: TEdit;
    Memo3SkillsTR: TMemo;
    TabSheetJob4RU: TTabSheet;
    Edit4DatesTR: TEdit;
    Edit4NameTR: TEdit;
    Edit4CompanyTR: TEdit;
    Memo4RespTR: TMemo;
    Edit4BenefitsTR: TEdit;
    Edit4BottomTR: TEdit;
    Memo4SkillsTR: TMemo;
    TabSheetJob5RU: TTabSheet;
    Edit5DatesTR: TEdit;
    Edit5NameTR: TEdit;
    Edit5CompanyTR: TEdit;
    Memo5RespTR: TMemo;
    Edit5BenefitsTR: TEdit;
    Edit5BottomTR: TEdit;
    Memo5SkillsTR: TMemo;
    TabSheetJob6RU: TTabSheet;
    Memo6RespTR: TMemo;
    Edit6BenefitsTR: TEdit;
    Edit6BottomTR: TEdit;
    Edit6DatesTR: TEdit;
    Edit6NameTR: TEdit;
    Edit6CompanyTR: TEdit;
    Memo6SkillsTR: TMemo;
    TabSheetJob7RU: TTabSheet;
    Memo7RespTR: TMemo;
    Edit7BenefitsTR: TEdit;
    Edit7BottomTR: TEdit;
    Edit7DatesTR: TEdit;
    Edit7NameTR: TEdit;
    Edit7CompanyTR: TEdit;
    Memo7SkillsTR: TMemo;
    TabSheetJob8RU: TTabSheet;
    Memo8RespTR: TMemo;
    Edit8BenefitsTR: TEdit;
    Edit8BottomTR: TEdit;
    Edit8DatesTR: TEdit;
    Edit8NameTR: TEdit;
    Edit8CompanyTR: TEdit;
    Memo8SkillsTR: TMemo;
    TabSheetJob9RU: TTabSheet;
    Memo9RespTR: TMemo;
    Edit9BenefitsTR: TEdit;
    Edit9BottomTR: TEdit;
    Edit9DatesTR: TEdit;
    Edit9NameTR: TEdit;
    Edit9CompanyTR: TEdit;
    Memo9SkillsTR: TMemo;
    TabSheet10RU: TTabSheet;
    Memo10RespTR: TMemo;
    Edit10BenefitsTR: TEdit;
    Edit10BottomTR: TEdit;
    Edit10DatesTR: TEdit;
    Edit10NameTR: TEdit;
    Edit10CompanyTR: TEdit;
    Memo10SkillsTR: TMemo;
    CalendarPickerB1TR: TCalendarPicker;
    CalendarPickerE1TR: TCalendarPicker;
    CalendarPickerB2TR: TCalendarPicker;
    CalendarPickerE2TR: TCalendarPicker;
    CalendarPickerB3TR: TCalendarPicker;
    CalendarPickerE3TR: TCalendarPicker;
    CalendarPickerB4TR: TCalendarPicker;
    CalendarPickerE4TR: TCalendarPicker;
    CalendarPickerB5TR: TCalendarPicker;
    CalendarPickerE5TR: TCalendarPicker;
    CalendarPickerB6TR: TCalendarPicker;
    CalendarPickerE6TR: TCalendarPicker;
    CalendarPickerB7TR: TCalendarPicker;
    CalendarPickerE7TR: TCalendarPicker;
    CalendarPickerB8TR: TCalendarPicker;
    CalendarPickerE8TR: TCalendarPicker;
    CalendarPickerB9TR: TCalendarPicker;
    CalendarPickerE9TR: TCalendarPicker;
    CalendarPickerB10TR: TCalendarPicker;
    CalendarPickerE10TR: TCalendarPicker;
    UniArchiveJobs22: TUniQuery;
    UniArchiveSkills22: TUniQuery;
    UniGetSkillList22: TUniQuery;
    UniGetSkillList22cntr: TLargeintField;
    UniGetSkillID22: TUniQuery;
    UniInsertSkill22: TUniQuery;
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
    procedure BitBtnCloseClick(Sender: TObject);
    procedure BitBtnSaveClick(Sender: TObject);
    procedure CalendarPickerB2TRCloseUp(Sender: TObject);
    procedure CalendarPickerE2TRCloseUp(Sender: TObject);
    procedure CalendarPickerB1TRCloseUp(Sender: TObject);
    procedure CalendarPickerE1TRCloseUp(Sender: TObject);
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
    procedure CalendarPickerB1TRChange(Sender: TObject);
    procedure CalendarPickerE1TRChange(Sender: TObject);
    procedure CalendarPickerB2TRChange(Sender: TObject);
    procedure CalendarPickerE2TRChange(Sender: TObject);
    procedure CalendarPickerB3TRChange(Sender: TObject);
    procedure CalendarPickerE3TRChange(Sender: TObject);
    procedure CalendarPickerB4TRChange(Sender: TObject);
    procedure CalendarPickerE4TRChange(Sender: TObject);
    procedure CalendarPickerB5TRChange(Sender: TObject);
    procedure CalendarPickerE5TRChange(Sender: TObject);
    procedure CalendarPickerB6TRChange(Sender: TObject);
    procedure CalendarPickerE6TRChange(Sender: TObject);
    procedure CalendarPickerB7TRChange(Sender: TObject);
    procedure CalendarPickerE7TRChange(Sender: TObject);
    procedure CalendarPickerB8TRChange(Sender: TObject);
    procedure CalendarPickerE8TRChange(Sender: TObject);
    procedure CalendarPickerB9TRChange(Sender: TObject);
    procedure CalendarPickerE9TRChange(Sender: TObject);
    procedure CalendarPickerB10TRChange(Sender: TObject);
    procedure CalendarPickerE10TRChange(Sender: TObject);
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
  if not FormMain.isEmpty(Edit1NameTR.Text) and not FormMain.isEmpty(Edit1CompanyTR.Text) then
    begin
      UniSPInsertExperiences.Close;
      UniSPInsertExperiences.ParamByName('p_flag').AsString := 'template_id';
      UniSPInsertExperiences.ParamByName('p_template_id').AsInteger := FTemplateID;
      UniSPInsertExperiences.ParamByName('p_job_order').AsInteger := 1;
      UniSPInsertExperiences.ParamByName('p_job_position').AsString := Edit1NameTR.Text;
      UniSPInsertExperiences.ParamByName('p_start_date').AsDateTime :=CalendarPickerB1TR.Date;
      UniSPInsertExperiences.ParamByName('p_end_date').AsDateTime := CalendarPickerE1TR.Date;
      UniSPInsertExperiences.ParamByName('p_employer').AsString := Edit1CompanyTR.Text;
      UniSPInsertExperiences.ParamByName('p_resp').AsString := Memo1RespTR.Text;
      UniSPInsertExperiences.ParamByName('p_benefits').AsString := Edit1BenefitsTR.Text;
      UniSPInsertExperiences.ParamByName('p_leave_reason').AsString := Edit1BottomTR.Text;
      UniSPInsertExperiences.ExecSQL;
      FExperienceID:=UniSPInsertExperiences.ParamByName('p_experience_id').Value;
    if (Trim(Memo1SkillsTR.Text)<>'') then
      for i := 0 to Memo1SkillsTR.Lines.Count - 1 do
//        if not FormMain.IsEmpty(Memo1SkillsRU.Lines[i]) then
          begin
          UniSPInsertSkills.Close;
          UniSPInsertSkills.ParamByName('p_experience_id').AsInteger:=FExperienceID;
          UniSPInsertSkills.ParamByName('p_skill').AsString:=Memo1SkillsTR.Lines[i];
          UniSPInsertSkills.ExecSQL;
          end;
    end;
  if not FormMain.isEmpty(Edit2NameTR.Text) and not FormMain.isEmpty(Edit2CompanyTR.Text) then
    begin
      UniSPInsertExperiences.Close;
      UniSPInsertExperiences.ParamByName('p_flag').AsString := 'template_id';
      UniSPInsertExperiences.ParamByName('p_template_id').AsInteger := FTemplateID;
      UniSPInsertExperiences.ParamByName('p_job_order').AsInteger := 2;
      UniSPInsertExperiences.ParamByName('p_job_position').AsString := Edit2NameTR.Text;
      UniSPInsertExperiences.ParamByName('p_start_date').AsDateTime :=CalendarPickerB2TR.Date;
      UniSPInsertExperiences.ParamByName('p_end_date').AsDateTime := CalendarPickerE2TR.Date;
      UniSPInsertExperiences.ParamByName('p_employer').AsString := Edit2CompanyTR.Text;
      UniSPInsertExperiences.ParamByName('p_resp').AsString := Memo2RespTR.Text;
      UniSPInsertExperiences.ParamByName('p_benefits').AsString := Edit2BenefitsTR.Text;
      UniSPInsertExperiences.ParamByName('p_leave_reason').AsString := Edit2BottomTR.Text;
      UniSPInsertExperiences.ExecSQL;
      FExperienceID:=UniSPInsertExperiences.ParamByName('p_experience_id').Value;
    if (Trim(Memo2SkillsTR.Text)<>'') then
      for i := 0 to Memo2SkillsTR.Lines.Count - 1 do
//        if not FormMain.IsEmpty(Memo2SkillsRU.Lines[i]) then
          begin
          UniSPInsertSkills.Close;
          UniSPInsertSkills.ParamByName('p_experience_id').AsInteger:=FExperienceID;
          UniSPInsertSkills.ParamByName('p_skill').AsString:=Memo2SkillsTR.Lines[i];
          UniSPInsertSkills.ExecSQL;
          end;
    end;
  if not FormMain.isEmpty(Edit3NameTR.Text) and not FormMain.isEmpty(Edit3CompanyTR.Text) then
    begin
      UniSPInsertExperiences.Close;
      UniSPInsertExperiences.ParamByName('p_flag').AsString := 'template_id';
      UniSPInsertExperiences.ParamByName('p_template_id').AsInteger := FTemplateID;
      UniSPInsertExperiences.ParamByName('p_job_order').AsInteger := 3;
      UniSPInsertExperiences.ParamByName('p_job_position').AsString := Edit3NameTR.Text;
      UniSPInsertExperiences.ParamByName('p_start_date').AsDateTime :=CalendarPickerB3TR.Date;
      UniSPInsertExperiences.ParamByName('p_end_date').AsDateTime := CalendarPickerE3TR.Date;
      UniSPInsertExperiences.ParamByName('p_employer').AsString := Edit3CompanyTR.Text;
      UniSPInsertExperiences.ParamByName('p_resp').AsString := Memo3RespTR.Text;
      UniSPInsertExperiences.ParamByName('p_benefits').AsString := Edit3BenefitsTR.Text;
      UniSPInsertExperiences.ParamByName('p_leave_reason').AsString := Edit3BottomTR.Text;
      UniSPInsertExperiences.ExecSQL;
      FExperienceID:=UniSPInsertExperiences.ParamByName('p_experience_id').Value;
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
      UniSPInsertExperiences.Close;
      UniSPInsertExperiences.ParamByName('p_flag').AsString := 'template_id';
      UniSPInsertExperiences.ParamByName('p_template_id').AsInteger := FTemplateID;
      UniSPInsertExperiences.ParamByName('p_job_order').AsInteger := 4;
      UniSPInsertExperiences.ParamByName('p_job_position').AsString := Edit4NameTR.Text;
      UniSPInsertExperiences.ParamByName('p_start_date').AsDateTime :=CalendarPickerB4TR.Date;
      UniSPInsertExperiences.ParamByName('p_end_date').AsDateTime := CalendarPickerE4TR.Date;
      UniSPInsertExperiences.ParamByName('p_employer').AsString := Edit4CompanyTR.Text;
      UniSPInsertExperiences.ParamByName('p_resp').AsString := Memo4RespTR.Text;
      UniSPInsertExperiences.ParamByName('p_benefits').AsString := Edit4BenefitsTR.Text;
      UniSPInsertExperiences.ParamByName('p_leave_reason').AsString := Edit4BottomTR.Text;
      UniSPInsertExperiences.ExecSQL;
      FExperienceID:=UniSPInsertExperiences.ParamByName('p_experience_id').Value;
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
      UniSPInsertExperiences.Close;
      UniSPInsertExperiences.ParamByName('p_flag').AsString := 'template_id';
      UniSPInsertExperiences.ParamByName('p_template_id').AsInteger := FTemplateID;
      UniSPInsertExperiences.ParamByName('p_job_order').AsInteger := 5;
      UniSPInsertExperiences.ParamByName('p_job_position').AsString := Edit5NameTR.Text;
      UniSPInsertExperiences.ParamByName('p_start_date').AsDateTime :=CalendarPickerB5TR.Date;
      UniSPInsertExperiences.ParamByName('p_end_date').AsDateTime := CalendarPickerE5TR.Date;
      UniSPInsertExperiences.ParamByName('p_employer').AsString := Edit5CompanyTR.Text;
      UniSPInsertExperiences.ParamByName('p_resp').AsString := Memo5RespTR.Text;
      UniSPInsertExperiences.ParamByName('p_benefits').AsString := Edit5BenefitsTR.Text;
      UniSPInsertExperiences.ParamByName('p_leave_reason').AsString := Edit5BottomTR.Text;
      UniSPInsertExperiences.ExecSQL;
      FExperienceID:=UniSPInsertExperiences.ParamByName('p_experience_id').Value;
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
      UniSPInsertExperiences.Close;
      UniSPInsertExperiences.ParamByName('p_flag').AsString := 'template_id';
      UniSPInsertExperiences.ParamByName('p_template_id').AsInteger := FTemplateID;
      UniSPInsertExperiences.ParamByName('p_job_order').AsInteger := 6;
      UniSPInsertExperiences.ParamByName('p_job_position').AsString := Edit6NameTR.Text;
      UniSPInsertExperiences.ParamByName('p_start_date').AsDateTime :=CalendarPickerB6TR.Date;
      UniSPInsertExperiences.ParamByName('p_end_date').AsDateTime := CalendarPickerE6TR.Date;
      UniSPInsertExperiences.ParamByName('p_employer').AsString := Edit6CompanyTR.Text;
      UniSPInsertExperiences.ParamByName('p_resp').AsString := Memo6RespTR.Text;
      UniSPInsertExperiences.ParamByName('p_benefits').AsString := Edit6BenefitsTR.Text;
      UniSPInsertExperiences.ParamByName('p_leave_reason').AsString := Edit6BottomTR.Text;
      UniSPInsertExperiences.ExecSQL;
      FExperienceID:=UniSPInsertExperiences.ParamByName('p_experience_id').Value;
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
      UniSPInsertExperiences.Close;
      UniSPInsertExperiences.ParamByName('p_flag').AsString := 'template_id';
      UniSPInsertExperiences.ParamByName('p_template_id').AsInteger := FTemplateID;
      UniSPInsertExperiences.ParamByName('p_job_order').AsInteger := 7;
      UniSPInsertExperiences.ParamByName('p_job_position').AsString := Edit7NameTR.Text;
      UniSPInsertExperiences.ParamByName('p_start_date').AsDateTime :=CalendarPickerB7TR.Date;
      UniSPInsertExperiences.ParamByName('p_end_date').AsDateTime := CalendarPickerE7TR.Date;
      UniSPInsertExperiences.ParamByName('p_employer').AsString := Edit7CompanyTR.Text;
      UniSPInsertExperiences.ParamByName('p_resp').AsString := Memo7RespTR.Text;
      UniSPInsertExperiences.ParamByName('p_benefits').AsString := Edit7BenefitsTR.Text;
      UniSPInsertExperiences.ParamByName('p_leave_reason').AsString := Edit7BottomTR.Text;
      UniSPInsertExperiences.ExecSQL;
      FExperienceID:=UniSPInsertExperiences.ParamByName('p_experience_id').Value;
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
      UniSPInsertExperiences.Close;
      UniSPInsertExperiences.ParamByName('p_flag').AsString := 'template_id';
      UniSPInsertExperiences.ParamByName('p_template_id').AsInteger := FTemplateID;
      UniSPInsertExperiences.ParamByName('p_job_order').AsInteger := 8;
      UniSPInsertExperiences.ParamByName('p_job_position').AsString := Edit8NameTR.Text;
      UniSPInsertExperiences.ParamByName('p_start_date').AsDateTime :=CalendarPickerB8TR.Date;
      UniSPInsertExperiences.ParamByName('p_end_date').AsDateTime := CalendarPickerE8TR.Date;
      UniSPInsertExperiences.ParamByName('p_employer').AsString := Edit8CompanyTR.Text;
      UniSPInsertExperiences.ParamByName('p_resp').AsString := Memo8RespTR.Text;
      UniSPInsertExperiences.ParamByName('p_benefits').AsString := Edit8BenefitsTR.Text;
      UniSPInsertExperiences.ParamByName('p_leave_reason').AsString := Edit8BottomTR.Text;
      UniSPInsertExperiences.ExecSQL;
      FExperienceID:=UniSPInsertExperiences.ParamByName('p_experience_id').Value;
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
      UniSPInsertExperiences.Close;
      UniSPInsertExperiences.ParamByName('p_flag').AsString := 'template_id';
      UniSPInsertExperiences.ParamByName('p_template_id').AsInteger := FTemplateID;
      UniSPInsertExperiences.ParamByName('p_job_order').AsInteger := 9;
      UniSPInsertExperiences.ParamByName('p_job_position').AsString := Edit9NameTR.Text;
      UniSPInsertExperiences.ParamByName('p_start_date').AsDateTime :=CalendarPickerB9TR.Date;
      UniSPInsertExperiences.ParamByName('p_end_date').AsDateTime := CalendarPickerE9TR.Date;
      UniSPInsertExperiences.ParamByName('p_employer').AsString := Edit9CompanyTR.Text;
      UniSPInsertExperiences.ParamByName('p_resp').AsString := Memo9RespTR.Text;
      UniSPInsertExperiences.ParamByName('p_benefits').AsString := Edit9BenefitsTR.Text;
      UniSPInsertExperiences.ParamByName('p_leave_reason').AsString := Edit9BottomTR.Text;
      UniSPInsertExperiences.ExecSQL;
      FExperienceID:=UniSPInsertExperiences.ParamByName('p_experience_id').Value;
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
      UniSPInsertExperiences.Close;
      UniSPInsertExperiences.ParamByName('p_flag').AsString := 'template_id';
      UniSPInsertExperiences.ParamByName('p_template_id').AsInteger := FTemplateID;
      UniSPInsertExperiences.ParamByName('p_job_order').AsInteger := 10;
      UniSPInsertExperiences.ParamByName('p_job_position').AsString := Edit10NameTR.Text;
      UniSPInsertExperiences.ParamByName('p_start_date').AsDateTime :=CalendarPickerB10TR.Date;
      UniSPInsertExperiences.ParamByName('p_end_date').AsDateTime := CalendarPickerE10TR.Date;
      UniSPInsertExperiences.ParamByName('p_employer').AsString := Edit10CompanyTR.Text;
      UniSPInsertExperiences.ParamByName('p_resp').AsString := Memo10RespTR.Text;
      UniSPInsertExperiences.ParamByName('p_benefits').AsString := Edit10BenefitsTR.Text;
      UniSPInsertExperiences.ParamByName('p_leave_reason').AsString := Edit10BottomTR.Text;
      UniSPInsertExperiences.ExecSQL;
      FExperienceID:=UniSPInsertExperiences.ParamByName('p_experience_id').Value;
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
    UniSPInsertTemplate.ParamByName('p_name').AsString := trim(EditNameTR.Text);
    UniSPInsertTemplate.ParamByName('p_job_opportunity').AsString := Trim(EditOpportunityTR.Text);
    UniSPInsertTemplate.ParamByName('p_job_place').AsString := Trim(EditPlaceTR.Text);
    UniSPInsertTemplate.ParamByName('p_phone_numbers_text').AsString := Trim(EditPhonesTR.Text);
    UniSPInsertTemplate.ParamByName('p_template_introduction').AsString := Trim(MemoIntroTR.Text);
    UniSPInsertTemplate.ParamByName('p_footer_1_header').AsString := Trim(EditArticle1TR.Text);
    UniSPInsertTemplate.ParamByName('p_footer_1_text').AsString := Trim(MemoArticle1TR.Text);
    UniSPInsertTemplate.ParamByName('p_footer_2_header').AsString := Trim(EditArticle2TR.Text);
    UniSPInsertTemplate.ParamByName('p_footer_2_text').AsString := Trim(MemoArticle2TR.Text);
    UniSPInsertTemplate.ParamByName('p_footer_3_header').AsString := Trim(EditArticle3TR.Text);
    UniSPInsertTemplate.ParamByName('p_footer_3_text').AsString := Trim(MemoArticle3TR.Text);
    UniSPInsertTemplate.ParamByName('p_footer_4_header').AsString := Trim(EditArticle4TR.Text);
    UniSPInsertTemplate.ParamByName('p_footer_4_text').AsString := Trim(MemoArticle4TR.Text);
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

procedure TFormNewTemplate.CalendarPickerB10TRChange(Sender: TObject);
begin
  ChangeDates10;
end;

procedure TFormNewTemplate.CalendarPickerB10TRCloseUp(Sender: TObject);
begin
  ChangeDates10;
end;

procedure TFormNewTemplate.CalendarPickerB1TRChange(Sender: TObject);
begin
  ChangeDates1;
end;

procedure TFormNewTemplate.CalendarPickerB1TRCloseUp(Sender: TObject);
begin
  ChangeDates1;
end;

procedure TFormNewTemplate.CalendarPickerB2TRChange(Sender: TObject);
begin
  ChangeDates2;
end;

procedure TFormNewTemplate.CalendarPickerB2TRCloseUp(Sender: TObject);
begin
  ChangeDates2;
end;

procedure TFormNewTemplate.CalendarPickerB3TRChange(Sender: TObject);
begin
  ChangeDates3;
end;

procedure TFormNewTemplate.CalendarPickerB3TRCloseUp(Sender: TObject);
begin
  ChangeDates3;
end;

procedure TFormNewTemplate.CalendarPickerB4TRChange(Sender: TObject);
begin
  ChangeDates4;
end;

procedure TFormNewTemplate.CalendarPickerB4TRCloseUp(Sender: TObject);
begin
  ChangeDates4;
end;

procedure TFormNewTemplate.CalendarPickerB5TRChange(Sender: TObject);
begin
  ChangeDates5;
end;

procedure TFormNewTemplate.CalendarPickerB5TRCloseUp(Sender: TObject);
begin
  ChangeDates5;
end;

procedure TFormNewTemplate.CalendarPickerB6TRChange(Sender: TObject);
begin
  ChangeDates6;
end;

procedure TFormNewTemplate.CalendarPickerB6TRCloseUp(Sender: TObject);
begin
  ChangeDates6;
end;

procedure TFormNewTemplate.CalendarPickerB7TRChange(Sender: TObject);
begin
  ChangeDates7;
end;

procedure TFormNewTemplate.CalendarPickerB7TRCloseUp(Sender: TObject);
begin
  ChangeDates7;
end;

procedure TFormNewTemplate.CalendarPickerB8TRChange(Sender: TObject);
begin
  ChangeDates8;
end;

procedure TFormNewTemplate.CalendarPickerB8TRCloseUp(Sender: TObject);
begin
  ChangeDates8;
end;

procedure TFormNewTemplate.CalendarPickerB9TRChange(Sender: TObject);
begin
  ChangeDates9;
end;

procedure TFormNewTemplate.CalendarPickerB9TRCloseUp(Sender: TObject);
begin
  ChangeDates9;
end;

procedure TFormNewTemplate.CalendarPickerE10TRChange(Sender: TObject);
begin
  ChangeDates10;
end;

procedure TFormNewTemplate.CalendarPickerE10TRCloseUp(Sender: TObject);
begin
  ChangeDates10;
end;

procedure TFormNewTemplate.CalendarPickerE1TRChange(Sender: TObject);
begin
  ChangeDates1;
end;

procedure TFormNewTemplate.CalendarPickerE1TRCloseUp(Sender: TObject);
begin
  ChangeDates2;
end;

procedure TFormNewTemplate.CalendarPickerE2TRChange(Sender: TObject);
begin
  ChangeDates2;
end;

procedure TFormNewTemplate.CalendarPickerE2TRCloseUp(Sender: TObject);
begin
  ChangeDates1;
end;

procedure TFormNewTemplate.CalendarPickerE3TRChange(Sender: TObject);
begin
  ChangeDates3;
end;

procedure TFormNewTemplate.CalendarPickerE3TRCloseUp(Sender: TObject);
begin
  ChangeDates3;
end;

procedure TFormNewTemplate.CalendarPickerE4TRChange(Sender: TObject);
begin
  ChangeDates4;
end;

procedure TFormNewTemplate.CalendarPickerE4TRCloseUp(Sender: TObject);
begin
  ChangeDates4;
end;

procedure TFormNewTemplate.CalendarPickerE5TRChange(Sender: TObject);
begin
  ChangeDates5;
end;

procedure TFormNewTemplate.CalendarPickerE5TRCloseUp(Sender: TObject);
begin
  ChangeDates5;
end;

procedure TFormNewTemplate.CalendarPickerE6TRChange(Sender: TObject);
begin
  ChangeDates6;
end;

procedure TFormNewTemplate.CalendarPickerE6TRCloseUp(Sender: TObject);
begin
  ChangeDates6;
end;

procedure TFormNewTemplate.CalendarPickerE7TRChange(Sender: TObject);
begin
  ChangeDates7;
end;

procedure TFormNewTemplate.CalendarPickerE7TRCloseUp(Sender: TObject);
begin
  ChangeDates7;
end;

procedure TFormNewTemplate.CalendarPickerE8TRChange(Sender: TObject);
begin
  ChangeDates8;
end;

procedure TFormNewTemplate.CalendarPickerE8TRCloseUp(Sender: TObject);
begin
  ChangeDates8;
end;

procedure TFormNewTemplate.CalendarPickerE9TRChange(Sender: TObject);
begin
  ChangeDates9;
end;

procedure TFormNewTemplate.CalendarPickerE9TRCloseUp(Sender: TObject);
begin
  ChangeDates9;
end;

function TFormNewTemplate.CheckValues: boolean;
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

  if (IsJob1Active and FormMain.IsEmpty(Edit1DatesTR.Text)) then
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

procedure TFormNewTemplate.SetFormValues;
begin
PageControlTR.ActivePageIndex:=0;
SetEmptyTemplatesRU;
SetEmptyFootersRU;
SetEmptyJobsRU;
SetEmptySkillsRU;
end;

procedure TFormNewTemplate.SetEmptyFootersRU;
begin
  MemoArticle1TR.Text := '';
  EditArticle1TR.Text := '';
  MemoArticle2TR.Text := '';
  EditArticle2TR.Text := '';
  MemoArticle3TR.Text := '';
  EditArticle3TR.Text := '';
  MemoArticle4TR.Text := '';
  EditArticle4TR.Text := '';
end;

procedure TFormNewTemplate.SetEmptyTemplatesRU;
begin
  EditNameTR.Text:='';
  EditOpportunityTR.Text:='';
  EditPlaceTR.Text:='';
  EditPhonesTR.Text:='';
  MemoIntroTR.Text:='';
end;

procedure TFormNewTemplate.SetEmptySkillsRU;
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

procedure TFormNewTemplate.SetEmptyJobsRU;
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

procedure TFormNewTemplate.ChangeDates1;
var
  FullMBYear, ShortMBYear, FullMEYear, ShortMEYear: string;
begin
  FormMain.GetMonthRegionByMask(CalendarPickerB1TR.Date, 'Template', FullMBYear, ShortMBYear);
  FormMain.GetMonthRegionByMask(CalendarPickerE1TR.Date, 'Template', FullMEYear, ShortMEYear);
  Edit1DatesTR.Text := FullMBYear + '-' + FullMEYear;
end;

procedure TFormNewTemplate.ChangeDates2;
var
  FullMBYear, ShortMBYear, FullMEYear, ShortMEYear: string;
begin
  FormMain.GetMonthRegionByMask(CalendarPickerB2TR.Date, 'Template', FullMBYear, ShortMBYear);
  FormMain.GetMonthRegionByMask(CalendarPickerE2TR.Date, 'Template', FullMEYear, ShortMEYear);
  Edit2DatesTR.Text := FullMBYear + '-' + FullMEYear;
end;

procedure TFormNewTemplate.ChangeDates3;
var
  FullMBYear, ShortMBYear, FullMEYear, ShortMEYear: string;
begin
  FormMain.GetMonthRegionByMask(CalendarPickerB3TR.Date, 'Template', FullMBYear, ShortMBYear);
  FormMain.GetMonthRegionByMask(CalendarPickerE3TR.Date, 'Template', FullMEYear, ShortMEYear);
  Edit3DatesTR.Text := FullMBYear + '-' + FullMEYear;
end;

procedure TFormNewTemplate.ChangeDates4;
var
  FullMBYear, ShortMBYear, FullMEYear, ShortMEYear: string;
begin
  FormMain.GetMonthRegionByMask(CalendarPickerB4TR.Date, 'Template', FullMBYear, ShortMBYear);
  FormMain.GetMonthRegionByMask(CalendarPickerE4TR.Date, 'Template', FullMEYear, ShortMEYear);
  Edit4DatesTR.Text := FullMBYear + '-' + FullMEYear;
end;

procedure TFormNewTemplate.ChangeDates5;
var
  FullMBYear, ShortMBYear, FullMEYear, ShortMEYear: string;
begin
  FormMain.GetMonthRegionByMask(CalendarPickerB5TR.Date, 'Template', FullMBYear, ShortMBYear);
  FormMain.GetMonthRegionByMask(CalendarPickerE5TR.Date, 'Template', FullMEYear, ShortMEYear);
  Edit5DatesTR.Text := FullMBYear + '-' + FullMEYear;
end;

procedure TFormNewTemplate.ChangeDates6;
var
  FullMBYear, ShortMBYear, FullMEYear, ShortMEYear: string;
begin
  FormMain.GetMonthRegionByMask(CalendarPickerB6TR.Date, 'Template', FullMBYear, ShortMBYear);
  FormMain.GetMonthRegionByMask(CalendarPickerE6TR.Date, 'Template', FullMEYear, ShortMEYear);
  Edit6DatesTR.Text := FullMBYear + '-' + FullMEYear;
end;

procedure TFormNewTemplate.ChangeDates7;
var
  FullMBYear, ShortMBYear, FullMEYear, ShortMEYear: string;
begin
  FormMain.GetMonthRegionByMask(CalendarPickerB7TR.Date, 'Template', FullMBYear, ShortMBYear);
  FormMain.GetMonthRegionByMask(CalendarPickerE7TR.Date, 'Template', FullMEYear, ShortMEYear);
  Edit7DatesTR.Text := FullMBYear + '-' + FullMEYear;
end;

procedure TFormNewTemplate.ChangeDates8;
var
  FullMBYear, ShortMBYear, FullMEYear, ShortMEYear: string;
begin
  FormMain.GetMonthRegionByMask(CalendarPickerB8TR.Date, 'Template', FullMBYear, ShortMBYear);
  FormMain.GetMonthRegionByMask(CalendarPickerE8TR.Date, 'Template', FullMEYear, ShortMEYear);
  Edit8DatesTR.Text := FullMBYear + '-' + FullMEYear;
end;

procedure TFormNewTemplate.ChangeDates9;
var
  FullMBYear, ShortMBYear, FullMEYear, ShortMEYear: string;
begin
  FormMain.GetMonthRegionByMask(CalendarPickerB9TR.Date, 'Template', FullMBYear, ShortMBYear);
  FormMain.GetMonthRegionByMask(CalendarPickerE9TR.Date, 'Template', FullMEYear, ShortMEYear);
  Edit9DatesTR.Text := FullMBYear + '-' + FullMEYear;
end;

procedure TFormNewTemplate.ChangeDates10;
var
  FullMBYear, ShortMBYear, FullMEYear, ShortMEYear: string;
begin
  FormMain.GetMonthRegionByMask(CalendarPickerB10TR.Date, 'Template', FullMBYear, ShortMBYear);
  FormMain.GetMonthRegionByMask(CalendarPickerE10TR.Date, 'Template', FullMEYear, ShortMEYear);
  Edit10DatesTR.Text := FullMBYear + '-' + FullMEYear;
end;

end.
