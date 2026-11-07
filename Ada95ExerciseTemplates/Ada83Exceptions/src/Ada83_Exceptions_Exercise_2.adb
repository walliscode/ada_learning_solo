with Ada83_Exceptions_Exercise_2_Stack;
with Text_Io;

procedure Ada83_Exceptions_Exercise_2 is

   ------------------------------------------------------------------------------------   
   --
   --  Write A package ‘Stack’ That allows Integer Values to be
   --
   --    Pushed  - Stored on the Stack
   --    Popped  - Read (and consumed) from the stack.
   --    Display - Display the current stack contents
   --    Size_Of - Returns the number of elements on the stack
   --
   --  The main program should test the stack facilities
   --
   --------------------------------------------------------------------------------------   

   --
   -- This object is used to hold the values popped from the stack
   --
   Retrieved_Value : Integer;
 
begin
   --
   -- Push some values onto esach stack.
   --
  

   --
   -- Display the size of the stack
   --

   
   --
   -- Display the stack contents
   -- 

   
   --
   -- Now pop an item and redisplay details
   --

   
   --
   -- Display the size of the stack
   --

   
   --
   -- Display the stack contents
   -- 
   Ada83_Exceptions_Exercise_2_Stack.Display;
   
   --
   -- Now keep popping until an underflow occurrs
   -- Two items left on the stack, so pop 3 times.
   --

   
   --
   -- Now test that an undeflow exception is generated
   --
   Pop_Until_Exception:
   for Pop in 1..3
   loop
 
   end loop Pop_Until_Exception;
   
--
-- Catch any exceptions generated
--
exception



end Ada83_Exceptions_Exercise_2;
