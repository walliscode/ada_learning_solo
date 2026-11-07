
--------------------------------------------------------------------
--
-- Write a procedure that contains an internal function that returns True or 
-- False according to whether an integer parameter is negative.  The main 
-- program should contain a loop that reads an integer, passes it to the 
-- internal operation and prints the result.  The loop should exit if a value of 
-- zero is entered. 
--
--------------------------------------------------------------------


with Text_IO;

procedure Subprograms_Exercise_1 is

   function Is_Negative ???

   package Integer_io is new Text_io.integer_io (integer);
   
   Digit : Integer := 1;
 
begin
   while Digit /= 0
   loop
      Text_IO.New_Line;
      Text_io.put ("Enter Digit : ");
      Integer_io.Get (digit);
      
      --
      -- Call internal function to determine if value entered is negative
      -- and print result
      --
      if ??
      then
         Text_io.put_Line (Integer'Image (Digit) & " Is negative");
      else
         Text_io.put_Line (Integer'Image (Digit) & " Is NOT negative");
      end if;
     
   end loop;

end Subprograms_Exercise_1;
