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
    PageControlUA: TPageControl;
    TabSheetMain: TTabSheet;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    EditNameUA: TEdit;
    EditOpportunityUA: TEdit;
    EditPlaceUA: TEdit;
    EditPhonesUA: TEdit;
    MemoIntroUA: TMemo;
    Memo1: TMemo;
    StaticText1: TStaticText;
    TabSheetJob1: TTabSheet;
    Edit1DatesUA: TEdit;
    Edit1NameUA: TEdit;
    Edit1CompanyUA: TEdit;
    CalendarPickerB1: TCalendarPicker;
    CalendarPickerE1: TCalendarPicker;
    Memo1RespUA: TMemo;
    Edit1BenefitsUA: TEdit;
    Edit1SkillsUA: TEdit;
    Memo1Footer: TMemo;
    TabSheetJob2: TTabSheet;
    Edit2DatesUA: TEdit;
    Edit2NameUA: TEdit;
    Edit2CompanyUA: TEdit;
    CalendarPickerB2: TCalendarPicker;
    CalendarPickerE2: TCalendarPicker;
    Memo2RespUA: TMemo;
    Edit2BenefitsUA: TEdit;
    Edit2BottomUA: TEdit;
    Memo2SkillsUA: TMemo;
    TabSheetJob3: TTabSheet;
    Edit3DatesUA: TEdit;
    Edit3NameUA: TEdit;
    Edit3CompanyUA: TEdit;
    CalendarPickerB3: TCalendarPicker;
    CalendarPickerE3: TCalendarPicker;
    Memo3RespUA: TMemo;
    Edit3Benefits: TEdit;
    Edit3Skills: TEdit;
    Memo3FooterUA: TMemo;
    TabSheetJob4: TTabSheet;
    Edit4DatesUA: TEdit;
    Edit4NameUA: TEdit;
    Edit4CompanyUA: TEdit;
    CalendarPickerB4: TCalendarPicker;
    CalendarPickerE4: TCalendarPicker;
    Memo4RespUA: TMemo;
    Edit4BenefitsUA: TEdit;
    Edit4SkillsUA: TEdit;
    Memo4FooterUA: TMemo;
    TabSheetJob5: TTabSheet;
    Edit5DatesUA: TEdit;
    Edit5NameUA: TEdit;
    Edit5CompanyUA: TEdit;
    CalendarPickerB5: TCalendarPicker;
    CalendarPickerE5: TCalendarPicker;
    Memo5Resp: TMemo;
    Edit5BenefitsUA: TEdit;
    Edit5SkillsUA: TEdit;
    Memo5FooterUA: TMemo;
    TabSheetJob6: TTabSheet;
    Memo6RespUA: TMemo;
    Edit6BenefitsUA: TEdit;
    Edit6SkillsUA: TEdit;
    Edit6DatesUA: TEdit;
    Edit6NameUA: TEdit;
    Edit6CompanyUA: TEdit;
    CalendarPickerB6: TCalendarPicker;
    CalendarPickerE6: TCalendarPicker;
    Memo6FooterUA: TMemo;
    TabSheetJob7: TTabSheet;
    Memo7RespUA: TMemo;
    Edit7BenefitsUA: TEdit;
    Edit7SkillsUA: TEdit;
    CalendarPickerB7: TCalendarPicker;
    CalendarPickerE7: TCalendarPicker;
    Edit7DatesUA: TEdit;
    Edit7NameUA: TEdit;
    Edit7CompanyUA: TEdit;
    Memo7FooterUA: TMemo;
    TabSheetJob8: TTabSheet;
    Memo8Resp: TMemo;
    Edit8BenefitsUA: TEdit;
    Edit8SkillsUA: TEdit;
    CalendarPickerB8: TCalendarPicker;
    CalendarPickerE8: TCalendarPicker;
    Edit8DatesUA: TEdit;
    Edit8NameUA: TEdit;
    Edit8CompanyUA: TEdit;
    Memo8FooterUA: TMemo;
    TabSheetJob9: TTabSheet;
    Memo9RespUA: TMemo;
    Edit9BenefitsUA: TEdit;
    Edit9SkillsUA: TEdit;
    Edit9DatesUA: TEdit;
    CalendarPickerB9: TCalendarPicker;
    CalendarPickerE9: TCalendarPicker;
    Edit9NameUA: TEdit;
    Edit9CompanyUA: TEdit;
    Memo9FooterUA: TMemo;
    TabSheet10: TTabSheet;
    Memo10RespUA: TMemo;
    Edit10BenefitsUA: TEdit;
    Edit10SkillsUA: TEdit;
    CalendarPickerB10: TCalendarPicker;
    CalendarPickerE10: TCalendarPicker;
    Edit10DatesUA: TEdit;
    Edit10NameUA: TEdit;
    Edit10CompanyUA: TEdit;
    Memo10FooterUA: TMemo;
    UniUpdateTranslation: TUniQuery;
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
    CBLangUA: TComboBox;
    CBRegionUA: TComboBox;
    UniLang: TUniQuery;
    UniLanglang: TStringField;
    UniLanglanguage: TStringField;
    UniLangorderby: TIntegerField;
    UniLangcreated: TDateTimeField;
    UniLangupdated: TDateTimeField;
    UniRegion: TUniQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    IntegerField1: TIntegerField;
    DateTimeField1: TDateTimeField;
    DateTimeField2: TDateTimeField;
    TabSheet1: TTabSheet;
    StaticText2: TStaticText;
    EditArticle1RU: TEdit;
    MemoArticle1RU: TMemo;
    Label1: TLabel;
    EditArticle2RU: TEdit;
    MemoArticle2RU: TMemo;
    Label2: TLabel;
    EditArticle3RU: TEdit;
    MemoArticle3RU: TMemo;
    Label3: TLabel;
    EditArticle4RU: TEdit;
    MemoArticle4RU: TMemo;
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

procedure TFormUpdateResume.BitBtnCloseClick(Sender: TObject);
begin
Close;
end;

procedure TFormUpdateResume.SetEmptyResume;
begin
EditNameUA.Clear;
EditOpportunityUA.Clear;
EditPlaceUA.Clear;
EditPhonesUA.Clear;
MemoIntroUA.Clear;
CBLangUA.Text:='UA';
CBRegionUA.Text:='Украина';
end;


procedure TFormUpdateResume.SetFormValues;
begin
CBLangUA.Clear;
UniLang.Close;
UniLang.Open;
while not UniLang.EOF do
  begin
    CBLangUA.Items.Add(UniLang['lang']);
    UniLang.Next;
  end;
CBLangUA.Text:='UA';
CBRegionUA.Clear;
UniRegion.Close;
UniRegion.Open;
while not UniRegion.EOF do
  begin
    CBRegionUA.Items.Add(UniRegion['lang']);
    UniRegion.Next;
  end;
CBRegionUA.Text:='UA';
end;

procedure TFormUpdateResume.BitBtnSaveClick(Sender: TObject);
begin
if length(Trim(EditNameUA.Text))=0 then
  begin
    ShowMessage('Имя не указано');
    exit;
  end;
if length(Trim(EditOpportunityUA.Text))=0 then
  begin
    ShowMessage('Должность не указана');
    exit;
  end;
if length(Trim(EditPlaceUA.Text))=0 then
  begin
    ShowMessage('Адрес не указан');
    exit;
  end;
if length(Trim(EditPhonesUA.Text))=0 then
  begin
    ShowMessage('Телефон не указан');
    exit;
  end;
if length(Trim(MemoIntroUA.Text))=0 then
  begin
    ShowMessage('Введение не указано');
    exit;
  end;
UniUpdateTranslation.Close;
UniUpdateTranslation.Prepare;
UniUpdateTranslation.ParamByName('p_id').AsInteger:=FResumeID;
UniUpdateTranslation.ParamByName('p_name').AsString:=EditNameUA.Text;
UniUpdateTranslation.ParamByName('p_template_id').AsInteger:=null;
UniUpdateTranslation.ParamByName('p_lang').AsString:=CBLangUA.Text;
UniUpdateTranslation.ParamByName('p_job_opportunity').AsString:=EditOpportunityUA.Text;
UniUpdateTranslation.ParamByName('p_job_place').AsString:=EditPlaceUA.Text;
UniUpdateTranslation.ParamByName('p_cv_docx_url').AsString:=null;
UniUpdateTranslation.ParamByName('p_cv_pdf_url').AsString:=null;
UniUpdateTranslation.ParamByName('p_phone_numbers_text').AsString:=EditPhonesUA.Text;
UniUpdateTranslation.ParamByName('p_resume_introduction').AsString:=MemoIntroUA.Text;
UniUpdateTranslation.ExecSQL;
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
end;
end.
