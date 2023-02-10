unit Objects;

interface


type
Devices = record
  DeviceName , DeviceAddress : String;
  DeviceID : Integer;
end;

type
RequestValues = record
  RequestType , DateRegister : String;
end;

TDaysRequestCount = Array[1..7] of Integer;


implementation

end.
