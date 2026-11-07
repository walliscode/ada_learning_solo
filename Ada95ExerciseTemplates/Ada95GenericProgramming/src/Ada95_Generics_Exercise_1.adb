
   --------------------------------------------------------------------
   --
   -- Modify the generic buffer (from Ada83 Generics, exercise 1) so that 
   -- the buffer index is a formal parameter and so that any data type can 
   -- be stored in the buffer, ie. Make the type private. 
   --
   --     The Display operation will no longer work. 
   -- 
   -- To allow the buffer contents to still be displayed, modify the 
   -- generic specification to include two further formal parameters:

   --   Function 'To_Integer (which converts a buffered item to an integer)
   --   Package 'Display_Utilities (instantiation of Integer_IO) 
   -- 
   -- When the buffer contents are to be displayed, each element in the 
   -- buffer should be passed in to the function which converts the element
   -- to an integer.  
   -- The result can then be passed directly into Display_Utilities.Put.

   --Note: Ensure the actual parameter type for Display_Utilities is always 
   --integer.
   --  
   -- This file contains the main procedure that instantiate the buffer.
   --
   --------------------------------------------------------------------

with Ada95_Generic_Buffer_Exercise_1;
with Ada.Text_Io;

procedure Ada95_Generics_Exercise_1 is

   type My_Item_Type is range 0..666;
   type My_Index_Type is mod 4;
      
   function My_To_Integer (Item : in My_Item_Type) return Integer is
   begin
      return Integer (Item);
   end My_To_Integer;
   
   package My_Integer_IO is new Ada.Text_IO.Integer_IO (Integer);
   
   package Buffer is new Ada95_Generic_Buffer_Exercise_1 
   

begin
   --
   -- Write some items to the stack and display it
   --

   
   --
   -- Writing too many components to check overflow
   --
   begin
      
   exception
      when 
       
      when others =>
         Ada.Text_Io.Put_Line("Unexpected exception!");   
   end ;

   --
   -- Read all the items from the stack and then display it
   --
   Read_All_Items:
   declare
      Read_Item : My_Item_Type;
   begin
      for I in 1..4
      loop
         
      end loop;
   end Read_All_Items;
   
   Buffer.Display;   

   --
   -- Read too many components to check underflow
   --
   Read_Extra_Item:
   declare
      Read_Item : My_Item_Type;
    begin
       Buffer.Read (Item => Read_Item);
   exception
      when 
   end Read_Extra_Item;

end Ada95_Generics_Exercise_1;
