with Hierarchical_Libraries_Stack.Utilities;
with Ada.Text_Io;

procedure Hierarchical_Libraries_Exercise_2 is-- Extend the stack package to provide two extra facilities:

   ------------------------------------------------------------------------------------   
   --   1.	Allow a user to determine how many items are stored on the stack
   --   2.	Allow a user to display the stack contents

   -- Note: The original stack specification should not be modified. 

   -- The main program should use the extended facilities to display the 
   -- number of elements on each stack and the actual stack contents
   ------------------------------------------------------------------------------------   
   
   --
   -- Declare a stack to push value on.
   --
   The_Stack : Hierarchical_Libraries_Stack.Stack_Type;     

begin
   --
   -- Push three different values on to the stack and display the 
   -- stack details using the extended facilities.
   --
   Hierarchical_Libraries_Stack.Push (
     Item  => 125,    
     Stack => The_Stack);

   Hierarchical_Libraries_Stack.Push (
     Item  => 250,    
     Stack => The_Stack);

   Hierarchical_Libraries_Stack.Push (
     Item  => 750,    
     Stack => The_Stack);

   Ada.Text_Io.Put_Line ("Displaying The Stack");
   Hierarchical_Libraries_Stack.Utilities.Display_Contents (Stack => The_Stack);
   Ada.Text_Io.New_Line;

   Ada.Text_Io.Put_Line ("Displaying The Stack Size");
   Hierarchical_Libraries_Stack.Utilities.Display_Number_Of_Elements (Stack => The_Stack);
   Ada.Text_Io.New_Line;

end Hierarchical_Libraries_Exercise_2;