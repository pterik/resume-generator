program ResumeGenerator;

uses
  Vcl.Forms,
  NewTemplate in 'NewTemplate.pas' {FormNewTemplate},
  NewUkrainianResume in 'NewUkrainianResume.pas' {FormNewUkrainianResume},
  TranslateResume in 'TranslateResume.pas' {FormTranslateResume},
  MainForm in 'MainForm.pas' {FormMain},
  Parameters in 'Parameters.pas' {FormParameters},
  Emailbox in 'Emailbox.pas' {FormEmails},
  TemplatesList in 'TemplatesList.pas' {FormTemplatesList},
  UpdateTemplate in 'UpdateTemplate.pas' {FormUpdateTemplate},
  ResumesList in 'ResumesList.pas' {FormListResumes},
  NewResumeTranslation in 'NewResumeTranslation.pas' {FormNewResumeTranslation},
  UpdateResume in 'UpdateResume.pas' {FormUpdateResume},
  CheckMailboxes in 'CheckMailboxes.pas' {FormCheckMailboxes};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormMain, FormMain);
  Application.CreateForm(TFormUpdateResume, FormUpdateResume);
  Application.CreateForm(TFormCheckMailboxes, FormCheckMailboxes);
  Application.Run;
end.
