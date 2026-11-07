with Hierarchical_Libraries_Stack.Utilities;
with Hierarchical_Libraries_Stack.Delete;

with Ada.Text_Io;

procedure Ada95_Generics_Exercise_2 is-- Extend the stack package to provide two extra facilities:
   --
   -- Declare a stack to push value on.
   --
   The_Stack : Hierarchical_Libraries_Stack.Stack_Type;     

   function Delete_Small (Item : in Integer) return Boolean is
   begin
      return Item <= 125;
   end Delete_Small;

   procedure Delete is new Hierarchical_Libraries_Stack.Delete
                    (Delete_This_One => Delete_Small) ;
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

   Delete (Stack => The_Stack);

   Ada.Text_Io.Put_Line ("Displaying The Stack");
   Hierarchical_Libraries_Stack.Utilities.Display_Contents (Stack => The_Stack);
   Ada.Text_Io.New_Line;

   Ada.Text_Io.Put_Line ("Displaying The Stack Size");
   Hierarchical_Libraries_Stack.Utilities.Display_Number_Of_Elements (Stack => The_Stack);
   Ada.Text_Io.New_Line;
   
end Ada95_Generics_Exercise_2;