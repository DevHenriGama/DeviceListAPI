object dataAPI: TdataAPI
  OnCreate = DataModuleCreate
  OnDestroy = ServerMethodDataModuleDestroy
  Encoding = esUtf8
  QueuedRequest = False
  Height = 92
  Width = 100
  PixelsPerInch = 96
  object events: TDWServerEvents
    IgnoreInvalidParams = False
    Events = <
      item
        Routes = [crPost]
        NeedAuthorization = True
        DWParams = <
          item
            TypeObject = toParam
            ObjectDirection = odINOUT
            ObjectValue = ovString
            ParamName = 'name'
            Encoded = True
          end
          item
            TypeObject = toParam
            ObjectDirection = odINOUT
            ObjectValue = ovString
            ParamName = 'address'
            Encoded = True
          end>
        JsonMode = jmPureJSON
        Name = 'new'
        EventName = 'new'
        OnlyPreDefinedParams = False
        OnReplyEvent = eventsEventsnewReplyEvent
      end
      item
        Routes = [crPost]
        NeedAuthorization = True
        DWParams = <
          item
            TypeObject = toParam
            ObjectDirection = odINOUT
            ObjectValue = ovInteger
            ParamName = 'id'
            Encoded = True
          end
          item
            TypeObject = toParam
            ObjectDirection = odINOUT
            ObjectValue = ovString
            ParamName = 'name'
            Encoded = True
          end
          item
            TypeObject = toParam
            ObjectDirection = odINOUT
            ObjectValue = ovString
            ParamName = 'address'
            Encoded = True
          end>
        JsonMode = jmPureJSON
        Name = 'edit'
        EventName = 'edit'
        OnlyPreDefinedParams = False
        OnReplyEvent = eventsEventseditReplyEvent
      end
      item
        Routes = [crDelete]
        NeedAuthorization = True
        DWParams = <
          item
            TypeObject = toParam
            ObjectDirection = odINOUT
            ObjectValue = ovInteger
            ParamName = 'id'
            Encoded = True
          end>
        JsonMode = jmPureJSON
        Name = 'delete'
        EventName = 'delete'
        OnlyPreDefinedParams = False
        OnReplyEvent = eventsEventsdeleteReplyEvent
      end
      item
        Routes = [crGet]
        NeedAuthorization = True
        DWParams = <>
        JsonMode = jmPureJSON
        Name = 'status'
        EventName = 'status'
        OnlyPreDefinedParams = False
        OnReplyEvent = eventsEventsstatusReplyEvent
      end
      item
        Routes = [crGet]
        NeedAuthorization = True
        DWParams = <>
        JsonMode = jmPureJSON
        Name = 'getlist'
        EventName = 'getlist'
        OnlyPreDefinedParams = False
        OnReplyEvent = eventsEventsgetlistReplyEvent
      end>
    Left = 32
    Top = 24
  end
end
