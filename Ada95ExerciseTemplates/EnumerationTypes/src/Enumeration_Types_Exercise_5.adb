
--------------------------------------------------------------------
--
-- Ask the user to input two numbers.  Declare an object of type 
-- Boolean and sets its value according to whether the first number 
-- entered was greater than the second.  Print the value of the 
-- Boolean object.
--
---------------------------------------------------------------------------
with Text_io;
procedure Enumeration_Types_Exercise_5 is 

   -- 
   -- These objects are used to hold the user input
   --
   Value_1 : Integer ;
   Value_2 : Integer ;
   
   --
   -- Instantiate a package to allow the user to enter integers
   --
   package Int_IO is new Text_IO.Integer_IO (Integer);
   
   --
   -- Object to hold the boolean result of the comparison
   --
   Value_1_Is_Greater : Boolean;

begin
   --
   -- Get the numbers from the user
   --
   Text_IO.Put ("Enter value 1 : ");
   Int_IO.Get (Value_1);
   
   Text_IO.Put ("Enter value 2 : ");
   Int_IO.Get (Value_2);

   --
   -- Work out which greater
   --


   --
   -- Display the result
   --   
   Text_Io.Put_Line ("Value 1 is greater is : " &
                     Boolean'image (Value_1_Is_Greater));
 
end Enumeration_Types_Exercise_5;
