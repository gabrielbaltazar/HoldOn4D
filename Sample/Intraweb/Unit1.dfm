object IWForm1: TIWForm1
  Left = 0
  Top = 0
  Width = 555
  Height = 400
  RenderInvisibleControls = True
  AllowPageAccess = True
  ConnectionMode = cmAny
  OnCreate = IWAppFormCreate
  Background.Fixed = False
  LayoutMgr = IWTemplate
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  DesignLeft = 2
  DesignTop = 2
  object BTNHOLDON: TIWButton
    AlignWithMargins = False
    Left = 48
    Top = 78
    Width = 121
    Height = 33
    RenderSize = False
    StyleRenderOptions.RenderSize = False
    StyleRenderOptions.RenderPosition = False
    StyleRenderOptions.RenderFont = False
    StyleRenderOptions.RenderZIndex = False
    StyleRenderOptions.RenderVisibility = False
    StyleRenderOptions.RenderStatus = False
    StyleRenderOptions.RenderAbsolute = False
    StyleRenderOptions.RenderPadding = False
    StyleRenderOptions.RenderBorder = False
    Caption = 'BTNHOLDON'
    Color = clBtnFace
    FriendlyName = 'BTNHOLDON'
    TabOrder = 4
    OnAsyncClick = BTNHOLDONAsyncClick
  end
  object IWTemplate: TIWTemplateProcessorHTML
    TagType = ttIntraWeb
    Left = 264
    Top = 184
  end
end
