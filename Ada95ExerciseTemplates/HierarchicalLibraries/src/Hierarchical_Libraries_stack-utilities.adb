--
-- This package provides the facilities specified by the question, 
-- Hierarchical_Libraries exercise 2,  See main program for description.
--
with Ada.Text_io;

package body Hierarchical_Libraries_Stack.Utilities is

   --
   -- The following operation performs the required display contents operation
   --
   procedure Display_Contents (Stack : in Stack_Type) is
   begin
      --
      -- Loop through all the elements on the stack and display the value
      -- of each value stored.
      --
      Print_All_Elements:
      for Index in Stack.Data'first..Stack.Top
      loop
         Ada.Text_io.Put_Line ("Element " & Integer'image (index) & " is " &
                               integer'image (stack.data (index)));
                               
      end loop Print_All_Elements;
      
   end Display_Contents;

-----------------------------------------------------------------------------
   
   --
   -- The following operation performs the required display number
   -- of elements operation
   --
   procedure Display_Number_Of_Elements  (Stack : in Stack_Type) is
   begin
      --
      -- The top of the stack also holds the number of elements on the stack.
      --
      Ada.Text_io.Put_Line ("No of Elements " & Integer'image (Stack.Top)); 
   end Display_Number_Of_Elements;

end Hierarchical_Libraries_Stack.Utilities;

