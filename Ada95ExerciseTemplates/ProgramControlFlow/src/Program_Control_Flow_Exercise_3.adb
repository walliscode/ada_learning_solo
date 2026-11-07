--------------------------------------------------------------------
--
-- Write a program that prompts the user to enter a year and then classifies
-- whether or not it is a leap year.  
--
-- It is a leap year if:
--
--      It is Divisible By 4, and
--      It is Either not Divisible By 100, or It is Divisible By 400.
--
--       Leap Year     Non Leap Years
--          1996          1900
--          1984          1967
--          2000	  1998
--
--------------------------------------------------------------------
with Text_Io;

procedure Program_Control_Flow_Exercise_3 is 

   --
   -- The following object is used to hold the users input year
   -- and a package to allow the year to be entered and displayed.
   --
   The_Year : Natural ;
   package Year_IO is new Text_IO.Integer_IO (Integer);
   
   Is_a_leap_Year : Boolean;
   
begin

   Text_IO.Put ("Enter the year : ");
   Year_IO.Get (The_Year);


   --
   -- Determine if is a leap year
   --
   Is_a_leap_Year := ???
   
      if Is_a_leap_Year
      then
         Text_IO.Put_Line (Integer'Image (The_Year) & " is a leap year");
      else         
         Text_IO.Put_Line (Integer'Image (The_Year) & " is not a leap year");
      end if;

   end Determine_Whether_It_Is_A_Leap_Year;

end Program_Control_Flow_Exercise_3;
