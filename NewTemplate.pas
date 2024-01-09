unit NewTemplate;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.WinXCalendars, Vcl.DBCtrls, Vcl.ComCtrls, Data.DB, MemDS, DBAccess, Uni;

type
  TFormNewTemplate = class(TForm)
    BitBtnClose: TBitBtn;
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
    BitBtnSave: TBitBtn;
    UniInsertTemplate: TUniQuery;
    procedure BitBtnCloseClick(Sender: TObject);
    procedure BitBtnSaveClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure SetFormValues;
  end;

var
  FormNewTemplate: TFormNewTemplate;

implementation

{$R *.dfm}

procedure TFormNewTemplate.BitBtnCloseClick(Sender: TObject);
begin
Close;
end;

procedure TFormNewTemplate.BitBtnSaveClick(Sender: TObject);
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
UniInsertTemplate.Close;
UniInsertTemplate.Prepare;
UniInsertTemplate.ParamByName('p_name').AsString:=EditName.Text;
UniInsertTemplate.ParamByName('p_job_opportunity').AsString:=EditOpportunity.Text;
UniInsertTemplate.ParamByName('p_job_place').AsString:=EditPlace.Text;
UniInsertTemplate.ParamByName('p_phone_numbers_text').AsString:=EditPhones.Text;
UniInsertTemplate.ParamByName('p_resume_introduction').AsString:=MemoIntro.Text;
UniInsertTemplate.ExecSQL;
end;

procedure TFormNewTemplate.SetFormValues;
begin
//
end;

end.
