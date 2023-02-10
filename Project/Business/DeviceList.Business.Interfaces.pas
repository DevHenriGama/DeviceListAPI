unit DeviceList.Business.Interfaces;

interface

uses Objects, System.Generics.Collections;

type

  IObserver = interface
    ['{C063D1EE-6B05-4466-94DE-BAF332E1D63C}']
    procedure Notify;
  end;

  ISettings = interface
    ['{E3C77193-A492-458A-B7D5-00FFD266BE44}']
    procedure DefaultSettings;
    function GetPort: Integer;
    procedure SetPort(_port: Integer);
    function GetAutoStar: Boolean;
    procedure SetAutoStart(_autoStart: Boolean);
    function GetStarOnSys: Boolean;
    procedure SetStartOnSys(_value: Boolean);
  end;

  ISingletonInformation = interface
    ['{4E53BB0A-595A-4A5E-87F1-437EE715A26F}']
    procedure Add(_IObs: IObserver);
    procedure Remove(_Obs: IObserver);
    Procedure Notify;
  end;



  ISubjectInformation = interface
    ['{76536E44-680C-4AEB-BE81-16ABBB865221}']
    procedure Add(_Obs: IObserver);
    procedure Remover(_Obs: IObserver);
    procedure Notify;

  end;

implementation

end.