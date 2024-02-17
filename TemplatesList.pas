unit TemplatesList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Data.DB,
  MemDS, DBAccess, Uni, Vcl.Grids, Vcl.DBGrids;

type
  TFormTemplatesList = class(TForm)
    BitBtnClose: TBitBtn;
    UniTemplates: TUniQuery;
    UniTemplatesid: TIntegerField;
    UniTemplatesname: TStringField;
    UniTemplatesjob_opportunity: TStringField;
    UniTemplatesjob_place: TStringField;
    UniTemplatesphone_numbers_text: TStringField;
    UniTemplatescreated: TDateTimeField;
    UniTemplatesupdated: TDateTimeField;
    UniDSTemplates: TUniDataSource;
    DBGrid1: TDBGrid;
    BitBtnNewTemplate: TBitBtn;
    BitBtnEditTemplate: TBitBtn;
    BitBtnDeleteTemplate: TBitBtn;
    BitBtnNewResume: TBitBtn;
    UniTemplatestemplate_introduction: TStringField;
    UniTemplatesarchived: TBooleanField;
    UniTemplatesarchive: TStringField;
    UniTemplatescntr_exp: TLargeintField;
    UniTemplatescntr_skills: TLargeintField;
    UniSPDeleteTemplate: TUniStoredProc;
    procedure BitBtnCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtnDeleteTemplateClick(Sender: TObject);
    procedure BitBtnNewTemplateClick(Sender: TObject);
    procedure BitBtnEditTemplateClick(Sender: TObject);
    procedure UniTemplatesCalcFields(DataSet: TDataSet);
  private
  {}
  public
    procedure SetFormValues;
  end;

var
  FormTemplatesList: TFormTemplatesList;

implementation

{$R *.dfm}

uses NewTemplate, UpdateTemplate, NewUkrainianResume;

procedure TFormTemplatesList.BitBtnNewTemplateClick(Sender: TObject);
begin
if FormNewTemplate=nil then Application.CreateForm(TFormNewTemplate, FormNewTemplate);
FormNewTemplate.SetFormValues;
FormNewTemplate.ShowModal;
UniTemplates.Refresh;
end;

procedure TFormTemplatesList.BitBtnDeleteTemplateClick(Sender: TObject);
begin
if not VarIsNull(Unitemplates['id'])
  then
    begin
    UniSPDeleteTemplate.Close;
    UniSPDeleteTemplate.ParamByName('p_template_id').AsInteger:=Unitemplates['id'];
    UniSPDeleteTemplate.ExecSQL;
    UniTemplates.Refresh;
    end
  else ShowMessage('Выберите запись');
end;

procedure TFormTemplatesList.BitBtnEditTemplateClick(Sender: TObject);
begin
if VarIsNull(UniTemplates['id']) then ShowMessage('Выберите запись')
  else
    begin
    if FormUpdateTemplate=nil then Application.CreateForm(TFormUpdateTemplate, FormUpdateTemplate);
    FormUpdateTemplate.SetID(Unitemplates['id']);
    FormUpdateTemplate.ShowModal;
    UniTemplates.Refresh;
    end;
end;

procedure TFormTemplatesList.BitBtnCloseClick(Sender: TObject);
begin
Close;
end;

procedure TFormTemplatesList.FormClose(Sender: TObject; var Action: TCloseAction);
begin
UniTemplates.Close;
end;

procedure TFormTemplatesList.SetFormValues;
begin
UniTemplates.Open;
end;

procedure TFormTemplatesList.UniTemplatesCalcFields(DataSet: TDataSet);
begin
UniTemplates['archive']:='null';
if UniTemplates['archived']=0 then UniTemplates['archive']:='Ні';
if UniTemplates['archived']=1 then UniTemplates['archive']:='Так';
end;

end.
