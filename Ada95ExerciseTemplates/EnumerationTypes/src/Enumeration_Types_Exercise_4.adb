
--------------------------------------------------------------------
--
-- Change the subtypes to separate types and include C130 in both sets.  
-- Declare an object of each enumeration type and set their value to C130 
--
--------------------------------------------------------------------

with Text_Io;

procedure Enumeration_Types_Exercise_4 is 

   type Commercial_Aircraft_Type is 
          
   type Military_Aircraft_Type is   
          
   --
   -- Compiler can resolve the possible ambiguity.
   --       
   The_Commercial_Aircraft : Commercial_Aircraft_Type := C130;
   The_Military_Aircraft   : Military_Aircraft_Type := C130;
   
   --
   -- Procedure to print commercial aircraft
   --
   procedure Print (Item : in Commercial_Aircraft_Type) is
   begin

   end Print;
     
   --
   -- Procedure to print military aircraft
   --
   procedure Print (Item : in Military_Aircraft_Type) is
   begin

   end Print;
 
begin
   --
   -- Compiler can resolve these, item is unique
   --                      
   Print (Item => EFA);
   Print (Item => Tri_Star);

   --
   -- Print C130, Compiler does not know which one to call, need to qualify 
   --

   
   --
   -- When printing C130, must qualify call
   --


end Enumeration_Types_Exercise_4;

--------------------------------------------------------------------  
