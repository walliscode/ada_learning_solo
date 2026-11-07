
--------------------------------------------------------------------
--
-- Based on the exercise above, display a message if the speed travelled 
-- exceeds MACH1.  Note: declare a constant to represent MACH1 (741mph).

--
--------------------------------------------------------------------

with Text_Io;
procedure Simple_Numeric_Types_Exercise_7 is 

   type Distance_Type is  -- miles
   type Time_Type is    -- minutes

   --
   -- Calculate the maximum possible speed
   --
   Maximum_Speed : constant := 
     

   type Speed_Type is 
   
   Mach1 : 
   

   --
   -- Define packages for I/O
   --
   package Distance_Io is new Text_Io.Integer_Io (Distance_Type);
   package Time_Io is new Text_Io.Integer_Io (Time_Type);

   Distance : Distance_Type;  
   Time     : Time_Type; 
   Speed    : Speed_Type; 

begin
   Text_Io.Put ("Enter Distance travelled (miles) : ");
   Distance_Io.Get (Distance);
   Text_Io.New_Line;

   Text_Io.Put ("Enter Time taken (minutes) : ");
   Time_Io.Get (Time);
   Text_Io.New_Line;

 
   if Speed > Mach1 
   then
      Text_IO.Put_Line ("Speed exceeds MACH1");
   end if;

end Simple_Numeric_Types_Exercise_7;
