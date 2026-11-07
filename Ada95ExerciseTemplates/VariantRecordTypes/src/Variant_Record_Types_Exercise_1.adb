
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

-- Declare an object of each aircraft type and assign each object a 
-- set of default values.

--
--------------------------------------------------------------------


procedure Variant_Record_Types_Exercise_1 is 

   --
   -- Declare an enumeration type to represent the various 
   -- aircraft types.
   --
   type Aircraft_Type is 
        ???

   --
   -- Declare a variant record to represent the fields required
   -- for each of the aircraft types.
   --
   type Aircraft_Details_Type 
         (???) is 
      record 
         Airspeed : Integer;   
         
         case Type_Of_Aircraft is 

            
         end case;
   end record;
   
   --
   -- Declare an object of each aircraft type
   --
   A_Glider : constant 
      
   A_Passenger_Aircraft : constant 
      
   A_Military_Aircraft : constant 

begin
   --
   -- No code to write
   --
   null;

end Variant_Record_Types_Exercise_1;
