with Ada.Text_IO;

package body Rectangle is

   ----------
   -- Area --
   ----------

   function Area (This : access Object) return Float is
   begin

   end Area;

   ---------------
   -- Construct --
   ---------------

   procedure Construct
     (This         : access Object;
      The_Row      : in Integer;
      The_Column   : in Integer;
      The_Height   : in Integer;
      The_Width    : in Integer) is
   begin
      Ada.Text_IO.Put_Line ("Rectangle.Construct >>>");

      -- Set up the parent's attributes using its (inherited) constructor
     
   end Construct;

   ----------
   -- Draw --
   ----------

   procedure Draw (This : access Object) is
   begin

   end Draw;

end Rectangle;

