--
-- This package provides the facilities specified by the question, 
-- Hierarchical_Libraries exercise 1,  See main program for description.
--

package body Hierarchical_Libraries_Stack is

   --
   -- The following operation performs the required Pop operation
   --
   procedure Pop
     (Item  :    out Integer;
      Stack : in out Stack_Type) is
   begin
      --
      -- This operation reads the value at the top of the stack into the
      -- out parameter and decrements the pointer to the top of the stack.
      --
      Item := Stack.Data (Stack.Top);
      Stack.Top := Integer'pred (Stack.Top);

   end Pop;

   --
   -- The following operation performs the required push operation
   --
   procedure Push
     (Item  : in     Integer;
      Stack : in out Stack_Type) is
   begin
      --
      -- This operation increments the pointer to the top of the stack and
      -- write the item to the stack.
      --
      Stack.Top := Integer'succ (Stack.Top);
      Stack.Data (Stack.Top) := Item;
      
   end Push;
   
end Hierarchical_Libraries_Stack;

