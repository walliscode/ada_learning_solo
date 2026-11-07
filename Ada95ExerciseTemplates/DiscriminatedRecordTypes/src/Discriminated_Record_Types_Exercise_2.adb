
---------------------------------------------------------------------
--
-- Write a procedure that can transpose squares of size 1X1 to 10X10.
-- Declare two internal operations, Transpose and Print. 
-- 
-- The transpose operation transposes the square and the print operation
-- displays the contents on the screen.  
--
-- Declare two squares of different Sizes, Display their Initial 
-- Contents, Call The Internal Operation To Transpose them and then 
-- Print their new Values.
--
--------------------------------------------------------------------
   
with Text_IO;

procedure Discriminated_Record_Types_Exercise_2 is

   --
   -- Declare a package to display integer values on the screen
   --
   package Integer_io is new Text_io.integer_io (integer);
  
   --
   -- Declare an array index type and unconstrained array of integers.
   -- these types will be used to create the discriminated record 
   -- representing the square.
   --
   type Index_Type is range 1..10;
   type Array_Type is array 

   --
   -- The following type represents the square, the parameter 'Size'
   -- constrains the index in both directions.
   --  
   type Square_Type (???) is
   record
      ???
   end record;

------------------------------------------------------------------------

   --
   -- Define two squares of different sizes.
   --
   Square_1 : Square_Type :=

   Square_2 : Square_Type :=

------------------------------------------------------------------------
   --
   -- As requested, this operation transposes the square.
   --
   procedure Transpose(The_Square : in out Square_Type) is
      
      --
      -- This local object is required to store the transposed square
      --

      
   begin
      --
      -- Two loops are required, one for the X index and an internal
      -- loop for the Y index.
      --
      Transpose_It:
      for Outer in The_Square.Values'range
      loop
         for Inner in The_Square.Values'range
         loop
           --
           -- Copy the values to the object holding the transposed values
           --
 
         end loop; 
      end loop Transpose_It;

      --
      -- Copy the transposed square to the output parameter
      --
      The_Square := Transposed_Square;
      
   end Transpose;                              
                                                            
------------------------------------------------------------------------

   --
   -- As requested, this operation displays the square
   --
   procedure Display (The_Square : in out Square_Type) is
   begin
      --
      -- Fix the output display width to 2
      --
      Integer_io.default_width := 2;
  
      --
      -- Simply loop through the square (in both directions) displaying
      -- the contents.
      --
      Transpose_It:
      for Outer in The_Square.Values'range
      loop
         for Inner in The_Square.Values'range
         loop

         end loop; 
         
         Text_io.new_line;

      end loop Transpose_It;
   end Display;                              
  
begin
   --
   -- Display and transpose square 1
   -- 
   Text_io.put_line ("Displaying Square 1");
   Display   (The_Square => Square_1);
  
   Text_io.put_line ("Transposing Sqaure 1");
   Transpose (The_Square => Square_1);
  
   Text_io.put_line ("Displaying Square 1"); 
   Display   (The_Square => Square_1);
  
   --
   -- Display and transpose square 2
   -- 
   Text_io.put_line ("Displaying Square 2");
   Display   (The_Square => Square_2);
  
   Text_io.put_line ("Transposing Sqaure 2");
   Transpose (The_Square => Square_2);
  
   Text_io.put_line ("Displaying Square 2"); 
   Display   (The_Square => Square_2);
  
end Discriminated_Record_Types_Exercise_2;
