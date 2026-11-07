--
-- This package provides the facilities specified by the question, 
-- Object Oriented Programming exercise 1,  See main program for description.
--
with Ada.Text_IO;

package body OOP_Aircraft.Powered.Military is

----------------------------------------------------------------
   --
   -- Additional primitive operation to set the range to target attribute
   -- 
   procedure Set_Range_To_Target
      (Object  : access Aircraft_Type;
       Value   : in Natural) is
   begin
      Object.Range_To_Target := Value;
   end Set_Range_To_Target;  

----------------------------------------------------------------  
   --
   -- See specification
   --
   procedure Display (Object : in Aircraft_Type) is
   begin
      Ada.Text_IO.Put_Line ("Displaying details for Aircraft.Powered.Military.Aircraft_Type");
      --
      -- Call parent display (note type cast to parent)
      --
      Display (OOP_Aircraft.Powered.Aircraft_Type (Object));
      
      --
      -- Display exdended components.
      --
      Ada.Text_IO.Put_Line ("Range To Target " & 
                            Natural'image (Object.Range_To_Target));
   end Display;

end OOP_Aircraft.Powered.Military;


