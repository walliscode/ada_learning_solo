--
-- This package provides the facilities specified by the question, 
-- Object Oriented Programming exercise 1,  See main program for description.
--

with Ada.Text_IO;

package body OOP_Aircraft.Powered.Passenger is

-----------------------------------------------------------------
   --
   -- Additional primitive operation to set the number of passengers attribute
   --   
    procedure Set_Number_Of_Passengers 
      (Object : access Aircraft_Type;
       Value  : in     Natural) is
    begin
       Object.Number_Of_Passengers := Value;
    end Set_Number_Of_Passengers;
    
-----------------------------------------------------------------   

   --
   -- See specification
   --
   procedure Display (Object : in Aircraft_Type) is
   begin
      Ada.Text_IO.Put_Line ("Displaying details for Aircraft.Powered.Passenger.Aircraft_Type");
      --
      -- Call parent display (note type cast to parent)
      --
      Display (OOP_Aircraft.Powered.Aircraft_Type (Object));
      
      --
      -- Display exdended components.
      --
      Ada.Text_IO.Put_Line ("Number Of Passengers " & 
                            Natural'image (Object.Number_Of_Passengers));
   end Display;

end OOP_Aircraft.Powered.Passenger;


