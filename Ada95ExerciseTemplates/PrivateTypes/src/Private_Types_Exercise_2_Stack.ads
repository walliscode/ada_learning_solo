--
-- This package provides the facilities specified by the question, 
-- Packages and Private Types exercise 2,  See main program for description.
--

package Private_Types_Exercise_2_Stack is

   --
   -- This package provides a stack type, which must be private.
   --
   type Stack_Type is ???

   --
   -- Function to allow stacks to be compared.
   --
   function "=" ???
   
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
      ???
   end record;

end Private_Types_Exercise_2_Stack;
