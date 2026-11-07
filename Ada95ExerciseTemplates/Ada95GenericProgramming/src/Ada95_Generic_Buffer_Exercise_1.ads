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
   --------------------------------------------------------------------

with Ada.Text_IO;

generic
   type Item_Type is
   type Index_Type is  

   with function To_Integer (Item : in Item_Type) return Integer;
   with package Display_Utilities is new Ada.Text_Io.Integer_IO (Integer);
   
package Ada95_Generic_Buffer_Exercise_1 is

   Overflow  : exception;
   Underflow : exception;

   procedure Write (Item : in Item_Type); 
   procedure Read (Item : out Item_Type); 

   procedure Display; 

end Ada95_Generic_Buffer_Exercise_1;
