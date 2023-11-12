program TinkoffInvestManager;

uses
  Vcl.Forms,
  MainFormUnit in 'MainFormUnit.pas' {Form1},
  IniUtilUnit in 'util\IniUtilUnit.pas',
  RegistryUtilUnit in 'util\RegistryUtilUnit.pas',
  ApplicationContextUnit in 'config\ApplicationContextUnit.pas',
  AccountStatusUnit in 'tinkoff\enum\AccountStatusUnit.pas',
  AccountTypeUnit in 'tinkoff\enum\AccountTypeUnit.pas',
  TinkoffClientUnit in 'tinkoff\TinkoffClientUnit.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
