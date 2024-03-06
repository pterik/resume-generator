unit Parameters;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, MemDS, DBAccess, Uni,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids;

type
  TFormParameters = class(TForm)
    UniQueryParameters: TUniQuery;
    EditRecommend: TEdit;
    BitBtnClose: TBitBtn;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    EditEnglishTest: TEdit;
    Label1: TLabel;
    Edit_main_folder_LAPTOP_PTERIK: TEdit;
    Edit_main_folder_VESTA: TEdit;
    Edit_main_folder: TEdit;
    Label6: TLabel;
    Edit_telephone_usa: TEdit;
    Label7: TLabel;
    Edit_telephone_ukrainian: TEdit;
    Label8: TLabel;
    Edit_telephone_croatian: TEdit;
    Label9: TLabel;
    Edit_Telephone_english: TEdit;
    Label10: TLabel;
    EditEmail: TEdit;
    Label11: TLabel;
    EditFullname: TEdit;
    Label12: TLabel;
    EditWebsite: TEdit;
    Label13: TLabel;
    StaticText2: TStaticText;
    Label2: TLabel;
    Label3: TLabel;
    procedure BitBtnCloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    Recommendationlink, EnglishTest, Website, FullName, Email, telephone_english, telephone_croatian,
    telephone_ukrainian, telephone_usa, main_folder, main_folder_LAPTOP_PTERIK, main_folder_VESTA:string;
    procedure SetFormValues;
  end;

var
  FormParameters: TFormParameters;

implementation

{$R *.dfm}

{ TFormParameters }

function ComputerName: string;
var
  Size: Cardinal;
begin
  Size := MAX_COMPUTERNAME_LENGTH + 1;
  SetLength(Result, Size);
  GetComputerName(PChar(Result), Size);
  // Урезаем строку до действительной длины имени компьютера
  SetLength(Result, Size);
end;

procedure TFormParameters.BitBtnCloseClick(Sender: TObject);
begin
Close;
end;

procedure TFormParameters.SetFormValues;
begin
UniqueryParameters.Close;
UniqueryParameters.Open;
Website:='https://data-migration.club/CV/';
Recommendationlink:=Website+'Letter-of-recommendation.pdf';
EnglishTest:='english-test.jpg';
FullName:='Vitalii Makhaiev';
Email:='vitaly.makhaev@gmail.com';
Telephone_english:='+(44) 204 577 29 76';
Telephone_croatian:='+(385) 998 511 378';
Telephone_ukrainian:='+(380) 93 177 51 76 Viber, Whatsapp';
Telephone_usa:='+(1) 929 437 67 86';
while not UniqueryParameters.Eof do
  begin
    if UniqueryParameters['name']='website' then Website:=UniqueryParameters['value'];
    if UniqueryParameters['name']='recommendation' then Recommendationlink:=Website+UniqueryParameters['value'];
    if UniqueryParameters['name']='english_test' then EnglishTest:=Website+UniqueryParameters['value'];
    if UniqueryParameters['name']='fullname' then FullName:=UniqueryParameters['value'];
    if UniqueryParameters['name']='email' then Email:=UniqueryParameters['value'];
    if UniqueryParameters['name']='telephone_english' then telephone_english:=UniqueryParameters['value'];
    if UniqueryParameters['name']='telephone_croatian' then telephone_croatian:=UniqueryParameters['value'];
    if UniqueryParameters['name']='telephone_ukrainian' then telephone_ukrainian:=UniqueryParameters['value'];
    if UniqueryParameters['name']='telephone_usa' then telephone_usa:=UniqueryParameters['value'];
    if UniqueryParameters['name']='main_folder' then main_folder:=UniqueryParameters['value'];
    if UniqueryParameters['name']='main_folder_VESTA' then main_folder_VESTA:=UniqueryParameters['value'];
    if UniqueryParameters['name']='main_folder_LAPTOP-PTERIK' then main_folder_LAPTOP_PTERIK:=UniqueryParameters['value'];
    UniqueryParameters.Next;
  end;
EditRecommend.Text:=Recommendationlink;
EditEnglishTest.Text:=EnglishTest;
Edit_main_folder_LAPTOP_PTERIK.Text:=main_folder_LAPTOP_PTERIK;
Edit_main_folder_VESTA.Text:=main_folder_VESTA;

if (ComputerName()='LAPTOP-PTERIK') then main_folder:=main_folder_LAPTOP_PTERIK;
if (ComputerName()='VESTA') then main_folder:=main_folder_VESTA;
Edit_main_folder.Text:=main_folder;

Edit_telephone_usa.Text:=telephone_usa;
Edit_telephone_ukrainian.Text:=telephone_ukrainian;
Edit_telephone_croatian.Text:=telephone_croatian;
Edit_Telephone_english.Text:=telephone_english;
EditEmail.Text:=Email;
EditFullname.Text:=FullName;
EditWebsite.Text:=Website;
end;

end.
