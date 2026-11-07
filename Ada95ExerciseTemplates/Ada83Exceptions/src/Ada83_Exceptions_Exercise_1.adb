
-------------------------------------------------------------------------   
--
-- Write a main program that contains an internal function Sum
-- that takes two parameters of an unconstrained array type.
--
-- The function should raise the exception:
--   "Size_Error"    - if the arrays are of different sizes
--   "Bounded_Error" - if the array bounds are different.
--  
-- Otherwise the elements of the array should be added together
-- and the result returned.  
--
-- The main program should contain an exception handler that prints
-- the type of exception that is raised using the when construct.
--
------------------------------------------------------------------------- 
with Text_Io;

procedure Ada83_Exceptions_Exercise_1 is 

   --
   -- Decleration of the required exceptions
   --


   --
   -- The following is a simple decleration of an unconstrained type used
   -- for testing the exception mechanism.
   --
   type Index_Type is range 1 .. 100; 
   type Array_Type is array (Index_Type range <>) of Integer; 
   
-------------------------------------------------------------------------
   --
   -- The following operation performs the required Add Aircraft operation
   --  

   function Sum (Left,Right : in Array_Type) 
     return Integer is

      Result : Integer := 0; 
   begin
      --
      -- Check for a size_error
      --

      --
      -- Check for a bounded error
      --

         --
         -- Arrays the same bounds and size, so add components together
         --

   end Sum;

   --
   -- Simple decleration of different size arrays;
   --
   A : 
   B : 
   C : 

   Result : Integer;
begin
   --
   -- Call sum with various sized arrays to check exception.
   --


exception



end Ada83_Exceptions_Exercise_1;
