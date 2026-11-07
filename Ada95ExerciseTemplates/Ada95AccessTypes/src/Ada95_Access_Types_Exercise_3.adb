with Ada.Text_Io;

procedure Ada95_Access_Types_Exercise_3 is 

   ------------------------------------------------------------------------------------   
   -- Write a main procedure that contains a type to represent aircraft.
   -- The aircraft type should contains two components, The aircraft’s tail number and its engine details.  

   -- The engine details should contain 3 pieces of information:

   --   - The number of engines connected
   --   - Their serial numbers (as a natural)
   --   - A reference back to the aircraft to which they are all connected.
   --   
   -- Declare a Jumbo which has four engines attached.  Set-up the tail number and all the engine serial numbers.  
   -- Now print all the information to the screen (including the tail number) by accessing the engine details only, 
   -- i.e. Find the Tail Number through the engine details.

   -- Hint : The type That Represents The Engine Details Will Need Two Discriminant Parameters 
   --        (No_Of_Engines & Aircraft_Type) 


   ------------------------------------------------------------------------------------      

   --
   -- Forward decleration of Aircraft Type.  This is required because
   -- Engine_Details_Type has an access discriminant that points to Aircraft_Type 
   -- and Aircraft_Type has a component of type Engine_Details_Type. 
   --
   type Aircraft_Type; 

   --
   -- The following types represent the engine serial numbers and an unconstrained
   -- array type which represents lists of engines. 
   --
   type Serial_Number_Type is range 000 .. 999; 
   type List_Of_Serial_Numbers_Type is array (Positive range <>) of Serial_Number_Type; 

   --
   -- Engine_Details_Type has number of engines (passed as a discriminant) and an 
   -- access to the aircraft to which they are connected.
   --
   type Engine_Details_Type 
         (Aircraft      : access Aircraft_Type; 
          No_Of_Engines :        Positive) is limited 
   record 
      
   end record; 

   --
   -- Aircraft_Type has a discriminant which identifies the number of engines,
   -- the Tail_Number and a list of engines that are conected.
   --
   type Aircraft_Type (No_Of_Engines : Positive) is 
   record 

   end record;

   --
   -- Declare two objects with different numbers of engines.
   --
   Jumbo   : Aircraft_Type (No_Of_Engines => 4);
   Tristar : Aircraft_Type (No_Of_Engines => 3);

begin
   --
   -- Setup the aircraft tail number and engine serial numbers. 
   --
   Jumbo.Tail_No := 
   Jumbo.The_Engines.Serial_Nos :=  


   --
   -- Print the aircraft tail number (via the engines)
   --


   Print_Engine_Serial_Numbers:
   for No in Jumbo.The_Engines.Serial_Nos'range
   loop

   end loop Print_Engine_Serial_Numbers;

end Ada95_Access_Types_Exercise_3;
