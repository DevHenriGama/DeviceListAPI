unit DVList.Frame.GraphicBar;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Objects, FMX.Layouts, FMX.Controls.Presentation,
  DeviceList.Business.Device, Objects;

type
  TframeGraphic = class(TFrame)
    ltmain: TLayout;
    BaseContent: TRectangle;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Line2: TLine;
    Line4: TLine;
    Line5: TLine;
    Line6: TLine;
    Line7: TLine;
    Layout1: TLayout;
    D5: TRectangle;
    D1: TRectangle;
    D3: TRectangle;
    D4: TRectangle;
    D6: TRectangle;
    D2: TRectangle;
    D7: TRectangle;
    Rectangle1: TRectangle;
    TAG5: TLabel;
    TAG6: TLabel;
    TAG4: TLabel;
    TAG2: TLabel;
    TAG3: TLabel;
    TAG7: TLabel;
    TAG1: TLabel;
    procedure FramePaint(Sender: TObject; Canvas: TCanvas; const ARect: TRectF);
  private
    { Private declarations }
    procedure RenderDaysMarked;

  public
    { Public declarations }
    procedure RenderGraphic;
  end;

implementation

uses System.Threading;
{$R *.fmx}

{ TframeGraphic }

procedure TframeGraphic.FramePaint(Sender: TObject; Canvas: TCanvas;
  const ARect: TRectF);
begin
RenderDaysMarked;
RenderGraphic;
end;

procedure TframeGraphic.RenderDaysMarked;
var
  I, X: Integer;
begin
 for I := 1 to 7 do begin
    for X := 0 to ComponentCount - 1 do begin
     if (Components[X] is TLabel) then begin
      if (Components[X] as TLabel).Tag = I then begin
         (Components[X] as TLabel).Text := FormatDateTime('dd/mm',Now - I);
      end;
     end;
    end;
 end;
end;

procedure TframeGraphic.RenderGraphic;
var    Task : ITask; DaysC : TDaysRequestCount; Device : TDevice;
begin

  try
    Device := TDevice.Create;
    DaysC := Device.GetWeekRequest;
  finally
   Device.Free;
  end;

 Task := TTask.Create(
   procedure
  var
    I, MarkTag: Integer;
  begin
     for I := 0 to ComponentCount - 1 do begin
       if (Components[I] is TRectangle) then begin
           MarkTag := (Components[I] as TRectangle).Tag;
           if MarkTag <> 0 then begin

              TThread.Synchronize(TThread.Current, procedure
              begin
                (Components[I] as TRectangle).Margins.Top :=  200 - (DaysC[MarkTag] * 10) ;
                (Components[I] as TRectangle).Hint := IntToStr(DaysC[MarkTag]);
              end
              );

           end;
       end;


     end;
   end
 );

 Task.Start;
end;

end.
