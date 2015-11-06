unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask;

type
  HookProc=procedure(State: Boolean); stdcall;
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1:TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
   DllHandle: HWND;
  SetHook: HookProc;  public
    { Public declarations }
  end;

var
  Form1: TForm1;
implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
SetHook(true);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
SetHook(false);
end;
procedure TForm1.FormShow(Sender: TObject);
begin
DllHandle:=LoadLibrary('hook.dll');
if DllHandle=0 then
ShowMessage(IntToStr(GetLastError))
else
@SetHook:=GetProcAddress(DllHandle, 'SetHook');
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if DllHandle<>0 then
FreeLibrary(DllHandle);
end;
end.
