unit DeviceList.Business.SubjectInformation;

interface

uses
  DeviceList.Business.Interfaces, System.Generics.Collections;

type
TSubjectInformation = class(TInterfacedObject,ISubjectInformation)
  private
    Observers : TList<IObserver>;
  public
  constructor Create;
  destructor Destroy;override;
  procedure Add(_Obs : IObserver);
  procedure Remover(_Obs : IObserver);
  procedure Notify;


end;

implementation

{ TSubjectInformation }

procedure TSubjectInformation.Add(_Obs: IObserver);
begin
Observers.Add(_Obs);
end;

constructor TSubjectInformation.Create;
begin
Observers := TList<IObserver>.Create;
end;

destructor TSubjectInformation.Destroy;
begin
  Observers.Free;
  inherited;
end;

procedure TSubjectInformation.Notify;
var
  I: Integer;
begin
 with Observers do begin
   for I := 0 to Count - 1 do begin
     Items[I].Notify;
   end;
 end;

end;

procedure TSubjectInformation.Remover(_Obs: IObserver);
begin
  Observers.Extract(_Obs);
end;

end.
