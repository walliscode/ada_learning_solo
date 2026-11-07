
--------------------------------------------------------------------
--
-- Write a main program that declares a floating point type with four 
-- least 4 decimal digits of precision and a fixed point type with an 
-- accuracy of 0.1.
--
-- Define Three constant Values of Pi, One with The Predefined type Float 
-- and The others Using The Declared Types.
--
-- Print all Three Values of Pi To The Terminal.
--
------------------------------------------------------------------------

with Text_IO; 
procedure Real_Types_Exercise_1 is 

   --
   -- Package and object using predefined floating point type
   --
   package Predefined_Float_Io is new Text_Io.Float_Io (Float);
   Predefined_Pi : constant Float :=  ???

   --
   -- Package and object using a floating point type with 4 digits of precision
   --
   type My_Float is  ???
   My_Float_Pi : ???
   package My_Float_Io is new Text_Io.Float_Io (My_Float);

   --
   -- Package and object using a fixed point type with accurracy of 0.1
   --
   type My_Fixed is ???
   My_Fixed_Pi : ???
   package My_Fixed_Io is new Text_Io.Fixed_Io (My_Fixed);

begin
   --
   -- Display the different representations of PI
   --
   Text_Io.Put ("Predefined Value of PI is ");
   

   Text_Io.Put ("My Float Value of PI is ");
   

   Text_Io.Put ("My Fixed Value of PI is ");
  

end Real_Types_Exercise_1;
