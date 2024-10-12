unit UpdateSkill;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.DBCtrls,
  Data.DB, DBAccess, Uni, MemDS;

type
  TFormUpdateSkill = class(TForm)
    BitBtnClose: TBitBtn;
    BitBtnSave: TBitBtn;
    EditSkill: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    UniSkillCategory: TUniQuery;
    UniDSSkillCategories: TUniDataSource;
    CBCategory: TComboBox;
    UniSPInsertSkill: TUniStoredProc;
    UniGetSkill: TUniQuery;
    UniSkillCategoryid: TIntegerField;
    UniSkillCategorycategory: TWideStringField;
    UniSkillCategorycreated: TDateTimeField;
    UniSkillCategoryupdated: TDateTimeField;
    UniGetSkillskill_id: TIntegerField;
    UniGetSkillskill: TWideStringField;
    UniGetSkillcategory_id: TIntegerField;
    UniGetSkillcategory: TWideStringField;
    UniGetSkillcreated: TDateTimeField;
    UniGetSkillupdated: TDateTimeField;
    procedure BitBtnSaveClick(Sender: TObject);
    procedure CBCategoryExit(Sender: TObject);
    procedure BitBtnCloseClick(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    FCategoryID:integer;
    FSkillID:integer;
  public
    { Public declarations }
    procedure SetFormValues;
    procedure SetID(const SkillID:integer);
  end;

var
  FormUpdateSkill: TFormUpdateSkill;

implementation

{$R *.dfm}

uses MainForm;

{ TFormUpdateSkill }

procedure TFormUpdateSkill.BitBtnCloseClick(Sender: TObject);
begin
Close;
end;

procedure TFormUpdateSkill.BitBtnSaveClick(Sender: TObject);
begin
ModalResult:=mrOK;
try
UniSPInsertSkill.Close;
UniSPInsertSkill.ParamByName('p_skill').AsString:=EditSkill.Text;
//UniSPInsertSkill.ParamByName('p_category_id').AsInteger:=FCategoryID;
UniSPInsertSkill.ParamByName('p_category').AsString:=CBCategory.Text;
UniSPInsertSkill.ExecSQL;
except on E:Exception do
  begin
    FormMain.Warning('Error message: '+E.Message);
    ModalResult:=mrNone;
  end;
end;
end;

procedure TFormUpdateSkill.CBCategoryExit(Sender: TObject);
begin
UniSkillCategory.First;
while not UniSkillCategory.Eof do
  begin
    if UniSkillCategory['category'] = CBCategory.Text then FCategoryID:=UniSkillCategory['id'];
    UniSkillCategory.Next;
  end;
end;

procedure TFormUpdateSkill.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key = VK_F2 then BitBtnSave.Click();
end;

procedure TFormUpdateSkill.SetFormValues;
begin
CBCategory.Clear;
UniSkillCategory.Close;
UniSkillCategory.Open;
while not UniSkillCategory.Eof do
  begin
    CBCategory.Items.Add(UniSkillCategory['category']);
    UniSkillCategory.Next;
  end;
end;

procedure TFormUpdateSkill.SetID(const SkillID: integer);
begin
FSkillID:=SkillID;
UniGetSkill.Close;
UniGetSkill.ParamByName('p_skill_id').AsInteger:=SkillID;
UniGetSkill.Open;
EditSkill.Text:=VarToStr(UniGetSkill['skill']);
CBCategory.Text:=VarToStr(UniGetSkill['category']);
if VarIsNull(UniGetSkill['category_id'])
  then FCategoryID:=0
  else FCategoryID:=UniGetSkill['category_id'];
end;

end.
