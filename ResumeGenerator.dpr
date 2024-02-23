program ResumeGenerator;

uses
  Vcl.Forms,
  NewTemplate in 'NewTemplate.pas' {FormNewTemplate},
  MainForm in 'MainForm.pas' {FormMain},
  Parameters in 'Parameters.pas' {FormParameters},
  Emailbox in 'Emailbox.pas' {FormEmails},
  TemplatesList in 'TemplatesList.pas' {FormTemplatesList},
  UpdateTemplate in 'UpdateTemplate.pas' {FormUpdateTemplate},
  ResumesList in 'ResumesList.pas' {FormListResumes},
  NewResume in 'NewResume.pas' {FormNewResume},
  UpdateResume in 'UpdateResume.pas' {FormUpdateResume},
  CheckMailboxes in 'CheckMailboxes.pas' {FormCheckMailboxes};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormMain, FormMain);
  Application.Run;
end.
