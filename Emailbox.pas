unit Emailbox;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, MemDS, DBAccess, Uni;

const
EMail='admin@data-migration.club';
Password='Pterik1maxa';

type
  TFormEmails = class(TForm)
    Label4: TLabel;
    EditTag: TEdit;
    BitBtnInsertTag: TBitBtn;
    BitBtnDeleteTag: TBitBtn;
    DBGridTags: TDBGrid;
    Label6: TLabel;
    EditEmail: TEdit;
    BitBtnInsertEmail: TBitBtn;
    BitBtnDeleteEmail: TBitBtn;
    CheckBoxMailcheck: TCheckBox;
    DBGridEmails: TDBGrid;
    MemoText: TMemo;
    BitBtnClose: TBitBtn;
    BitBtnOpenMailbox: TBitBtn;
    DataSourceEmails: TDataSource;
    UniInsertEmail: TUniQuery;
    UniTableEmails: TUniTable;
    UniTableEmailsid: TIntegerField;
    UniTableEmailssender: TStringField;
    UniTableEmailsreceiver: TStringField;
    UniTableEmailsother_receivers: TStringField;
    UniTableEmailssubject: TStringField;
    UniTableEmailsbody: TMemoField;
    UniTableEmailsimap_keyid: TStringField;
    UniTableEmailsattachment_size: TIntegerField;
    UniTableEmailsarchived: TBooleanField;
    UniTableEmailsmailbox_received: TBooleanField;
    UniTableEmailsdb_received: TBooleanField;
    UniTableEmailscreated: TDateTimeField;
    UniTableEmailsupdated: TDateTimeField;
    UniOneEmail: TUniQuery;
    DataSourceTags: TDataSource;
    UniTableTags: TUniTable;
    UniOneTag: TUniQuery;
    UniInsertTag: TUniQuery;
    BitBtnKeyword: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtnSend: TBitBtn;
    procedure BitBtnCloseClick(Sender: TObject);
    procedure BitBtnOpenMailboxClick(Sender: TObject);
    procedure BitBtnDeleteTagClick(Sender: TObject);
    procedure BitBtnInsertTagClick(Sender: TObject);
    procedure BitBtnDeleteEmailClick(Sender: TObject);
    procedure BitBtnInsertEmailClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtnKeywordClick(Sender: TObject);
    procedure BitBtnSendClick(Sender: TObject);
  private
    WarningFired:boolean;
    procedure Warning(const s: string);
    procedure InsertOrUpdateEmail(const Value: string);
    procedure InsertOrUpdateTag(const Value: string);
    { Private declarations }
  public
    procedure SetFormValues;
    { Public declarations }
  end;

var
  FormEmails: TFormEmails;

implementation

{$R *.dfm}

uses
// Quick.SMTP,
System.UITypes;

procedure TFormEmails.BitBtnCloseClick(Sender: TObject);
begin
Close;
end;

procedure TFormEmails.BitBtnDeleteEmailClick(Sender: TObject);
begin
if MessageDlg('Подтвердите удаление', MtWarning, [mbYes,mbNo],0)=mrYes
  then UniTableEmails.Delete;
UniTableEmails.Refresh;
end;

procedure TFormEmails.BitBtnDeleteTagClick(Sender: TObject);
begin
if MessageDlg('Подтвердите удаление', MtWarning, [mbYes,mbNo],0)=mrYes
  then UniTableTags.Delete;
UniTableTags.Refresh;
end;

procedure TFormEmails.BitBtnInsertTagClick(Sender: TObject);
begin
if length(trim(EditTag.Text))=0
then
  begin
  Warning('Указан пустой domain');
  exit;
  end;
InsertOrUpdateTag(trim(EditTag.Text));
EditTag.Clear;
UniTableTags.Refresh;
end;

procedure TFormEmails.BitBtnKeywordClick(Sender: TObject);
begin
if length(trim(EditTag.Text))=0
then
  begin
  Warning('Указан пустой keyword');
  exit;
  end;
InsertOrUpdateTag(trim(EditTag.Text));
end;

procedure TFormEmails.BitBtnOpenMailboxClick(Sender: TObject);
begin
WarningFired:=false;
UniTableEmails.Active:=true;
UniTableTags.Active:=true;
end;

procedure TFormEmails.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if UniOneTag.Active then UniOneTag.Close;
if UniTableTags.Active then UniTableTags.Close;
if UniTableEmails.Active then UniTableEmails.Close;
if UniInsertTag.Active then UniInsertTag.Close;
if UniOneEmail.Active then UniOneEmail.Close;
if UniInsertEmail.Active then UniInsertEmail.Close;
end;

procedure TFormEmails.Warning(const s: string);
begin
MemoText.Lines.Add(S);
if not WarningFired then
  begin
  ShowMessage(S);
  WarningFired :=true;
  end;
end;

procedure TFormEmails.InsertOrUpdateTag(const Value: string);
begin
UniOneTag.Close;
UniOneTag.Params.ParamByName('tag').Value:=trim(lowercase(Value));
UniOneTag.Open();
if (UniOneTag['cntr']=0) then
  begin
  UniInsertTag.Prepare;
  UniInsertTag.Params.ParamByName('tag').Value:=trim(lowercase(Value));
  UniInsertTag.Execute();
  end;
end;

procedure TFormEmails.SetFormValues;
begin
//
end;

procedure TFormEmails.InsertOrUpdateEmail(const Value: string);
begin
UniOneEmail.Close;
UniOneEmail.Params.ParamByName('Email').Value:=trim(lowercase(Value));
UniOneEmail.Open();
if (UniOneEmail['cntr']=0) then
  begin
  UniInsertEmail.Close;
  UniInsertEmail.Params.ParamByName('email').Value:=trim(lowercase(Value));
  UniInsertEmail.Execute();
  end;
end;

procedure TFormEmails.BitBtnInsertEmailClick(Sender: TObject);
var
i:Integer;
isNonLatinFound:boolean;
charSet:TSysCharSet;
email:string;
begin
charSet:=['a'..'z'];
charSet:=charSet+['1'..'9'];
charSet:=charSet+['@'];
charSet:=charSet+['.'];
charSet:=charSet+['-'];
charSet:=charSet+['_'];
email:=lowercase(trim(EditEmail.Text));
if not CheckBoxMailcheck.Checked then
  begin
  if length(email)=0
    then
      begin
      Warning('Поле email пустое');
      exit;
      end;
  if Pos('@',email)=0
    then
      begin
      Warning('Знак @ не указан в поле email');
      exit;
      end;
  if Pos('.',email)=0
    then
      begin
      Warning('Точка не указана в поле email');
      exit;
      end;
  if Pos(' ',email)>0
    then
      begin
      Warning('Пробел указан поле email в позиции '+IntToStr(Pos(' ',EditEmail.Text)));
      exit;
      end;
  if Pos('.',email)>length(email)-2
    then
      begin
      Warning('Неверно указано расширение домена ');
      exit;
      end;
  isNonLatinFound:=false;
  Email:=lowercase(EditEmail.Text);
  for i:=1 to length(Email)-1 do
      begin
      if not(CharInSet(Email[i], charSet) or (email[i]='@') or (email[i]='.')) then
        begin
        isNonLatinFound:=True;
        break;
        end;
      end;
  if isnonLatinFound
    then
      begin
      Warning('Найден нелатинский символ "'+email[i]+'" в поле email');
      exit;
      end;
  end;
InsertOrUpdateEmail(email);
EditEmail.Clear;
UniTableEmails.Refresh;
end;

procedure TFormEmails.BitBtnSendClick(Sender: TObject);
//var
//  smtp : TSMTP;
begin
//try
//  smtp := TSMTP.Create('mail.adm.tools',25,False);
//  try
//      smtp.Username := 'admin@data-migration.club';
//      smtp.Password := 'Youknowme2';
//      smtp.Mail.AddAttachment('resume.png','C:\Temp\resume.png');
//      smtp.Mail.AddAttachment('Compile1.png','C:\Temp\Compile1.png');
//      smtp.Mail.Attachments.Add('C:\Temp\Compile2.png');
//      smtp.Mail.SenderName := 'pterik@gmail.com';
//      smtp.Mail.From := 'admin@data-migration.club';
//      smtp.Mail.Recipient := 'job@data-migration.club';
//      smtp.Mail.Subject := 'Test message тестируем';
//      smtp.Mail.Body := 'Hello world здравствуй мир';
//      smtp.SendMail;
//      MemoText.Lines.Add('Сообщение отослано');
//  except
//    on E: Exception do
//      Writeln(E.ClassName, ': ', E.Message);
//  end;
//finally
//   smtp.Free;
//end;
end;

end.
