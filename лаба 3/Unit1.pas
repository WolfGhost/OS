unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
procedure ShowAbout(Handle: THandle);export;stdcall;
implementation
{$R *.dfm}
procedure ShowAbout(Handle: THandle);
begin
 Application.Handle := Handle;
 Form1:= TForm1.Create(Application);
 Form1.ShowModal;
 Form1.Free;

end;
end.
