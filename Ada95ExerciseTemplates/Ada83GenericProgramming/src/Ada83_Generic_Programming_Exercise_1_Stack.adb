With Text_IO;

package body Ada83_Generic_Programming_Exercise_1_Stack is


   --
   -- This section contains the full stack definition, i.e. a record that
   -- contains the number of elements (as defined by the generic parameter
   -- Stack_Size) and an indicator which holds the top of 
   -- the stack
   --
  
   --
   -- Note: This is a subtype because the range is not static, i.e. its range
   --       is defined by a generic formal parameter.
   --
   subtype Stack_Length_Type is Natural range 0..Stack_Size; 
   
   type Stack_Data_Type is array (1 .. Stack_Length_Type'Last) of Item_Type; 
   
   type Stack_Type is 
   record 
      Data : Stack_Data_Type := (others => 0);  
      Top  : Stack_Length_Type := 0; 
   end record;

   The_Stack : Stack_Type;

   ----------------------------------------------------------------------
   -- Push
   --
   -- This operation increments the pointer to the top of the stack and
   -- writes the item to the stack.
   --
   ----------------------------------------------------------------------
   procedure Push (Item  : in Item_Type) is
   begin
      --
      -- Check to determine whether there is space to store the new item
      --
      if The_Stack.Top = Stack_Size
      then
         --
         -- No space available, raise exception.
         --
         raise Overflow;
      else
         --
         -- Space is available, so increment top and store new item
         --
         The_Stack.Top := Stack_Length_Type'Succ (The_Stack.Top);
         The_Stack.Data (The_Stack.Top) := Item;
         
      end if;
      
   end Push;
   
   ----------------------------------------------------------------------
   -- Pop 
   --
   -- This operation reads the value at the top of the stack into the
   -- out parameter and decrements the pointer to the top of the stack.
   --
   ----------------------------------------------------------------------
   function Pop return Item_Type is
   
      Value : Item_Type ;
   begin
      --
      -- Check to determine whether there is anything in the stack
      --
      if The_Stack.Top = 0
      then
         --
         -- No items to pop, raise exception.
         --
         raise Underflow;
      else
         --
         -- Items to pop, so pop item, decrement top of stack and
         -- return the popped item
         --
         Value := The_Stack.Data (The_Stack.Top);
         The_Stack.Top := Stack_Length_Type'Pred (The_Stack.Top);
         return Value;
      end if;
      
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
         Text_IO.Put_Line ("Element " & Stack_Length_Type'Image (This) &
                           "Data is " & Item_Type'Image (The_Stack.Data (This)));
                           
      end loop Display_All_Pushed_Values;
      
   end Display;


   -------------
   -- Size_Of --
   -------------

   function Size_Of return Natural is
   begin
      return The_Stack.Top;
   end Size_Of;

end Ada83_Generic_Programming_Exercise_1_Stack;

