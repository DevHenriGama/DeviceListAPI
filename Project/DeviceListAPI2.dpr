program DeviceListAPI2;

uses
  System.StartUpCopy,
  FMX.Forms,
  DeviceList.UI.Main in 'UI\DeviceList.UI.Main.pas' {frmMain},
  DeviceList.Business.Device in 'Business\DeviceList.Business.Device.pas',
  DeviceList.Business.Interfaces in 'Business\DeviceList.Business.Interfaces.pas',
  DeviceList.DataObjects.Instructions in 'DataObject\DeviceList.DataObjects.Instructions.pas',
  DeviceList.DataObject.Interfaces in 'DataObject\DeviceList.DataObject.Interfaces.pas',
  DeviceList.DataObject.DataModule in 'DataObject\DeviceList.DataObject.DataModule.pas' {dmData: TDataModule},
  DeviceList.Business.API in 'Business\DeviceList.Business.API.pas' {dataAPI: TDataModule},
  DeviceList.Business.Settings in 'Business\DeviceList.Business.Settings.pas',
  DVList.Frame.RequestRow in 'UI\Frames\DVList.Frame.RequestRow.pas' {frameRequest: TFrame},
  DVList.Frame.DeviceRow in 'UI\Frames\DVList.Frame.DeviceRow.pas' {frameDevice: TFrame},
  Objects in 'Business\Objects.pas',
  DeviceList.Business.SingletonInformation in 'Business\DeviceList.Business.SingletonInformation.pas',
  DeviceList.Business.SubjectInformation in 'Business\DeviceList.Business.SubjectInformation.pas',
  DVList.Frame.GraphicBar in 'UI\Frames\DVList.Frame.GraphicBar.pas' {frameGraphic: TFrame},
  DVList.Frame.DeviceManager in 'UI\Frames\DVList.Frame.DeviceManager.pas' {FrameDeviceManager: TFrame},
  DVList.Frame.Settings in 'UI\Frames\DVList.Frame.Settings.pas' {FrameSettings: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
