--------------------------------------------------------------------
--
-- Using an indefinite loop, write a program to enter a character at the 
-- terminal.  
--
-- Using an elsif construct print "digit" if the number is in the range  
-- 0 .. 9, "Upper Case" if an upper case character is entered, "Lower Case" if 
-- a lower case character is entered. Any other input shall result in "Invalid" 
-- being printed. 
--
--------------------------------------------------------------------
with Text_Io;

procedure Program_Control_Flow_Exercise_4 is 

   Entered_Character : Character; 
   
   subtype Numbers is ???
   subtype Upper_Case is ???
   subtype Lower_Case is ???

 
begin
   Forever:
   loop
      Text_Io.New_Line;

      Text_Io.Put ("Enter a character : ");
      Text_Io.Get_Immediate (Entered_Character);

      --
      -- Determine type of character and pront the answer
      --
      ???
   end loop Forever;

end Program_Control_Flow_Exercise_4;
