unit HoldOn4D.IW;

interface

uses
  HoldOn4D.Interfaces,
  HoldOn4D.Types,
  IWForm,
  System.SysUtils;

type
  THoldOn4DIW = class(TInterfacedObject, IHoldOn4D)
  private
    FForm: TIWForm;
    FTheme: THoldTheme;
    FText: string;
    FTextColor: string;
    FBackgroundColor: string;
    FCallback: string;

    procedure Initialize;
  protected
    function Theme(AValue: THoldTheme): IHoldOn4D;
    function Text(AValue: string): IHoldOn4D;
    function TextColor(AValue: string): IHoldOn4D;
    function BackgroundColor(AValue: string): IHoldOn4D;
    function Callback(AValue: string): IHoldOn4D;
    function Show: IHoldOn4D;
    function Close(AInitialize: Boolean = False): IHoldOn4D;
  public
    constructor Create(AForm: TIWForm);
    class function New(AForm: TIWForm): IHoldOn4D;
  end;

implementation

{ THoldOn4DIW }

function THoldOn4DIW.BackgroundColor(AValue: string): IHoldOn4D;
begin
  Result := Self;
  FBackgroundColor := AValue;
end;

function THoldOn4DIW.Callback(AValue: string): IHoldOn4D;
begin
  Result := Self;
  FCallback := AValue;
end;

function THoldOn4DIW.Close(AInitialize: Boolean): IHoldOn4D;
var
  LCommand: string;
begin
  try
    LCommand := 'CloseHoldOn()';
    FForm.WebApplication.CallBackResponse.AddJavaScriptToExecute(LCommand);
  finally
    if AInitialize then
      Initialize;
  end;
end;

constructor THoldOn4DIW.Create(AForm: TIWForm);
begin
  FForm := AForm;
  Initialize;
end;

procedure THoldOn4DIW.Initialize;
begin
  FTheme := htCircle;
  FText := 'Wait...';
  FTextColor := 'white';
  FBackgroundColor := '';
end;

class function THoldOn4DIW.New(AForm: TIWForm): IHoldOn4D;
begin
  Result := Self.Create(AForm);
end;

function THoldOn4DIW.Show: IHoldOn4D;
var
  LTheme: string;
  LCommand: string;
begin
  LTheme := FTheme.ToString;
  LCommand := Format('ShowHoldOn(%s, %s, %s, %s, %s)', [LTheme.QuotedString,
    FText.QuotedString, FTextColor.QuotedString, FBackgroundColor.QuotedString, FCallback.QuotedString]);
  FForm.WebApplication.CallBackResponse.AddJavaScriptToExecute(LCommand);
end;

function THoldOn4DIW.Text(AValue: string): IHoldOn4D;
begin
  Result := Self;
  FText := AValue;
end;

function THoldOn4DIW.TextColor(AValue: string): IHoldOn4D;
begin
  Result := Self;
  FTextColor := AValue;
end;

function THoldOn4DIW.Theme(AValue: THoldTheme): IHoldOn4D;
begin
  Result := Self;
  FTheme := AValue;
end;

end.
