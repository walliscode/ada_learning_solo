with Ada.Text_Io;
with Ada.Exceptions;

procedure Ada95_Exceptions_Exercise_1 is 

   -------------------------------------------------------------------------   
   --
   -- Modify the exception handler, from Ada83 Exceptions, exercise 1, to use the 
   -- Exception_Occurrence package to print the name and any message attached to the
   -- Exceptions Raised (Size_Error /  Bounded_Error).
   --
   -------------------------------------------------------------------------   

   --
   -- Decleration of the required exceptions
   --
   Size_Error    : exception;  
   Bounded_Error : exception;  
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

   function Sum (Left, Right : in Array_Type ) 
     return Integer is 

      Result : Integer := 0;  
   begin
      --
      -- Check for a size_error
      --
      if Left'Length /= Right'Length
      then
         raise ???;
         --
         -- Check for a bounded error
         --
      elsif Left'First /= Right'First
      then
         raise ???;
      else
         --
         -- Arrays the same bounds and size, so add components together
         --
         Add_All_Components_Together:
            for Index in Left'range
               loop
            Result := Result + Left (Index) + Right (Index);
         end loop Add_All_Components_Together;

         return Result;

      end if;
   end Sum;

   --
   -- Simple decleration of different size arrays;
   --
   A      : Array_Type (1 .. 10)  := (others => 1);  
   B      : Array_Type (1 .. 20)  := (others => 2);  
   C      : Array_Type (10 .. 19) := (others => 100);  
   Result : Integer;  

begin
   --
   -- Call sum with various sized arrays to check exception.
   --
   Result := Sum (Left  => A, Right => C);
   Ada.Text_Io.Put (Integer'Image (Result));

exception

   when ???

   when others => ada.Text_io.put_Line ("others");


end Ada95_Exceptions_Exercise_1;
