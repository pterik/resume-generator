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
    EditLangUA: TEdit;
    EditRegionUA: TEdit;
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
    Edit2SkillsUA: TEdit;
    Memo2FooterUA: TMemo;
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
    PageControlTR: TPageControl;
    TabSheet1: TTabSheet;
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
    ComboBoxRegionTR: TComboBox;
    ComboBoxLangTR: TComboBox;
    MemoFooterTR: TMemo;
    StaticText2: TStaticText;
    TabSheet3: TTabSheet;
    Edit1DatesTR: TEdit;
    Edit1NameTR: TEdit;
    Edit1CompanyTR: TEdit;
    CalendarPicker1: TCalendarPicker;
    CalendarPicker2: TCalendarPicker;
    Memo1RespTR: TMemo;
    Edit1BenefitsTR: TEdit;
    Edit1SkillsTR: TEdit;
    Memo1FooterTR: TMemo;
    TabSheet4: TTabSheet;
    Edit2DatesTR: TEdit;
    Edit2NameTR: TEdit;
    Edit2CompanyTR: TEdit;
    CalendarPicker3: TCalendarPicker;
    CalendarPicker4: TCalendarPicker;
    Memo2RespTR: TMemo;
    Edit2BenefitsTR: TEdit;
    Edit2SkillsTR: TEdit;
    Memo2FooterTR: TMemo;
    TabSheet5: TTabSheet;
    Edit3DateTR: TEdit;
    Edit3NameTR: TEdit;
    Edit3CompanyTR: TEdit;
    CalendarPicker5: TCalendarPicker;
    CalendarPicker6: TCalendarPicker;
    Memo3RespTR: TMemo;
    Edit3BenefitsTR: TEdit;
    Edit3SkillsTR: TEdit;
    Memo3FooterTR: TMemo;
    TabSheet6: TTabSheet;
    Edit4DatesTR: TEdit;
    Edit4NameTR: TEdit;
    Edit4CompanyTR: TEdit;
    CalendarPicker7: TCalendarPicker;
    CalendarPicker8: TCalendarPicker;
    Memo13: TMemo;
    Edit4BenefitsTR: TEdit;
    Edit4SkillsTR: TEdit;
    Memo4FooterTR: TMemo;
    TabSheet7: TTabSheet;
    Edit5DatesTR: TEdit;
    Edit5NameTR: TEdit;
    Edit5CompanyTR: TEdit;
    CalendarPicker9: TCalendarPicker;
    CalendarPicker10: TCalendarPicker;
    Memo15: TMemo;
    Edit5BenefitsTR: TEdit;
    Edit5SkillsTR: TEdit;
    Memo5FooterTR: TMemo;
    TabSheet8: TTabSheet;
    Memo6RespTR: TMemo;
    Edit6BenefitsTR: TEdit;
    Edit6SkillsTR: TEdit;
    Edit6DatesTR: TEdit;
    Edit6NameTR: TEdit;
    Edit6CompanyTR: TEdit;
    CalendarPicker11: TCalendarPicker;
    CalendarPicker12: TCalendarPicker;
    Memo6FooterTR: TMemo;
    TabSheet9: TTabSheet;
    Memo7RespTR: TMemo;
    Edit7BenefitsTR: TEdit;
    Edit7SkillsTR: TEdit;
    CalendarPicker13: TCalendarPicker;
    CalendarPicker14: TCalendarPicker;
    Edit7DatesTR: TEdit;
    Edit7NameTR: TEdit;
    Edit7CompanyTR: TEdit;
    Memo7FooterTR: TMemo;
    TabSheet11: TTabSheet;
    Memo8RespTR: TMemo;
    Edit8BenefitsTR: TEdit;
    Edit8SkillsTR: TEdit;
    CalendarPicker15: TCalendarPicker;
    CalendarPicker16: TCalendarPicker;
    Edit8DatesTR: TEdit;
    Edit8NameTR: TEdit;
    Edit8CompanyTR: TEdit;
    Memo8FooterTR: TMemo;
    TabSheet12: TTabSheet;
    Memo9RespTR: TMemo;
    Edit9BenefitsTR: TEdit;
    Edit9SkillsTR: TEdit;
    Edit9DatesTR: TEdit;
    CalendarPicker17: TCalendarPicker;
    CalendarPicker18: TCalendarPicker;
    Edit9NameTR: TEdit;
    Edit9CompanyTR: TEdit;
    Memo9FooterTR: TMemo;
    TabSheet13: TTabSheet;
    Memo10RespTR: TMemo;
    Edit10BenefitsTR: TEdit;
    Edit10SkillsTR: TEdit;
    CalendarPicker19: TCalendarPicker;
    CalendarPicker20: TCalendarPicker;
    Edit10DatesTR: TEdit;
    Edit10NameTR: TEdit;
    Edit10CompanyTR: TEdit;
    Memo26: TMemo;
    MemoLog: TMemo;
    UniUpdateTranslation: TUniQuery;
    UniGetTranslation: TUniQuery;
    UniGetTranslationid: TIntegerField;
    UniGetTranslationname: TStringField;
    UniGetTranslationlang: TStringField;
    UniGetTranslationjob_opportunity: TStringField;
    UniGetTranslationjob_place: TStringField;
    UniGetTranslationphone_numbers_text: TStringField;
    UniGetTranslationcv_docx_url: TStringField;
    UniGetTranslationcv_pdf_url: TStringField;
    UniGetTranslationresume_introduction: TStringField;
    UniGetTranslationcreated: TDateTimeField;
    UniGetTranslationupdated: TDateTimeField;
    UniGetTranslationregion: TStringField;
    procedure BitBtnCloseClick(Sender: TObject);
    procedure BitBtnSaveClick(Sender: TObject);
  private
    FID:integer;
    procedure SetEmptyResume;
  public
    procedure SetFormValues;
    procedure SetValuesFromResume(resume_id: integer);
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
EditNameTR.Clear;
EditOpportunityTR.Clear;
EditPlaceTR.Clear;
EditPhonesTR.Clear;
MemoIntroTR.Clear;
ComboBoxLangTR.Text:='UA';
ComboBoxRegionTR.Text:='Украина';
end;


procedure TFormUpdateResume.SetFormValues;
begin
//
end;

procedure TFormUpdateResume.BitBtnSaveClick(Sender: TObject);
begin
if length(Trim(EditNameTR.Text))=0 then
  begin
    ShowMessage('Имя не указано');
    exit;
  end;
if length(Trim(EditOpportunityTR.Text))=0 then
  begin
    ShowMessage('Должность не указана');
    exit;
  end;
if length(Trim(EditPlaceTR.Text))=0 then
  begin
    ShowMessage('Адрес не указан');
    exit;
  end;
if length(Trim(EditPhonesTR.Text))=0 then
  begin
    ShowMessage('Телефон не указан');
    exit;
  end;
if length(Trim(MemoIntroTR.Text))=0 then
  begin
    ShowMessage('Введение не указано');
    exit;
  end;
UniUpdateTranslation.Close;
UniUpdateTranslation.Prepare;
UniUpdateTranslation.ParamByName('p_id').AsInteger:=FID;
UniUpdateTranslation.ParamByName('p_name').AsString:=EditNameTR.Text;
UniUpdateTranslation.ParamByName('p_template_id').AsInteger:=null;
UniUpdateTranslation.ParamByName('p_lang').AsString:=ComboBoxLangTR.Text;
UniUpdateTranslation.ParamByName('p_job_opportunity').AsString:=EditOpportunityTR.Text;
UniUpdateTranslation.ParamByName('p_job_place').AsString:=EditPlaceTR.Text;
UniUpdateTranslation.ParamByName('p_cv_docx_url').AsString:=null;
UniUpdateTranslation.ParamByName('p_cv_pdf_url').AsString:=null;
UniUpdateTranslation.ParamByName('p_phone_numbers_text').AsString:=EditPhonesTR.Text;
UniUpdateTranslation.ParamByName('p_resume_introduction').AsString:=MemoIntroTR.Text;
UniUpdateTranslation.ExecSQL;
end;

procedure TFormUpdateResume.SetValuesFromResume(resume_id:integer);
begin
FID:=Resume_id;
if resume_id<=0 then SetEmptyResume;
if resume_id>0 then
  begin
    UniGetTranslation.Close;
    UniGetTranslation.ParamByName('p_id').AsInteger:=resume_id;
    UniGetTranslation.Open;
    if VarIsNull(UniGetTranslation['id'])
      then SetEmptyResume
    else
      begin
      if VarIsNull(UniGetTranslation['name'])
        then EditNameUA.Text:=''
        else EditNameUA.Text:=UniGetTranslation['name'];
      if VarIsNull(UniGetTranslation['job_opportunity'])
        then EditOpportunityUA.Text:=''
        else EditOpportunityUA.Text:=UniGetTranslation['job_opportunity'];
      if VarIsNull(UniGetTranslation['job_place'])
        then EditPlaceUA.Text:=''
        else EditPlaceUA.Text:=UniGetTranslation['job_place'];
      if VarIsNull(UniGetTranslation['phone_numbers_text'])
        then EditPhonesUA.Text:=''
        else EditPhonesUA.Text:=UniGetTranslation['phone_numbers_text'];
      if VarIsNull(UniGetTranslation['resume_introduction'])
        then MemoIntroUA.Text:=''
        else MemoIntroUA.Text:=UniGetTranslation['resume_introduction'];
      end;
  end;

end;
end.
