--  --------------------------------------------------------------------
--  --
--  -- Write a program that prompts for the number of items to be entered, 
--  -- and then loops to take that number of numbers as input.  
--  -- Calculate the average and display the result.
--  --
------------------------------------------------------------------
with Text_Io;

procedure Program_Control_Flow_Exercise_2 is 

   --
   -- The following object is used to hold the users input request
   -- and a package to allow integers to be entered and displayed.
   --
   Number_Of_Values : Natural ;
   package Int_IO is new Text_IO.Integer_IO (Integer);
   
   --
   -- The following object holds the calculated average
   --
   Total : Integer := 0;
   
   --
   -- This object holds the input values typed by the user
   --
   Input_Value : Integer;
   
begin

   Text_IO.Put ("Enter no of input values required : ");
   Int_IO.Get (Number_Of_Values);

   Request_All_Input_Values:
   for This_Entry in 1..Number_Of_Values
   loop
      --
      -- Ask the user for the next value.
      --
      Text_Io.Put ("Enter Value : ");
      Int_IO.Get (Input_Value);
      
      --
      -- This solution keeps a running total of all the input values
      -- then divides at the end.  Could keep each value in an array
      -- Note: Many different solutions to this problem.
      --
???
      
   end loop Request_All_Input_Values;
   


end Program_Control_Flow_Exercise_2;
