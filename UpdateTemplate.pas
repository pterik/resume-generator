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
    PageControl: TPageControl;
    TabSheetMainRU: TTabSheet;
    EditName: TEdit;
    EditOpportunity: TEdit;
    EditPlace: TEdit;
    EditPhones: TEdit;
    MemoIntro: TMemo;
    EditLang: TEdit;
    EditRegion: TEdit;
    TabSheetFooterRU: TTabSheet;
    StaticText1: TStaticText;
    EditArticle1: TEdit;
    EditArticle2: TEdit;
    MemoArticle1: TMemo;
    MemoArticle2: TMemo;
    EditArticle3: TEdit;
    EditArticle4: TEdit;
    MemoArticle3: TMemo;
    MemoArticle4: TMemo;
    TabSheetJob1RU: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit1Dates: TEdit;
    Edit1Name: TEdit;
    Edit1Company: TEdit;
    Memo1Resp: TMemo;
    Edit1Benefits: TEdit;
    Edit1Bottom: TEdit;
    Memo1Skills: TMemo;
    CalendarPickerB1: TCalendarPicker;
    CalendarPickerE1: TCalendarPicker;
    TabSheetJob2RU: TTabSheet;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Edit2Dates: TEdit;
    Edit2Name: TEdit;
    Edit2Company: TEdit;
    Memo2Resp: TMemo;
    Edit2Benefits: TEdit;
    Edit2Bottom: TEdit;
    Memo2Skills: TMemo;
    CalendarPickerB2: TCalendarPicker;
    CalendarPickerE2: TCalendarPicker;
    TabSheetJob3RU: TTabSheet;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Edit3Dates: TEdit;
    Edit3Name: TEdit;
    Edit3Company: TEdit;
    Memo3Resp: TMemo;
    Edit3Benefits: TEdit;
    Edit3Bottom: TEdit;
    Memo3Skills: TMemo;
    CalendarPickerB3: TCalendarPicker;
    CalendarPickerE3: TCalendarPicker;
    TabSheetJob4RU: TTabSheet;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Edit4Dates: TEdit;
    Edit4Name: TEdit;
    Edit4Company: TEdit;
    Memo4Resp: TMemo;
    Edit4Benefits: TEdit;
    Edit4Bottom: TEdit;
    Memo4Skills: TMemo;
    CalendarPickerB4: TCalendarPicker;
    CalendarPickerE4: TCalendarPicker;
    TabSheetJob5RU: TTabSheet;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Edit5Dates: TEdit;
    Edit5Name: TEdit;
    Edit5Company: TEdit;
    Memo5Resp: TMemo;
    Edit5Benefits: TEdit;
    Edit5Bottom: TEdit;
    Memo5Skills: TMemo;
    CalendarPickerB5: TCalendarPicker;
    CalendarPickerE5: TCalendarPicker;
    TabSheetJob6RU: TTabSheet;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Memo6Resp: TMemo;
    Edit6Benefits: TEdit;
    Edit6Bottom: TEdit;
    Edit6Dates: TEdit;
    Edit6Name: TEdit;
    Edit6Company: TEdit;
    Memo6Skills: TMemo;
    CalendarPickerB6: TCalendarPicker;
    CalendarPickerE6: TCalendarPicker;
    TabSheetJob7RU: TTabSheet;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Memo7Resp: TMemo;
    Edit7Benefits: TEdit;
    Edit7Bottom: TEdit;
    Edit7Dates: TEdit;
    Edit7Name: TEdit;
    Edit7Company: TEdit;
    Memo7Skills: TMemo;
    CalendarPickerB7: TCalendarPicker;
    CalendarPickerE7: TCalendarPicker;
    TabSheetJob8RU: TTabSheet;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Memo8Resp: TMemo;
    Edit8Benefits: TEdit;
    Edit8Bottom: TEdit;
    Edit8Dates: TEdit;
    Edit8Name: TEdit;
    Edit8Company: TEdit;
    Memo8Skills: TMemo;
    CalendarPickerB8: TCalendarPicker;
    CalendarPickerE8: TCalendarPicker;
    TabSheetJob9RU: TTabSheet;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Memo9Resp: TMemo;
    Edit9Benefits: TEdit;
    Edit9Bottom: TEdit;
    Edit9Dates: TEdit;
    Edit9Name: TEdit;
    Edit9Company: TEdit;
    Memo9Skills: TMemo;
    CalendarPickerB9: TCalendarPicker;
    CalendarPickerE9: TCalendarPicker;
    TabSheet10RU: TTabSheet;
    Label68: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    Memo10Resp: TMemo;
    Edit10Benefits: TEdit;
    Edit10Bottom: TEdit;
    Edit10Dates: TEdit;
    Edit10Name: TEdit;
    Edit10Company: TEdit;
    Memo10Skills: TMemo;
    CalendarPickerB10: TCalendarPicker;
    CalendarPickerE10: TCalendarPicker;
    UniSPInsertExperiences: TUniStoredProc;
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
    UniSPDeleteExpSkills: TUniStoredProc;
    UniTelephones: TUniQuery;
    CBPhones: TComboBox;
    BitBtn2: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BitBtnSaveClick(Sender: TObject);
    procedure CalendarPickerB1Change(Sender: TObject);
    procedure CalendarPickerB1CloseUp(Sender: TObject);
    procedure CalendarPickerE1Change(Sender: TObject);
    procedure CalendarPickerE1CloseUp(Sender: TObject);
    procedure CalendarPickerB2Change(Sender: TObject);
    procedure CalendarPickerB2CloseUp(Sender: TObject);
    procedure CalendarPickerE2Change(Sender: TObject);
    procedure CalendarPickerE2CloseUp(Sender: TObject);
    procedure CalendarPickerB3Change(Sender: TObject);
    procedure CalendarPickerB3CloseUp(Sender: TObject);
    procedure CalendarPickerE3Change(Sender: TObject);
    procedure CalendarPickerE3CloseUp(Sender: TObject);
    procedure CalendarPickerB4Change(Sender: TObject);
    procedure CalendarPickerB4CloseUp(Sender: TObject);
    procedure CalendarPickerE4Change(Sender: TObject);
    procedure CalendarPickerE4CloseUp(Sender: TObject);
    procedure CalendarPickerB5Change(Sender: TObject);
    procedure CalendarPickerB5CloseUp(Sender: TObject);
    procedure CalendarPickerE5Change(Sender: TObject);
    procedure CalendarPickerE5CloseUp(Sender: TObject);
    procedure CalendarPickerB6Change(Sender: TObject);
    procedure CalendarPickerB6CloseUp(Sender: TObject);
    procedure CalendarPickerE6Change(Sender: TObject);
    procedure CalendarPickerE6CloseUp(Sender: TObject);
    procedure CalendarPickerB7Change(Sender: TObject);
    procedure CalendarPickerB7CloseUp(Sender: TObject);
    procedure CalendarPickerE7Change(Sender: TObject);
    procedure CalendarPickerE7CloseUp(Sender: TObject);
    procedure CalendarPickerB8Change(Sender: TObject);
    procedure CalendarPickerB8CloseUp(Sender: TObject);
    procedure CalendarPickerE8Change(Sender: TObject);
    procedure CalendarPickerE8CloseUp(Sender: TObject);
    procedure CalendarPickerB9Change(Sender: TObject);
    procedure CalendarPickerB9CloseUp(Sender: TObject);
    procedure CalendarPickerE9Change(Sender: TObject);
    procedure CalendarPickerE9CloseUp(Sender: TObject);
    procedure CalendarPickerB10Change(Sender: TObject);
    procedure CalendarPickerB10CloseUp(Sender: TObject);
    procedure CalendarPickerE10Change(Sender: TObject);
    procedure CalendarPickerE10CloseUp(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    FTemplateID:integer;
    function SaveJobs: boolean;
    procedure SetFormValues;
    procedure SetValuesFootersRU;
    procedure SetValuesJobsRU;
    procedure SetValuesTemplatesRU;
    function  isFormValuesGood: boolean;
    function  SaveValues: boolean;
    function  SaveTemplate: boolean;
    procedure SetEmptyTemplates;
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

procedure TFormUpdateTemplate.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
UniTemplateID.Close;
UniFootersID.Close;
UniSPInsertExperiences.Close;
UniSPUpdateTemplate.Close;
UniSPInsertSkills.Close;
end;

procedure TFormUpdateTemplate.FormDestroy(Sender: TObject);
begin
UniTemplateID.Destroy;
UniFootersID.Destroy;
UniSPInsertExperiences.Destroy;
UniSPUpdateTemplate.Destroy;
UniSPInsertSkills.Destroy;
end;

procedure TFormUpdateTemplate.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key = VK_F2 then BitBtnSave.Click();
end;

procedure TFormUpdateTemplate.SetID(TemplateID: integer);
begin
FTemplateID:=TemplateID;
LabelTemplateID.Caption:=IntToStr(TemplateID);
SetFormValues;
end;

function TFormUpdateTemplate.SaveJobs: boolean;
var i:integer;
FExperienceID:array [1..10] of integer;
begin
for i:=1 to 10 do FExperienceID[i]:=0;
  try
  UniSPDeleteExpSkills.Close;
  UniSPDeleteExpSkills.ParamByName('p_flag').AsString := 'template_id';
  UniSPDeleteExpSkills.ParamByName('p_template_id').AsInteger := FTemplateID;
  UniSPDeleteExpSkills.ExecSQL;
  if not FormMain.isEmpty(Edit1Name.Text) and not FormMain.isEmpty(Edit1Company.Text) then
    begin
      UniSPInsertExperiences.Close;
      UniSPInsertExperiences.ParamByName('p_flag').AsString := 'template_id';
//      UniSPInsertExperiences.ParamByName('p_resume_id').AsInteger := null;
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
  if not FormMain.isEmpty(Edit2Name.Text) and not FormMain.isEmpty(Edit2Company.Text) then
    begin
      UniSPInsertExperiences.Close;
      UniSPInsertExperiences.ParamByName('p_flag').AsString := 'template_id';
//      UniSPInsertExperiences.ParamByName('p_resume_id').AsInteger := null;
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
  if not FormMain.isEmpty(Edit3Name.Text) and not FormMain.isEmpty(Edit3Company.Text) then
    begin
      UniSPInsertExperiences.Close;
      UniSPInsertExperiences.ParamByName('p_flag').AsString := 'template_id';
//      UniSPInsertExperiences.ParamByName('p_resume_id').AsInteger := null;
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
  if not FormMain.isEmpty(Edit4Name.Text) and not FormMain.isEmpty(Edit4Company.Text) then
    begin
      UniSPInsertExperiences.Close;
      UniSPInsertExperiences.ParamByName('p_flag').AsString := 'template_id';
//      UniSPInsertExperiences.ParamByName('p_resume_id').AsInteger := null;
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
  if not FormMain.isEmpty(Edit5Name.Text) and not FormMain.isEmpty(Edit5Company.Text) then
    begin
      UniSPInsertExperiences.Close;
      UniSPInsertExperiences.ParamByName('p_flag').AsString := 'template_id';
//      UniSPInsertExperiences.ParamByName('p_resume_id').AsInteger := null;
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
  if not FormMain.isEmpty(Edit6Name.Text) and not FormMain.isEmpty(Edit6Company.Text) then
    begin
      UniSPInsertExperiences.Close;
      UniSPInsertExperiences.ParamByName('p_flag').AsString := 'template_id';
//      UniSPInsertExperiences.ParamByName('p_resume_id').AsInteger := null;
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
  if not FormMain.isEmpty(Edit7Name.Text) and not FormMain.isEmpty(Edit7Company.Text) then
    begin
      UniSPInsertExperiences.Close;
      UniSPInsertExperiences.ParamByName('p_flag').AsString := 'template_id';
//      UniSPInsertExperiences.ParamByName('p_resume_id').AsInteger := null;
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
  if not FormMain.isEmpty(Edit8Name.Text) and not FormMain.isEmpty(Edit8Company.Text) then
    begin
      UniSPInsertExperiences.Close;
      UniSPInsertExperiences.ParamByName('p_flag').AsString := 'template_id';
//      UniSPInsertExperiences.ParamByName('p_resume_id').AsInteger := null;
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
  if not FormMain.isEmpty(Edit9Name.Text) and not FormMain.isEmpty(Edit9Company.Text) then
    begin
      UniSPInsertExperiences.Close;
      UniSPInsertExperiences.ParamByName('p_flag').AsString := 'template_id';
//      UniSPInsertExperiences.ParamByName('p_resume_id').AsInteger := null;
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
  if not FormMain.isEmpty(Edit10Name.Text) and not FormMain.isEmpty(Edit10Company.Text) then
    begin
      UniSPInsertExperiences.Close;
      UniSPInsertExperiences.ParamByName('p_flag').AsString := 'template_id';
//      UniSPInsertExperiences.ParamByName('p_resume_id').AsInteger := null;
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
  if (Trim(Memo1Skills.Text)<>'') then
      for i := 0 to Memo1Skills.Lines.Count - 1 do
        if not FormMain.IsEmpty(Memo1Skills.Lines[i]) then
          begin
          UniSPInsertSkills.Close;
          UniSPInsertSkills.ParamByName('p_experience_id').AsInteger:=FExperienceID[1];
          UniSPInsertSkills.ParamByName('p_skill').AsString:=Memo1Skills.Lines[i];
          UniSPInsertSkills.ExecSQL;
          end;
  if (Trim(Memo2Skills.Text)<>'') then
      for i := 0 to Memo2Skills.Lines.Count - 1 do
        if not FormMain.IsEmpty(Memo2Skills.Lines[i]) then
          begin
          UniSPInsertSkills.Close;
          UniSPInsertSkills.ParamByName('p_experience_id').AsInteger:=FExperienceID[2];
          UniSPInsertSkills.ParamByName('p_skill').AsString:=Memo2Skills.Lines[i];
          UniSPInsertSkills.ExecSQL;
          end;
  if (Trim(Memo3Skills.Text)<>'') then
      for i := 0 to Memo3Skills.Lines.Count - 1 do
        if not FormMain.IsEmpty(Memo3Skills.Lines[i]) then
          begin
          UniSPInsertSkills.Close;
          UniSPInsertSkills.ParamByName('p_experience_id').AsInteger:=FExperienceID[3];
          UniSPInsertSkills.ParamByName('p_skill').AsString:=Memo3Skills.Lines[i];
          UniSPInsertSkills.ExecSQL;
          end;
  if (Trim(Memo4Skills.Text)<>'') then
      for i := 0 to Memo4Skills.Lines.Count - 1 do
        if not FormMain.IsEmpty(Memo4Skills.Lines[i]) then
          begin
          UniSPInsertSkills.Close;
          UniSPInsertSkills.ParamByName('p_experience_id').AsInteger:=FExperienceID[4];
          UniSPInsertSkills.ParamByName('p_skill').AsString:=Memo4Skills.Lines[i];
          UniSPInsertSkills.ExecSQL;
          end;
  if (Trim(Memo5Skills.Text)<>'') then
      for i := 0 to Memo5Skills.Lines.Count - 1 do
        if not FormMain.IsEmpty(Memo5Skills.Lines[i]) then
          begin
          UniSPInsertSkills.Close;
          UniSPInsertSkills.ParamByName('p_experience_id').AsInteger:=FExperienceID[5];
          UniSPInsertSkills.ParamByName('p_skill').AsString:=Memo5Skills.Lines[i];
          UniSPInsertSkills.ExecSQL;
          end;
  if (Trim(Memo6Skills.Text)<>'') then
      for i := 0 to Memo6Skills.Lines.Count - 1 do
        if not FormMain.IsEmpty(Memo6Skills.Lines[i]) then
          begin
          UniSPInsertSkills.Close;
          UniSPInsertSkills.ParamByName('p_experience_id').AsInteger:=FExperienceID[6];
          UniSPInsertSkills.ParamByName('p_skill').AsString:=Memo6Skills.Lines[i];
          UniSPInsertSkills.ExecSQL;
          end;
  if (Trim(Memo7Skills.Text)<>'') then
      for i := 0 to Memo7Skills.Lines.Count - 1 do
        if not FormMain.IsEmpty(Memo7Skills.Lines[i]) then
          begin
          UniSPInsertSkills.Close;
          UniSPInsertSkills.ParamByName('p_experience_id').AsInteger:=FExperienceID[7];
          UniSPInsertSkills.ParamByName('p_skill').AsString:=Memo7Skills.Lines[i];
          UniSPInsertSkills.ExecSQL;
          end;
  if (Trim(Memo8Skills.Text)<>'') then
      for i := 0 to Memo8Skills.Lines.Count - 1 do
        if not FormMain.IsEmpty(Memo8Skills.Lines[i]) then
          begin
          UniSPInsertSkills.Close;
          UniSPInsertSkills.ParamByName('p_experience_id').AsInteger:=FExperienceID[8];
          UniSPInsertSkills.ParamByName('p_skill').AsString:=Memo8Skills.Lines[i];
          UniSPInsertSkills.ExecSQL;
          end;
  if (Trim(Memo9Skills.Text)<>'') then
      for i := 0 to Memo9Skills.Lines.Count - 1 do
        if not FormMain.IsEmpty(Memo9Skills.Lines[i]) then
          begin
          UniSPInsertSkills.Close;
          UniSPInsertSkills.ParamByName('p_experience_id').AsInteger:=FExperienceID[9];
          UniSPInsertSkills.ParamByName('p_skill').AsString:=Memo9Skills.Lines[i];
          UniSPInsertSkills.ExecSQL;
          end;
  if (Trim(Memo10Skills.Text)<>'') then
      for i := 0 to Memo10Skills.Lines.Count - 1 do
        if not FormMain.IsEmpty(Memo10Skills.Lines[i]) then
          begin
          UniSPInsertSkills.Close;
          UniSPInsertSkills.ParamByName('p_experience_id').AsInteger:=FExperienceID[10];
          UniSPInsertSkills.ParamByName('p_skill').AsString:=Memo10Skills.Lines[i];
          UniSPInsertSkills.ExecSQL;
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

procedure TFormUpdateTemplate.ChangeDates1;
begin
Edit1Dates.Text := FormMain.GetMonthByRegion(CalendarPickerB1.Date, 'Template') + '-' + FormMain.GetMonthByRegion(CalendarPickerE1.Date, 'Template');
end;

procedure TFormUpdateTemplate.ChangeDates2;
begin
Edit2Dates.Text := FormMain.GetMonthByRegion(CalendarPickerB2.Date, 'Template') + '-' + FormMain.GetMonthByRegion(CalendarPickerE2.Date, 'Template');
end;

procedure TFormUpdateTemplate.ChangeDates3;
begin
Edit3Dates.Text := FormMain.GetMonthByRegion(CalendarPickerB3.Date, 'Template') + '-' + FormMain.GetMonthByRegion(CalendarPickerE3.Date, 'Template');
end;

procedure TFormUpdateTemplate.ChangeDates4;
begin
Edit4Dates.Text := FormMain.GetMonthByRegion(CalendarPickerB4.Date, 'Template') + '-' + FormMain.GetMonthByRegion(CalendarPickerE4.Date, 'Template');
end;

procedure TFormUpdateTemplate.ChangeDates5;
begin
Edit5Dates.Text := FormMain.GetMonthByRegion(CalendarPickerB5.Date, 'Template') + '-' + FormMain.GetMonthByRegion(CalendarPickerE5.Date, 'Template');
end;

procedure TFormUpdateTemplate.ChangeDates6;
begin
Edit6Dates.Text := FormMain.GetMonthByRegion(CalendarPickerB6.Date, 'Template') + '-' + FormMain.GetMonthByRegion(CalendarPickerE6.Date, 'Template');
end;

procedure TFormUpdateTemplate.ChangeDates7;
begin
Edit7Dates.Text := FormMain.GetMonthByRegion(CalendarPickerB7.Date, 'Template') + '-' + FormMain.GetMonthByRegion(CalendarPickerE7.Date, 'Template');
end;

procedure TFormUpdateTemplate.ChangeDates8;
begin
Edit8Dates.Text := FormMain.GetMonthByRegion(CalendarPickerB8.Date, 'Template') + '-' + FormMain.GetMonthByRegion(CalendarPickerE8.Date, 'Template');
end;

procedure TFormUpdateTemplate.ChangeDates9;
begin
Edit9Dates.Text := FormMain.GetMonthByRegion(CalendarPickerB9.Date, 'Template') + '-' + FormMain.GetMonthByRegion(CalendarPickerE9.Date, 'Template');
end;

procedure TFormUpdateTemplate.CalendarPickerB10Change(Sender: TObject);
begin
ChangeDates10;
end;

procedure TFormUpdateTemplate.CalendarPickerB10CloseUp(Sender: TObject);
begin
ChangeDates10;
end;

procedure TFormUpdateTemplate.CalendarPickerB1Change(Sender: TObject);
begin
ChangeDates1;
end;

procedure TFormUpdateTemplate.CalendarPickerB1CloseUp(Sender: TObject);
begin
ChangeDates1;
end;

procedure TFormUpdateTemplate.CalendarPickerB2Change(Sender: TObject);
begin
ChangeDates2;
end;

procedure TFormUpdateTemplate.CalendarPickerB2CloseUp(Sender: TObject);
begin
ChangeDates2;
end;

procedure TFormUpdateTemplate.CalendarPickerB3Change(Sender: TObject);
begin
ChangeDates3;
end;

procedure TFormUpdateTemplate.CalendarPickerB3CloseUp(Sender: TObject);
begin
ChangeDates3;
end;

procedure TFormUpdateTemplate.CalendarPickerB4Change(Sender: TObject);
begin
ChangeDates4;
end;

procedure TFormUpdateTemplate.CalendarPickerB4CloseUp(Sender: TObject);
begin
ChangeDates4;
end;

procedure TFormUpdateTemplate.CalendarPickerB5Change(Sender: TObject);
begin
ChangeDates5;
end;

procedure TFormUpdateTemplate.CalendarPickerB5CloseUp(Sender: TObject);
begin
ChangeDates5;
end;

procedure TFormUpdateTemplate.CalendarPickerB6Change(Sender: TObject);
begin
ChangeDates6;
end;

procedure TFormUpdateTemplate.CalendarPickerB6CloseUp(Sender: TObject);
begin
ChangeDates6;
end;

procedure TFormUpdateTemplate.CalendarPickerB7Change(Sender: TObject);
begin
ChangeDates7;
end;

procedure TFormUpdateTemplate.CalendarPickerB7CloseUp(Sender: TObject);
begin
ChangeDates7;
end;

procedure TFormUpdateTemplate.CalendarPickerB8Change(Sender: TObject);
begin
ChangeDates8;
end;

procedure TFormUpdateTemplate.CalendarPickerB8CloseUp(Sender: TObject);
begin
ChangeDates8;
end;

procedure TFormUpdateTemplate.CalendarPickerB9Change(Sender: TObject);
begin
ChangeDates9;
end;

procedure TFormUpdateTemplate.CalendarPickerB9CloseUp(Sender: TObject);
begin
ChangeDates9;
end;

procedure TFormUpdateTemplate.CalendarPickerE10Change(Sender: TObject);
begin
ChangeDates10;
end;

procedure TFormUpdateTemplate.CalendarPickerE10CloseUp(Sender: TObject);
begin
ChangeDates10;
end;

procedure TFormUpdateTemplate.CalendarPickerE1Change(Sender: TObject);
begin
ChangeDates1;
end;

procedure TFormUpdateTemplate.CalendarPickerE1CloseUp(Sender: TObject);
begin
ChangeDates1;
end;

procedure TFormUpdateTemplate.CalendarPickerE2Change(Sender: TObject);
begin
ChangeDates2;
end;

procedure TFormUpdateTemplate.CalendarPickerE2CloseUp(Sender: TObject);
begin
ChangeDates2;
end;

procedure TFormUpdateTemplate.CalendarPickerE3Change(Sender: TObject);
begin
ChangeDates3;
end;

procedure TFormUpdateTemplate.CalendarPickerE3CloseUp(Sender: TObject);
begin
ChangeDates3;
end;

procedure TFormUpdateTemplate.CalendarPickerE4Change(Sender: TObject);
begin
ChangeDates4;
end;

procedure TFormUpdateTemplate.CalendarPickerE4CloseUp(Sender: TObject);
begin
ChangeDates4;
end;

procedure TFormUpdateTemplate.CalendarPickerE5Change(Sender: TObject);
begin
ChangeDates5;
end;

procedure TFormUpdateTemplate.CalendarPickerE5CloseUp(Sender: TObject);
begin
ChangeDates5;
end;

procedure TFormUpdateTemplate.CalendarPickerE6Change(Sender: TObject);
begin
ChangeDates6;
end;

procedure TFormUpdateTemplate.CalendarPickerE6CloseUp(Sender: TObject);
begin
ChangeDates6;
end;

procedure TFormUpdateTemplate.CalendarPickerE7Change(Sender: TObject);
begin
ChangeDates7;
end;

procedure TFormUpdateTemplate.CalendarPickerE7CloseUp(Sender: TObject);
begin
ChangeDates7;
end;

procedure TFormUpdateTemplate.CalendarPickerE8Change(Sender: TObject);
begin
ChangeDates8;
end;

procedure TFormUpdateTemplate.CalendarPickerE8CloseUp(Sender: TObject);
begin
ChangeDates8;
end;

procedure TFormUpdateTemplate.CalendarPickerE9Change(Sender: TObject);
begin
ChangeDates9;
end;

procedure TFormUpdateTemplate.CalendarPickerE9CloseUp(Sender: TObject);
begin
ChangeDates9;
end;

procedure TFormUpdateTemplate.ChangeDates10;
begin
Edit10Dates.Text := FormMain.GetMonthByRegion(CalendarPickerB10.Date, 'Template') + '-' + FormMain.GetMonthByRegion(CalendarPickerE10.Date, 'Template');
end;

procedure TFormUpdateTemplate.SetFormValues;
begin
PageControl.ActivePageIndex:=0;
SetEmptyTemplates;
//SetEmptyFooters;
//SetEmptyJobs;
//SetEmptySkills;
SetValuesTemplatesRU;
SetValuesFootersRU;
SetValuesJobsRU;
CBPhones.Clear;
UniTelephones.Close;
UniTelephones.Open;
while not UniTelephones.Eof do
  begin
    CBPhones.Items.Add(UniTelephones['value']);
    UniTelephones.Next;
  end;
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
    EditArticle1.Text := UniFootersID['footer_header'];
    MemoArticle1.Text := UniFootersID['footer_text'];
    end;
  if UniFootersID['footer_order']=2 then
    begin
    EditArticle2.Text := UniFootersID['footer_header'];
    MemoArticle2.Text := UniFootersID['footer_text'];
    end;
  if UniFootersID['footer_order']=3 then
    begin
    EditArticle3.Text := UniFootersID['footer_header'];
    MemoArticle3.Text := UniFootersID['footer_text'];
    end;
  if UniFootersID['footer_order']=4 then
    begin
    EditArticle4.Text := UniFootersID['footer_header'];
    MemoArticle4.Text := UniFootersID['footer_text'];
    end;
  UniFootersID.Next;
  end;
end;

procedure TFormUpdateTemplate.SetValuesTemplatesRU;
begin
UniTemplateID.Close;
UniTemplateID.ParamByName('P_ID').AsInteger:=FTemplateID;
UniTemplateID.Open;
EditName.Text:=UniTemplateID['name'];
EditOpportunity.Text:=UniTemplateID['job_opportunity'];
EditPlace.Text:=UniTemplateID['job_place'];
EditPhones.Text:=UniTemplateID['phone_numbers_text'];
MemoIntro.Text:=UniTemplateID['template_introduction'];
end;

procedure TFormUpdateTemplate.SetValuesJobsRU;
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

UniExperienceID.Close;
UniExperienceID.ParamByName('p_template_id').AsInteger:=FTemplateID;
UniExperienceID.Open;
while not UniExperienceID.EOF do
  begin
    if UniExperienceID['job_order']=1 then
      begin
      CalendarPickerB1.Date:=UniExperienceID['start_date'];
      CalendarPickerE1.Date:=UniExperienceID['end_date'];
      ChangeDates1;
      Edit1Name.Text := UniExperienceID['job_position'];
      Edit1Company.Text := UniExperienceID['employer'];
      Memo1Resp.Text := UniExperienceID['responsibilities'];
      Edit1Benefits.Text := UniExperienceID['benefits'];
      Edit1Bottom.Text := UniExperienceID['leave_reason'];
      UniSkillsID.Close;
      UniSkillsID.ParamByName('p_experience_id').AsInteger:=UniExperienceID['experience_id'];
      UniSkillsID.Open;
      Memo1Skills.Clear;
      while not UniSkillsID.EOF do
        begin
          if not FormMain.IsEmpty(UniSkillsID['skill']) then Memo1Skills.Lines.Add(UniSkillsID['skill']);
          UniSkillsID.Next;
        end;
      end;

    if UniExperienceID['job_order']=2 then
      begin
      CalendarPickerB2.Date:=UniExperienceID['start_date'];
      CalendarPickerE2.Date:=UniExperienceID['end_date'];
      ChangeDates2;
      Edit2Name.Text := UniExperienceID['job_position'];
      Edit2Company.Text := UniExperienceID['employer'];
      Memo2Resp.Text := UniExperienceID['responsibilities'];
      Edit2Benefits.Text := UniExperienceID['benefits'];
      Edit2Bottom.Text := UniExperienceID['leave_reason'];
      UniSkillsID.Close;
      UniSkillsID.ParamByName('p_experience_id').AsInteger:=UniExperienceID['experience_id'];
      UniSkillsID.Open;
      Memo2Skills.Clear;
      while not UniSkillsID.EOF do
        begin
          if not FormMain.IsEmpty(UniSkillsID['skill']) then Memo2Skills.Lines.Add(UniSkillsID['skill']);
          UniSkillsID.Next;
        end;
      end;

    if UniExperienceID['job_order']=3 then
      begin
      CalendarPickerB3.Date:=UniExperienceID['start_date'];
      CalendarPickerE3.Date:=UniExperienceID['end_date'];
      ChangeDates3;
      Edit3Name.Text := UniExperienceID['job_position'];
      Edit3Company.Text := UniExperienceID['employer'];
      Memo3Resp.Text := UniExperienceID['responsibilities'];
      Edit3Benefits.Text := UniExperienceID['benefits'];
      Edit3Bottom.Text := UniExperienceID['leave_reason'];
      UniSkillsID.Close;
      UniSkillsID.ParamByName('p_experience_id').AsInteger:=UniExperienceID['experience_id'];
      UniSkillsID.Open;
      Memo3Skills.Clear;
      while not UniSkillsID.EOF do
        begin
          if not FormMain.IsEmpty(UniSkillsID['skill']) then Memo3Skills.Lines.Add(UniSkillsID['skill']);
          UniSkillsID.Next;
        end;
      end;

    if UniExperienceID['job_order']=4 then
      begin
      CalendarPickerB4.Date:=UniExperienceID['start_date'];
      CalendarPickerE4.Date:=UniExperienceID['end_date'];
      ChangeDates4;
      Edit4Name.Text := UniExperienceID['job_position'];
      Edit4Company.Text := UniExperienceID['employer'];
      Memo4Resp.Text := UniExperienceID['responsibilities'];
      Edit4Benefits.Text := UniExperienceID['benefits'];
      Edit4Bottom.Text := UniExperienceID['leave_reason'];
      UniSkillsID.Close;
      UniSkillsID.ParamByName('p_experience_id').AsInteger:=UniExperienceID['experience_id'];
      UniSkillsID.Open;
      Memo4Skills.Clear;
      while not UniSkillsID.EOF do
        begin
          if not FormMain.IsEmpty(UniSkillsID['skill']) then Memo4Skills.Lines.Add(UniSkillsID['skill']);
          UniSkillsID.Next;
        end;
      end;

    if UniExperienceID['job_order']=5 then
      begin
      CalendarPickerB5.Date:=UniExperienceID['start_date'];
      CalendarPickerE5.Date:=UniExperienceID['end_date'];
      ChangeDates5;
      Edit5Name.Text := UniExperienceID['job_position'];
      Edit5Company.Text := UniExperienceID['employer'];
      Memo5Resp.Text := UniExperienceID['responsibilities'];
      Edit5Benefits.Text := UniExperienceID['benefits'];
      Edit5Bottom.Text := UniExperienceID['leave_reason'];
      UniSkillsID.Close;
      UniSkillsID.ParamByName('p_experience_id').AsInteger:=UniExperienceID['experience_id'];
      UniSkillsID.Open;
      Memo5Skills.Clear;
      while not UniSkillsID.EOF do
        begin
          if not FormMain.IsEmpty(UniSkillsID['skill']) then Memo5Skills.Lines.Add(UniSkillsID['skill']);
          UniSkillsID.Next;
        end;
      end;

    if UniExperienceID['job_order']=6 then
      begin
      CalendarPickerB6.Date:=UniExperienceID['start_date'];
      CalendarPickerE6.Date:=UniExperienceID['end_date'];
      ChangeDates6;
      Edit6Name.Text := UniExperienceID['job_position'];
      Edit6Company.Text := UniExperienceID['employer'];
      Memo6Resp.Text := UniExperienceID['responsibilities'];
      Edit6Benefits.Text := UniExperienceID['benefits'];
      Edit6Bottom.Text := UniExperienceID['leave_reason'];
      UniSkillsID.Close;
      UniSkillsID.ParamByName('p_experience_id').AsInteger:=UniExperienceID['experience_id'];
      UniSkillsID.Open;
      Memo6Skills.Clear;
      while not UniSkillsID.EOF do
        begin
          if not FormMain.IsEmpty(UniSkillsID['skill']) then Memo6Skills.Lines.Add(UniSkillsID['skill']);
          UniSkillsID.Next;
        end;
      end;

    if UniExperienceID['job_order']=7 then
      begin
      CalendarPickerB7.Date:=UniExperienceID['start_date'];
      CalendarPickerE7.Date:=UniExperienceID['end_date'];
      ChangeDates7;
      Edit7Name.Text := UniExperienceID['job_position'];
      Edit7Company.Text := UniExperienceID['employer'];
      Memo7Resp.Text := UniExperienceID['responsibilities'];
      Edit7Benefits.Text := UniExperienceID['benefits'];
      Edit7Bottom.Text := UniExperienceID['leave_reason'];
      UniSkillsID.Close;
      UniSkillsID.ParamByName('p_experience_id').AsInteger:=UniExperienceID['experience_id'];
      UniSkillsID.Open;
      Memo7Skills.Clear;
      while not UniSkillsID.EOF do
        begin
          if not FormMain.IsEmpty(UniSkillsID['skill']) then Memo7Skills.Lines.Add(UniSkillsID['skill']);
          UniSkillsID.Next;
        end;
      end;

    if UniExperienceID['job_order']=8 then
      begin
      CalendarPickerB8.Date:=UniExperienceID['start_date'];
      CalendarPickerE8.Date:=UniExperienceID['end_date'];
      ChangeDates8;
      Edit8Name.Text := UniExperienceID['job_position'];
      Edit8Company.Text := UniExperienceID['employer'];
      Memo8Resp.Text := UniExperienceID['responsibilities'];
      Edit8Benefits.Text := UniExperienceID['benefits'];
      Edit8Bottom.Text := UniExperienceID['leave_reason'];
      UniSkillsID.Close;
      UniSkillsID.ParamByName('p_experience_id').AsInteger:=UniExperienceID['experience_id'];
      UniSkillsID.Open;
      Memo8Skills.Clear;
      while not UniSkillsID.EOF do
        begin
          if not FormMain.IsEmpty(UniSkillsID['skill']) then Memo8Skills.Lines.Add(UniSkillsID['skill']);
          UniSkillsID.Next;
        end;
      end;

    if UniExperienceID['job_order']=9 then
      begin
      CalendarPickerB9.Date:=UniExperienceID['start_date'];
      CalendarPickerE9.Date:=UniExperienceID['end_date'];
      ChangeDates9;
      Edit9Name.Text := UniExperienceID['job_position'];
      Edit9Company.Text := UniExperienceID['employer'];
      Memo9Resp.Text := UniExperienceID['responsibilities'];
      Edit9Benefits.Text := UniExperienceID['benefits'];
      Edit9Bottom.Text := UniExperienceID['leave_reason'];
      UniSkillsID.Close;
      UniSkillsID.ParamByName('p_experience_id').AsInteger:=UniExperienceID['experience_id'];
      UniSkillsID.Open;
      Memo9Skills.Clear;
      while not UniSkillsID.EOF do
        begin
          if not FormMain.IsEmpty(UniSkillsID['skill']) then Memo9Skills.Lines.Add(UniSkillsID['skill']);
          UniSkillsID.Next;
        end;
      end;

    if UniExperienceID['job_order']=10 then
      begin
      CalendarPickerB10.Date:=UniExperienceID['start_date'];
      CalendarPickerE10.Date:=UniExperienceID['end_date'];
      ChangeDates10;
      Edit10Name.Text := UniExperienceID['job_position'];
      Edit10Company.Text := UniExperienceID['employer'];
      Memo10Resp.Text := UniExperienceID['responsibilities'];
      Edit10Benefits.Text := UniExperienceID['benefits'];
      Edit10Bottom.Text := UniExperienceID['leave_reason'];
      UniSkillsID.Close;
      UniSkillsID.ParamByName('p_experience_id').AsInteger:=UniExperienceID['experience_id'];
      UniSkillsID.Open;
      Memo10Skills.Clear;
      while not UniSkillsID.EOF do
        begin
          if not FormMain.IsEmpty(UniSkillsID['skill']) then Memo10Skills.Lines.Add(UniSkillsID['skill']);
          UniSkillsID.Next;
        end;
      end;

    UniExperienceID.Next;
  end;
end;

function TFormUpdateTemplate.isFormValuesGood: boolean;
var
  IsJob1Active, IsJob2Active, IsJob3Active, IsJob4Active, IsJob5Active,
    IsJob6Active, IsJob7Active, IsJob8Active, IsJob9Active,
    IsJob10Active: boolean;
begin
  //Обязательные поля
  if FormMain.IsEmpty(EditName.Text) then
  begin
    ShowMessage('Пусте поле "Назва резюме"');
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
  if FormMain.IsEmpty(MemoIntro.Text) then
  begin
    ShowMessage('Пусте поле "Введення"');
    Result := false;
    exit;
  end;
  if FormMain.IsEmpty(EditArticle1.Text) and not FormMain.IsEmpty(MemoArticle1.Text) then
  begin
    ShowMessage('Пусте поле "Навички 1 - Назва"');
    Result := false;
    exit;
  end;
  if FormMain.IsEmpty(MemoArticle1.Text) and FormMain.IsEmpty(EditArticle1.Text) then
  begin
    ShowMessage('Пусте поле "Навички 1 - Текст"');
    Result := false;
    exit;
  end;
  if (Length(Trim(EditArticle2.Text)) = 0) and
    (Length(Trim(MemoArticle2.Text)) > 0) then
  begin
    ShowMessage('Пусте поле "Навички 2 - Назва"');
    Result := false;
    exit;
  end;
  if (Length(Trim(MemoArticle2.Text)) = 0) and
    (Length(Trim(EditArticle2.Text)) > 0) then
  begin
    ShowMessage('Пусте поле "Навички 2 - Текст"');
    Result := false;
    exit;
  end;
  if (Length(Trim(EditArticle3.Text)) = 0) and
    (Length(Trim(MemoArticle3.Text)) > 0) then
  begin
    ShowMessage('Пусте поле "Навички 3 - Назва"');
    Result := false;
    exit;
  end;
  if (Length(Trim(MemoArticle3.Text)) = 0) and
    (Length(Trim(EditArticle3.Text)) > 0) then
  begin
    ShowMessage('Пусте поле "Навички 3 - Текст"');
    Result := false;
    exit;
  end;
  if (Length(Trim(EditArticle4.Text)) = 0) and
    (Length(Trim(MemoArticle4.Text)) > 0) then
  begin
    ShowMessage('Пусте поле "Навички 4 - Назва"');
    Result := false;
    exit;
  end;
  if (Length(Trim(MemoArticle4.Text)) = 0) and
    (Length(Trim(EditArticle4.Text)) > 0) then
  begin
    ShowMessage('Пусте поле "Навички 4 - Текст"');
    Result := false;
    exit;
  end;
  /// Определяем активность Job через заполненные поля
  ///  Если обязательные поля в работе заполнены, тогда Job активна
  IsJob1Active := not(FormMain.IsEmpty(Edit1Dates.Text) or FormMain.IsEmpty(Edit1Name.Text) or
    FormMain.IsEmpty(Edit1Company.Text) or FormMain.IsEmpty(Memo1Resp.Text) or
    FormMain.IsEmpty(Memo1Skills.Text));

  if IsJob1Active and (Edit1Dates.Text='') then
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

  /// ////
  IsJob2Active := not(FormMain.IsEmpty(Edit2Dates.Text) or FormMain.IsEmpty(Edit2Name.Text) or
    FormMain.IsEmpty(Edit2Company.Text) or FormMain.IsEmpty(Memo2Resp.Text) or FormMain.IsEmpty(Memo2Skills.Text));
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
  /// ////
  IsJob3Active := not(FormMain.IsEmpty(Edit3Dates.Text) or FormMain.IsEmpty(Edit3Name.Text) or
    FormMain.IsEmpty(Edit3Company.Text) or FormMain.IsEmpty(Memo3Resp.Text) or FormMain.IsEmpty(Memo3Skills.Text));
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
  /// ////
  IsJob4Active := not(FormMain.IsEmpty(Edit4Dates.Text) or FormMain.IsEmpty(Edit4Name.Text) or
    FormMain.IsEmpty(Edit4Company.Text) or FormMain.IsEmpty(Memo4Resp.Text) or FormMain.IsEmpty(Memo4Skills.Text));
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
  /// ////
  IsJob5Active := not(FormMain.IsEmpty(Edit5Dates.Text) or FormMain.IsEmpty(Edit5Name.Text) or
    FormMain.IsEmpty(Edit5Company.Text) or FormMain.IsEmpty(Memo5Resp.Text) or FormMain.IsEmpty(Memo5Skills.Text));
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
  /// ////
  IsJob6Active := not(FormMain.IsEmpty(Edit6Dates.Text) or FormMain.IsEmpty(Edit6Name.Text) or
    FormMain.IsEmpty(Edit6Company.Text) or FormMain.IsEmpty(Memo6Resp.Text) or FormMain.IsEmpty(Memo6Skills.Text));
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
  /// ////
  IsJob7Active := not(FormMain.IsEmpty(Edit7Dates.Text) or FormMain.IsEmpty(Edit7Name.Text) or
    FormMain.IsEmpty(Edit7Company.Text) or FormMain.IsEmpty(Memo7Resp.Text) or FormMain.IsEmpty(Memo7Skills.Text));
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
  /// ////
  IsJob8Active := not(FormMain.IsEmpty(Edit8Dates.Text) or FormMain.IsEmpty(Edit8Name.Text) or
    FormMain.IsEmpty(Edit8Company.Text) or FormMain.IsEmpty(Memo8Resp.Text) or FormMain.IsEmpty(Memo8Skills.Text));
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
  /// ////
  IsJob9Active := not(FormMain.IsEmpty(Edit9Dates.Text) or FormMain.IsEmpty(Edit9Name.Text) or
    FormMain.IsEmpty(Edit9Company.Text) or FormMain.IsEmpty(Memo9Resp.Text) or FormMain.IsEmpty(Memo9Skills.Text));
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
  /// ////
  IsJob10Active := not(FormMain.IsEmpty(Edit10Dates.Text) or FormMain.IsEmpty(Edit10Name.Text)
    or FormMain.IsEmpty(Edit10Company.Text) or FormMain.IsEmpty(Memo10Resp.Text) or FormMain.IsEmpty(Memo10Skills.Text));
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
      FormMain.Warning('Сбой при сохранении jobs (experiences)');
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
    UniSPUpdateTemplate.ParamByName('p_name').AsString  := trim(EditName.Text);
    UniSPUpdateTemplate.ParamByName('p_job_opportunity').AsString := Trim(EditOpportunity.Text);
    UniSPUpdateTemplate.ParamByName('p_job_place').AsString := Trim(EditPlace.Text);
    UniSPUpdateTemplate.ParamByName('p_phone_numbers_text').AsString := Trim(EditPhones.Text);
    UniSPUpdateTemplate.ParamByName('p_template_introduction').AsString := Trim(MemoIntro.Text);
    UniSPUpdateTemplate.ParamByName('p_archived').AsBoolean := False;
    UniSPUpdateTemplate.ParamByName('p_footer_1_header').AsString := Trim(EditArticle1.Text);
    UniSPUpdateTemplate.ParamByName('p_footer_1_text').AsString := Trim(MemoArticle1.Text);
    UniSPUpdateTemplate.ParamByName('p_footer_2_header').AsString := Trim(EditArticle2.Text);
    UniSPUpdateTemplate.ParamByName('p_footer_2_text').AsString := Trim(MemoArticle2.Text);
    UniSPUpdateTemplate.ParamByName('p_footer_3_header').AsString := Trim(EditArticle3.Text);
    UniSPUpdateTemplate.ParamByName('p_footer_3_text').AsString := Trim(MemoArticle3.Text);
    UniSPUpdateTemplate.ParamByName('p_footer_4_header').AsString := Trim(EditArticle4.Text);
    UniSPUpdateTemplate.ParamByName('p_footer_4_text').AsString := Trim(MemoArticle4.Text);
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

procedure TFormUpdateTemplate.SetEmptyTemplates;
begin
  EditName.Text:='';
  EditOpportunity.Text:='';
  EditPlace.Text:='';
  EditPhones.Text:='';
  MemoIntro.Text:='';
  MemoArticle1.Text := '';
  EditArticle1.Text := '';
  MemoArticle2.Text := '';
  EditArticle2.Text := '';
  MemoArticle3.Text := '';
  EditArticle3.Text := '';
  MemoArticle4.Text := '';
  EditArticle4.Text := '';

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

end.
