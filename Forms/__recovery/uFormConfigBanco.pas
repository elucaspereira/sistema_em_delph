unit uFormConfigBanco;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uBiblioteca, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TFormConfigBanco = class(TForm)
    Image1: TImage;
    edtLocal: TEdit;
    Label1: TLabel;
    Button1: TButton;
    Openpastas: TOpenDialog;
    procedure Label1Click(Sender: TObject);
    procedure edtLocalChange(Sender: TObject);
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

procedure TFormConfigBanco.Configura;
var
  vFileName: string;
begin
if openPastas.Execute then begin
  edtLocal.text := openPastas.FileName;
  vFileName     := ExtractFilePath(Application.ExeName) + 'config.ini';

end;

end;



end.

