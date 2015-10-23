unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, FileCtrl;

type
  TForm1 = class(TForm)
    FileListBox1: TFileListBox;
    DriveComboBox1: TDriveComboBox;
    FilterComboBox1: TFilterComboBox;
    DirectoryListBox1: TDirectoryListBox;
    Button1: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Button6: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  Dir: string;
begin
if DirectoryExists(Edit1.Text) then
    Label2.Caption := Edit1.Text + ' Каталог существует'
  else
   begin
    Dir := Label1.Caption + Edit1.Text;
  ForceDirectories(Dir);
  if DirectoryExists(Dir) then
    Label2.Caption := 'Каталог'+Dir + ' создан'
    end;

end;

procedure TForm1.Button4Click(Sender: TObject);
var F:TFileStream;
begin
F:=TfileStream.Create(Edit3.Text + '.docx',fmOpenWrite OR fmCreate);

end;
procedure TForm1.Button5Click(Sender: TObject);
var Cop, pp:string;

begin
 Cop := Label1.Caption + Edit4.Text;
 pp := Edit4.Text;

end;
procedure TForm1.Button6Click(Sender: TObject);
var Past,Cop, pp:string;
 S,D:TFileStream;
begin
 Past := Label1.Caption;
S:=TFileStream.Create(Cop,fmOpenRead);
D:=TFileStream.Create(Past + '/' + pp,fmOpenWrite OR fmCreate);
D.CopyFrom(S,S.Size);
D.Free;
S.Free;
End;

end.


