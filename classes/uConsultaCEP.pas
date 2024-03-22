unit uConsultaCEP;

interface

uses RESTRequest4D, DataSet.Serialize.Adapter.RESTRequest4D,
     System.SysUtils, Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
     FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
     Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,uFormat;

type
  TConsultaCEP = class

  private
    { Private declarations }
     function ConsultaCEP (cCEP : String) : Integer;
     procedure createUMemTable;
     procedure destroyUMemTable;
  public
    { Public declarations }
  end;

var uMemTable : TFDMemTable;

implementation

function TConsultaCEP.ConsultaCEP (cCEP : String) : Integer;
var
    Resp : IResponse;
begin

   createUMemTable;

   Resp := TRequest.New.BaseURL('viacep.com.br/ws/'+SomenteNumero(cCep) + '/json')
           .Adapters(TDataSetSerializeAdapter.New(uMemTable))
           .Accept('application/json')
           .Get;

   if Resp.StatusCode = 200 then
    begin
        if Resp.Content.IndexOf('erro') > 0 then begin
           Result := 0;
        end
        else
        begin
            Result := 1;
        end;
    end
    else
        Result := 2;
end;


procedure TConsultaCEP.createUMemTable;
begin
   uMemTable := TFDMemTable.Create(nil);
   uMemTable.Active;
end;

procedure TConsultaCEP.destroyUMemTable;
begin
   uMemTable.Close;
   FreeAndNil(uMemTable);
end;

end.
