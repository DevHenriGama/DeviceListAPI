unit DeviceList.DataObject.Interfaces;

interface

uses Objects, System.Generics.Collections;

type

  IDeviceInstruction = interface
    ['{6DA852C8-3BD6-47BF-8293-F48200AE1C9F}']
    function DevicesCount: Integer;
    function GetRequestCountToday  :Integer;
    function LogCount: Integer;
    function GetContents: TList<Devices>;
    procedure AddLogRequest(_Type: String);
    function GetLogsRequests: TList<RequestValues>;
    function GetDaysRequestCount : TDaysRequestCount;
    procedure Insert(_name, _address : String);
    procedure Delete(_id: Integer);
    procedure Update(_id : Integer; _name, _address : String);
  end;

implementation

end.
