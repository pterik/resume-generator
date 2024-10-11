unit Skills;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Data.DB,
  MemDS, DBAccess, Uni, Vcl.Grids, Vcl.DBGrids;

type
  TFormSkills = class(TForm)
    BitBtnClose: TBitBtn;
    UniSkills: TUniQuery;
    UniDSSkills: TUniDataSource;
    DBGrid1: TDBGrid;
    BitBtnNewSkill: TBitBtn;
    BitBtnEditSkill: TBitBtn;
    BitBtnDeleteSkill: TBitBtn;
    UniSPDeleteSkills: TUniStoredProc;
    UniSkillsid: TIntegerField;
    UniSkillscategory_id: TIntegerField;
    UniSkillscreated: TDateTimeField;
    UniSkillsupdated: TDateTimeField;
    EditSearch: TEdit;
    Label1: TLabel;
    BitBtnSearch: TBitBtn;
    UniSkillsskill: TWideStringField;
    UniSkillscategory: TWideStringField;
    procedure BitBtnCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtnDeleteSkillClick(Sender: TObject);
    procedure BitBtnNewSkillClick(Sender: TObject);
    procedure BitBtnEditSkillClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure BitBtnSearchClick(Sender: TObject);
  private
    procedure UpdateSkills;
  public
    procedure SetFormValues;
  end;

var
  FormSkills: TFormSkills;

implementation

{$R *.dfm}

uses UpdateTemplate, NewSkill, UpdateSkill;

procedure TFormSkills.BitBtnNewSkillClick(Sender: TObject);
begin
if FormNewSkill=nil then Application.CreateForm(TFormNewSkill, FormNewSkill);
FormNewSkill.SetFormValues;
FormNewSkill.ShowModal;
UniSkills.Refresh;
end;

procedure TFormSkills.BitBtnSearchClick(Sender: TObject);
begin
UniSkills.Close;
UniSkills.ParamByName('p_filter').AsString:=EditSearch.Text;
UniSkills.Open;
end;

procedure TFormSkills.DBGrid1DblClick(Sender: TObject);
begin
UpdateSkills;
end;

procedure TFormSkills.BitBtnDeleteSkillClick(Sender: TObject);
begin
if not VarIsNull(UniSkills['skill_id'])
  then
    begin
    UniSPDeleteSkills.Close;
    UniSPDeleteSkills.ParamByName('p_skill_id').AsInteger:=UniSkills['skill_id'];
    UniSPDeleteSkills.ExecSQL;
    UniSkills.Refresh;
    end
  else ShowMessage('ќбер≥ть запис');
end;

procedure TFormSkills.BitBtnEditSkillClick(Sender: TObject);
begin
UpdateSkills;
end;

procedure TFormSkills.BitBtnCloseClick(Sender: TObject);
begin
Close;
end;

procedure TFormSkills.FormClose(Sender: TObject; var Action: TCloseAction);
begin
UniSkills.Close;
end;


procedure TFormSkills.SetFormValues;
begin
EditSearch.Text:='';
UniSkills.Close;
UniSkills.ParamByName('p_filter').AsString:=EditSearch.Text;
UniSkills.Open;
end;

procedure TFormSkills.UpdateSkills;
begin
if not VarIsNull(Uniskills['skill_id'])
  then
    begin
    if FormUpdateSkill=nil then Application.CreateForm(TFormUpdateSkill, FormUpdateSkill);
    FormUpdateSkill.SetFormValues;
    FormUpdateSkill.SetID(UniSkills['skill_id']);
    FormUpdateSkill.ShowModal;
    UniSkills.Refresh;
    end
  else ShowMessage('ќбер≥ть запис');
end;

end.
