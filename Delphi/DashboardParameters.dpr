program DashboardParameters;

uses
  Vcl.Forms,
  uMainForm in 'uMainForm.pas' {MainForm},
  DashboardParameters.dxSettings in 'DashboardParameters.dxSettings.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
