unit NewSkill;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.DBCtrls,
  Data.DB, DBAccess, Uni, MemDS;

type
  TFormNewSkill = class(TForm)
    BitBtnClose: TBitBtn;
    BitBtnSave: TBitBtn;
    EditSkill: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    UniSkillCategory: TUniQuery;
    UniDSSkillCategories: TUniDataSource;
    UniSPInsertSkill: TUniStoredProc;
    CBCategory: TComboBox;
    UniSkillCategoryid: TIntegerField;
    UniSkillCategorycategory: TWideStringField;
    UniSkillCategorycreated: TDateTimeField;
    UniSkillCategoryupdated: TDateTimeField;
    procedure BitBtnSaveClick(Sender: TObject);
    procedure CBCategoryExit(Sender: TObject);
  private
    { Private declarations }
    FCategoryID:integer;
  public
    { Public declarations }
    procedure SetFormValues;
  end;

var
  FormNewSkill: TFormNewSkill;

implementation

{$R *.dfm}

uses MainForm;

procedure TFormNewSkill.BitBtnSaveClick(Sender: TObject);
begin
ModalResult:=mrOK;
try
UniSPInsertSkill.Close;
UniSPInsertSkill.ParamByName('p_skill').AsString:=EditSkill.Text;
UniSPInsertSkill.ParamByName('p_category_id').AsInteger:=FCategoryID;
UniSPInsertSkill.ExecSQL;
except on E:Exception do
  begin
    FormMain.Warning('Error message: '+E.Message);
    ModalResult:=mrNone;
  end;
end;
end;

procedure TFormNewSkill.CBCategoryExit(Sender: TObject);
begin
FCategoryID:=0;
while not UniSkillCategory.Eof do
  begin
    if UniSkillCategory['category'] = CBCategory.Text then FCategoryID:=UniSkillCategory['category'];
    UniSkillCategory.Next;
  end;
end;

procedure TFormNewSkill.SetFormValues;
begin
EditSkill.Text:='';
CBCategory.Clear;
UniSkillCategory.Close;
UniSkillCategory.Open;
CBCategory.Text:=UniSkillCategory['category'];
FCategoryID:=UniSkillCategory['id'];
while not UniSkillCategory.Eof do
  begin
    CBCategory.Items.Add(UniSkillCategory['category']);
    UniSkillCategory.Next;
  end;
end;

end.
