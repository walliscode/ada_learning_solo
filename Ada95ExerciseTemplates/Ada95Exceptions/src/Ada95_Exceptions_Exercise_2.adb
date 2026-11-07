with Ada.Text_Io;
with Ada.Exceptions;

procedure Ada95_Exceptions_Exercise_2 is 

   -------------------------------------------------------------------------   
   --
   -- Modify the program from Ada95_Exceptions_Exercise_1 to use only one 
   -- exception Sum_Error but ensure the exception handler can determine 
   -- the type of exception raised (Size or Bounded). 
   --
   -- Hint. use Ada.Exceptions.Raise_Exception to attach the Appropriate Message.
   --
   -------------------------------------------------------------------------   

   --
   -- Decleration of the required exceptions
   --
   Sum_Error    : exception;  

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
       
         --
         -- Check for a bounded error
         --
      elsif Left'First /= Right'First
      then
         ???
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

   when others =>
      Ada.Text_Io.Put_Line ("others");


end Ada95_Exceptions_Exercise_2;
