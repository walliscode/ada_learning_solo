--------------------------------------------------------------------
--
-- Modify the program from Program Control Flow, Exercise 4 to use 
-- the case construct. 
--
--------------------------------------------------------------------

with Text_Io;

procedure Program_Control_Flow_Exercise_5 is 

   Entered_Character : Character;  
   
   subtype Numbers is ???
   subtype Upper_Case ???
   subtype Lower_Case ???

begin
   Forever:
   loop
      Text_Io.New_Line;

      Text_Io.Put ("Enter a character : ");
      Text_Io.Get (Entered_Character);

      --
      -- Use case statement to determine character type
      --
      case Entered_Character is
         

      end case;
      
   end loop Forever;

end Program_Control_Flow_Exercise_5;
