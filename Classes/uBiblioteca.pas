unit uBiblioteca;

interface
uses IniFiles, System.SysUtils, Vcl.Forms;

  procedure SetValorIni(pLocal, pSessao, pSubSessao, pValor: string);
  Function GetValorIni(pLocal, pSessao, pSubSessao: string): string;

implementation

procedure SetValorIni(pLocal, pSessao, pSubSessao: string; pValor: string);
var vArquivo: TInifile;

begin
  vArquivo := TIniFile.Create(pLocal);

  vArquivo.writeString(pSessao, pSubSessao, pValor);

  vArquivo.Free;
end;

Function GetValorIni(pLocal, pSessao, pSubSessao: string): string;
var vArquivo: TIniFile;
begin
  vArquivo := TIniFile.Create(pLocal);

  Result := vArquivo.ReadString(pSessao, pSubSessao, '');

  vArquivo.Free;
end;
end.
