unit HoldOn4D.Interfaces;

interface

uses
  HoldOn4D.Types;

type
  IHoldOn4D = interface
    ['{89F7C99E-CEAB-4923-8C9D-ACFFC9C8708A}']
    function Theme(AValue: THoldTheme): IHoldOn4D;
    function Text(AValue: string): IHoldOn4D;
    function TextColor(AValue: string): IHoldOn4D;
    function BackgroundColor(AValue: string): IHoldOn4D;
    function Callback(AValue: string): IHoldOn4D;
    function Show: IHoldOn4D;
    function Close(AInitialize: Boolean = False): IHoldOn4D;
  end;

implementation

end.
