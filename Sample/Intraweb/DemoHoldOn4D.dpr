program DemoHoldOn4D;

uses
  IWRtlFix,
  IWStart,
  Unit1 in 'Unit1.pas' {IWForm1: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase},
  HoldOn4D.Types in '..\..\Source\HoldOn4D.Types.pas',
  HoldOn4D.Interfaces in '..\..\Source\HoldOn4D.Interfaces.pas',
  HoldOn4D.IW in '..\..\Source\HoldOn4D.IW.pas';

{$R *.res}

begin
  TIWStart.Execute(True);
end.
