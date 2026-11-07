
--------------------------------------------------------------------
--
-- Write a program that contains a type whose range is the maximum number 
-- of values (signed) that can fit into 8 bits.  Print the minimum and 
-- maximum values of the type using attributes.
--
--------------------------------------------------------------------

with Text_io;

procedure Simple_Numeric_Types_Exercise_5 is

   --
   -- Use a constant here to aid maintenance
   -- Note: Scalar required, because the number is signed
   --
   Number_Of_Bits : constant := 8;
   Scalar : constant := Number_Of_Bits-1 ;
   
   --
   -- Define a type based on the above constants
   --
   type My_Type is 

begin
   --
   -- Display the range of my type
   --

                      
   --
   -- Print the size of my type to the screen
   --


end Simple_Numeric_Types_Exercise_5;
