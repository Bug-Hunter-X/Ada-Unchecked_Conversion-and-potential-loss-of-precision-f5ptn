```ada
function Unchecked_Conversion(Source : in Integer) return Float is
begin
  return Float(Source);
end Unchecked_Conversion;

procedure Main is
   My_Integer : Integer := 1000000000;
   My_Float : constant Float := Unchecked_Conversion(My_Integer);
begin
   Ada.Text_IO.Put_Line(My_Float'Image);
   Ada.Text_IO.Put_Line(Integer(My_Float)'Image); --potential error here
end Main;
```