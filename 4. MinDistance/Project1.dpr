﻿Program MinDistance;

  {$APPTYPE CONSOLE}

uses
  SysUtils;

var
  AB, BC, CA, AM, BM, CM: Real;          // расстояния каждыми двумя точками
  XA, YA, XB, YB, XC, YC, XM, YM: Real;  // координаты точек
  H2, H3, Min: Real;                     // высоты
begin
  WriteLn('InPUT data of points A, B, C and M: ');
  ReadLn(XA, YA, XB, YB, XC, YC, XM, YM);
    (* определения расстояния каждыми двумя точками *)
  AB := Sqr(XA - XB) + Sqr(YA - YB);
  BC := Sqr(XB - XC) + Sqr(YB - YC);
  CA := Sqr(XC - XA) + Sqr(YC - YA);
  AM := Sqr(XA - XM) + Sqr(YA - YM);
  BM := Sqr(XB - XM) + Sqr(YB - YM);
  CM := Sqr(XC - XM) + Sqr(YC - YM);
    (* определения высоты из точки М *)
  Min := Sqrt(2 * (AM + BM) - AB - Sqr(AM - BM) / AB) / 2;
  H2 := Sqrt(2 * (BM + CM) - BC - Sqr(BM - CM) / BC) / 2;
  H3 := Sqrt(2 * (CM + AM) - CA - Sqr(CM - AM) / CA) / 2;
    (* определение ближайщей высоты *)
  If (H2 < Min) then Min := H2;
  If (H3 < Min) then Min := H3;

  WriteLn('Answer: The minimum distance of M: ', Min:-10:5);
  ReadLn;
end.
