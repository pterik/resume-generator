unit UnitTemplates;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TFormNewTemplate = class(TForm)
    BitBtnClose: TBitBtn;
    procedure BitBtnCloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormNewTemplate: TFormNewTemplate;

implementation

{$R *.dfm}

procedure TFormNewTemplate.BitBtnCloseClick(Sender: TObject);
begin
Close;
end;

end.
