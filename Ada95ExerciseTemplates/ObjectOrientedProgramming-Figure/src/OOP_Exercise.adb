

-- OOP Exercise 4
--
-- Remove the implementation from the Area operation in Figure, making Figure
-- and the Area operation <<abstract>>.  Implement Area in Circle, call it from
-- the main test program and output it.  Create an array of 2 elements in the
-- main test program.  The element should be an access type to the Figure
-- class.  Fill the array with references to the Circle and Rectangle objects
-- previously created.  Loop through the array calling the Area operation on 
-- each element of the array.  Does the appropriate behaviour get invoked? 
-- What is happening here?  Extend the Rectangle class with a Square class.  
-- Introduce another element to the Figure_Array and insert a reference to an 
-- instance of the Square class.  Test iterating through the Figure_Array 
-- again, is the appropriate behaviour exhibited?
--
-- Tip: Use the abstract Keyword in Figure and create an access type To Figure
-- in The main test program.
               
with 

with Ada.Text_IO;

procedure OOP_Exercise is
   

   -- 
   -- Create a "class wide" access type that can point at the base class
   -- Figure and any class derived from it.  This means that we can 
   --
   type Symbol_Handle is 
   
   --
   -- Declare a polymorphic array that can basically point to any object
   -- created from the the Figure's inheritance hierarchy
   --
   Symbol_List : array (1..3) of Symbol.Handle;
   
   --
   -- Statically allocate three objects that are allowed to be pointed at
   --
   A_Circle    : 
   A_Rectangle : 
   A_Square    : 
   

begin
      --
      -- Construct each of the objects
      --
      
      --
      -- Add each object to the SymbolList
      --
 

   --
   -- Iterate through the polymorphic array and despatch to the appropriate
   -- behaviour
   --
   Ada.Text_IO.Put_Line ("-----------------------------------------------");    
   Ada.Text_IO.New_Line (2);    

   for Index in Symbol_List'range loop
        
      
   end loop;

end OOP_Exercise;
