```ada
with Ada.Text_IO; use Ada.Text_IO;

procedure Main is
   My_Integer : Integer := 1000000000;
   My_Float_String : String(1..20);
   My_Float : Float;
   My_Integer2 : Integer;
begin
   My_Float := Float(My_Integer);
   My_Float_String := My_Float'Image;
   Put_Line(My_Float_String);
   Get(My_Integer2, My_Float_String);
   Put_Line(My_Integer2'Image); 
exception
   when others =>
      Put_Line("Conversion error");
end Main;
```