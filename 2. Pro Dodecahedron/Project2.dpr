﻿program Project2;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  a: Real;        {   длина стороны додекаэдра   }
  Ri, Ro: Real;   {      радиусы додекаэдра      }
  Sf: Real;       {площадь поверхности додекаэдра}
  V: Real;        {       объём додекаэдра       }
begin
  Write('INPUT LENGTH OF SIDE a = ');
  ReadLn(a);

  Sf := 3 * sqr(a) * sqrt(25 + 10 * sqrt(5));
  Ri := a * sqrt(10 + 22 / sqrt(5)) / 4;       // радиус вписанной сферы
  Ro := a * (sqrt(3) + sqrt(15)) / 4;          // радиус описанной сферы
  V  := a * a * a * (15 + 7 * sqrt(5)) / 4;

  WriteLn(' The Area of surface:       Sf = ', Sf:10:5);
  WriteLn(' The INSIDE radius  :       Ri = ', Ri:10:5);
  WriteLn(' The OUTSIDE radius :       Ro = ', Ro:10:5);
  WriteLn(' The Volume of dodecaheron: V  = ', V:10:5);

  ReadLn;
end.        // программа Dodecahedron
