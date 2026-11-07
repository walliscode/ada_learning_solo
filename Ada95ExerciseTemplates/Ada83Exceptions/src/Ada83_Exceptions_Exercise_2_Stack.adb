With Text_IO;

package body Ada83_Exceptions_Exercise_2_Stack is


   --
   -- This section contains the full stack definition, i.e. a record that
   -- contains a 100 element array and an indicator which holds the top of 
   -- the stack
   --  
   Stack_Size : constant := 100;  
   
   type Stack_Data_Type is array (1 .. Stack_Size) of Integer; 
   type Stack_Type is 
   record 
      Data : Stack_Data_Type := (others => 0);  
      Top  : Natural range 0..Stack_Size := 0; 
   end record;

   The_Stack : Stack_Type;

   ----------------------------------------------------------------------
   -- Push
   --
   -- This operation increments the pointer to the top of the stack and
   -- writes the item to the stack.
   --
   ----------------------------------------------------------------------
   procedure Push (Item  : in Integer) is
   begin
      --
      -- Check to determine whether there is space to store the new item
      --

      
   end Push;
   
   ----------------------------------------------------------------------
   -- Pop 
   --
   -- This operation reads the value at the top of the stack into the
   -- out parameter and decrements the pointer to the top of the stack.
   --
   ----------------------------------------------------------------------
   function Pop return Integer is
   
      Value : Integer ;
   begin
      --
      -- Check to determine whether there is anything in the stack
      --

      
   end Pop;

   ----------------------------------------------------------------------
   -- Display
   --
   -- This operation iterates through the stack printing the contents
   --
   ----------------------------------------------------------------------
   procedure Display is
   begin
   
      Display_All_Pushed_Values:
      for This in The_Stack.Data'First .. The_Stack.Top
      loop
         Text_IO.Put_Line ("Element " & Integer'Image (This) &
                           "Data is " & Integer'Image (The_Stack.Data (This)));
                           
      end loop Display_All_Pushed_Values;
      
   end Display;


   -------------
   -- Size_Of --
   -------------

   function Size_Of return Natural is
   begin
      return The_Stack.Top;
   end Size_Of;

end Ada83_Exceptions_Exercise_2_Stack;

