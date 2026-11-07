
---------------------------------------------------------------------------  
--
--  Write A package ‘Stack’ That allows Integer Values to be
--
--    Pushed  - Stored on the Stack
--    Popped  - Read (and consumed) from the stack.
--    Display - Display the current stack contents
--    Size_Of - Returns the number of elements on the stack
--
--       1.	Instantiate the stack to store up to 20 integer value
--       2.	Push 10 values in the stack
--       3.           Check the display operation works
--
--  The main program should test the stack facilities
--
------------------------------------------------------------------------------

with Ada83_Generic_Programming_Exercise_2_Stack;
with Text_Io;

procedure Ada83_Generic_Programming_Exercise_2 is

   --
   -- Declare a record type, used to create a stack of
   --
   type Record_Type is
   record
      Component_1 : Boolean ;
      Component_2 : Integer ;
   end record;

   --
   -- This operation has knowledge of how to display the contents of
   -- a record_type.  It is passed to the generic so that it can be
   -- called when the stack contents must be displayed. 
   --
   procedure Display_Record (Item : in Record_Type) is
   begin
      --
      -- Simply display each record component
      --
      Text_IO.Put_Line ("Record component_1 => " & 
                        Boolean'Image (Item.Component_1));
                        
      Text_IO.Put_Line ("Record component_2 => " & 
                        Integer'Image (Item.Component_2));
   end Display_Record;
   
   
   --
   -- Instantiate the stack to store upto 20 integers,
   -- Note: The display operation is passed as a parameter
   --
   package My_Stack is new Ada83_Generic_Programming_Exercise_2_Stack
      (Item_Type       => Record_Type,
       Stack_Size      => 20,
       Display_An_Item => Display_Record);

   --
   -- This object is used to hold the values popped from the stack
   --
   Retrieved_Value : Record_Type;
 
begin
   --
   -- Push some values onto esach stack.
   --
   My_Stack.Push (Item  => (Component_1 => True,
                            Component_2 => 748));
                            
   My_Stack.Push (Item  => (Component_1 => False,
                            Component_2 => 916));

   My_Stack.Push (Item  => (Component_1 => True,
                            Component_2 => 996));

   --
   -- Display the size of the stack
   --
   Text_IO.Put_Line ("Size of stack is " &
                     Integer'Image (My_Stack.Size_Of));
   
   --
   -- Display the stack contents
   -- 
   My_Stack.Display;
   
   --
   -- Now pop an item and redisplay details
   --
   Retrieved_Value := My_Stack.Pop;
   
   --
   -- Display the size of the stack
   --
   Text_IO.Put_Line ("Size of stack is " &
                     Integer'Image (My_Stack.Size_Of));
   
   --
   -- Display the stack contents
   -- 
   My_Stack.Display;
   
   --
   -- Now keep popping until an underflow occurrs
   -- Two items left on the stack, so pop 3 times.
   --
   Text_IO.New_Line (2);
   Text_IO.Put_Line ("Popping to test exception");
   
   --
   -- Now test that an undeflow exception is generated
   --
   Pop_Until_Exception:
   for Pop in 1..3
   loop
      Retrieved_Value := My_Stack.Pop;
   end loop Pop_Until_Exception;
   
--
-- Catch any exceptions generated
--
exception

   when My_Stack.Overflow =>
           Text_IO.New_Line (2);
           Text_IO.Put_Line ("***** Overflow Occurred *****");
           
   when My_Stack.Underflow =>
           Text_IO.New_Line (2);
           Text_IO.Put_Line ("***** Underflow Occurred *****");
           
   when others =>
           Text_IO.New_Line (2);
           Text_IO.Put_Line ("***** Other exception Occurred *****");

end Ada83_Generic_Programming_Exercise_2;
   