with Hierarchical_Libraries_Stack;
with Ada.Text_Io;

use type Hierarchical_Libraries_Stack.Stack_Type; 

procedure Hierarchical_Libraries_Exercise_1 is

   ------------------------------------------------------------------------------------   
   --
   --  Write A package ‘Stack’ That allows Integer Values to be
   --
   --    Pushed  - Stored on the Stack
   --    Popped  - Read (and consumed) from the stack.
   --
   -- The Stack package Must Allow Multiple Stacks To Be declared By The 
   -- Users of The Stack package.

   -- i.e. The package Declares a type for The Stack, and Objects of That 
   --      type must Be passed to The operations Push, Pop Etc.
   --
   -- Ensure That the Stack implementation details are hidden from The User.

   --  The main program should declare two stacks and push the same values onto each.  
   --  The two stacks should be compared and the message "are the same" should be 
   --  printed if the comparison returns True.

   --  The main program should then Pop all the values from the stack and display the
   --  returned values. 
   --

   --Note: 
   --  1. ‘use type’ will make the operators visible
   --  2. The stack type should be private in the specification
   ------------------------------------------------------------------------------------   

   --
   -- Declare two stacks (and a local variable to hold the popped value).
   --
   Stack_1 : Hierarchical_Libraries_Stack.Stack_Type;  
   Stack_2 : Hierarchical_Libraries_Stack.Stack_Type;  
   Item    : Integer;  

begin
   --
   -- Push the same value onto esach stack.
   --
   Hierarchical_Libraries_Stack.Push (
     Item  => 748,    
     Stack => Stack_1);

   Hierarchical_Libraries_Stack.Push (
     Item  => 748,    
     Stack => Stack_2);

   Hierarchical_Libraries_Stack.Push (
     Item  => 916,    
     Stack => Stack_1);

   Hierarchical_Libraries_Stack.Push (
     Item  => 916,    
     Stack => Stack_2);

   --
   -- Compare both stacks, they should be the same.
   --
   if Stack_1 = Stack_2
   then
      Ada.Text_Io.Put_Line ("Are the same");
   else
      Ada.Text_Io.Put_Line ("Are different");
   end if;


   --
   -- Pop from stack 1 and print
   --
   Ada.Text_Io.Put_Line ("Popping Stack 1");
   Hierarchical_Libraries_Stack.Pop 
      (Item  => Item,   
       Stack => Stack_1);
   Ada.Text_Io.Put_Line ("Stack 1 Item is " & Integer'Image (Item));

   Hierarchical_Libraries_Stack.Pop 
      (Item  => Item,   
       Stack => Stack_1);
   Ada.Text_Io.Put_Line ("Stack 1 Item is " & Integer'Image (Item));

   --
   -- Pop from stack 2 and print
   --
   Ada.Text_Io.Put_Line ("Popping Stack 2");
   Hierarchical_Libraries_Stack.Pop 
      (Item  => Item,   
       Stack => Stack_2);

   Ada.Text_Io.Put_Line ("Stack 2 Item is " & Integer'Image (Item));

   Hierarchical_Libraries_Stack.Pop 
      (Item  => Item,   
       Stack => Stack_2);
   Ada.Text_Io.Put_Line ("Stack 2 Item is " & Integer'Image (Item));

end Hierarchical_Libraries_Exercise_1;