unit HoldOn4D.Types;

interface

type
  THoldTheme = (htRect, htBounce, htFoldingCube, htCircle,
    htDot, htFadingCircle, htCubeGrid, htCube);

  THoldThemeHelper = record helper for THoldTheme
  public
    function ToString: string;
  end;

implementation

{ THoldThemeHelper }

function THoldThemeHelper.ToString: string;
begin
  Result := 'sk-circle';
  case Self of
    htRect: Result := 'sk-rect';
    htBounce: Result := 'sk-bounce';
    htFoldingCube: Result := 'sk-folding-cube';
    htCircle: Result := 'sk-circle';
    htDot: Result := 'sk-dot';
    htFadingCircle: Result := 'sk-falding-circle';
    htCubeGrid: Result := 'sk-cube-grid';
    htCube: Result := 'sk-cube';
  end;
end;

end.
