
--------------------------------------------------------------------
-- Modify the program from Program Control Flow, Exercise 5 to 
-- exit the loop when the "Invalid" branch is taken.
--
--------------------------------------------------------------------

with Text_Io;

procedure Program_Control_Flow_Exercise_6 is 

   Entered_Character : Character;  
begin
   Forever:
   loop
      Text_Io.New_Line;

      Text_Io.Put ("Enter a character : ");
      Text_Io.Get (Entered_Character);

      case Entered_Character is
        
         ???
      end case;
      
   end loop Forever;

end Program_Control_Flow_Exercise_6;
