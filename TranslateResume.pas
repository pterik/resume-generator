unit TranslateResume;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TFormTranslateResume = class(TForm)
    BitBtnClose: TBitBtn;
    procedure BitBtnCloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure SetFormValues;
  end;

var
  FormTranslateResume: TFormTranslateResume;

implementation

{$R *.dfm}

{ TFormTranslateResume }

procedure TFormTranslateResume.BitBtnCloseClick(Sender: TObject);
begin
Close;
end;

procedure TFormTranslateResume.SetFormValues;
begin
//
end;

end.
