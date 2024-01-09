unit NewResume;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Data.DB,
  MemDS, DBAccess, Uni;

type
  TFormNewResume = class(TForm)
    BitBtnClose: TBitBtn;
    BitBtnSave: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    EditOpportunity: TEdit;
    Label3: TLabel;
    EditPlace: TEdit;
    Label4: TLabel;
    EditPhones: TEdit;
    Label5: TLabel;
    MemoIntro: TMemo;
    UniInsertResume: TUniQuery;
    EditName: TEdit;
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
    UniGetResumetemplate_id: TIntegerField;
    UniGetResumelang: TStringField;
    UniGetResumejob_opportunity: TStringField;
    UniGetResumejob_place: TStringField;
    UniGetResumephone_numbers_text: TStringField;
    UniGetResumecv_docx_url: TStringField;
    UniGetResumecv_pdf_url: TStringField;
    UniGetResumeresume_introduction: TStringField;
    UniGetResumecreated: TDateTimeField;
    UniGetResumeupdated: TDateTimeField;
    Label14: TLabel;
    Label6: TLabel;
    EditLang: TEdit;
    EditRegion: TEdit;
    procedure BitBtnCloseClick(Sender: TObject);
    procedure BitBtnSaveClick(Sender: TObject);
  private
    procedure SetValuesFromResume(resume_id: integer);
    procedure SetValuesFromTemplate(template_id: integer);
    { Private declarations }
  public
    procedure SetEmptyResume;
    procedure SetFormValues;
  end;

var
  FormNewResume: TFormNewResume;

implementation

{$R *.dfm}

{ TFormNewResume }

procedure TFormNewResume.BitBtnCloseClick(Sender: TObject);
begin
Close;
end;

procedure TFormNewResume.BitBtnSaveClick(Sender: TObject);
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
UniInsertResume.Close;
UniInsertResume.Prepare;
UniInsertResume.ParamByName('p_name').AsString:=EditName.Text;
UniInsertResume.ParamByName('p_job_opportunity').AsString:=EditOpportunity.Text;
UniInsertResume.ParamByName('p_job_place').AsString:=EditPlace.Text;
UniInsertResume.ParamByName('p_phone_numbers_text').AsString:=EditPhones.Text;
UniInsertResume.ParamByName('p_resume_introduction').AsString:=MemoIntro.Text;
UniInsertResume.ExecSQL;
end;

procedure TFormNewResume.SetEmptyResume;
begin
  EditName.Clear;
  EditOpportunity.Clear;
  EditPlace.Clear;
  EditPhones.Clear;
  MemoIntro.Clear;
  EditLang.Text:='RU';
  EditRegion.Text:='Украина';
end;

procedure TFormNewResume.SetFormValues;
begin
//
end;

procedure TFormNewResume.SetValuesFromResume(resume_id:integer);
begin
if resume_id<=0 then SetEmptyResume;
if resume_id>0 then
  begin
    UniGetResume.Close;
    UniGetResume.ParamByName('p_id').AsInteger:=resume_id;
    UniGetResume.Open;
    if VarIsNull(UniGetResume['id']) then
      begin
      EditName.Text:=UniGetResume['name'];
      EditOpportunity.Text:=UniGetResume['job_opportunity'];
      EditPlace.Text:=UniGetResume['job_place'];
      EditPhones.Text:=UniGetResume['phone_number_text'];
      MemoIntro.Text:=UniGetResume['resume_introduction'];
      end
      else SetEmptyResume;
  end;

end;

procedure TFormNewResume.SetValuesFromTemplate(template_id:integer);
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
      EditName.Text:=UniGetTemplate['name'];
      EditOpportunity.Text:=UniGetTemplate['job_opportunity'];
      EditPlace.Text:=UniGetTemplate['job_place'];
      EditPhones.Text:=UniGetTemplate['phone_number_text'];
      MemoIntro.Text:=UniGetTemplate['resume_introduction'];
      end;
  end;
end;

end.
