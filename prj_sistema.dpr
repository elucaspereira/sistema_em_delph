program prj_sistema;

uses
  Vcl.Forms,
  uFomMan in 'Forms\uFomMan.pas' {FormMain},
  uDmDados in 'Forms\uDmDados.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormMain, FormMain);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
