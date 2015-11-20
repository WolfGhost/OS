unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Button2: TButton;
    Button3: TButton;
    Button1: TButton;
    lol: TListBox;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  function EnumProc (Wd: HWnd; Param: LongInt): Boolean; stdcall;
implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
if findwindow(nil, 'Корзина') <>0 then showmessage ('Окно присутствует');
SetWindowText (findwindow(nil, 'Корзина'),'Мусор');
showmessage ('Окно переименовано');
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
if IsIconic(findwindow(nil, 'Корзина')) then OpenIcon(findwindow(nil,'Корзина'))
else CloseWindow(findwindow(nil,'Корзина'));
end;

function EnumProc (Wd: HWnd; Param: LongInt): Boolean; stdcall;
 Var Nm:Array[0..255] of Char;
 Cs: Array[0..255] of Char;
Begin
 GetWindowText(Wd,Nm,255);
 GetClassName(Wd,Cs,255);
 EnumProc := TRUE;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
 Form1.lol.Items.Clear;
 EnumWindows (@EnumProc, 0);
end;

end.
