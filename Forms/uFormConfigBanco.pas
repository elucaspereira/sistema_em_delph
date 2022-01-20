unit uFormConfigBanco;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, uBiblioteca, Vcl.StdCtrls,
  Vcl.Imaging.pngimage;


type
  TFormConfigBanco = class(TForm)
    Image1: TImage;
    edtLocal: TEdit;
    Label1: TLabel;
    Button1: TButton;
    Opnpastas: TOpenDialog;
    procedure Button1Click(Sender: TObject);

  private
    procedure Configura;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConfigBanco: TFormConfigBanco;

implementation

{$R *.dfm}

procedure TFormConfigBanco.Button1Click(Sender: TObject);
begin
  Configura;
end;

procedure TFormConfigBanco.Configura;
var
  vFileName: string;
begin
  if opnPastas.Execute then begin
    edtLocal.Text := opnPastas.FileName;
    vFileName     := ExtractFilePath(Application.ExeName) + 'config.ini';
    SetValorIni(vFileName, 'CONFIGURACAO', 'LOCAL_DB', edtLocal.Text);
  end;

end;



end.

