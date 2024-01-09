unit UpdateTemplate;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, MemDS, DBAccess, Uni,
  Vcl.StdCtrls, Vcl.Buttons;

type
  TFormUpdateTemplate = class(TForm)
    UniTemplateID: TUniQuery;
    BitBtnClose: TBitBtn;
    UniTemplateIDid: TIntegerField;
    UniTemplateIDname: TStringField;
    UniTemplateIDjob_opportunity: TStringField;
    UniTemplateIDjob_place: TStringField;
    UniTemplateIDphone_numbers_text: TStringField;
    UniTemplateIDresume_introduction: TStringField;
    UniTemplateIDcreated: TDateTimeField;
    UniTemplateIDupdated: TDateTimeField;
    EditName: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    EditOpportunity: TEdit;
    Label3: TLabel;
    EditPlace: TEdit;
    Label4: TLabel;
    EditPhones: TEdit;
    MemoIntro: TMemo;
    Label5: TLabel;
    BitBtnSave: TBitBtn;
    UniUpdateTemplate: TUniQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BitBtnSaveClick(Sender: TObject);
  private
    FID:integer;
  public
    procedure SetID(id:integer);
  end;

var
  FormUpdateTemplate: TFormUpdateTemplate;

implementation

{$R *.dfm}

{ TFormUpdateTemplate }

procedure TFormUpdateTemplate.BitBtnSaveClick(Sender: TObject);
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
UniUpdateTemplate.Close;
UniUpdateTemplate.Prepare;
UniUpdateTemplate.ParamByName('p_name').AsString:=EditName.Text;
UniUpdateTemplate.ParamByName('p_job_opportunity').AsString:=EditOpportunity.Text;
UniUpdateTemplate.ParamByName('p_job_place').AsString:=EditPlace.Text;
UniUpdateTemplate.ParamByName('p_phone_numbers_text').AsString:=EditPhones.Text;
UniUpdateTemplate.ParamByName('p_resume_introduction').AsString:=MemoIntro.Text;
UniUpdateTemplate.ParamByName('p_id').AsInteger:=FID;
UniUpdateTemplate.ExecSQL;
end;

procedure TFormUpdateTemplate.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
UniTemplateID.Close;
UniUpdateTemplate.Close;
end;

procedure TFormUpdateTemplate.FormDestroy(Sender: TObject);
begin
UniTemplateID.Destroy;
UniUpdateTemplate.Destroy;
end;

procedure TFormUpdateTemplate.SetID(id: integer);
begin
Fid:=id;
UniTemplateID.Close;
UniTemplateID.ParamByName('P_ID').AsInteger:=FID;
UniTemplateID.Open;
EditName.Text:=UniTemplateID['name'];
EditOpportunity.Text:=UniTemplateID['job_opportunity'];
EditPlace.Text:=UniTemplateID['job_place'];
EditPhones.Text:=UniTemplateID['phone_numbers_text'];
MemoIntro.Text:=UniTemplateID['resume_introduction'];
end;

end.
