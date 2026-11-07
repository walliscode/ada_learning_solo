--
-- This package provides the facilities specified by the question, 
-- Ada83 Exceptions exercise 2,  See main program for description.
--

package Ada83_Exceptions_Exercise_2_Stack is

   --
   -- Declare exceptions that can be raised by this package
   --

   

   --
   -- This operation perform the specified Push functionality
   --
   procedure Push (Item  : in Integer); 

   --
   -- This operation perform the specified Pop functionality
   --
   function Pop return Integer; 
   
   --
   -- This operation displays the current stack contents
   --
   procedure Display;
   
   --
   -- This operation returns the number of elements on the stack
   --
   function Size_Of return Natural;
         

end Ada83_Exceptions_Exercise_2_Stack;
