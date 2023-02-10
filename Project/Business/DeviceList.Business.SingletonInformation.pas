unit DeviceList.Business.SingletonInformation;

interface

uses
  DeviceList.Business.Interfaces;

type
  TSingletonInformation = class
  strict Private

  private
    Subject : ISubjectInformation;
    constructor PrivateConstructor;
  public
    constructor Create; deprecated;
    destructor Destroy;override;
   class function GetInstance: TSingletonInformation;
   procedure Add(_IObs : IObserver);
   procedure Remove(_Obs : IObserver);
   Procedure Notify;
  end;

  var
  FInstance: TSingletonInformation;
implementation

uses
  System.SysUtils, DeviceList.Business.SubjectInformation;

{ TSingletonInformation }

procedure TSingletonInformation.Add(_IObs: IObserver);
begin
 Subject.Add(_IObs);
end;

constructor TSingletonInformation.Create;
begin
  raise Exception.Create('Métdo depreciado');
end;

destructor TSingletonInformation.Destroy;
begin

  inherited;
end;

class function TSingletonInformation.GetInstance: TSingletonInformation;
begin
 if not Assigned(FInstance) then
  FInstance := TSingletonInformation.PrivateConstructor;

  Result := FInstance;
end;

procedure TSingletonInformation.Notify;
begin
  Subject.Notify;
end;

constructor TSingletonInformation.PrivateConstructor;
begin
Subject := TSubjectInformation.Create;
end;

procedure TSingletonInformation.Remove(_Obs: IObserver);
begin
Subject.Remover(_Obs);
end;

end.
