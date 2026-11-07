--------------------------------------------------------------------
--
-- Create a record to represent a screen position, i.e. (Row , Column).  
-- Declare an object to represent the centre of the screen and assign 
-- it the appropriate values.  Display object values on the screen.
-- 
--------------------------------------------------------------------

with Text_Io;

procedure Record_Types_Exercise_1 is 

   --
   -- Create types to represent the screen positions
   --
   type Row_Type is ???
   type Column_Type is ???
      
   --
   -- Create a record type to hold the logically related
   -- row / column types.
   --
   type Screen_Position_Type is
   record
     ??
   end record;
   
   --
   -- Define an object to represent the centre of the screen
   --
   Centre_Of_Screen : constant Screen_Position_Type :=

begin
   --
   -- Display the centre of the screen
   --

                         
end Record_Types_Exercise_1;
