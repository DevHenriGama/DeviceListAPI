unit DeviceList.DataObject.DataModule;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.SQLiteWrapper.Stat, FireDAC.FMXUI.Wait, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.Comp.UI;

type
  TdmData = class(TDataModule)
    fdMainConnection: TFDConnection;
    fdMainQuery: TFDQuery;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    procedure fdMainConnectionBeforeConnect(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  dmData: TdmData;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}
{$R *.dfm}


{ TdmData }


procedure TdmData.fdMainConnectionBeforeConnect(Sender: TObject);
 function Path : String;
 begin
    Result := ExtractFilePath(ParamStr(0)) + 'database\DV_database.db';
 end;
begin
 fdMainConnection.Params.Database := Path;
end;

end.
