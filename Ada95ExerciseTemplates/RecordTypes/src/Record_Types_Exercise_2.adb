--------------------------------------------------------------------
--
-- Create a record type to represent softkey details for a screen; the 
-- details should include the legend to be displayed (as a string) and 
-- the position of the legend (Row / Column).  Declare an object of the 
-- new record type and assign it default values. Display object values 
-- on the screen.
-- 
--------------------------------------------------------------------
with Ada.Text_io;
with Text_Io;

procedure Record_Types_Exercise_2 is 

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
   -- Define a type to represent a softkey which logically has a
   -- legend and a position to display it
   --
   type OrientationT is 
   type Softkey_Type is
   record
         ??
   end record;
   
   --
   -- Now define an object to hold the softkey details.
   --
   The_Softkey : constant Softkey_Type :=

begin
   --
   -- Display the softkey details on the screen
   --

                         
end Record_Types_Exercise_2;
