--
-- This package provides the facilities specified by the question, 
-- Object Oriented Programming exercise 1,  See main program for description.
--

with Ada.Text_IO;

package body OOP_Aircraft.Powered is

--------------------------------------------------------------------

   --
   -- Additional primitive operation to set the fuel load attribute
   --    
   procedure Set_Fuel_Load 
      (Object : access Aircraft_Type;
       Value  : in     Natural) is
   begin
      Object.Fuel_Load := Value;
   end Set_Fuel_Load;
    
--------------------------------------------------------------------
   --
   -- See specification
   --
   procedure Display (Object : in Aircraft_Type) is
   begin
      Ada.Text_IO.Put_Line ("Displaying details for Aircraft.Powered.Aircraft_Type");

      --
      -- Call parent display (Note type cast to parent)
      --
      Display (OOP_Aircraft.Aircraft_Type (Object));
      
      --
      -- Display exdended components.
      --
      Ada.Text_IO.Put_Line ("Fuel Load is " & 
                            Natural'image (Object.Fuel_Load));
   end Display;

end OOP_Aircraft.Powered;


