unit uDmDados;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  uFormConfigBanco, uBiblioteca, Vcl.Forms;

type
  TDmDados = class(TDataModule)
    conexao: TFDConnection;
    procedure DataModuleCreate(Sender: TObject);
  private
    procedure CarregaBanco;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmDados: TDmDados;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDmDados.CarregaBanco;
begin
  try
    conexao.Params.Database := GetValorIni(ExtractFilePath(Application.ExeName), 'CONFIGURACAO', 'LOCAL');
    conexao.Connected := True
  except
    FormConfigBanco.ShowModal;

  end;
end;

procedure TDmDados.DataModuleCreate(Sender: TObject);
begin
  CarregaBanco;
end;

end.
