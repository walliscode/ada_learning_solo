
--------------------------------------------------------------------
--
-- Write a procedure that contains an internal procedure "SWAP" to 
-- interchange two parameters of type integer. The main program should 
-- contain a loop that reads two integers, passes them to the internal 
-- operation and prints the result.  The loop should exit if two values of zero 
-- are entered. 
--
--------------------------------------------------------------------


with Text_Io;

procedure Subprograms_Exercise_3 is
                         
   --------------------------------------------------------------------------

   procedure Swap ???
   
   --------------------------------------------------------------------------

   package Integer_io is new Text_io.integer_io (integer);
   
   Entry_1 : Integer := 1 ;
   Entry_2 : Integer := 1 ;

begin
   while Entry_1 /= 0 and Entry_2 /= 0
   loop
      Text_io.new_line (2);
      Text_io.put ("Enter value 1 : ");
      Integer_io.get (Entry_1);

      Text_io.put ("Enter value 2 : ");
      Integer_io.get (Entry_2);
      
      Text_io.Put_Line ("Swapping entries ");
      --
      -- Call internal Swap routine to swap two numbers
      --
 
      --
      -- Now Print to prove swap worked
      --
      Text_IO.put_line ("  Entry 1 is now " & integer'image(Entry_1));
      Text_IO.put_line ("  Entry 2 is now " & integer'image(Entry_2));

   end loop;
                                                     
end Subprograms_Exercise_3;
