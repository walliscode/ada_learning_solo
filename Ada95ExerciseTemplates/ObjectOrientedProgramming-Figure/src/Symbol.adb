with Ada.Text_Io;

package body Symbol is

   procedure Construct (This         : access Object;
                        The_Row      : in Integer;
                        The_Column   : in Integer) is
   begin
      Ada.Text_IO.Put_Line ("Figure.Construct >>>");

   end Construct;
   
   ----------
   -- Draw --
   ----------
   procedure Draw (This : access Object) is
   begin
      Ada.Text_IO.Put_Line ("Figure.Draw >>>");

   end Draw;
   
   function Area (This : access Object) return Float is
   begin

   end Area;
   

      
end Symbol;

