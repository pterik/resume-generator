unit Templates;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Data.DB,
  MemDS, DBAccess, Uni, Vcl.Grids, Vcl.DBGrids;

type
  TFormTemplates = class(TForm)
    BitBtnClose: TBitBtn;
    UniTemplates: TUniQuery;
    UniTemplatesid: TIntegerField;
    UniTemplatesname: TStringField;
    UniTemplatesjob_opportunity: TStringField;
    UniTemplatesjob_place: TStringField;
    UniTemplatesphone_numbers_text: TStringField;
    UniTemplatesresume_introduction: TStringField;
    UniTemplatescreated: TDateTimeField;
    UniTemplatesupdated: TDateTimeField;
    UniDSTemplates: TUniDataSource;
    DBGrid1: TDBGrid;
    BitBtnNewTemplate: TBitBtn;
    BitBtnEditTemplate: TBitBtn;
    BitBtnDeleteTemplate: TBitBtn;
    UniDeleteTemplate: TUniQuery;
    BitBtnNewResume: TBitBtn;
    procedure BitBtnCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtnDeleteTemplateClick(Sender: TObject);
    procedure BitBtnNewTemplateClick(Sender: TObject);
    procedure BitBtnEditTemplateClick(Sender: TObject);
  private
    function UpdateTemplate(id:integer):boolean;
    function DeleteTemplate(id:integer):boolean;
  public
    procedure SetFormValues;
  end;

var
  FormTemplates: TFormTemplates;

implementation

{$R *.dfm}

uses NewTemplate, UpdateTemplate;

procedure TFormTemplates.BitBtnNewTemplateClick(Sender: TObject);
begin
if FormNewTemplate=nil then Application.CreateForm(TFormNewTemplate, FormNewTemplate);
FormNewTemplate.SetFormValues;
FormNewTemplate.ShowModal;
end;

procedure TFormTemplates.BitBtnDeleteTemplateClick(Sender: TObject);
begin
if not VarIsNull(Unitemplates['id'])
  then
    begin
    UniDeleteTemplate.Close;
    UniDeleteTemplate.ParamByName('p_id').AsInteger:=Unitemplates['id'];
    UniDeleteTemplate.ExecSQL;
    UniTemplates.Refresh;
    end
  else ShowMessage('Выберите запись');
end;

procedure TFormTemplates.BitBtnEditTemplateClick(Sender: TObject);
begin
if VarIsNull(Unitemplates['id']) then ShowMessage('Выберите запись')
  else
    begin
    if FormUpdateTemplate=nil then Application.CreateForm(TFormUpdateTemplate, FormUpdateTemplate);
    FormUpdateTemplate.SetID(Unitemplates['id']);
    FormUpdateTemplate.ShowModal;
    UniTemplates.Refresh;
    end;
end;

procedure TFormTemplates.BitBtnCloseClick(Sender: TObject);
begin
Close;
end;


function TFormTemplates.DeleteTemplate(id: integer): boolean;
var lid:integer;
begin
end;

procedure TFormTemplates.FormClose(Sender: TObject; var Action: TCloseAction);
begin
UniTemplates.Close;
end;

procedure TFormTemplates.SetFormValues;
begin
UniTemplates.Open;
end;

function TFormTemplates.UpdateTemplate(id: integer): boolean;
begin
//
end;

end.
