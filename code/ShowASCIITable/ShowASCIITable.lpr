program ShowASCIITable;

// https://rosettacode.org/wiki/Show_Ascii_table

uses
  sysutils, strutils;

var
  i, j: Integer;
  s: String;
begin
  i := 0;
  j := 0;
  s := '';

  for i := 0 to 15 do begin
    j := 32 + i;
    while j < 128 do begin
      case j of
        32: s := 'Spc';
        127: s := 'Del';
        otherwise s := chr(j);
      end;
      write(format('%s : %s', [padLeft(IntToStr(j), 3), padRight(s, 5)]));
      Inc(j, 16);
    end;
    writeln(' ');
  end;

end.
