--
-- This package provides the facilities specified by the question, 
-- Ada83 Generic Programmin exercise 1,  See main program for description.
--
generic
   --
   -- Item_Type defines the type of item that can be stored on
   -- the stack, it can be any integer type.
   --
   type Item_Type is range <>;
   
   --
   -- This parameter defines the size of the stack.
   --
   Stack_Size : in Integer;
   
package Ada83_Generic_Programming_Exercise_1_Stack is

   --
   -- Declare exceptions that can be raised by this package
   --
   Overflow : exception ;
   Underflow : exception;
   

   --
   -- This operation perform the specified Push functionality
   --
   procedure Push (Item  : in Item_Type); 

   --
   -- This operation perform the specified Pop functionality
   --
   function Pop return Item_Type; 
   
   --
   -- This operation displays the current stack contents
   --
   procedure Display;
   
   --
   -- This operation returns the number of elements on the stack
   --
   function Size_Of return Natural;
         

end Ada83_Generic_Programming_Exercise_1_Stack;
