program ResumeGenerator;

uses
  Vcl.Forms,
  NewTemplate in 'NewTemplate.pas' {FormNewTemplate},
  MainForm in 'MainForm.pas' {FormMain},
  Parameters in 'Parameters.pas' {FormParameters},
  Emailbox in 'Emailbox.pas' {FormEmails},
  Skills in 'Skills.pas' {FormSkills},
  UpdateTemplate in 'UpdateTemplate.pas' {FormUpdateTemplate},
  ResumesList in 'ResumesList.pas' {FormListResumes},
  NewResume in 'NewResume.pas' {FormNewResume},
  UpdateResume in 'UpdateResume.pas' {FormUpdateResume},
  CheckMailboxes in 'CheckMailboxes.pas' {FormCheckMailboxes},
  TemplatesList in 'TemplatesList.pas' {FormTemplatesList},
  NewSkill in 'NewSkill.pas' {FormNewSkill},
  UpdateSkill in 'UpdateSkill.pas' {FormUpdateSkill};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormMain, FormMain);
  Application.Run;
end.
