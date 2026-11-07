
--------------------------------------------------------------------
--
-- Modify the program Program Control Flow, exercise 6 to use the while 
-- construct.  The exit condition should remain the same.
--
--------------------------------------------------------------------
with Text_Io;

procedure Program_Control_Flow_Exercise_7 is 

   Entered_Character : Character;
   Character_Valid : Boolean := True;   
begin
   Forever:
   while Character_Valid
   loop
      Text_Io.New_Line;

      Text_Io.Put ("Enter a character : ");
      Text_Io.Get (Entered_Character);

      case Entered_Character is
         ???
      end case;
      
   end loop Forever;

end Program_Control_Flow_Exercise_7;
