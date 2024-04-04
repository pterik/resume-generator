unit TemplatesList;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Data.DB,
  MemDS, DBAccess, Uni, Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls;

type
  TFormTemplatesList = class(TForm)
    BitBtnClose: TBitBtn;
    UniTemplates: TUniQuery;
    UniDSTemplates: TUniDataSource;
    DBGrid1: TDBGrid;
    BitBtnNewTemplate: TBitBtn;
    BitBtnEditTemplate: TBitBtn;
    BitBtnDeleteTemplate: TBitBtn;
    BitBtnNewResume: TBitBtn;
    UniSPDeleteTemplate: TUniStoredProc;
    DBMemo1: TDBMemo;
    UniTemplatesid: TIntegerField;
    UniTemplatescntr_exp: TLargeintField;
    UniTemplatescntr_skills: TLargeintField;
    UniTemplatesname: TWideStringField;
    UniTemplatesjob_opportunity: TWideStringField;
    UniTemplatesjob_place: TWideStringField;
    UniTemplatesphone_numbers_text: TWideStringField;
    UniTemplatestemplate_introduction: TWideMemoField;
    UniTemplatesarchived: TBooleanField;
    UniTemplatescreated: TDateTimeField;
    UniTemplatesupdated: TDateTimeField;
    procedure BitBtnCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtnDeleteTemplateClick(Sender: TObject);
    procedure BitBtnNewTemplateClick(Sender: TObject);
    procedure BitBtnEditTemplateClick(Sender: TObject);
    procedure UniTemplatesCalcFields(DataSet: TDataSet);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure BitBtnNewResumeClick(Sender: TObject);
  private
  {}
  public
    procedure SetFormValues;
  end;

var
  FormTemplatesList: TFormTemplatesList;

implementation

{$R *.dfm}

uses NewTemplate, UpdateTemplate, NewResume;

procedure TFormTemplatesList.BitBtnNewResumeClick(Sender: TObject);
begin
if FormNewResume=nil then Application.CreateForm(TFormNewResume, FormNewResume);
FormNewResume.SetFormValues;
//FormNewResume.SetEmptyResume;
FormNewResume.ShowModal;
end;

procedure TFormTemplatesList.BitBtnNewTemplateClick(Sender: TObject);
begin
if FormNewTemplate=nil then Application.CreateForm(TFormNewTemplate, FormNewTemplate);
FormNewTemplate.SetFormValues;
FormNewTemplate.ShowModal;
UniTemplates.Refresh;
end;

procedure TFormTemplatesList.DBGrid1DblClick(Sender: TObject);
begin
BitBtnEditTemplate.Click();
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
UniTemplates['archive']:=UniTemplates['archived'];
if UniTemplates['archived']=0 then UniTemplates['archive']:='Ні';
if UniTemplates['archived']=1 then UniTemplates['archive']:='Так';
end;

end.
