unit NewUkrainianResume;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Data.DB,
  MemDS, DBAccess, Uni, Vcl.WinXCalendars, Vcl.ComCtrls, Vcl.DBCtrls;

type
  TFormNewUkrainianResume = class(TForm)
    BitBtnClose: TBitBtn;
    BitBtnSave: TBitBtn;
    UniInsertResume: TUniQuery;
    UniGetResume: TUniQuery;
    UniGetTemplate: TUniQuery;
    UniGetTemplateid: TIntegerField;
    UniGetTemplatename: TStringField;
    UniGetTemplatejob_opportunity: TStringField;
    UniGetTemplatejob_place: TStringField;
    UniGetTemplatephone_numbers_text: TStringField;
    UniGetTemplateresume_introduction: TStringField;
    UniGetTemplatecreated: TDateTimeField;
    UniGetTemplateupdated: TDateTimeField;
    UniGetResumeid: TIntegerField;
    UniGetResumelang: TStringField;
    UniGetResumejob_opportunity: TStringField;
    UniGetResumejob_place: TStringField;
    UniGetResumephone_numbers_text: TStringField;
    UniGetResumecv_docx_url: TStringField;
    UniGetResumecv_pdf_url: TStringField;
    UniGetResumeresume_introduction: TStringField;
    UniGetResumecreated: TDateTimeField;
    UniGetResumeupdated: TDateTimeField;
    UniGetResumename: TStringField;
    PageControl1: TPageControl;
    TabSheetMain: TTabSheet;
    TabSheetJob1: TTabSheet;
    Edit1Dates: TEdit;
    Edit1JobName: TEdit;
    Edit1Company: TEdit;
    CalendarPickerB1: TCalendarPicker;
    CalendarPickerE1: TCalendarPicker;
    Memo1JobResp: TMemo;
    Edit1Benefits: TEdit;
    Edit1Skills: TEdit;
    Memo1JobFooter: TMemo;
    TabSheetJob2: TTabSheet;
    Edit2Dates: TEdit;
    Edit2JobName: TEdit;
    Edit2Company: TEdit;
    CalendarPickerB2: TCalendarPicker;
    CalendarPickerE2: TCalendarPicker;
    Memo2JobResp: TMemo;
    Edit2Benefits: TEdit;
    Edit2Skills: TEdit;
    Memo2JobFooter: TMemo;
    TabSheetJob3: TTabSheet;
    Edit3Dates: TEdit;
    Edit3JobName: TEdit;
    Edit3Company: TEdit;
    CalendarPickerB3: TCalendarPicker;
    CalendarPickerE3: TCalendarPicker;
    Memo3JobResp: TMemo;
    Edit3Benefits: TEdit;
    Edit3Skills: TEdit;
    Memo3JobFooter: TMemo;
    TabSheetJob4: TTabSheet;
    Edit4Dates: TEdit;
    Edit4JobName: TEdit;
    Edit4Company: TEdit;
    CalendarPickerB4: TCalendarPicker;
    CalendarPickerE4: TCalendarPicker;
    Memo4JobResp: TMemo;
    Edit4Benefits: TEdit;
    Edit4Skills: TEdit;
    Memo4JobFooter: TMemo;
    TabSheetJob5: TTabSheet;
    Edit5Dates: TEdit;
    Edit5JobName: TEdit;
    Edit5Company: TEdit;
    CalendarPickerB5: TCalendarPicker;
    CalendarPickerE5: TCalendarPicker;
    Memo5JobResp: TMemo;
    Edit5Benefits: TEdit;
    Edit5Skills: TEdit;
    Memo5JobFooter: TMemo;
    TabSheetJob6: TTabSheet;
    Memo6JobResp: TMemo;
    Edit6Benefits: TEdit;
    Edit6Skills: TEdit;
    Edit6Dates: TEdit;
    Edit6JobName: TEdit;
    Edit6Company: TEdit;
    CalendarPickerB6: TCalendarPicker;
    CalendarPickerE6: TCalendarPicker;
    Memo6JobFooter: TMemo;
    TabSheetJob7: TTabSheet;
    Memo7JobResp: TMemo;
    Edit7Benefits: TEdit;
    Edit7Skills: TEdit;
    CalendarPickerB7: TCalendarPicker;
    CalendarPickerE7: TCalendarPicker;
    Edit7Dates: TEdit;
    Edit7JobName: TEdit;
    Edit7Company: TEdit;
    Memo7JobFooter: TMemo;
    TabSheetJob8: TTabSheet;
    Memo8JobResp: TMemo;
    Edit8Benefits: TEdit;
    Edit8Skills: TEdit;
    CalendarPickerB8: TCalendarPicker;
    CalendarPickerE8: TCalendarPicker;
    Edit8Dates: TEdit;
    Edit8JobName: TEdit;
    Edit8Company: TEdit;
    Memo8JobFooter: TMemo;
    TabSheetJob9: TTabSheet;
    Memo9JobResp: TMemo;
    Edit9Benefits: TEdit;
    Edit9Skills: TEdit;
    Edit9Dates: TEdit;
    CalendarPickerB9: TCalendarPicker;
    CalendarPickerE9: TCalendarPicker;
    Edit9JobName: TEdit;
    Edit9Company: TEdit;
    Memo9JobFooter: TMemo;
    TabSheet10: TTabSheet;
    Memo10JobResp: TMemo;
    Edit10Benefits: TEdit;
    Edit10Skills: TEdit;
    CalendarPickerB10: TCalendarPicker;
    CalendarPickerE10: TCalendarPicker;
    Edit10Dates: TEdit;
    Edit10JobName: TEdit;
    Edit10Company: TEdit;
    Memo10JobFooter: TMemo;
    Label1: TLabel;
    EditName: TEdit;
    Label2: TLabel;
    EditOpportunity: TEdit;
    Label3: TLabel;
    EditPlace: TEdit;
    Label4: TLabel;
    EditPhones: TEdit;
    Label5: TLabel;
    MemoIntro: TMemo;
    Label14: TLabel;
    EditLang: TEdit;
    Label6: TLabel;
    EditRegion: TEdit;
    MemoFooter1: TMemo;
    StaticText1: TStaticText;
    UniGetResumeregion: TStringField;
    UniInsertResumeFooters: TUniQuery;
    ComboBoxInsertPhone: TComboBox;
    BitBtn1: TBitBtn;
    EditFooter1: TEdit;
    EditFooter2: TEdit;
    MemoFooter2: TMemo;
    EditFooter3: TEdit;
    MemoFooter3: TMemo;
    EditFooter4: TEdit;
    MemoFooter4: TMemo;
    UniLastInsertID: TUniQuery;
    UniLastInsertIDID: TIntegerField;
    UniInsertExperiences: TUniQuery;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label15: TLabel;
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
    procedure BitBtnCloseClick(Sender: TObject);
    procedure BitBtnSaveClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CalendarPickerE1Change(Sender: TObject);
    procedure CalendarPickerE2Change(Sender: TObject);
    procedure CalendarPickerE3Change(Sender: TObject);
    procedure CalendarPickerE4Change(Sender: TObject);
    procedure CalendarPickerE5Change(Sender: TObject);
    procedure CalendarPickerE6Change(Sender: TObject);
    procedure CalendarPickerE7Change(Sender: TObject);
    procedure CalendarPickerE8Change(Sender: TObject);
    procedure CalendarPickerE9Change(Sender: TObject);
    procedure CalendarPickerE10Change(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    function CheckInsertValues:boolean;
    function SetInsertValues:boolean;
    function GetFullMonthUkrByMask(const D: TDatetime): string;
    function GetShortMonthUkrByMask(const D: TDatetime): string;
    function IsEmpty(const S: String): boolean;
    { Private declarations }
  public
    procedure SetValuesFromResume(resume_id: integer);
    procedure SetValuesFromTemplate(template_id: integer);
    procedure SetEmptyResume;
    procedure SetFormValues;
  end;

var
  FormNewUkrainianResume: TFormNewUkrainianResume;

implementation

{$R *.dfm}

uses MainForm;

{ TFormNewResume }
function TFormNewUkrainianResume.IsEmpty(const S: String): boolean;
begin
Result:=(Length(Trim(S))<=0);
end;

function TFormNewUkrainianResume.GetFullMonthUkrByMask(const D: TDatetime): string;
var
Year, Month, Day: Word;
begin
DecodeDate(D, Year, Month, Day);
    case Month of
    1:  Result:='Січень'+' '+IntToStr(Year);
    2:  Result:='Лютий'+' '+IntToStr(Year);
    3:  Result:='Березень'+' '+IntToStr(Year);
    4:  Result:='Квітень'+' '+IntToStr(Year);
    5:  Result:='Травень'+' '+IntToStr(Year);
    6:  Result:='Червень'+' '+IntToStr(Year);
    7:  Result:='Липень'+' '+IntToStr(Year);
    8:  Result:='Серпень'+' '+IntToStr(Year);
    9:  Result:='Вересень'+' '+IntToStr(Year);
    10:  Result:='Жовтень'+' '+IntToStr(Year);
    11:  Result:='Листопад'+' '+IntToStr(Year);
    12:  Result:='Грудень'+' '+IntToStr(Year);
    end;
end;

function TFormNewUkrainianResume.GetShortMonthUkrByMask(const D: TDatetime): string;
var
Year, Month, Day: Word;
begin
DecodeDate(D, Year, Month, Day);
    case Month of
    1:  Result:='січ'+'. '+IntToStr(Year);
    2:  Result:='лют'+'. '+IntToStr(Year);
    3:  Result:='бер'+'. '+IntToStr(Year);
    4:  Result:='кві'+'. '+IntToStr(Year);
    5:  Result:='тра'+'. '+IntToStr(Year);
    6:  Result:='чер'+'. '+IntToStr(Year);
    7:  Result:='лип'+'. '+IntToStr(Year);
    8:  Result:='сер'+'. '+IntToStr(Year);
    9:  Result:='вер'+'. '+IntToStr(Year);
    10:  Result:='жов'+'. '+IntToStr(Year);
    11:  Result:='лис'+'. '+IntToStr(Year);
    12:  Result:='гру'+'. '+IntToStr(Year);
    end;
end;


procedure TFormNewUkrainianResume.BitBtn1Click(Sender: TObject);
begin
EditPhones.Text:=EditPhones.Text+ComboBoxInsertPhone.Text;
end;

procedure TFormNewUkrainianResume.BitBtnCloseClick(Sender: TObject);
begin
Close;
end;

procedure TFormNewUkrainianResume.BitBtnSaveClick(Sender: TObject);
var FResumeID:integer;
begin
if CheckInsertValues
then ModalResult:=mrOK
else
  begin
    ModalResult:=mrNone;
    exit;
  end;
try
UniInsertResume.Prepare;
UniInsertResume.ParamByName('p_name').AsString:=EditName.Text;
UniInsertResume.ParamByName('p_region_id').AsString:='UA';
UniInsertResume.ParamByName('p_lang').AsString:=EditLang.Text;
UniInsertResume.ParamByName('p_job_opportunity').AsString:=EditOpportunity.Text;
UniInsertResume.ParamByName('p_job_place').AsString:=EditPlace.Text;
UniInsertResume.ParamByName('p_cv_docx_url').AsString:='';
UniInsertResume.ParamByName('p_cv_pdf_url').AsString:='';
UniInsertResume.ParamByName('p_phone_numbers_text').AsString:=EditPhones.Text;
UniInsertResume.ParamByName('p_resume_introduction').AsString:=MemoIntro.Text;
UniInsertResume.ExecSQL;

UniLastInsertID.Prepare;
UniLastInsertID.ParamByName('p_name').AsString:=EditName.Text;
UniLastInsertID.ExecSQL;

if VarIsNull(UniLastInsertID['id']) then
  begin
    ShowMessage('Wrong value for resume.id : ');
    ModalResult:=mrNone;
    exit;
  end
else FResumeId:=UniLastInsertID['id'];

if (length(Trim(EditFooter1.Text))>0) and (length(Trim(MemoFooter1.Text))>0)
then
  begin
  UniInsertResumeFooters.Prepare;
  UniInsertResumeFooters.ParamByName('p_resume_id').AsInteger:=FResumeID;
  UniInsertResumeFooters.ParamByName('p_footer_header').AsString:=Trim(EditFooter1.Text);
  UniInsertResumeFooters.ParamByName('p_footer_text').AsString:=Trim(MemoFooter1.Text);
  UniInsertResumeFooters.ParamByName('p_footer_order').AsInteger:=1;
  UniInsertResumeFooters.ExecSQL;
  end;
if (length(Trim(EditFooter2.Text))>0) and (length(Trim(MemoFooter2.Text))>0)
then
  begin
  UniInsertResumeFooters.Prepare;
  UniInsertResumeFooters.ParamByName('p_resume_id').AsInteger:=FResumeID;
  UniInsertResumeFooters.ParamByName('p_footer_header').AsString:=Trim(EditFooter2.Text);
  UniInsertResumeFooters.ParamByName('p_footer_text').AsString:=Trim(MemoFooter2.Text);
  UniInsertResumeFooters.ParamByName('p_footer_order').AsInteger:=2;
  UniInsertResumeFooters.ExecSQL;
  end;
if (length(Trim(EditFooter3.Text))>0) and (length(Trim(MemoFooter3.Text))>0)
then
  begin
  UniInsertResumeFooters.Prepare;
  UniInsertResumeFooters.ParamByName('p_resume_id').AsInteger:=FResumeID;
  UniInsertResumeFooters.ParamByName('p_footer_header').AsString:=Trim(EditFooter3.Text);
  UniInsertResumeFooters.ParamByName('p_footer_text').AsString:=Trim(MemoFooter3.Text);
  UniInsertResumeFooters.ParamByName('p_footer_order').AsInteger:=3;
  UniInsertResumeFooters.ExecSQL;
  end;
if (length(Trim(EditFooter4.Text))>0) and (length(Trim(MemoFooter4.Text))>0)
then
  begin
  UniInsertResumeFooters.Prepare;
  UniInsertResumeFooters.ParamByName('p_resume_id').AsInteger:=FResumeID;
  UniInsertResumeFooters.ParamByName('p_footer_header').AsString:=Trim(EditFooter4.Text);
  UniInsertResumeFooters.ParamByName('p_footer_text').AsString:=Trim(MemoFooter4.Text);
  UniInsertResumeFooters.ParamByName('p_footer_order').AsInteger:=4;
  UniInsertResumeFooters.ExecSQL;
  end;

///////
if length(Trim(Edit1Dates.Text))>0
then
  begin
  UniInsertExperiences.Prepare;
  UniInsertExperiences.ParamByName('p_resume_id').AsInteger:=FResumeID;
  UniInsertExperiences.ParamByName('p_job_position').AsString:=Trim(Edit1JobName.Text);
  UniInsertExperiences.ParamByName('p_employer').AsString:=Trim(Edit1Company.Text);
  UniInsertExperiences.ParamByName('p_start_date').AsDateTime:=CalendarPickerB1.Date;
  UniInsertExperiences.ParamByName('p_end_date').AsDateTime:=CalendarPickerE1.Date;
  UniInsertExperiences.ParamByName('p_employer').AsString:=Trim(Edit1Company.Text);
  UniInsertExperiences.ParamByName('p_responsibilities').AsString:=Trim(Memo1JobResp.Text);
  UniInsertExperiences.ParamByName('p_benefits').AsString:=Trim(Edit1Benefits.Text);
  UniInsertExperiences.ParamByName('p_leave_reason').AsString:='';
  UniInsertExperiences.ExecSQL;
  end;
///////
if length(Trim(Edit2Dates.Text))>0
then
  begin
  UniInsertExperiences.Prepare;
  UniInsertExperiences.ParamByName('p_resume_id').AsInteger:=FResumeID;
  UniInsertExperiences.ParamByName('p_job_position').AsString:=Trim(Edit2JobName.Text);
  UniInsertExperiences.ParamByName('p_employer').AsString:=Trim(Edit2Company.Text);
  UniInsertExperiences.ParamByName('p_start_date').AsDateTime:=CalendarPickerB2.Date;
  UniInsertExperiences.ParamByName('p_end_date').AsDateTime:=CalendarPickerE2.Date;
  UniInsertExperiences.ParamByName('p_employer').AsString:=Trim(Edit2Company.Text);
  UniInsertExperiences.ParamByName('p_responsibilities').AsString:=Trim(Memo2JobResp.Text);
  UniInsertExperiences.ParamByName('p_benefits').AsString:=Trim(Edit2Benefits.Text);
  UniInsertExperiences.ParamByName('p_leave_reason').AsString:='';
  UniInsertExperiences.ExecSQL;
  end;
///////
if length(Trim(Edit3Dates.Text))>0
then
  begin
  UniInsertExperiences.Prepare;
  UniInsertExperiences.ParamByName('p_resume_id').AsInteger:=FResumeID;
  UniInsertExperiences.ParamByName('p_job_position').AsString:=Trim(Edit3JobName.Text);
  UniInsertExperiences.ParamByName('p_employer').AsString:=Trim(Edit3Company.Text);
  UniInsertExperiences.ParamByName('p_start_date').AsDateTime:=CalendarPickerB3.Date;
  UniInsertExperiences.ParamByName('p_end_date').AsDateTime:=CalendarPickerE3.Date;
  UniInsertExperiences.ParamByName('p_employer').AsString:=Trim(Edit3Company.Text);
  UniInsertExperiences.ParamByName('p_responsibilities').AsString:=Trim(Memo3JobResp.Text);
  UniInsertExperiences.ParamByName('p_benefits').AsString:=Trim(Edit3Benefits.Text);
  UniInsertExperiences.ParamByName('p_leave_reason').AsString:='';
  UniInsertExperiences.ExecSQL;
  end;
///////
if length(Trim(Edit4Dates.Text))>0
then
  begin
  UniInsertExperiences.Prepare;
  UniInsertExperiences.ParamByName('p_resume_id').AsInteger:=FResumeID;
  UniInsertExperiences.ParamByName('p_job_position').AsString:=Trim(Edit4JobName.Text);
  UniInsertExperiences.ParamByName('p_employer').AsString:=Trim(Edit4Company.Text);
  UniInsertExperiences.ParamByName('p_start_date').AsDateTime:=CalendarPickerB4.Date;
  UniInsertExperiences.ParamByName('p_end_date').AsDateTime:=CalendarPickerE4.Date;
  UniInsertExperiences.ParamByName('p_employer').AsString:=Trim(Edit4Company.Text);
  UniInsertExperiences.ParamByName('p_responsibilities').AsString:=Trim(Memo4JobResp.Text);
  UniInsertExperiences.ParamByName('p_benefits').AsString:=Trim(Edit4Benefits.Text);
  UniInsertExperiences.ParamByName('p_leave_reason').AsString:='';
  UniInsertExperiences.ExecSQL;
  end;
///////
if length(Trim(Edit5Dates.Text))>0
then
  begin
  UniInsertExperiences.Prepare;
  UniInsertExperiences.ParamByName('p_resume_id').AsInteger:=FResumeID;
  UniInsertExperiences.ParamByName('p_job_position').AsString:=Trim(Edit5JobName.Text);
  UniInsertExperiences.ParamByName('p_employer').AsString:=Trim(Edit5Company.Text);
  UniInsertExperiences.ParamByName('p_start_date').AsDateTime:=CalendarPickerB5.Date;
  UniInsertExperiences.ParamByName('p_end_date').AsDateTime:=CalendarPickerE5.Date;
  UniInsertExperiences.ParamByName('p_employer').AsString:=Trim(Edit5Company.Text);
  UniInsertExperiences.ParamByName('p_responsibilities').AsString:=Trim(Memo5JobResp.Text);
  UniInsertExperiences.ParamByName('p_benefits').AsString:=Trim(Edit5Benefits.Text);
  UniInsertExperiences.ParamByName('p_leave_reason').AsString:='';
  UniInsertExperiences.ExecSQL;
  end;
///////
if length(Trim(Edit6Dates.Text))>0
then
  begin
  UniInsertExperiences.Prepare;
  UniInsertExperiences.ParamByName('p_resume_id').AsInteger:=FResumeID;
  UniInsertExperiences.ParamByName('p_job_position').AsString:=Trim(Edit6JobName.Text);
  UniInsertExperiences.ParamByName('p_employer').AsString:=Trim(Edit6Company.Text);
  UniInsertExperiences.ParamByName('p_start_date').AsDateTime:=CalendarPickerB6.Date;
  UniInsertExperiences.ParamByName('p_end_date').AsDateTime:=CalendarPickerE6.Date;
  UniInsertExperiences.ParamByName('p_employer').AsString:=Trim(Edit6Company.Text);
  UniInsertExperiences.ParamByName('p_responsibilities').AsString:=Trim(Memo6JobResp.Text);
  UniInsertExperiences.ParamByName('p_benefits').AsString:=Trim(Edit6Benefits.Text);
  UniInsertExperiences.ParamByName('p_leave_reason').AsString:='';
  UniInsertExperiences.ExecSQL;
  end;
///////
if length(Trim(Edit7Dates.Text))>0
then
  begin
  UniInsertExperiences.Prepare;
  UniInsertExperiences.ParamByName('p_resume_id').AsInteger:=FResumeID;
  UniInsertExperiences.ParamByName('p_job_position').AsString:=Trim(Edit7JobName.Text);
  UniInsertExperiences.ParamByName('p_employer').AsString:=Trim(Edit7Company.Text);
  UniInsertExperiences.ParamByName('p_start_date').AsDateTime:=CalendarPickerB7.Date;
  UniInsertExperiences.ParamByName('p_end_date').AsDateTime:=CalendarPickerE7.Date;
  UniInsertExperiences.ParamByName('p_employer').AsString:=Trim(Edit7Company.Text);
  UniInsertExperiences.ParamByName('p_responsibilities').AsString:=Trim(Memo7JobResp.Text);
  UniInsertExperiences.ParamByName('p_benefits').AsString:=Trim(Edit7Benefits.Text);
  UniInsertExperiences.ParamByName('p_leave_reason').AsString:='';
  UniInsertExperiences.ExecSQL;
  end;
///////
if length(Trim(Edit8Dates.Text))>0
then
  begin
  UniInsertExperiences.Prepare;
  UniInsertExperiences.ParamByName('p_resume_id').AsInteger:=FResumeID;
  UniInsertExperiences.ParamByName('p_job_position').AsString:=Trim(Edit8JobName.Text);
  UniInsertExperiences.ParamByName('p_employer').AsString:=Trim(Edit8Company.Text);
  UniInsertExperiences.ParamByName('p_start_date').AsDateTime:=CalendarPickerB8.Date;
  UniInsertExperiences.ParamByName('p_end_date').AsDateTime:=CalendarPickerE8.Date;
  UniInsertExperiences.ParamByName('p_employer').AsString:=Trim(Edit8Company.Text);
  UniInsertExperiences.ParamByName('p_responsibilities').AsString:=Trim(Memo8JobResp.Text);
  UniInsertExperiences.ParamByName('p_benefits').AsString:=Trim(Edit8Benefits.Text);
  UniInsertExperiences.ParamByName('p_leave_reason').AsString:='';
  UniInsertExperiences.ExecSQL;
  end;
///////
if length(Trim(Edit9Dates.Text))>0
then
  begin
  UniInsertExperiences.Prepare;
  UniInsertExperiences.ParamByName('p_resume_id').AsInteger:=FResumeID;
  UniInsertExperiences.ParamByName('p_job_position').AsString:=Trim(Edit9JobName.Text);
  UniInsertExperiences.ParamByName('p_employer').AsString:=Trim(Edit9Company.Text);
  UniInsertExperiences.ParamByName('p_start_date').AsDateTime:=CalendarPickerB9.Date;
  UniInsertExperiences.ParamByName('p_end_date').AsDateTime:=CalendarPickerE9.Date;
  UniInsertExperiences.ParamByName('p_employer').AsString:=Trim(Edit9Company.Text);
  UniInsertExperiences.ParamByName('p_responsibilities').AsString:=Trim(Memo9JobResp.Text);
  UniInsertExperiences.ParamByName('p_benefits').AsString:=Trim(Edit9Benefits.Text);
  UniInsertExperiences.ParamByName('p_leave_reason').AsString:='';
  UniInsertExperiences.ExecSQL;
  end;
///////
if length(Trim(Edit10Dates.Text))>0
then
  begin
  UniInsertExperiences.Prepare;
  UniInsertExperiences.ParamByName('p_resume_id').AsInteger:=FResumeID;
  UniInsertExperiences.ParamByName('p_job_position').AsString:=Trim(Edit10JobName.Text);
  UniInsertExperiences.ParamByName('p_employer').AsString:=Trim(Edit10Company.Text);
  UniInsertExperiences.ParamByName('p_start_date').AsDateTime:=CalendarPickerB10.Date;
  UniInsertExperiences.ParamByName('p_end_date').AsDateTime:=CalendarPickerE10.Date;
  UniInsertExperiences.ParamByName('p_employer').AsString:=Trim(Edit10Company.Text);
  UniInsertExperiences.ParamByName('p_responsibilities').AsString:=Trim(Memo10JobResp.Text);
  UniInsertExperiences.ParamByName('p_benefits').AsString:=Trim(Edit10Benefits.Text);
  UniInsertExperiences.ParamByName('p_leave_reason').AsString:='';
  UniInsertExperiences.ExecSQL;
  end;
/////
except on E:Exception do
  begin
    ShowMessage('Error: '+E.Message);
    ModalResult:=mrNone;
  end;
end;

end;

function TFormNewUkrainianResume.CheckInsertValues: boolean;
var IsJob1Active, IsJob2Active, IsJob3Active, IsJob4Active, IsJob5Active,
IsJob6Active,IsJob7Active,IsJob8Active,IsJob9Active,IsJob10Active:boolean;
begin
Result:=true;
if IsEmpty(EditName.Text) then
  begin
    ShowMessage('Пусте поле "Назва резюме"');
    Result:=false;
    exit;
  end;
if IsEmpty(EditOpportunity.Text) then
  begin
    ShowMessage('Пусте поле "Посада"');
    Result:=false;
    exit;
  end;
if IsEmpty(EditPlace.Text) then
  begin
    ShowMessage('Пусте поле "Місце роботи"');
    Result:=false;
    exit;
  end;
if IsEmpty(EditPhones.Text) then
  begin
    ShowMessage('Пусте поле "Телефони"');
    Result:=false;
    exit;
  end;
if IsEmpty(MemoIntro.Text) then
  begin
    ShowMessage('Пусте поле "Введення"');
    Result:=false;
    exit;
  end;
if IsEmpty(EditFooter1.Text) and not IsEmpty(MemoFooter1.Text) then
  begin
    ShowMessage('Пусте поле "Навички 1 - Назва"');
    Result:=false;
    exit;
  end;
if IsEmpty(MemoFooter1.Text) and IsEmpty(EditFooter1.Text) then
  begin
    ShowMessage('Пусте поле "Навички 1 - Текст"');
    Result:=false;
    exit;
  end;
if (length(Trim(EditFooter2.Text))=0) and (length(Trim(MemoFooter2.Text))>0) then
  begin
    ShowMessage('Пусте поле "Навички 2 - Назва"');
    Result:=false;
    exit;
  end;
if (length(Trim(MemoFooter2.Text))=0) and (length(Trim(EditFooter2.Text))>0)  then
  begin
    ShowMessage('Пусте поле "Навички 2 - Текст"');
    Result:=false;
    exit;
  end;
if (length(Trim(EditFooter3.Text))=0) and (length(Trim(MemoFooter3.Text))>0) then
  begin
    ShowMessage('Пусте поле "Навички 3 - Назва"');
    Result:=false;
    exit;
  end;
if (length(Trim(MemoFooter3.Text))=0) and (length(Trim(EditFooter3.Text))>0)  then
  begin
    ShowMessage('Пусте поле "Навички 3 - Текст"');
    Result:=false;
    exit;
  end;
if (length(Trim(EditFooter4.Text))=0) and (length(Trim(MemoFooter4.Text))>0) then
  begin
    ShowMessage('Пусте поле "Навички 4 - Назва"');
    Result:=false;
    exit;
  end;
if (length(Trim(MemoFooter4.Text))=0) and (length(Trim(EditFooter4.Text))>0)  then
  begin
    ShowMessage('Пусте поле "Навички 4 - Текст"');
    Result:=false;
    exit;
  end;
///////
IsJob1Active:= not (isEmpty(Edit1Dates.Text) or isEmpty(Edit1JobName.Text) or IsEmpty(Edit1Company.Text) or IsEmpty(Memo1JobResp.Text) or IsEmpty(Edit1Skills.Text) );

if (IsJob1Active and isEmpty(Edit1Dates.Text))
  then
  begin
    ShowMessage('Пусте поле "Дата робота 1"');
    Result:=false;
    exit;
  end;

if (IsJob1Active and isEmpty(Edit1JobName.Text))
  then
  begin
    ShowMessage('Пусте поле "Назва робота 1"');
    Result:=false;
    exit;
  end;
if (IsJob1Active and isEmpty(Edit1Company.Text))
then
  begin
    ShowMessage('Пусте поле "Компанія робота 1"');
    Result:=false;
    exit;
  end;
if (IsJob1Active and isEmpty(Memo1JobResp.Text))
then
  begin
    ShowMessage('Пусте поле "Обов`язки робота 1"');
    Result:=false;
    exit;
  end;
if (IsJob1Active and isEmpty(Edit1Skills.Text))
then
  begin
    ShowMessage('Пусте поле Скіли робота 1"');
    Result:=false;
    exit;
  end;

///////
IsJob2Active:= not (isEmpty(Edit2Dates.Text) or isEmpty(Edit2JobName.Text) or IsEmpty(Edit2Company.Text) or IsEmpty(Memo2JobResp.Text) or IsEmpty(Edit2Skills.Text) );
if (IsJob2Active and isEmpty(Edit2Dates.Text))
  then
  begin
    ShowMessage('Пусте поле "Дата робота 2"');
    Result:=false;
    exit;
  end;

if (IsJob2Active and isEmpty(Edit2JobName.Text))
  then
  begin
    ShowMessage('Пусте поле "Назва робота 2"');
    Result:=false;
    exit;
  end;
if (IsJob2Active and isEmpty(Edit2Company.Text))
then
  begin
    ShowMessage('Пусте поле "Компанія робота 2"');
    Result:=false;
    exit;
  end;
if (IsJob2Active and isEmpty(Memo2JobResp.Text))
then
  begin
    ShowMessage('Пусте поле "Обов`язки робота 2"');
    Result:=false;
    exit;
  end;
if (IsJob2Active and isEmpty(Edit2Skills.Text))
then
  begin
    ShowMessage('Пусте поле Скіли робота 2"');
    Result:=false;
    exit;
  end;
///////
IsJob3Active:= not (isEmpty(Edit3Dates.Text) or isEmpty(Edit3JobName.Text) or IsEmpty(Edit3Company.Text) or IsEmpty(Memo3JobResp.Text) or IsEmpty(Edit3Skills.Text) );
if (IsJob3Active and isEmpty(Edit3Dates.Text))
  then
  begin
    ShowMessage('Пусте поле "Дата робота 3"');
    Result:=false;
    exit;
  end;

if (IsJob3Active and isEmpty(Edit3JobName.Text))
  then
  begin
    ShowMessage('Пусте поле "Назва робота 3"');
    Result:=false;
    exit;
  end;
if (IsJob3Active and isEmpty(Edit3Company.Text))
then
  begin
    ShowMessage('Пусте поле "Компанія робота 3"');
    Result:=false;
    exit;
  end;
if (IsJob3Active and isEmpty(Memo3JobResp.Text))
then
  begin
    ShowMessage('Пусте поле "Обов`язки робота 3"');
    Result:=false;
    exit;
  end;
if (IsJob3Active and isEmpty(Edit3Skills.Text))
then
  begin
    ShowMessage('Пусте поле Скіли робота 3"');
    Result:=false;
    exit;
  end;
///////
IsJob4Active:= not (isEmpty(Edit4Dates.Text) or isEmpty(Edit4JobName.Text) or IsEmpty(Edit4Company.Text) or IsEmpty(Memo4JobResp.Text) or IsEmpty(Edit4Skills.Text) );
if (IsJob4Active and isEmpty(Edit4Dates.Text))
  then
  begin
    ShowMessage('Пусте поле "Дата робота 4"');
    Result:=false;
    exit;
  end;

if (IsJob4Active and isEmpty(Edit4JobName.Text))
  then
  begin
    ShowMessage('Пусте поле "Назва робота 4"');
    Result:=false;
    exit;
  end;
if (IsJob4Active and isEmpty(Edit4Company.Text))
then
  begin
    ShowMessage('Пусте поле "Компанія робота 4"');
    Result:=false;
    exit;
  end;
if (IsJob4Active and isEmpty(Memo4JobResp.Text))
then
  begin
    ShowMessage('Пусте поле "Обов`язки робота 4"');
    Result:=false;
    exit;
  end;
if (IsJob4Active and isEmpty(Edit4Skills.Text))
then
  begin
    ShowMessage('Пусте поле Скіли робота 4"');
    Result:=false;
    exit;
  end;
///////
IsJob5Active:= not (isEmpty(Edit5Dates.Text) or isEmpty(Edit5JobName.Text) or IsEmpty(Edit5Company.Text) or IsEmpty(Memo5JobResp.Text) or IsEmpty(Edit5Skills.Text) );
if (IsJob5Active and isEmpty(Edit5Dates.Text))
  then
  begin
    ShowMessage('Пусте поле "Дата робота 5"');
    Result:=false;
    exit;
  end;

if (IsJob5Active and isEmpty(Edit5JobName.Text))
  then
  begin
    ShowMessage('Пусте поле "Назва робота 5"');
    Result:=false;
    exit;
  end;
if (IsJob5Active and isEmpty(Edit5Company.Text))
then
  begin
    ShowMessage('Пусте поле "Компанія робота 5"');
    Result:=false;
    exit;
  end;
if (IsJob5Active and isEmpty(Memo5JobResp.Text))
then
  begin
    ShowMessage('Пусте поле "Обов`язки робота 5"');
    Result:=false;
    exit;
  end;
if (IsJob5Active and isEmpty(Edit5Skills.Text))
then
  begin
    ShowMessage('Пусте поле Скіли робота 5"');
    Result:=false;
    exit;
  end;
///////
IsJob6Active:= not (isEmpty(Edit6Dates.Text) or isEmpty(Edit6JobName.Text) or IsEmpty(Edit6Company.Text) or IsEmpty(Memo6JobResp.Text) or IsEmpty(Edit6Skills.Text) );
if (IsJob6Active and isEmpty(Edit6Dates.Text))
  then
  begin
    ShowMessage('Пусте поле "Дата робота 6"');
    Result:=false;
    exit;
  end;

if (IsJob6Active and isEmpty(Edit6JobName.Text))
  then
  begin
    ShowMessage('Пусте поле "Назва робота 6"');
    Result:=false;
    exit;
  end;
if (IsJob6Active and isEmpty(Edit6Company.Text))
then
  begin
    ShowMessage('Пусте поле "Компанія робота 6"');
    Result:=false;
    exit;
  end;
if (IsJob6Active and isEmpty(Memo6JobResp.Text))
then
  begin
    ShowMessage('Пусте поле "Обов`язки робота 6"');
    Result:=false;
    exit;
  end;
if (IsJob6Active and isEmpty(Edit6Skills.Text))
then
  begin
    ShowMessage('Пусте поле Скіли робота 6"');
    Result:=false;
    exit;
  end;
///////
IsJob7Active:= not (isEmpty(Edit7Dates.Text) or isEmpty(Edit7JobName.Text) or IsEmpty(Edit7Company.Text) or IsEmpty(Memo7JobResp.Text) or IsEmpty(Edit7Skills.Text) );
if (IsJob7Active and isEmpty(Edit7Dates.Text))
  then
  begin
    ShowMessage('Пусте поле "Дата робота 7"');
    Result:=false;
    exit;
  end;

if (IsJob7Active and isEmpty(Edit7JobName.Text))
  then
  begin
    ShowMessage('Пусте поле "Назва робота 7"');
    Result:=false;
    exit;
  end;
if (IsJob7Active and isEmpty(Edit7Company.Text))
then
  begin
    ShowMessage('Пусте поле "Компанія робота 7"');
    Result:=false;
    exit;
  end;
if (IsJob7Active and isEmpty(Memo7JobResp.Text))
then
  begin
    ShowMessage('Пусте поле "Обов`язки робота 7"');
    Result:=false;
    exit;
  end;
if (IsJob7Active and isEmpty(Edit7Skills.Text))
then
  begin
    ShowMessage('Пусте поле Скіли робота 7"');
    Result:=false;
    exit;
  end;
///////
IsJob8Active:= not (isEmpty(Edit8Dates.Text) or isEmpty(Edit8JobName.Text) or IsEmpty(Edit8Company.Text) or IsEmpty(Memo8JobResp.Text) or IsEmpty(Edit8Skills.Text) );
if (IsJob8Active and isEmpty(Edit8Dates.Text))
  then
  begin
    ShowMessage('Пусте поле "Дата робота 8"');
    Result:=false;
    exit;
  end;

if (IsJob8Active and isEmpty(Edit8JobName.Text))
  then
  begin
    ShowMessage('Пусте поле "Назва робота 8"');
    Result:=false;
    exit;
  end;
if (IsJob8Active and isEmpty(Edit8Company.Text))
then
  begin
    ShowMessage('Пусте поле "Компанія робота 8"');
    Result:=false;
    exit;
  end;
if (IsJob8Active and isEmpty(Memo8JobResp.Text))
then
  begin
    ShowMessage('Пусте поле "Обов`язки робота 8"');
    Result:=false;
    exit;
  end;
if (IsJob8Active and isEmpty(Edit8Skills.Text))
then
  begin
    ShowMessage('Пусте поле Скіли робота 8"');
    Result:=false;
    exit;
  end;
///////
IsJob9Active:= not (isEmpty(Edit9Dates.Text) or isEmpty(Edit9JobName.Text) or IsEmpty(Edit9Company.Text) or IsEmpty(Memo9JobResp.Text) or IsEmpty(Edit9Skills.Text) );
if (IsJob9Active and isEmpty(Edit9Dates.Text))
  then
  begin
    ShowMessage('Пусте поле "Дата робота 9"');
    Result:=false;
    exit;
  end;

if (IsJob9Active and isEmpty(Edit9JobName.Text))
  then
  begin
    ShowMessage('Пусте поле "Назва робота 9"');
    Result:=false;
    exit;
  end;
if (IsJob9Active and isEmpty(Edit9Company.Text))
then
  begin
    ShowMessage('Пусте поле "Компанія робота 9"');
    Result:=false;
    exit;
  end;
if (IsJob9Active and isEmpty(Memo9JobResp.Text))
then
  begin
    ShowMessage('Пусте поле "Обов`язки робота 9"');
    Result:=false;
    exit;
  end;
if (IsJob9Active and isEmpty(Edit9Skills.Text))
then
  begin
    ShowMessage('Пусте поле Скіли робота 9"');
    Result:=false;
    exit;
  end;
///////
IsJob10Active:= not (isEmpty(Edit10Dates.Text) or isEmpty(Edit10JobName.Text) or IsEmpty(Edit10Company.Text) or IsEmpty(Memo10JobResp.Text) or IsEmpty(Edit10Skills.Text) );
if (IsJob10Active and isEmpty(Edit10Dates.Text))
  then
  begin
    ShowMessage('Пусте поле "Дата робота 10"');
    Result:=false;
    exit;
  end;

if (IsJob10Active and isEmpty(Edit10JobName.Text))
  then
  begin
    ShowMessage('Пусте поле "Назва робота 10"');
    Result:=false;
    exit;
  end;
if (IsJob10Active and isEmpty(Edit10Company.Text))
then
  begin
    ShowMessage('Пусте поле "Компанія робота 10"');
    Result:=false;
    exit;
  end;
if (IsJob10Active and isEmpty(Memo10JobResp.Text))
then
  begin
    ShowMessage('Пусте поле "Обов`язки робота 10"');
    Result:=false;
    exit;
  end;
if (IsJob10Active and isEmpty(Edit10Skills.Text))
then
  begin
    ShowMessage('Пусте поле Скіли робота 10"');
    Result:=false;
    exit;
  end;

end;

procedure TFormNewUkrainianResume.FormCreate(Sender: TObject);
begin
PageControl1.ActivePage:=TabSheetMain;
end;

procedure TFormNewUkrainianResume.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key=VK_F2 then BitBtnSave.Click;
end;

procedure TFormNewUkrainianResume.SetEmptyResume;
begin
EditName.Clear;
EditOpportunity.Clear;
EditPlace.Text:='Віддалена (за кордоном)';
EditPhones.Text:='+380 (93)1775176 (WhatsApp, Viber)';
MemoIntro.Clear;
EditLang.Text:='UA';
EditRegion.Text:='Ukraine';

EditFooter1.Text:='';
MemoFooter1.Text:='';
EditFooter2.Text:='';
MemoFooter2.Text:='';
EditFooter3.Text:='';
MemoFooter3.Text:='';
EditFooter4.Text:='';
MemoFooter4.Text:='';


Edit1Dates.Text:='';
Edit1JobName.Text:='';
Edit1Company.Text:='';
Memo1JobResp.Text:='';
Edit1Benefits.Text:='';
Edit1Skills.Text:='';
Memo1JobFooter.Text:='';

Edit2Dates.Text:='';
Edit2JobName.Text:='';
Edit2Company.Text:='';
Memo2JobResp.Text:='';
Edit2Benefits.Text:='';
Edit2Skills.Text:='';
Memo2JobFooter.Text:='';


Edit3Dates.Text:='';
Edit3JobName.Text:='';
Edit3Company.Text:='';
Memo3JobResp.Text:='';
Edit3Benefits.Text:='';
Edit3Skills.Text:='';
Memo3JobFooter.Text:='';


Edit4Dates.Text:='';
Edit4JobName.Text:='';
Edit4Company.Text:='';
Memo4JobResp.Text:='';
Edit4Benefits.Text:='';
Edit4Skills.Text:='';
Memo4JobFooter.Text:='';


Edit5Dates.Text:='';
Edit5JobName.Text:='';
Edit5Company.Text:='';
Memo5JobResp.Text:='';
Edit5Benefits.Text:='';
Edit5Skills.Text:='';
Memo5JobFooter.Text:='';


Edit6Dates.Text:='';
Edit6JobName.Text:='';
Edit6Company.Text:='';
Memo6JobResp.Text:='';
Edit6Benefits.Text:='';
Edit6Skills.Text:='';
Memo6JobFooter.Text:='';


Edit7Dates.Text:='';
Edit7JobName.Text:='';
Edit7Company.Text:='';
Memo7JobResp.Text:='';
Edit7Benefits.Text:='';
Edit7Skills.Text:='';
Memo7JobFooter.Text:='';


Edit8Dates.Text:='';
Edit8JobName.Text:='';
Edit8Company.Text:='';
Memo8JobResp.Text:='';
Edit8Benefits.Text:='';
Edit8Skills.Text:='';
Memo8JobFooter.Text:='';


Edit9Dates.Text:='';
Edit9JobName.Text:='';
Edit9Company.Text:='';
Memo9JobResp.Text:='';
Edit9Benefits.Text:='';
Edit9Skills.Text:='';
Memo9JobFooter.Text:='';


Edit10Dates.Text:='';
Edit10JobName.Text:='';
Edit10Company.Text:='';
Memo10JobResp.Text:='';
Edit10Benefits.Text:='';
Edit10Skills.Text:='';
Memo10JobFooter.Text:='';
end;

procedure TFormNewUkrainianResume.SetFormValues;
begin
EditLang.Text:='UA';
EditRegion.Text:='Ukraine';
end;

function TFormNewUkrainianResume.SetInsertValues: boolean;
begin

end;

procedure TFormNewUkrainianResume.SetValuesFromResume(resume_id:integer);
begin
if resume_id<=0 then SetEmptyResume;
if resume_id>0 then
  begin
    UniGetResume.Close;
    UniGetResume.ParamByName('p_id').AsInteger:=resume_id;
    UniGetResume.Open;
    if VarIsNull(UniGetResume['id'])
      then SetEmptyResume
    else
      begin
      if VarIsNull(UniGetResume['name'])
        then EditName.Text:=''
        else EditName.Text:=UniGetResume['name'];
      if VarIsNull(UniGetResume['job_opportunity'])
        then EditOpportunity.Text:=''
        else EditOpportunity.Text:=UniGetResume['job_opportunity'];
      if VarIsNull(UniGetResume['job_place'])
        then EditPlace.Text:=''
        else EditPlace.Text:=UniGetResume['job_place'];
      if VarIsNull(UniGetResume['phone_numbers_text'])
        then EditPhones.Text:=''
        else EditPhones.Text:=UniGetResume['phone_numbers_text'];
      if VarIsNull(UniGetResume['resume_introduction'])
        then MemoIntro.Text:=''
        else MemoIntro.Text:=UniGetResume['resume_introduction'];
      end;
  end;

end;

procedure TFormNewUkrainianResume.SetValuesFromTemplate(template_id:integer);
begin
if template_id<=0 then SetEmptyResume;
if template_id>0 then
  begin
    UniGetTemplate.Close;
    UniGetTemplate.ParamByName('p_id').AsInteger:=template_id;
    UniGetTemplate.Open;
    if VarIsNull(UniGetTemplate['id'])
      then SetEmptyResume
    else
      begin
      if VarIsNull(UniGetTemplate['name'])
        then EditName.Text:=''
        else EditName.Text:=UniGetTemplate['name'];
      if VarIsNull(UniGetTemplate['job_opportunity'])
        then EditOpportunity.Text:=''
        else EditOpportunity.Text:=UniGetTemplate['job_opportunity'];
      if VarIsNull(UniGetTemplate['job_place'])
        then EditPlace.Text:=''
        else EditPlace.Text:=UniGetTemplate['job_place'];
      if VarIsNull(UniGetTemplate['phone_numbers_text'])
        then EditPhones.Text:=''
        else EditPhones.Text:=UniGetTemplate['phone_numbers_text'];
      if VarIsNull(UniGetTemplate['resume_introduction'])
        then MemoIntro.Text:=''
        else MemoIntro.Text:=UniGetTemplate['resume_introduction'];
      end;
  end;
end;

procedure TFormNewUkrainianResume.CalendarPickerE10Change(Sender: TObject);
begin
Edit10Dates.Text:=GetFullMonthUkrByMask(CalendarPickerB10.Date)+'-'+GetFullMonthUkrByMask(CalendarPickerE10.Date);
end;

procedure TFormNewUkrainianResume.CalendarPickerE1Change(Sender: TObject);
begin
Edit1Dates.Text:=GetFullMonthUkrByMask(CalendarPickerB1.Date)+'-'+GetFullMonthUkrByMask(CalendarPickerE1.Date);
end;

procedure TFormNewUkrainianResume.CalendarPickerE2Change(Sender: TObject);
begin
Edit2Dates.Text:=GetFullMonthUkrByMask(CalendarPickerB2.Date)+'-'+GetFullMonthUkrByMask(CalendarPickerE2.Date);
end;

procedure TFormNewUkrainianResume.CalendarPickerE3Change(Sender: TObject);
begin
Edit3Dates.Text:=GetFullMonthUkrByMask(CalendarPickerB3.Date)+'-'+GetFullMonthUkrByMask(CalendarPickerE3.Date);
end;

procedure TFormNewUkrainianResume.CalendarPickerE4Change(Sender: TObject);
begin
Edit4Dates.Text:=GetFullMonthUkrByMask(CalendarPickerB4.Date)+'-'+GetFullMonthUkrByMask(CalendarPickerE4.Date);
end;

procedure TFormNewUkrainianResume.CalendarPickerE5Change(Sender: TObject);
begin
Edit5Dates.Text:=GetFullMonthUkrByMask(CalendarPickerB5.Date)+'-'+GetFullMonthUkrByMask(CalendarPickerE5.Date);
end;

procedure TFormNewUkrainianResume.CalendarPickerE6Change(Sender: TObject);
begin
Edit6Dates.Text:=GetFullMonthUkrByMask(CalendarPickerB6.Date)+'-'+GetFullMonthUkrByMask(CalendarPickerE6.Date);
end;

procedure TFormNewUkrainianResume.CalendarPickerE7Change(Sender: TObject);
begin
Edit7Dates.Text:=GetFullMonthUkrByMask(CalendarPickerB7.Date)+'-'+GetFullMonthUkrByMask(CalendarPickerE7.Date);
end;

procedure TFormNewUkrainianResume.CalendarPickerE8Change(Sender: TObject);
begin
Edit8Dates.Text:=GetFullMonthUkrByMask(CalendarPickerB8.Date)+'-'+GetFullMonthUkrByMask(CalendarPickerE8.Date);
end;

procedure TFormNewUkrainianResume.CalendarPickerE9Change(Sender: TObject);
begin
Edit9Dates.Text:=GetFullMonthUkrByMask(CalendarPickerB9.Date)+'-'+GetFullMonthUkrByMask(CalendarPickerE9.Date);
end;

end.
