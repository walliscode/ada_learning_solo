
--------------------------------------------------------------------
--
-- Declare a type to represent Time and one to represent Distance.  
-- Ask the user to input the distance covered and the Time taken.  
-- Display the average speed travelled
--
--------------------------------------------------------------------

with Text_Io;
procedure Simple_Numeric_Types_Exercise_6 is 

   type Distance_Type is  -- miles
   type Time_Type is    -- minutes
   
   --
   -- Calculate the maximum possible speed
   --
   Maximum_Speed : constant := 
   
   type Speed_Type is 
   
   --
   -- Define packages for I/O
   --
   package Distance_IO is new Text_IO.Integer_IO (Distance_Type);
   package Time_IO is new Text_IO.Integer_IO (Time_Type);

   Distance : Distance_Type;
   Time     : Time_Type;
   
   Speed : Speed_Type;
   
begin
   --
   -- Ask the user to input distance and speed.
   --
   Text_IO.Put ("Enter Distance travelled (miles) : ");
   Distance_IO.Get (Distance);
   Text_Io.New_Line;
   
   Text_IO.Put ("Enter Time taken (minutes) : ");
   Time_IO.Get (Time);
   Text_Io.New_Line;
   
   --
   -- Calculate speed, distance and time are converted to integers
   -- to perform the calculation to avoid potential overflows.
   --
   
                     
end Simple_Numeric_Types_Exercise_6;
