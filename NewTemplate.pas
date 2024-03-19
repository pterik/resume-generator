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
    PageControl: TPageControl;
    TabSheetMainRU: TTabSheet;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    LabelFooterID: TLabel;
    Label11: TLabel;
    EditName: TEdit;
    EditOpportunity: TEdit;
    EditPlace: TEdit;
    EditPhones: TEdit;
    EditLangTR: TEdit;
    EditRegionTR: TEdit;
    TabSheetFooterRU: TTabSheet;
    StaticText1: TStaticText;
    EditArticle1: TEdit;
    EditArticle2: TEdit;
    EditArticle3: TEdit;
    EditArticle4: TEdit;
    TabSheetJob1RU: TTabSheet;
    Edit1Dates: TEdit;
    Edit1Name: TEdit;
    Edit1Company: TEdit;
    Memo1Resp: TMemo;
    Edit1Benefits: TEdit;
    Edit1Bottom: TEdit;
    Memo1Skills: TMemo;
    TabSheetJob2RU: TTabSheet;
    Edit2Dates: TEdit;
    Edit2Name: TEdit;
    Edit2Company: TEdit;
    Memo2Resp: TMemo;
    Edit2Benefits: TEdit;
    Edit2Bottom: TEdit;
    Memo2Skills: TMemo;
    TabSheetJob3RU: TTabSheet;
    Edit3Dates: TEdit;
    Edit3Name: TEdit;
    Edit3Company: TEdit;
    Memo3Resp: TMemo;
    Edit3Benefits: TEdit;
    Edit3Bottom: TEdit;
    Memo3Skills: TMemo;
    TabSheetJob4RU: TTabSheet;
    Edit4Dates: TEdit;
    Edit4Name: TEdit;
    Edit4Company: TEdit;
    Memo4Resp: TMemo;
    Edit4Benefits: TEdit;
    Edit4Bottom: TEdit;
    Memo4Skills: TMemo;
    TabSheetJob5RU: TTabSheet;
    Edit5Dates: TEdit;
    Edit5Name: TEdit;
    Edit5Company: TEdit;
    Memo5Resp: TMemo;
    Edit5Benefits: TEdit;
    Edit5Bottom: TEdit;
    Memo5Skills: TMemo;
    TabSheetJob6RU: TTabSheet;
    Memo6Resp: TMemo;
    Edit6Benefits: TEdit;
    Edit6Bottom: TEdit;
    Edit6Dates: TEdit;
    Edit6Name: TEdit;
    Edit6Company: TEdit;
    Memo6Skills: TMemo;
    TabSheetJob7RU: TTabSheet;
    Memo7Resp: TMemo;
    Edit7Benefits: TEdit;
    Edit7Bottom: TEdit;
    Edit7Dates: TEdit;
    Edit7Name: TEdit;
    Edit7Company: TEdit;
    Memo7Skills: TMemo;
    TabSheetJob8RU: TTabSheet;
    Memo8Resp: TMemo;
    Edit8Benefits: TEdit;
    Edit8Bottom: TEdit;
    Edit8Dates: TEdit;
    Edit8Name: TEdit;
    Edit8Company: TEdit;
    Memo8Skills: TMemo;
    TabSheetJob9RU: TTabSheet;
    Memo9Resp: TMemo;
    Edit9Benefits: TEdit;
    Edit9Bottom: TEdit;
    Edit9Dates: TEdit;
    Edit9Name: TEdit;
    Edit9Company: TEdit;
    Memo9Skills: TMemo;
    TabSheet10RU: TTabSheet;
    Memo10Resp: TMemo;
    Edit10Benefits: TEdit;
    Edit10Bottom: TEdit;
    Edit10Dates: TEdit;
    Edit10Name: TEdit;
    Edit10Company: TEdit;
    Memo10Skills: TMemo;
    CalendarPickerB1: TCalendarPicker;
    CalendarPickerE1: TCalendarPicker;
    CalendarPickerB2: TCalendarPicker;
    CalendarPickerE2: TCalendarPicker;
    CalendarPickerB3: TCalendarPicker;
    CalendarPickerE3: TCalendarPicker;
    CalendarPickerB4: TCalendarPicker;
    CalendarPickerE4: TCalendarPicker;
    CalendarPickerB5: TCalendarPicker;
    CalendarPickerE5: TCalendarPicker;
    CalendarPickerB6: TCalendarPicker;
    CalendarPickerE6: TCalendarPicker;
    CalendarPickerB7: TCalendarPicker;
    CalendarPickerE7: TCalendarPicker;
    CalendarPickerB8: TCalendarPicker;
    CalendarPickerE8: TCalendarPicker;
    CalendarPickerB9: TCalendarPicker;
    CalendarPickerE9: TCalendarPicker;
    CalendarPickerB10: TCalendarPicker;
    CalendarPickerE10: TCalendarPicker;
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
    UniSPInsertSkillShow: TUniStoredProc;
    Label74: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    UniSPDeleteExpSkills: TUniStoredProc;
    StaticText2: TStaticText;
    CBPhones: TComboBox;
    BitBtn2: TBitBtn;
    RichEditor: TRichEdit;
    CBWordWrap: TCheckBox;
    RichEdit1: TRichEdit;
    RichEdit2: TRichEdit;
    RichEdit3: TRichEdit;
    RichEdit4: TRichEdit;
    procedure BitBtnCloseClick(Sender: TObject);
    procedure BitBtnSaveClick(Sender: TObject);
    procedure CalendarPickerB2CloseUp(Sender: TObject);
    procedure CalendarPickerE2CloseUp(Sender: TObject);
    procedure CalendarPickerB1CloseUp(Sender: TObject);
    procedure CalendarPickerE1CloseUp(Sender: TObject);
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
    procedure CalendarPickerB1Change(Sender: TObject);
    procedure CalendarPickerE1Change(Sender: TObject);
    procedure CalendarPickerB2Change(Sender: TObject);
    procedure CalendarPickerE2Change(Sender: TObject);
    procedure CalendarPickerB3Change(Sender: TObject);
    procedure CalendarPickerE3Change(Sender: TObject);
    procedure CalendarPickerB4Change(Sender: TObject);
    procedure CalendarPickerE4Change(Sender: TObject);
    procedure CalendarPickerB5Change(Sender: TObject);
    procedure CalendarPickerE5Change(Sender: TObject);
    procedure CalendarPickerB6Change(Sender: TObject);
    procedure CalendarPickerE6Change(Sender: TObject);
    procedure CalendarPickerB7Change(Sender: TObject);
    procedure CalendarPickerE7Change(Sender: TObject);
    procedure CalendarPickerB8Change(Sender: TObject);
    procedure CalendarPickerE8Change(Sender: TObject);
    procedure CalendarPickerB9Change(Sender: TObject);
    procedure CalendarPickerE9Change(Sender: TObject);
    procedure CalendarPickerB10Change(Sender: TObject);
    procedure CalendarPickerE10Change(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BitBtn2Click(Sender: TObject);
    procedure CBWordWrapClick(Sender: TObject);
  private
    FTemplateID: integer;
    IsJob1Active, IsJob2Active, IsJob3Active, IsJob4Active, IsJob5Active,
    IsJob6Active, IsJob7Active, IsJob8Active, IsJob9Active,
    IsJob10Active: boolean;
    function isFormValuesGood: boolean;
    function SaveTemplate:boolean;
    function SaveValues: boolean;
    function SaveJobs: boolean;
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
    function isJobDatesGood: boolean;
    function isJobGood: boolean;
    function isJobPeriodsValid: boolean;
    function isJobDatesValid: boolean;
    { Private declarations }
  public
    procedure SetFormValues;
  end;

var
  FormNewTemplate: TFormNewTemplate;

implementation

{$R *.dfm}

uses MainForm;

procedure TFormNewTemplate.BitBtn2Click(Sender: TObject);
begin
EditPhones.Text:=Trim(EditPhones.Text+' '+CBPhones.Text);
end;

procedure TFormNewTemplate.BitBtnCloseClick(Sender: TObject);
begin
Close;
end;

function TFormNewTemplate.SaveJobs: boolean;
var i:integer;
FExperienceID:array [1..10] of integer;
begin
for i:=1 to 10 do FExperienceID[i]:=0;
  try
  UniSPDeleteExpSkills.Close;
  UniSPDeleteExpSkills.ParamByName('p_flag').AsString := 'template_id';
  UniSPDeleteExpSkills.ParamByName('p_template_id').AsInteger := FTemplateID;
  UniSPDeleteExpSkills.ExecSQL;

  if isJob1Active then
    begin
      UniSPInsertExperiences.Close;
      UniSPInsertExperiences.ParamByName('p_flag').AsString := 'template_id';
      UniSPInsertExperiences.ParamByName('p_template_id').AsInteger := FTemplateID;
      UniSPInsertExperiences.ParamByName('p_job_order').AsInteger := 1;
      UniSPInsertExperiences.ParamByName('p_job_position').AsString := Edit1Name.Text;
      UniSPInsertExperiences.ParamByName('p_start_date').AsDateTime :=CalendarPickerB1.Date;
      UniSPInsertExperiences.ParamByName('p_end_date').AsDateTime := CalendarPickerE1.Date;
      UniSPInsertExperiences.ParamByName('p_employer').AsString := Edit1Company.Text;
      UniSPInsertExperiences.ParamByName('p_resp').AsString := Memo1Resp.Text;
      UniSPInsertExperiences.ParamByName('p_benefits').AsString := Edit1Benefits.Text;
      UniSPInsertExperiences.ParamByName('p_leave_reason').AsString := Edit1Bottom.Text;
      UniSPInsertExperiences.ExecSQL;
      FExperienceID[1]:=UniSPInsertExperiences.ParamByName('p_experience_id').Value;
    end;
  if isJob2Active then
    begin
      UniSPInsertExperiences.Close;
      UniSPInsertExperiences.ParamByName('p_flag').AsString := 'template_id';
      UniSPInsertExperiences.ParamByName('p_template_id').AsInteger := FTemplateID;
      UniSPInsertExperiences.ParamByName('p_job_order').AsInteger := 2;
      UniSPInsertExperiences.ParamByName('p_job_position').AsString := Edit2Name.Text;
      UniSPInsertExperiences.ParamByName('p_start_date').AsDateTime :=CalendarPickerB2.Date;
      UniSPInsertExperiences.ParamByName('p_end_date').AsDateTime := CalendarPickerE2.Date;
      UniSPInsertExperiences.ParamByName('p_employer').AsString := Edit2Company.Text;
      UniSPInsertExperiences.ParamByName('p_resp').AsString := Memo2Resp.Text;
      UniSPInsertExperiences.ParamByName('p_benefits').AsString := Edit2Benefits.Text;
      UniSPInsertExperiences.ParamByName('p_leave_reason').AsString := Edit2Bottom.Text;
      UniSPInsertExperiences.ExecSQL;
      FExperienceID[2]:=UniSPInsertExperiences.ParamByName('p_experience_id').Value;
    end;
  if isJob3Active then
    begin
      UniSPInsertExperiences.Close;
      UniSPInsertExperiences.ParamByName('p_flag').AsString := 'template_id';
      UniSPInsertExperiences.ParamByName('p_template_id').AsInteger := FTemplateID;
      UniSPInsertExperiences.ParamByName('p_job_order').AsInteger := 3;
      UniSPInsertExperiences.ParamByName('p_job_position').AsString := Edit3Name.Text;
      UniSPInsertExperiences.ParamByName('p_start_date').AsDateTime :=CalendarPickerB3.Date;
      UniSPInsertExperiences.ParamByName('p_end_date').AsDateTime := CalendarPickerE3.Date;
      UniSPInsertExperiences.ParamByName('p_employer').AsString := Edit3Company.Text;
      UniSPInsertExperiences.ParamByName('p_resp').AsString := Memo3Resp.Text;
      UniSPInsertExperiences.ParamByName('p_benefits').AsString := Edit3Benefits.Text;
      UniSPInsertExperiences.ParamByName('p_leave_reason').AsString := Edit3Bottom.Text;
      UniSPInsertExperiences.ExecSQL;
      FExperienceID[3]:=UniSPInsertExperiences.ParamByName('p_experience_id').Value;
    end;
  if isJob4Active then
    begin
      UniSPInsertExperiences.Close;
      UniSPInsertExperiences.ParamByName('p_flag').AsString := 'template_id';
      UniSPInsertExperiences.ParamByName('p_template_id').AsInteger := FTemplateID;
      UniSPInsertExperiences.ParamByName('p_job_order').AsInteger := 4;
      UniSPInsertExperiences.ParamByName('p_job_position').AsString := Edit4Name.Text;
      UniSPInsertExperiences.ParamByName('p_start_date').AsDateTime :=CalendarPickerB4.Date;
      UniSPInsertExperiences.ParamByName('p_end_date').AsDateTime := CalendarPickerE4.Date;
      UniSPInsertExperiences.ParamByName('p_employer').AsString := Edit4Company.Text;
      UniSPInsertExperiences.ParamByName('p_resp').AsString := Memo4Resp.Text;
      UniSPInsertExperiences.ParamByName('p_benefits').AsString := Edit4Benefits.Text;
      UniSPInsertExperiences.ParamByName('p_leave_reason').AsString := Edit4Bottom.Text;
      UniSPInsertExperiences.ExecSQL;
      FExperienceID[4]:=UniSPInsertExperiences.ParamByName('p_experience_id').Value;
    end;
  if isJob5Active then
    begin
      UniSPInsertExperiences.Close;
      UniSPInsertExperiences.ParamByName('p_flag').AsString := 'template_id';
      UniSPInsertExperiences.ParamByName('p_template_id').AsInteger := FTemplateID;
      UniSPInsertExperiences.ParamByName('p_job_order').AsInteger := 5;
      UniSPInsertExperiences.ParamByName('p_job_position').AsString := Edit5Name.Text;
      UniSPInsertExperiences.ParamByName('p_start_date').AsDateTime :=CalendarPickerB5.Date;
      UniSPInsertExperiences.ParamByName('p_end_date').AsDateTime := CalendarPickerE5.Date;
      UniSPInsertExperiences.ParamByName('p_employer').AsString := Edit5Company.Text;
      UniSPInsertExperiences.ParamByName('p_resp').AsString := Memo5Resp.Text;
      UniSPInsertExperiences.ParamByName('p_benefits').AsString := Edit5Benefits.Text;
      UniSPInsertExperiences.ParamByName('p_leave_reason').AsString := Edit5Bottom.Text;
      UniSPInsertExperiences.ExecSQL;
      FExperienceID[5]:=UniSPInsertExperiences.ParamByName('p_experience_id').Value;
    end;
  if isJob6Active then
    begin
      UniSPInsertExperiences.Close;
      UniSPInsertExperiences.ParamByName('p_flag').AsString := 'template_id';
      UniSPInsertExperiences.ParamByName('p_template_id').AsInteger := FTemplateID;
      UniSPInsertExperiences.ParamByName('p_job_order').AsInteger := 6;
      UniSPInsertExperiences.ParamByName('p_job_position').AsString := Edit6Name.Text;
      UniSPInsertExperiences.ParamByName('p_start_date').AsDateTime :=CalendarPickerB6.Date;
      UniSPInsertExperiences.ParamByName('p_end_date').AsDateTime := CalendarPickerE6.Date;
      UniSPInsertExperiences.ParamByName('p_employer').AsString := Edit6Company.Text;
      UniSPInsertExperiences.ParamByName('p_resp').AsString := Memo6Resp.Text;
      UniSPInsertExperiences.ParamByName('p_benefits').AsString := Edit6Benefits.Text;
      UniSPInsertExperiences.ParamByName('p_leave_reason').AsString := Edit6Bottom.Text;
      UniSPInsertExperiences.ExecSQL;
      FExperienceID[6]:=UniSPInsertExperiences.ParamByName('p_experience_id').Value;
    end;
  if isJob7Active then
    begin
      UniSPInsertExperiences.Close;
      UniSPInsertExperiences.ParamByName('p_flag').AsString := 'template_id';
      UniSPInsertExperiences.ParamByName('p_template_id').AsInteger := FTemplateID;
      UniSPInsertExperiences.ParamByName('p_job_order').AsInteger := 7;
      UniSPInsertExperiences.ParamByName('p_job_position').AsString := Edit7Name.Text;
      UniSPInsertExperiences.ParamByName('p_start_date').AsDateTime :=CalendarPickerB7.Date;
      UniSPInsertExperiences.ParamByName('p_end_date').AsDateTime := CalendarPickerE7.Date;
      UniSPInsertExperiences.ParamByName('p_employer').AsString := Edit7Company.Text;
      UniSPInsertExperiences.ParamByName('p_resp').AsString := Memo7Resp.Text;
      UniSPInsertExperiences.ParamByName('p_benefits').AsString := Edit7Benefits.Text;
      UniSPInsertExperiences.ParamByName('p_leave_reason').AsString := Edit7Bottom.Text;
      UniSPInsertExperiences.ExecSQL;
      FExperienceID[7]:=UniSPInsertExperiences.ParamByName('p_experience_id').Value;
    end;
  if isJob8Active then
    begin
      UniSPInsertExperiences.Close;
      UniSPInsertExperiences.ParamByName('p_flag').AsString := 'template_id';
      UniSPInsertExperiences.ParamByName('p_template_id').AsInteger := FTemplateID;
      UniSPInsertExperiences.ParamByName('p_job_order').AsInteger := 8;
      UniSPInsertExperiences.ParamByName('p_job_position').AsString := Edit8Name.Text;
      UniSPInsertExperiences.ParamByName('p_start_date').AsDateTime :=CalendarPickerB8.Date;
      UniSPInsertExperiences.ParamByName('p_end_date').AsDateTime := CalendarPickerE8.Date;
      UniSPInsertExperiences.ParamByName('p_employer').AsString := Edit8Company.Text;
      UniSPInsertExperiences.ParamByName('p_resp').AsString := Memo8Resp.Text;
      UniSPInsertExperiences.ParamByName('p_benefits').AsString := Edit8Benefits.Text;
      UniSPInsertExperiences.ParamByName('p_leave_reason').AsString := Edit8Bottom.Text;
      UniSPInsertExperiences.ExecSQL;
      FExperienceID[8]:=UniSPInsertExperiences.ParamByName('p_experience_id').Value;
    end;
  if isJob9Active then
    begin
      UniSPInsertExperiences.Close;
      UniSPInsertExperiences.ParamByName('p_flag').AsString := 'template_id';
      UniSPInsertExperiences.ParamByName('p_template_id').AsInteger := FTemplateID;
      UniSPInsertExperiences.ParamByName('p_job_order').AsInteger := 9;
      UniSPInsertExperiences.ParamByName('p_job_position').AsString := Edit9Name.Text;
      UniSPInsertExperiences.ParamByName('p_start_date').AsDateTime :=CalendarPickerB9.Date;
      UniSPInsertExperiences.ParamByName('p_end_date').AsDateTime := CalendarPickerE9.Date;
      UniSPInsertExperiences.ParamByName('p_employer').AsString := Edit9Company.Text;
      UniSPInsertExperiences.ParamByName('p_resp').AsString := Memo9Resp.Text;
      UniSPInsertExperiences.ParamByName('p_benefits').AsString := Edit9Benefits.Text;
      UniSPInsertExperiences.ParamByName('p_leave_reason').AsString := Edit9Bottom.Text;
      UniSPInsertExperiences.ExecSQL;
      FExperienceID[9]:=UniSPInsertExperiences.ParamByName('p_experience_id').Value;
    end;
  if isJob10Active then
    begin
      UniSPInsertExperiences.Close;
      UniSPInsertExperiences.ParamByName('p_flag').AsString := 'template_id';
      UniSPInsertExperiences.ParamByName('p_template_id').AsInteger := FTemplateID;
      UniSPInsertExperiences.ParamByName('p_job_order').AsInteger := 10;
      UniSPInsertExperiences.ParamByName('p_job_position').AsString := Edit10Name.Text;
      UniSPInsertExperiences.ParamByName('p_start_date').AsDateTime :=CalendarPickerB10.Date;
      UniSPInsertExperiences.ParamByName('p_end_date').AsDateTime := CalendarPickerE10.Date;
      UniSPInsertExperiences.ParamByName('p_employer').AsString := Edit10Company.Text;
      UniSPInsertExperiences.ParamByName('p_resp').AsString := Memo10Resp.Text;
      UniSPInsertExperiences.ParamByName('p_benefits').AsString := Edit10Benefits.Text;
      UniSPInsertExperiences.ParamByName('p_leave_reason').AsString := Edit10Bottom.Text;
      UniSPInsertExperiences.ExecSQL;
      FExperienceID[10]:=UniSPInsertExperiences.ParamByName('p_experience_id').Value;
    end;
	if isJob1Active and not FormMain.IsEmpty(Memo1Skills.Text) then
		for i := 0 to Memo1Skills.Lines.Count - 1 do
       if not FormMain.IsEmpty(Memo1Skills.Lines[i]) then
          begin
          UniSPInsertSkillShow.Close;
          UniSPInsertSkillShow.ParamByName('p_experience_id').AsInteger:=FExperienceID[1];
          UniSPInsertSkillShow.ParamByName('p_skill').AsString:=Memo1Skills.Lines[i];
          UniSPInsertSkillShow.ExecSQL;
          end;
	if isJob2Active and not FormMain.IsEmpty(Memo2Skills.Text) then
		for i := 0 to Memo2Skills.Lines.Count - 1 do
			 if not FormMain.IsEmpty(Memo2Skills.Lines[i]) then
					begin
					UniSPInsertSkillShow.Close;
					UniSPInsertSkillShow.ParamByName('p_experience_id').AsInteger:=FExperienceID[2];
					UniSPInsertSkillShow.ParamByName('p_skill').AsString:=Memo2Skills.Lines[i];
					UniSPInsertSkillShow.ExecSQL;
					end;
	if isJob3Active and not FormMain.IsEmpty(Memo3Skills.Text) then
		for i := 0 to Memo3Skills.Lines.Count - 1 do
			 if not FormMain.IsEmpty(Memo3Skills.Lines[i]) then
					begin
					UniSPInsertSkillShow.Close;
					UniSPInsertSkillShow.ParamByName('p_experience_id').AsInteger:=FExperienceID[3];
					UniSPInsertSkillShow.ParamByName('p_skill').AsString:=Memo3Skills.Lines[i];
					UniSPInsertSkillShow.ExecSQL;
					end;
	if isJob4Active and not FormMain.IsEmpty(Memo4Skills.Text) then
		for i := 0 to Memo4Skills.Lines.Count - 1 do
			 if not FormMain.IsEmpty(Memo4Skills.Lines[i]) then
					begin
					UniSPInsertSkillShow.Close;
					UniSPInsertSkillShow.ParamByName('p_experience_id').AsInteger:=FExperienceID[4];
					UniSPInsertSkillShow.ParamByName('p_skill').AsString:=Memo4Skills.Lines[i];
					UniSPInsertSkillShow.ExecSQL;
					end;
	if isJob5Active and not FormMain.IsEmpty(Memo5Skills.Text) then
		for i := 0 to Memo5Skills.Lines.Count - 1 do
			 if not FormMain.IsEmpty(Memo5Skills.Lines[i]) then
					begin
					UniSPInsertSkillShow.Close;
					UniSPInsertSkillShow.ParamByName('p_experience_id').AsInteger:=FExperienceID[5];
					UniSPInsertSkillShow.ParamByName('p_skill').AsString:=Memo5Skills.Lines[i];
					UniSPInsertSkillShow.ExecSQL;
					end;
	if isJob6Active and not FormMain.IsEmpty(Memo6Skills.Text) then
		for i := 0 to Memo6Skills.Lines.Count - 1 do
			 if not FormMain.IsEmpty(Memo6Skills.Lines[i]) then
					begin
					UniSPInsertSkillShow.Close;
					UniSPInsertSkillShow.ParamByName('p_experience_id').AsInteger:=FExperienceID[6];
					UniSPInsertSkillShow.ParamByName('p_skill').AsString:=Memo6Skills.Lines[i];
					UniSPInsertSkillShow.ExecSQL;
					end;
	if isJob7Active and not FormMain.IsEmpty(Memo7Skills.Text) then
		for i := 0 to Memo7Skills.Lines.Count - 1 do
			 if not FormMain.IsEmpty(Memo7Skills.Lines[i]) then
					begin
					UniSPInsertSkillShow.Close;
					UniSPInsertSkillShow.ParamByName('p_experience_id').AsInteger:=FExperienceID[7];
					UniSPInsertSkillShow.ParamByName('p_skill').AsString:=Memo7Skills.Lines[i];
					UniSPInsertSkillShow.ExecSQL;
					end;
	if isJob8Active and not FormMain.IsEmpty(Memo8Skills.Text) then
		for i := 0 to Memo8Skills.Lines.Count - 1 do
			 if not FormMain.IsEmpty(Memo8Skills.Lines[i]) then
					begin
					UniSPInsertSkillShow.Close;
					UniSPInsertSkillShow.ParamByName('p_experience_id').AsInteger:=FExperienceID[8];
					UniSPInsertSkillShow.ParamByName('p_skill').AsString:=Memo8Skills.Lines[i];
					UniSPInsertSkillShow.ExecSQL;
					end;
	if isJob9Active and not FormMain.IsEmpty(Memo9Skills.Text) then
		for i := 0 to Memo9Skills.Lines.Count - 1 do
			 if not FormMain.IsEmpty(Memo9Skills.Lines[i]) then
					begin
					UniSPInsertSkillShow.Close;
					UniSPInsertSkillShow.ParamByName('p_experience_id').AsInteger:=FExperienceID[9];
					UniSPInsertSkillShow.ParamByName('p_skill').AsString:=Memo9Skills.Lines[i];
					UniSPInsertSkillShow.ExecSQL;
					end;
	if isJob10Active and not FormMain.IsEmpty(Memo10Skills.Text) then
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
      ShowMessage('Ошибка во время вставки в experiences: ' + E.Message);
      Result := false;
    end;
  end;
end;

function TFormNewTemplate.SaveValues: boolean;
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
      FormMain.Warning('Сбой при сохранении jobs (experiences) NewTemplate');
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

procedure TFormNewTemplate.BitBtnSaveClick(Sender: TObject);
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

function TFormNewTemplate.SaveTemplate:boolean;
begin
  try
    UniSPInsertTemplate.Prepare;
    UniSPInsertTemplate.ParamByName('p_name').AsString := trim(EditName.Text);
    UniSPInsertTemplate.ParamByName('p_job_opportunity').AsString := Trim(EditOpportunity.Text);
    UniSPInsertTemplate.ParamByName('p_job_place').AsString := Trim(EditPlace.Text);
		UniSPInsertTemplate.ParamByName('p_phone_numbers_text').AsString := Trim(EditPhones.Text);
		UniSPInsertTemplate.ParamByName('p_template_introduction').AsMemo := Trim(RichEditor.Text);
		UniSPInsertTemplate.ParamByName('p_footer_1_header').AsString := Trim(EditArticle1.Text);
		UniSPInsertTemplate.ParamByName('p_footer_1_text').AsMemo := Trim(RichEdit1.Text);
    UniSPInsertTemplate.ParamByName('p_footer_2_header').AsString := Trim(EditArticle2.Text);
    UniSPInsertTemplate.ParamByName('p_footer_2_text').AsMemo := Trim(RichEdit2.Text);
    UniSPInsertTemplate.ParamByName('p_footer_3_header').AsString := Trim(EditArticle3.Text);
		UniSPInsertTemplate.ParamByName('p_footer_3_text').AsMemo := Trim(RichEdit3.Text);
		UniSPInsertTemplate.ParamByName('p_footer_4_header').AsString := Trim(EditArticle4.Text);
    UniSPInsertTemplate.ParamByName('p_footer_4_text').AsMemo := Trim(RichEdit4.Text);
    UniSPInsertTemplate.ExecProc;
    FTemplateID:=UniSPInsertTemplate.ParamByName('p_template_id').Value;
    if UniSPInsertTemplate.ParamByName('p_result').Value=0 then Result:=true else Result:=false;
    //FormMain.Warning(' Result='+BoolToStr(Result)+' template_id = '+IntTostr(FTemplateID));
    except
    on E: Exception do
    begin
    ShowMessage('Ошибка во время вставки в Templates: ' + E.Message);
    Result := false;
    end;
  end;
end;

procedure TFormNewTemplate.CalendarPickerB10Change(Sender: TObject);
begin
  ChangeDates10;
end;

procedure TFormNewTemplate.CalendarPickerB10CloseUp(Sender: TObject);
begin
  ChangeDates10;
end;

procedure TFormNewTemplate.CalendarPickerB1Change(Sender: TObject);
begin
  ChangeDates1;
end;

procedure TFormNewTemplate.CalendarPickerB1CloseUp(Sender: TObject);
begin
  ChangeDates1;
end;

procedure TFormNewTemplate.CalendarPickerB2Change(Sender: TObject);
begin
  ChangeDates2;
end;

procedure TFormNewTemplate.CalendarPickerB2CloseUp(Sender: TObject);
begin
  ChangeDates2;
end;

procedure TFormNewTemplate.CalendarPickerB3Change(Sender: TObject);
begin
  ChangeDates3;
end;

procedure TFormNewTemplate.CalendarPickerB3CloseUp(Sender: TObject);
begin
  ChangeDates3;
end;

procedure TFormNewTemplate.CalendarPickerB4Change(Sender: TObject);
begin
  ChangeDates4;
end;

procedure TFormNewTemplate.CalendarPickerB4CloseUp(Sender: TObject);
begin
  ChangeDates4;
end;

procedure TFormNewTemplate.CalendarPickerB5Change(Sender: TObject);
begin
  ChangeDates5;
end;

procedure TFormNewTemplate.CalendarPickerB5CloseUp(Sender: TObject);
begin
  ChangeDates5;
end;

procedure TFormNewTemplate.CalendarPickerB6Change(Sender: TObject);
begin
  ChangeDates6;
end;

procedure TFormNewTemplate.CalendarPickerB6CloseUp(Sender: TObject);
begin
  ChangeDates6;
end;

procedure TFormNewTemplate.CalendarPickerB7Change(Sender: TObject);
begin
  ChangeDates7;
end;

procedure TFormNewTemplate.CalendarPickerB7CloseUp(Sender: TObject);
begin
  ChangeDates7;
end;

procedure TFormNewTemplate.CalendarPickerB8Change(Sender: TObject);
begin
  ChangeDates8;
end;

procedure TFormNewTemplate.CalendarPickerB8CloseUp(Sender: TObject);
begin
  ChangeDates8;
end;

procedure TFormNewTemplate.CalendarPickerB9Change(Sender: TObject);
begin
  ChangeDates9;
end;

procedure TFormNewTemplate.CalendarPickerB9CloseUp(Sender: TObject);
begin
  ChangeDates9;
end;

procedure TFormNewTemplate.CalendarPickerE10Change(Sender: TObject);
begin
  ChangeDates10;
end;

procedure TFormNewTemplate.CalendarPickerE10CloseUp(Sender: TObject);
begin
  ChangeDates10;
end;

procedure TFormNewTemplate.CalendarPickerE1Change(Sender: TObject);
begin
  ChangeDates1;
end;

procedure TFormNewTemplate.CalendarPickerE1CloseUp(Sender: TObject);
begin
  ChangeDates2;
end;

procedure TFormNewTemplate.CalendarPickerE2Change(Sender: TObject);
begin
  ChangeDates2;
end;

procedure TFormNewTemplate.CalendarPickerE2CloseUp(Sender: TObject);
begin
  ChangeDates1;
end;

procedure TFormNewTemplate.CalendarPickerE3Change(Sender: TObject);
begin
  ChangeDates3;
end;

procedure TFormNewTemplate.CalendarPickerE3CloseUp(Sender: TObject);
begin
  ChangeDates3;
end;

procedure TFormNewTemplate.CalendarPickerE4Change(Sender: TObject);
begin
  ChangeDates4;
end;

procedure TFormNewTemplate.CalendarPickerE4CloseUp(Sender: TObject);
begin
  ChangeDates4;
end;

procedure TFormNewTemplate.CalendarPickerE5Change(Sender: TObject);
begin
  ChangeDates5;
end;

procedure TFormNewTemplate.CalendarPickerE5CloseUp(Sender: TObject);
begin
  ChangeDates5;
end;

procedure TFormNewTemplate.CalendarPickerE6Change(Sender: TObject);
begin
  ChangeDates6;
end;

procedure TFormNewTemplate.CalendarPickerE6CloseUp(Sender: TObject);
begin
  ChangeDates6;
end;

procedure TFormNewTemplate.CalendarPickerE7Change(Sender: TObject);
begin
  ChangeDates7;
end;

procedure TFormNewTemplate.CalendarPickerE7CloseUp(Sender: TObject);
begin
  ChangeDates7;
end;

procedure TFormNewTemplate.CalendarPickerE8Change(Sender: TObject);
begin
  ChangeDates8;
end;

procedure TFormNewTemplate.CalendarPickerE8CloseUp(Sender: TObject);
begin
  ChangeDates8;
end;

procedure TFormNewTemplate.CalendarPickerE9Change(Sender: TObject);
begin
  ChangeDates9;
end;

procedure TFormNewTemplate.CalendarPickerE9CloseUp(Sender: TObject);
begin
  ChangeDates9;
end;

procedure TFormNewTemplate.CBWordWrapClick(Sender: TObject);
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

function TFormNewTemplate.isFormValuesGood: boolean;
begin
IsJob1Active := not(FormMain.IsEmpty(Edit1Name.Text) or FormMain.IsEmpty(Edit1Company.Text) or FormMain.IsEmpty(Memo1Resp.Text));
IsJob2Active := not(FormMain.IsEmpty(Edit2Name.Text) or FormMain.IsEmpty(Edit2Company.Text) or FormMain.IsEmpty(Memo2Resp.Text));
IsJob3Active := not(FormMain.IsEmpty(Edit3Name.Text) or FormMain.IsEmpty(Edit3Company.Text) or FormMain.IsEmpty(Memo3Resp.Text));
IsJob4Active := not(FormMain.IsEmpty(Edit4Name.Text) or FormMain.IsEmpty(Edit4Company.Text) or FormMain.IsEmpty(Memo4Resp.Text));
IsJob5Active := not(FormMain.IsEmpty(Edit5Name.Text) or FormMain.IsEmpty(Edit5Company.Text) or FormMain.IsEmpty(Memo5Resp.Text));
IsJob6Active := not(FormMain.IsEmpty(Edit6Name.Text) or FormMain.IsEmpty(Edit6Company.Text) or FormMain.IsEmpty(Memo6Resp.Text));
IsJob7Active := not(FormMain.IsEmpty(Edit7Name.Text) or FormMain.IsEmpty(Edit7Company.Text) or FormMain.IsEmpty(Memo7Resp.Text));
IsJob8Active := not(FormMain.IsEmpty(Edit8Name.Text) or FormMain.IsEmpty(Edit8Company.Text) or FormMain.IsEmpty(Memo8Resp.Text));
IsJob9Active := not(FormMain.IsEmpty(Edit9Name.Text) or FormMain.IsEmpty(Edit9Company.Text) or FormMain.IsEmpty(Memo9Resp.Text));
IsJob10Active := not(FormMain.IsEmpty(Edit10Name.Text) or FormMain.IsEmpty(Edit10Company.Text) or FormMain.IsEmpty(Memo10Resp.Text));

  if FormMain.IsEmpty(EditName.Text) then
	begin
    ShowMessage('Пусте поле "Назва резюме"');
    Result := false;
    exit;
  end;
  if Length(Trim(EditName.Text))<5 then
  begin
    ShowMessage('Поле "Назва резюме" меньше за 5 символов, виправіть');
    Result := false;
    exit;
  end;
  if FormMain.IsEmpty(EditOpportunity.Text) then
  begin
    ShowMessage('Пусте поле "Посада"');
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
  if (Length(Trim(EditArticle2.Text)) = 0) and
    (Length(Trim(RichEdit2.Text)) > 0) then
  begin
    ShowMessage('Пусте поле "Навички 2 - Назва"');
    Result := false;
    exit;
  end;
  if (Length(Trim(RichEdit2.Text)) = 0) and
    (Length(Trim(EditArticle2.Text)) > 0) then
  begin
    ShowMessage('Пусте поле "Навички 2 - Текст"');
    Result := false;
    exit;
  end;
  if (Length(Trim(EditArticle3.Text)) = 0) and
    (Length(Trim(RichEdit3.Text)) > 0) then
  begin
    ShowMessage('Пусте поле "Навички 3 - Назва"');
    Result := false;
    exit;
  end;
  if (Length(Trim(RichEdit3.Text)) = 0) and
    (Length(Trim(EditArticle3.Text)) > 0) then
  begin
    ShowMessage('Пусте поле "Навички 3 - Текст"');
    Result := false;
    exit;
  end;
  if (Length(Trim(EditArticle4.Text)) = 0) and
    (Length(Trim(RichEdit4.Text)) > 0) then
  begin
    ShowMessage('Пусте поле "Навички 4 - Назва"');
    Result := false;
    exit;
  end;
  if (Length(Trim(RichEdit4.Text)) = 0) and
    (Length(Trim(EditArticle4.Text)) > 0) then
  begin
    ShowMessage('Пусте поле "Навички 4 - Текст"');
    Result := false;
    exit;
  end;
  /// ////
  if (IsJob1Active and FormMain.IsEmpty(Edit1Dates.Text)) then
  begin
    ShowMessage('Пусте поле "Дата робота 1"');
    Result := false;
    exit;
  end;

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
  if (IsJob1Active and FormMain.IsEmpty(Memo1Resp.Text)) then
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
  if IsJob1Active and (CalendarPickerB1.Date>CalendarPickerE1.Date) then
  begin
    ShowMessage('Невірно вказані дати роботи, початок > закінчення 1"');
    Result := false;
    exit;
  end;

  /// ////
  if (IsJob2Active and FormMain.IsEmpty(Edit2Dates.Text)) then
  begin
    ShowMessage('Пусте поле "Дата робота 2"');
    Result := false;
    exit;
  end;

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
  if (IsJob2Active and FormMain.IsEmpty(Memo2Resp.Text)) then
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
  if IsJob2Active and (CalendarPickerB2.Date>CalendarPickerE2.Date) then
  begin
    ShowMessage('Невірно вказані дати роботи, початок > закінчення 2"');
    Result := false;
    exit;
  end;
  /// ////
  if (IsJob3Active and FormMain.IsEmpty(Edit3Dates.Text)) then
  begin
    ShowMessage('Пусте поле "Дата робота 3"');
    Result := false;
    exit;
  end;

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
  if (IsJob3Active and FormMain.IsEmpty(Memo3Resp.Text)) then
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
  if IsJob3Active and (CalendarPickerB3.Date>CalendarPickerE3.Date) then
  begin
    ShowMessage('Невірно вказані дати роботи, початок > закінчення 3"');
    Result := false;
    exit;
  end;
  /// ////
  if (IsJob4Active and FormMain.IsEmpty(Edit4Dates.Text)) then
  begin
    ShowMessage('Пусте поле "Дата робота 4"');
    Result := false;
    exit;
  end;

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
  if (IsJob4Active and FormMain.IsEmpty(Memo4Resp.Text)) then
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
  if IsJob4Active and (CalendarPickerB4.Date>CalendarPickerE4.Date) then
  begin
    ShowMessage('Невірно вказані дати роботи, початок > закінчення 4"');
    Result := false;
    exit;
  end;
  /// ////
  if (IsJob5Active and FormMain.IsEmpty(Edit5Dates.Text)) then
  begin
    ShowMessage('Пусте поле "Дата робота 5"');
    Result := false;
    exit;
  end;

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
  if (IsJob5Active and FormMain.IsEmpty(Memo5Resp.Text)) then
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
  if IsJob5Active and (CalendarPickerB5.Date>CalendarPickerE5.Date) then
  begin
    ShowMessage('Невірно вказані дати роботи, початок > закінчення 5"');
    Result := false;
    exit;
  end;
  /// ////
  if (IsJob6Active and FormMain.IsEmpty(Edit6Dates.Text)) then
  begin
    ShowMessage('Пусте поле "Дата робота 6"');
    Result := false;
    exit;
  end;

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
  if (IsJob6Active and FormMain.IsEmpty(Memo6Resp.Text)) then
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
  if IsJob6Active and (CalendarPickerB6.Date>CalendarPickerE6.Date) then
  begin
    ShowMessage('Невірно вказані дати роботи, початок > закінчення 6"');
    Result := false;
    exit;
  end;
  /// ////
  if (IsJob7Active and FormMain.IsEmpty(Edit7Dates.Text)) then
  begin
    ShowMessage('Пусте поле "Дата робота 7"');
    Result := false;
    exit;
  end;

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
  if (IsJob7Active and FormMain.IsEmpty(Memo7Resp.Text)) then
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
  if IsJob7Active and (CalendarPickerB7.Date>CalendarPickerE7.Date) then
  begin
    ShowMessage('Невірно вказані дати роботи, початок > закінчення 7"');
    Result := false;
    exit;
  end;
  /// ////
  if (IsJob8Active and FormMain.IsEmpty(Edit8Dates.Text)) then
  begin
    ShowMessage('Пусте поле "Дата робота 8"');
    Result := false;
    exit;
  end;

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
  if (IsJob8Active and FormMain.IsEmpty(Memo8Resp.Text)) then
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
  if IsJob8Active and (CalendarPickerB8.Date>CalendarPickerE8.Date) then
  begin
    ShowMessage('Невірно вказані дати роботи, початок > закінчення 8"');
    Result := false;
    exit;
  end;
  /// ////
  if (IsJob9Active and FormMain.IsEmpty(Edit9Dates.Text)) then
  begin
    ShowMessage('Пусте поле "Дата робота 9"');
    Result := false;
    exit;
  end;

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
  if (IsJob9Active and FormMain.IsEmpty(Memo9Resp.Text)) then
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
  if IsJob9Active and (CalendarPickerB9.Date>CalendarPickerE9.Date) then
  begin
    ShowMessage('Невірно вказані дати роботи, початок > закінчення 9"');
    Result := false;
    exit;
  end;
  /// ////
  if (IsJob10Active and FormMain.IsEmpty(Edit10Dates.Text)) then
  begin
    ShowMessage('Пусте поле "Дата робота 10"');
    Result := false;
    exit;
  end;

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
  if (IsJob10Active and FormMain.IsEmpty(Memo10Resp.Text)) then
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
  if IsJob10Active and (CalendarPickerB10.Date>CalendarPickerE10.Date) then
  begin
    ShowMessage('Невірно вказані дати роботи, початок > закінчення 10"');
    Result := false;
    exit;
  end;
// BX>=EX
  if IsJob1Active and (CalendarPickerB1.Date >=CalendarPickerE1.Date) then
  begin
    ShowMessage('Робота 1 дата закінчення '+DateToStr(CalendarPickerE1.Date)+' меньше дати початку '+DateToStr(CalendarPickerB1.Date));
    Result := false;
    exit;
  end;

  if IsJob2Active and (CalendarPickerB2.Date >=CalendarPickerE2.Date) then
  begin
    ShowMessage('Робота 2 дата закінчення '+DateToStr(CalendarPickerE2.Date)+' меньше дати початку '+DateToStr(CalendarPickerB2.Date));
    Result := false;
    exit;
  end;
  if IsJob3Active and (CalendarPickerB3.Date >=CalendarPickerE3.Date) then
  begin
    ShowMessage('Робота 3 дата закінчення '+DateToStr(CalendarPickerE3.Date)+' меньше дати початку '+DateToStr(CalendarPickerB3.Date));
    Result := false;
    exit;
  end;
  if IsJob4Active and (CalendarPickerB4.Date >=CalendarPickerE4.Date) then
  begin
    ShowMessage('Робота 4 дата закінчення '+DateToStr(CalendarPickerE4.Date)+' меньше дати початку '+DateToStr(CalendarPickerB4.Date));
    Result := false;
    exit;
  end;
  if IsJob5Active and (CalendarPickerB5.Date >=CalendarPickerE5.Date) then
  begin
    ShowMessage('Робота 5 дата закінчення '+DateToStr(CalendarPickerE5.Date)+' меньше дати початку '+DateToStr(CalendarPickerB5.Date));
    Result := false;
    exit;
  end;
  if IsJob6Active and (CalendarPickerB6.Date >=CalendarPickerE6.Date) then
  begin
    ShowMessage('Робота 6 дата закінчення '+DateToStr(CalendarPickerE6.Date)+' меньше дати початку '+DateToStr(CalendarPickerB6.Date));
    Result := false;
    exit;
  end;
  if IsJob7Active and (CalendarPickerB7.Date >=CalendarPickerE7.Date) then
  begin
    ShowMessage('Робота 7 дата закінчення '+DateToStr(CalendarPickerE7.Date)+' меньше дати початку '+DateToStr(CalendarPickerB7.Date));
    Result := false;
    exit;
  end;
  if IsJob8Active and (CalendarPickerB8.Date >=CalendarPickerE8.Date) then
  begin
    ShowMessage('Робота 8 дата закінчення '+DateToStr(CalendarPickerE8.Date)+' меньше дати початку '+DateToStr(CalendarPickerB8.Date));
    Result := false;
    exit;
  end;
  if IsJob9Active and (CalendarPickerB9.Date >=CalendarPickerE9.Date) then
  begin
    ShowMessage('Робота 9 дата закінчення '+DateToStr(CalendarPickerE9.Date)+' меньше дати початку '+DateToStr(CalendarPickerB9.Date));
    Result := false;
    exit;
  end;
  if IsJob10Active and (CalendarPickerB10.Date >= CalendarPickerE10.Date) then
  begin
    ShowMessage('Робота 10 дата закінчення '+DateToStr(CalendarPickerE10.Date)+' меньше дати початку '+DateToStr(CalendarPickerB10.Date));
    Result := false;
    exit;
  end;
// BX+1 < =EX
 if IsJob1Active and IsJob2Active and (CalendarPickerB2.Date < CalendarPickerE1.Date) then
  begin
    ShowMessage('Дата закінчення E1 '+DateToStr(CalendarPickerE1.Date)+' меньше дати початку роботи B2 '+DateToStr(CalendarPickerB2.Date));
    Result := false;
    exit;
  end;
  if IsJob2Active and IsJob3Active and (CalendarPickerB3.Date < CalendarPickerE2.Date) then
  begin
    ShowMessage('Дата закінчення E2 '+DateToStr(CalendarPickerE2.Date)+' меньше дати початку роботи B3 '+DateToStr(CalendarPickerB3.Date));
    Result := false;
    exit;
  end;
  if IsJob3Active and IsJob4Active and (CalendarPickerB4.Date < CalendarPickerE3.Date) then
  begin
    ShowMessage('Дата закінчення E3 '+DateToStr(CalendarPickerE3.Date)+' меньше дати початку роботи B4 '+DateToStr(CalendarPickerB4.Date));
    Result := false;
    exit;
  end;
  if IsJob4Active and IsJob5Active and (CalendarPickerB5.Date < CalendarPickerE4.Date) then
  begin
    ShowMessage('Дата закінчення E4 '+DateToStr(CalendarPickerE4.Date)+' меньше дати початку роботи B5 '+DateToStr(CalendarPickerB5.Date));
    Result := false;
    exit;
  end;
  if IsJob5Active and IsJob6Active and (CalendarPickerB6.Date < CalendarPickerE5.Date) then
  begin
    ShowMessage('Дата закінчення E5 '+DateToStr(CalendarPickerE5.Date)+' меньше дати початку роботи B6 '+DateToStr(CalendarPickerB6.Date));
    Result := false;
    exit;
  end;
  if IsJob6Active and IsJob7Active and (CalendarPickerB7.Date < CalendarPickerE6.Date) then
  begin
    ShowMessage('Дата закінчення E6 '+DateToStr(CalendarPickerE6.Date)+' меньше дати початку роботи B7 '+DateToStr(CalendarPickerB7.Date));
    Result := false;
    exit;
  end;
  if IsJob7Active and IsJob8Active and (CalendarPickerB8.Date < CalendarPickerE7.Date) then
  begin
    ShowMessage('Дата закінчення E7 '+DateToStr(CalendarPickerE7.Date)+' меньше дати початку роботи B8 '+DateToStr(CalendarPickerB8.Date));
    Result := false;
    exit;
  end;
  if IsJob8Active and IsJob9Active and (CalendarPickerB9.Date < CalendarPickerE8.Date) then
  begin
    ShowMessage('Дата закінчення E8 '+DateToStr(CalendarPickerE8.Date)+' меньше дати початку роботи B9 '+DateToStr(CalendarPickerB9.Date));
    Result := false;
    exit;
  end;
  if IsJob9Active and IsJob10Active and (CalendarPickerB10.Date < CalendarPickerE9.Date) then
  begin
    ShowMessage('Дата закінчення E9 '+DateToStr(CalendarPickerE9.Date)+' меньше дати початку роботи B10 '+DateToStr(CalendarPickerB10.Date));
    Result := false;
    exit;
  end;  Result := true;
end;

procedure TFormNewTemplate.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key = VK_F2 then BitBtnSave.Click();
end;

procedure TFormNewTemplate.SetFormValues;
begin

PageControl.ActivePageIndex:=0;
SetEmptyTemplatesRU;
SetEmptyFootersRU;
SetEmptyJobsRU;
SetEmptySkillsRU;
CBPhones.Clear;
FormMain.UniTelephones.Close;
FormMain.UniTelephones.Open;
while not FormMain.UniTelephones.Eof do
  begin
    CBPhones.Items.Add(FormMain.UniTelephones['value']);
    FormMain.UniTelephones.Next;
  end;
end;

procedure TFormNewTemplate.SetEmptyFootersRU;
begin
	RichEdit1.Text := '';
  EditArticle1.Text := '';
	RichEdit2.Text := '';
  EditArticle2.Text := '';
	RichEdit3.Text := '';
	EditArticle3.Text := '';
	RichEdit4.Text := '';
	EditArticle4.Text := '';
end;

procedure TFormNewTemplate.SetEmptyTemplatesRU;
begin
  EditName.Text:='';
  EditOpportunity.Text:='';
  EditPlace.Text:='';
	EditPhones.Text:='';
	RichEditor.Clear;
end;

procedure TFormNewTemplate.SetEmptySkillsRU;
begin
  Memo1Skills.Text := '';
  Memo2Skills.Text := '';
  Memo3Skills.Text := '';
  Memo4Skills.Text := '';
  Memo5Skills.Text := '';
  Memo6Skills.Text := '';
  Memo7Skills.Text := '';
  Memo8Skills.Text := '';
  Memo9Skills.Text := '';
  Memo10Skills.Text := '';
end;

procedure TFormNewTemplate.SetEmptyJobsRU;
begin
  Edit1Dates.Text := '';
  Edit1Name.Text := '';
  Edit1Company.Text := '';
  Memo1Resp.Text := '';
  Edit1Benefits.Text := '';
  Edit1Bottom.Text := '';

  Edit2Dates.Text := '';
  Edit2Name.Text := '';
  Edit2Company.Text := '';
  Memo2Resp.Text := '';
  Edit2Benefits.Text := '';
  Edit2Bottom.Text := '';

  Edit3Dates.Text := '';
  Edit3Name.Text := '';
  Edit3Company.Text := '';
  Memo3Resp.Text := '';
  Edit3Benefits.Text := '';
  Edit3Bottom.Text := '';

  Edit4Dates.Text := '';
  Edit4Name.Text := '';
  Edit4Company.Text := '';
  Memo4Resp.Text := '';
  Edit4Benefits.Text := '';
  Edit4Bottom.Text := '';

  Edit5Dates.Text := '';
  Edit5Name.Text := '';
  Edit5Company.Text := '';
  Memo5Resp.Text := '';
  Edit5Benefits.Text := '';
  Edit5Bottom.Text := '';

  Edit6Dates.Text := '';
  Edit6Name.Text := '';
  Edit6Company.Text := '';
  Memo6Resp.Text := '';
  Edit6Benefits.Text := '';
  Edit6Bottom.Text := '';

  Edit7Dates.Text := '';
  Edit7Name.Text := '';
  Edit7Company.Text := '';
  Memo7Resp.Text := '';
  Edit7Benefits.Text := '';
  Edit7Bottom.Text := '';

  Edit8Dates.Text := '';
  Edit8Name.Text := '';
  Edit8Company.Text := '';
  Memo8Resp.Text := '';
  Edit8Benefits.Text := '';
  Edit8Bottom.Text := '';

  Edit9Dates.Text := '';
  Edit9Name.Text := '';
  Edit9Company.Text := '';
  Memo9Resp.Text := '';
  Edit9Benefits.Text := '';
  Edit9Bottom.Text := '';

  Edit10Dates.Text := '';
  Edit10Name.Text := '';
  Edit10Company.Text := '';
  Memo10Resp.Text := '';
  Edit10Benefits.Text := '';
  Edit10Bottom.Text := '';

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

  Memo1Skills.Text := '';
  Memo2Skills.Text := '';
  Memo3Skills.Text := '';
  Memo4Skills.Text := '';
  Memo5Skills.Text := '';
  Memo6Skills.Text := '';
  Memo7Skills.Text := '';
  Memo8Skills.Text := '';
  Memo9Skills.Text := '';
  Memo10Skills.Text := '';

end;

procedure TFormNewTemplate.ChangeDates1;
begin
Edit1Dates.Text := FormMain.GetMonthByRegion(CalendarPickerB1.Date, 'Template') + '-' + FormMain.GetMonthByRegion(CalendarPickerE1.Date, 'Template');
end;

procedure TFormNewTemplate.ChangeDates2;
begin
Edit2Dates.Text := FormMain.GetMonthByRegion(CalendarPickerB2.Date, 'Template') + '-' + FormMain.GetMonthByRegion(CalendarPickerE2.Date, 'Template');
end;

procedure TFormNewTemplate.ChangeDates3;
begin
Edit3Dates.Text := FormMain.GetMonthByRegion(CalendarPickerB3.Date, 'Template') + '-' + FormMain.GetMonthByRegion(CalendarPickerE3.Date, 'Template');
end;

procedure TFormNewTemplate.ChangeDates4;
begin
Edit4Dates.Text := FormMain.GetMonthByRegion(CalendarPickerB4.Date, 'Template') + '-' + FormMain.GetMonthByRegion(CalendarPickerE4.Date, 'Template');
end;

procedure TFormNewTemplate.ChangeDates5;
begin
Edit5Dates.Text := FormMain.GetMonthByRegion(CalendarPickerB5.Date, 'Template') + '-' + FormMain.GetMonthByRegion(CalendarPickerE5.Date, 'Template');
end;

procedure TFormNewTemplate.ChangeDates6;
begin
Edit6Dates.Text := FormMain.GetMonthByRegion(CalendarPickerB6.Date, 'Template') + '-' + FormMain.GetMonthByRegion(CalendarPickerE6.Date, 'Template');
end;

procedure TFormNewTemplate.ChangeDates7;
begin
Edit7Dates.Text := FormMain.GetMonthByRegion(CalendarPickerB7.Date, 'Template') + '-' + FormMain.GetMonthByRegion(CalendarPickerE7.Date, 'Template');
end;

procedure TFormNewTemplate.ChangeDates8;
begin
Edit8Dates.Text := FormMain.GetMonthByRegion(CalendarPickerB8.Date, 'Template') + '-' + FormMain.GetMonthByRegion(CalendarPickerE8.Date, 'Template');
end;

procedure TFormNewTemplate.ChangeDates9;
begin
Edit9Dates.Text := FormMain.GetMonthByRegion(CalendarPickerB9.Date, 'Template') + '-' + FormMain.GetMonthByRegion(CalendarPickerE9.Date, 'Template');
end;

procedure TFormNewTemplate.ChangeDates10;
begin
Edit10Dates.Text := FormMain.GetMonthByRegion(CalendarPickerB10.Date, 'Template') + '-' + FormMain.GetMonthByRegion(CalendarPickerE10.Date, 'Template');
end;

function TFormNewTemplate.isJobPeriodsValid: boolean;
begin
Result:=true;
end;

function TFormNewTemplate.isJobDatesGood: boolean;
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

function TFormNewTemplate.isJobDatesValid: boolean;
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

function TFormNewTemplate.isJobGood: boolean;
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
	if (IsJob1Active and FormMain.IsEmpty(Memo1Resp.Text)) then
	begin
		ShowMessage('Пусте поле "Обов`язки робота 1"');
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
	if (IsJob2Active and FormMain.IsEmpty(Memo2Resp.Text)) then
	begin
		ShowMessage('Пусте поле "Обов`язки робота 2"');
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
	if (IsJob3Active and FormMain.IsEmpty(Memo3Resp.Text)) then
	begin
		ShowMessage('Пусте поле "Обов`язки робота 3"');
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
	if (IsJob4Active and FormMain.IsEmpty(Memo4Resp.Text)) then
	begin
		ShowMessage('Пусте поле "Обов`язки робота 4"');
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
	if (IsJob5Active and FormMain.IsEmpty(Memo5Resp.Text)) then
	begin
		ShowMessage('Пусте поле "Обов`язки робота 5"');
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
	if (IsJob6Active and FormMain.IsEmpty(Memo6Resp.Text)) then
	begin
		ShowMessage('Пусте поле "Обов`язки робота 6"');
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
	if (IsJob7Active and FormMain.IsEmpty(Memo7Resp.Text)) then
	begin
		ShowMessage('Пусте поле "Обов`язки робота 7"');
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
	if (IsJob8Active and FormMain.IsEmpty(Memo8Resp.Text)) then
	begin
		ShowMessage('Пусте поле "Обов`язки робота 8"');
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
	if (IsJob9Active and FormMain.IsEmpty(Memo9Resp.Text)) then
	begin
		ShowMessage('Пусте поле "Обов`язки робота 9"');
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
	if (IsJob10Active and FormMain.IsEmpty(Memo10Resp.Text)) then
	begin
		ShowMessage('Пусте поле "Обов`язки робота 10"');
		Result := false;
		exit;
	end;
end;

end.
