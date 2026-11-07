
   ------------------------------------------------------------------------------------
   --
   -- This main procedure satisfies the Controlled types exercise 1. 
   -- The main program declares variables, delay etc. to check the 
   -- package works correctly.
   --
   ------------------------------------------------------------------------------------

with Controlled_Types_Statistics;

procedure Controlled_Types_Exercise_1 is

   Obj_1 : 
   Obj_2 : 
begin
   Controlled_Types_Statistics.Display_Object_Information;
   
   declare
      Obj_3 : 
   begin
      delay 1.0;
   end; 
   
   Controlled_Types_Statistics.Display_Object_Information;

end Controlled_Types_Exercise_1;
