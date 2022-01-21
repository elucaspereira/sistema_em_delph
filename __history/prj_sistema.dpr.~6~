program prj_sistema;

uses
  Vcl.Forms,
  uFomMan in 'Forms\uFomMan.pas' {FormMain},
  uDmDados in 'Forms\uDmDados.pas' {DmDados: TDataModule},
  uBiblioteca in 'Classes\uBiblioteca.pas',
  uFormConfigBanco in 'Forms\uFormConfigBanco.pas' {FormConfigBanco};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDmDados, DmDados);
  Application.CreateForm(TFormMain, FormMain);
  Application.CreateForm(TFormConfigBanco, FormConfigBanco);
  Application.Run;
end.
