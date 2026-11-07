--
-- This package provides the facilities specified by the question, 
-- Hierarchical_Libraries exercise 1,  See main program for description.
--

package Hierarchical_Libraries_Stack is

   --
   -- This package provides a stack type, which must be private.
   --
   type Stack_Type is private; 

   --
   -- This operation perform the specified Push functionality
   --
   procedure Push (
         Item  : in     Integer;   
         Stack : in out Stack_Type ); 

   --
   -- This operation perform the specified Pop functionality
   --
    procedure Pop (
         Item  :    out Integer;   
         Stack : in out Stack_Type ); 
         
private
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

end Hierarchical_Libraries_Stack;
