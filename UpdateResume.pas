unit UpdateResume;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, MemDS, DBAccess, Uni,
  Vcl.WinXCalendars, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Buttons;

type
  TFormUpdateResume = class(TForm)
    BitBtnClose: TBitBtn;
    BitBtnSave: TBitBtn;
    UniUpdateResume: TUniQuery;
    UniGetResume: TUniQuery;
    UniGetResumeid: TIntegerField;
    UniGetResumename: TStringField;
    UniGetResumelang: TStringField;
    UniGetResumejob_opportunity: TStringField;
    UniGetResumejob_place: TStringField;
    UniGetResumephone_numbers_text: TStringField;
    UniGetResumecv_docx_url: TStringField;
    UniGetResumecv_pdf_url: TStringField;
    UniGetResumeresume_introduction: TStringField;
    UniGetResumecreated: TDateTimeField;
    UniGetResumeupdated: TDateTimeField;
    UniGetResumeregion: TStringField;
    UniLang: TUniQuery;
    UniRegion: TUniQuery;
    PageControlRU: TPageControl;
    TabSheetMainRU: TTabSheet;
    Label121: TLabel;
    Label122: TLabel;
    Label123: TLabel;
    Label124: TLabel;
    Label125: TLabel;
    Label126: TLabel;
    Label127: TLabel;
    LabelTemplateID: TLabel;
    EditName: TEdit;
    EditOpportunity: TEdit;
    EditPlace: TEdit;
    EditPhones: TEdit;
    MemoIntro: TMemo;
    TabSheetFooterRU: TTabSheet;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
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
    CBLang: TComboBox;
    CBRegion: TComboBox;
    UniLanglang: TStringField;
    UniLanglanguage: TStringField;
    UniLangorderby: TIntegerField;
    UniRegionid: TStringField;
    UniRegionregion_name: TStringField;
    UniRegiondate_mask: TStringField;
    UniRegionorderby: TIntegerField;
    procedure BitBtnCloseClick(Sender: TObject);
    procedure BitBtnSaveClick(Sender: TObject);
  private
    FResumeID:integer;
    procedure SetEmptyResume;
  public
    procedure SetID(FromResumeID: integer);
    procedure SetFormValues;
  end;

var
  FormUpdateResume: TFormUpdateResume;

implementation

{$R *.dfm}

uses MainForm;

procedure TFormUpdateResume.BitBtnCloseClick(Sender: TObject);
begin
Close;
end;

procedure TFormUpdateResume.SetEmptyResume;
begin
EditName.Clear;
EditOpportunity.Clear;
EditPlace.Clear;
EditPhones.Clear;
MemoIntro.Clear;
CBLang.Text:='UA';
CBRegion.Text:='Ukraine';
end;


procedure TFormUpdateResume.SetFormValues;
begin
CBLang.Clear;
UniLang.Close;
UniLang.Open;
while not UniLang.EOF do
  begin
    CBLang.Items.Add(UniLang['lang']);
    UniLang.Next;
  end;
CBLang.Text:='UA';
CBRegion.Clear;
UniRegion.Close;
UniRegion.Open;
while not UniRegion.EOF do
  begin
    CBRegion.Items.Add(UniRegion['ID']);
    UniRegion.Next;
  end;
CBRegion.Text:='UA';
end;

procedure TFormUpdateResume.BitBtnSaveClick(Sender: TObject);
begin
if length(Trim(EditName.Text))=0 then
  begin
    ShowMessage('Имя не указано');
    exit;
  end;
if length(Trim(EditOpportunity.Text))=0 then
  begin
    ShowMessage('Должность не указана');
    exit;
  end;
if length(Trim(EditPlace.Text))=0 then
  begin
    ShowMessage('Адрес не указан');
    exit;
  end;
if length(Trim(EditPhones.Text))=0 then
  begin
    ShowMessage('Телефон не указан');
    exit;
  end;
if length(Trim(MemoIntro.Text))=0 then
  begin
    ShowMessage('Введение не указано');
    exit;
  end;
UniUpdateResume.Close;
UniUpdateResume.Prepare;
UniUpdateResume.ParamByName('p_id').AsInteger:=FResumeID;
UniUpdateResume.ParamByName('p_name').AsString:=EditName.Text;
UniUpdateResume.ParamByName('p_template_id').AsInteger:=null;
UniUpdateResume.ParamByName('p_lang').AsString:=CBLang.Text;
UniUpdateResume.ParamByName('p_job_opportunity').AsString:=EditOpportunity.Text;
UniUpdateResume.ParamByName('p_job_place').AsString:=EditPlace.Text;
UniUpdateResume.ParamByName('p_cv_docx_url').AsString:=null;
UniUpdateResume.ParamByName('p_cv_pdf_url').AsString:=null;
UniUpdateResume.ParamByName('p_phone_numbers_text').AsString:=EditPhones.Text;
UniUpdateResume.ParamByName('p_resume_introduction').AsString:=MemoIntro.Text;
UniUpdateResume.ExecSQL;
end;

procedure TFormUpdateResume.SetID(FromResumeID:integer);
begin
UniGetResume.Close;
UniGetResume.ParamByName('p_id').AsInteger:=FromResumeID;
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
end.
