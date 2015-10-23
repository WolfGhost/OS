library Project2;
uses
  SysUtils,
  Classes;

var
  k : integer;

{$R *.res}
  function umnog(f:integer):integer;
  begin
  f:=f*k;
  result:=f
  end;
  exports Umnog index 1;
begin
k:=2
end.
