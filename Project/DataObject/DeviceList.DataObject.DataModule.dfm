object dmData: TdmData
  Height = 441
  Width = 546
  PixelsPerInch = 96
  object fdMainConnection: TFDConnection
    Params.Strings = (
      
        'Database=D:\Progama'#231#227'o\Projects\Delphi\DeviceList API\DeviceList' +
        'API2\DataObject\DV_database.db'
      'LockingMode=Normal'
      'DriverID=SQLite')
    LoginPrompt = False
    BeforeConnect = fdMainConnectionBeforeConnect
    Left = 304
    Top = 248
  end
  object fdMainQuery: TFDQuery
    Connection = fdMainConnection
    Left = 304
    Top = 160
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'FMX'
    Left = 400
    Top = 136
  end
end
