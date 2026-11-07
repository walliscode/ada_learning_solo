
--------------------------------------------------------------------
--
-- Declare a variant record to hold aircraft details for 3 different
-- types of aircraft (glider, passenger, and military).  
-- The details should include:
--
--     All 		=> Airspeed 
--
--     Passenger 	=> Fuel load
--                   Number of passengers
--                   Number of vegetarian meals
--
--     Military 	=> Fuel_load
--                   Number of bombs
--
-- Declare an object of each aircraft type and assign each object a 
-- set of default values.
--
-- Declare an array of 3 aircraft, one of each type and write a 
-- procedure to print the aircraft details.  Iterate through the 
-- list calling the Display procedure for Each Element of The array 
--
--------------------------------------------------------------------

with Text_IO;

procedure Variant_Record_Types_Exercise_2 is 

   --
   -- Declare an enumeration type to represent the various 
   -- aircraft types.
   --
   type Aircraft_Type is 
         (Glider,    
          Passenger, 
          Military); 

   --
   -- Declare a variant record to represent the fields required
   -- for each of the aircraft types.
   -- Note: This type is used as an array component, therefore it needs
   --       a default applied to make it definite.
   --
   type Aircraft_Details_Type 
         (Type_Of_Aircraft : Aircraft_Type := Glider) is 
      record 
         Airspeed : Integer;   
         
         case Type_Of_Aircraft is 
            
           
         end case;
   end record;
   
   --
   -- Declare an object of each aircraft type
   --
   A_Glider : constant Aircraft_Details_Type :=
      
   A_Passenger_Aircraft : constant Aircraft_Details_Type :=

      
   A_Military_Aircraft : constant Aircraft_Details_Type :=

       
   --
   -- Create an array type to hold aircraft details
   --    
   type Array_Type is array 
   
   --
   -- Create a constant list of the array type and populate it with
   -- each type of aircraft
   --
   The_Aircraft_List : constant Array_Type :=
     
       
   ----------------------------------------------------------------------------

   procedure Display (The_Details : in Aircraft_Details_Type) is 
   begin
      Text_Io.New_Line;

      --
      -- Display the common components, aircraft type and airspeed
      --
      Text_Io.Put_Line ("Type of Aircraft     => " & Aircraft_Type
         'Image (The_Details.Type_Of_Aircraft));
         
      Text_Io.Put_Line ("Airspeed             => " & Integer'Image
         (The_Details.Airspeed));
         
      --
      -- Must check the aircraft type and access the correct components,
      -- accessing the wrong ones will cause a constraint error to be raised  
      --   
      
   
   end Display;
          
begin
   --
   -- Iterate through the list calling the Display procedure for Each Element 
   --
   Display_All_Detials:
   for This_AC in The_Aircraft_List'range
   loop
      --
      -- Call the display operation for this element
      --
      Display (The_Details => The_Aircraft_List (This_AC));
      
   end loop Display_All_Detials;

end Variant_Record_Types_Exercise_2;
