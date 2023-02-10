unit DVList.Frame.DeviceRow;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Objects, Objects;

type

  TClickEvent = procedure(Fields : Devices) of Object;

  TframeDevice = class(TFrame)
    Rectangle1: TRectangle;
    txtDeviceName: TText;
    txtDeviceAddress: TText;
    Line1: TLine;
    procedure Rectangle1Click(Sender: TObject);
  private
    FDeviceID: Integer;
    FClickEvent: TClickEvent;
    procedure SetDeviceID(const Value: Integer);
    procedure SetClickEvent(const Value: TClickEvent);
    { Private declarations }
  public
    { Public declarations }
    procedure ColorCard(_ThePosi : Boolean);
    property DevID : Integer read FDeviceID write SetDeviceID;
    property ClickEvent : TClickEvent read FClickEvent write SetClickEvent;
  end;

implementation

{$R *.fmx}

{ TframeDevice }

procedure TframeDevice.ColorCard(_ThePosi: Boolean);
begin
 if _ThePosi then begin
   txtDeviceName.TextSettings.FontColor := TAlphaColorRec.White;
   txtDeviceAddress.TextSettings.FontColor := TAlphaColorRec.White;
   Line1.Stroke.Color:= TAlphaColorRec.White;
   Rectangle1.Fill.Color := $FF111E3E;
 end
 else
 begin
   txtDeviceName.TextSettings.FontColor := TAlphaColorRec.Black;
   txtDeviceAddress.TextSettings.FontColor := TAlphaColorRec.Black;
   Line1.Stroke.Color := TAlphaColorRec.Black;
   Rectangle1.Fill.Color := $FF53A1F4;
 end;
end;

procedure TframeDevice.Rectangle1Click(Sender: TObject);
var DeviceInfo : Devices;
begin
 with DeviceInfo do begin
   DeviceName := txtDeviceName.Text;
   DeviceAddress := txtDeviceAddress.Text;
   DeviceID := DevID;
 end;

 ClickEvent(DeviceInfo);
end;

procedure TframeDevice.SetClickEvent(const Value: TClickEvent);
begin
  FClickEvent := Value;
end;

procedure TframeDevice.SetDeviceID(const Value: Integer);
begin
  FDeviceID := Value;
end;

end.
