unit Unit1;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Vcl.Controls, IWVCLBaseControl,
  IWBaseControl, IWBaseHTMLControl, IWControl, IWCompButton, IWVCLComponent, IWBaseLayoutComponent,
  IWBaseContainerLayout, IWContainerLayout, IWTemplateProcessorHTML,
  HoldOn4D.Interfaces,
  HoldOn4D.Types,
  HoldOn4D.IW;

type
  TIWForm1 = class(TIWAppForm)
    IWTemplate: TIWTemplateProcessorHTML;
    BTNHOLDON: TIWButton;
    procedure IWAppFormCreate(Sender: TObject);
    procedure BTNHOLDONAsyncClick(Sender: TObject; EventParams: TStringList);
  private
    FHoldOn: IHoldOn4D;

    procedure OnFinalizarPedido(AParams: TStringList);
  public
  end;

implementation

{$R *.dfm}

uses
  System.Threading;

procedure TIWForm1.BTNHOLDONAsyncClick(Sender: TObject; EventParams: TStringList);
begin
  FHoldOn.Theme(htCircle)
    .Text('Processando...')
    .Callback('OnFinalizarPedido')
    .Show;
end;

procedure TIWForm1.IWAppFormCreate(Sender: TObject);
begin
  FHoldOn := THoldOn4DIW.New(Self);

  RegisterCallBack('OnFinalizarPedido', OnFinalizarPedido);
end;

procedure TIWForm1.OnFinalizarPedido(AParams: TStringList);
begin
  Sleep(2000);
  FHoldOn.Close;
  WebApplication.ShowMessage('Foi');
end;

initialization
  TIWForm1.SetAsMainForm;

end.
