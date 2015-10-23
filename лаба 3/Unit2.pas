unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;
procedure ShowAbout(Handle: THandle)stdcall;
type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
 type TMyProc = function(f:integer):integer;
 var
  Form1: TForm1;
 procedure ShowAbout;external 'Project1.dll' index 2;
implementation

{$R *.dfm}

procedure TForm1.Button2Click(Sender: TObject);
begin
 ShowAbout(Handle);
end;

procedure TForm1.Button1Click(Sender: TObject);
 var
 Handle  :  THandle;
 umnog  : TMyProc;
begin
if  Edit1.Text = '0' then
 Edit1.Text := '1'
else begin
   Handle:=LoadLibrary('Project2.dll');
   @umnog:=GetProcAddress(Handle,'umnog');
   Edit1.Text := IntToStr(umnog(StrToInt(Edit1.Text)));
   FreeLibrary(Handle);
end;
end;
end.
