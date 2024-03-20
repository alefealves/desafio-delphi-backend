unit frmConsultaCep;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.NumberBox, Vcl.Mask;

type
  TformConsultaCep = class(TForm)
    Label1: TLabel;
    btnConsultar: TButton;
    Panel1: TPanel;
    edCEP: TMaskEdit;
    Panel2: TPanel;
    procedure btnConsultarClick(Sender: TObject);
  private
    { Private declarations }
    function ValidaCEP(cCep: string): Boolean;
  public
    { Public declarations }
  end;

var
  formConsultaCep: TformConsultaCep;

implementation

{$R *.dfm}

procedure TformConsultaCep.btnConsultarClick(Sender: TObject);
begin
  //validar dados
  if ValidaCEP(edCep.Text) then begin
    ShowMessage('cep v�lido');
  end;
end;

function TformConsultaCep.ValidaCEP(cCep: string): Boolean;
begin

  cCep := Trim(StringReplace(cCep, '-', '',[rfReplaceAll, rfIgnoreCase]));
 if (Length(cCEP)>0) then
 begin

  if Length(cCep) <> 8 then begin
     MessageDlg('CEP deve conter 8 d�gitos',mtError,[mbOk],0);
     Result := False
  end
  else
  if (StrToInt(cCep) <= 1000000.0) then
   begin
    MessageDlg('CEP tem que ser maior que [01000-000]',mtError,[mbOk],0);
    Result := False
   end
   else
    Result := True;
 end
 else begin
   MessageDlg('Favor, informe um CEP',mtError,[mbOk],0);
   Result := False
 end;

end;

end.
