unit UPrincipal;

interface

uses
  {$IFDEF ANDROID}
  Androidapi.JNI.Webkit,
  Androidapi.JNI.Print,
  fmx.Platform, Urovo_SDK,
  Androidapi.jni,fmx.helpers.android, Androidapi.Jni.app,
  Androidapi.Jni.GraphicsContentViewText, Androidapi.JniBridge,
  Androidapi.JNI.Os, Androidapi.Jni.Telephony,
  Androidapi.JNI.JavaTypes,Androidapi.Helpers,
  Androidapi.JNI.Widget,System.Permissions,
  Androidapi.Jni.Provider,Androidapi.Jni.Net,System.Messaging,
  fmx.TextLayout,AndroidAPI.JNI.Support,FMX.VirtualKeyboard,
  {$ENDIF}
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  System.UIConsts, FMX.Surfaces,
  FMX.Controls.Presentation, FMX.Layouts, FMX.Objects, FMX.BiometricAuth,
  FMX.Edit;

type
  TfrmPrincipal = class(TForm)
    btnImpresion: TButton;
    btnBarcodeScanner: TButton;
    lblTituloPruebas: TLabel;
    lblResultadoPruebas: TLabel;
    edtCodigo: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure btnBarcodeScannerClick(Sender: TObject);
    procedure btnImpresionClick(Sender: TObject);
    procedure edtCodigoExit(Sender: TObject);
  private
    { Private declarations }
    function RepeatStr(Astr: string; Times: integer): string;
    var
      scanner: JScanManager;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation
uses
  System.IOUtils;

{$R *.fmx}

procedure TfrmPrincipal.btnBarcodeScannerClick(Sender: TObject);
begin
  try
    VKAutoShowMode:= TVKAutoShowMode.Never;
    edtCodigo.Text:= string.Empty;
    edtCodigo.SetFocus;
    scanner.enableAllSymbologies(True);
    scanner.openScanner;
    scanner.startDecode;
  except on E:exception do
    begin
      VKAutoShowMode:= TVKAutoShowMode.Always;
      Self.SetFocused(nil);
      scanner.stopDecode;
      scanner.closeScanner;
      ShowMessage(E.Message);
    end;
  end;
end;

procedure TfrmPrincipal.btnImpresionClick(Sender: TObject);
var
  printer: JPrinterManager;
  data: string;
  ret, x, y, intWidth, intheight, intfontSize,
  intstyle, intformat: integer;
  fontName: string;
  marginLeft, marginTop: integer;
const
  NO_ROTATE: integer = 0;
begin
  { EJEMPLO DE UNA COMANDA }
  try
    printer:= TJPrinterManager.JavaClass.init;
    try
      ret:= printer.prn_open;
      if(ret = 0) then
      begin
        intWidth:= -1; //Todo el ancho del papel
        (*La altura de la impresi�n es administrada en autom�tico
        por el controlador de la impresora asignando el valor "-1"*)
        intheight:= 351; //Hay que sumar 115 px a la altura final de la pagina por los cm que hay de diferencia cerca de la cuchilla
        fontName:= '/system/fonts/arial.ttf';
        intstyle:= 0;
        intformat:= 0;
        marginLeft:= 10;
        marginTop:= 10;
        printer.prn_setupPage(intWidth, intheight); //Preparar la p�gina
        { DATOS }
        intfontSize:= 18;
        data:= 'COM:  174419  MESA:  PRU FOLIO:  115';
        x:= marginLeft;
        y:= marginTop;
        printer.prn_drawTextEx(StringToJString(data), x,
        y, intwidth, intheight, StringToJString(fontName), intfontSize, NO_ROTATE, intstyle, intformat);

        y:= y + 22;
        data:= 'FECHA:  2023/10/25    HORA:  17:44:38';
        printer.prn_drawTextEx(StringToJString(data), x,
        y, intwidth, intheight, StringToJString(fontName), intfontSize, NO_ROTATE, intstyle, intformat);

        y:= y + 22;
        data:= 'MSRO:  DRH  impr=B';
        printer.prn_drawTextEx(StringToJString(data), x,
        y, intwidth, intheight, StringToJString(fontName), intfontSize, NO_ROTATE, intstyle, intformat);

        { L�NEAS }
        intfontSize:= 22;
        x:= marginLeft;
        y:= y + 22;
        data:= '';
        data:= RepeatStr('=', 30);
        printer.prn_drawTextEx(StringToJString(data), x,
        y, intwidth, intheight, StringToJString(fontName), intfontSize, NO_ROTATE, intstyle, intformat);

        { ARTICULOS }
        x:= marginLeft;
        y:= y + 26;
        data:= 'cant descripcion / indicaciones    com  t';
        printer.prn_drawTextEx(StringToJString(data), x,
        y, intwidth, intheight, StringToJString(fontName), intfontSize, NO_ROTATE, intstyle, intformat);

        x:= marginLeft * 2;
        y:= y + 26;
        data:= '1.00 AGUA DE SAND�A';
        printer.prn_drawTextEx(StringToJString(data), x,
        y, intwidth, intheight, StringToJString(fontName), intfontSize, NO_ROTATE, intstyle, intformat);

        x:= marginLeft * 3;
        y:= y + 26;
        data:= 'NO PREPARAR';
        printer.prn_drawTextEx(StringToJString(data), x,
        y, intwidth, intheight, StringToJString(fontName), intfontSize, NO_ROTATE, intstyle, intformat);

        x:= marginLeft * 2;
        y:= y + 26;
        data:= '5.00 PULPO TATEMADO';
        printer.prn_drawTextEx(StringToJString(data), x,
        y, intwidth, intheight, StringToJString(fontName), intfontSize, NO_ROTATE, intstyle, intformat);

        x:= marginLeft * 3;
        y:= y + 26;
        data:= 'SIN CEBOLLA Y SIN SAL';
        ret:= printer.prn_drawTextEx(StringToJString(data), x,
        y, intwidth, intheight, StringToJString(fontName), intfontSize, NO_ROTATE, intstyle, intformat);

        if (ret < 0) then
        begin
          ShowMessage('Fall� al imprimir');
        end else
        begin
          printer.prn_printPage(NO_ROTATE);
        end;
      end;
    except on E: exception do
      raise;
    end;
  finally
    (*Es importante invocar al m�todo "close;" ya
    que la impresi�n sale con el texto anterior*)
    printer.prn_close;
    printer:= nil;
    Self.SetFocused(nil);
  end;
end;

procedure TfrmPrincipal.edtCodigoExit(Sender: TObject);
begin
  if not TEdit(Sender).Text.IsEmpty then
  begin
    if Assigned(scanner) then
    begin
      scanner.stopDecode;
      scanner.closeScanner;
    end;
    ShowMessage(TEdit(Sender).Text);
  end;
  VKAutoShowMode:= TVKAutoShowMode.Always;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  scanner:= TJScanManager.JavaClass.init;
end;

function TfrmPrincipal.RepeatStr(Astr: string; Times: integer): string;
var
  i: integer;
begin
  if (not Astr.IsEmpty) and (Times > 0) then
  begin
    for i:= 1 to Times do
    begin
      Result:= Result + Astr;
    end;
  end else Result:= Astr;
end;

end.

