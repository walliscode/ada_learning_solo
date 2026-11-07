

   -------------------------------------------------------------------------   
   --
   -- OOP Exercise 1
   --  For a description of this package see the specifiaction.
   -------------------------------------------------------------------------   

with OOP_Aircraft;
with OOP_Aircraft.Powered;
with OOP_Aircraft.Powered.Military;
with OOP_Aircraft.Powered.Passenger;

package body OOP_Exercise_1 is

   --
   -- The following objects are used to test the OOP_aircraft package and
   -- its children.  They are marked as aliased because they will be pointed
   -- at. 
   --
   Powered   : aliased OOP_Aircraft.Powered.Aircraft_Type;  
   Military  : aliased OOP_Aircraft.Powered.Military.Aircraft_Type;  
   Passenger : aliased OOP_Aircraft.Powered.Passenger.Aircraft_Type;
   
   -- 
   -- Although not strictly required, these objects have been declared to 
   -- further demonstrate objects of an access type pointing to statically
   -- declared objects. 
   --
   Powered_Ptr   : OOP_Aircraft.Aircraft_Ptr_Type := Powered'access;   
   Military_Ptr  : OOP_Aircraft.Aircraft_Ptr_Type := Military'access;   
   Passenger_Ptr : OOP_Aircraft.Aircraft_Ptr_Type := Passenger'access; 
  
   procedure Run is   
   begin
      --
      -- Setup the Powered A/C using the set operations
      --
      OOP_Aircraft.Powered.Set_Airspeed 
         (Object => Powered'access,
          Value  => 1000);

      OOP_Aircraft.Powered.Set_Fuel_Load 
         (Object => Powered'access,
          Value  => 700);

      --
      -- Setup the Militry A/C using the set operations
      --
      OOP_Aircraft.Powered.Military.Set_Airspeed 
         (Object  => Military'access,
          Value   => 2000);

      OOP_Aircraft.Powered.Military.Set_Fuel_Load 
         (Object => Military'access,
          Value  => 13_000);

      OOP_Aircraft.Powered.Military.Set_Range_To_Target 
         (Object => Military'access,
          Value  => 13_000);

      --
      -- Setup the Passenger A/C using the set operations
      --
      OOP_Aircraft.Powered.Passenger.Set_Airspeed 
         (Object  => Passenger'access,
          Value   => 15_000);

      OOP_Aircraft.Powered.Passenger.Set_Fuel_Load 
         (Object => Passenger'access,
          Value  => 13_000);

      OOP_Aircraft.Powered.Passenger.Set_Number_Of_Passengers
         (Object => Passenger'access,
          Value  => 350);
                                                    
      --
      -- Call each of the Display operations with:
      --   1) Object directly (calls class wide operation)
      --   2) Access to the object
      --   3) The pointer object
      --   4) Dereference object
      --                             
      OOP_Aircraft.Display_Object_Details (Object => Powered); 
      OOP_Aircraft.Display_Object_Details (Object => Powered'access);   
      OOP_Aircraft.Display_Object_Details (Object => powered_Ptr);
      OOP_Aircraft.Display (Object => Powered_Ptr.all);

      OOP_Aircraft.Display_Object_Details (Object => Military); 
      OOP_Aircraft.Display_Object_Details (Object => Military'access);   
      OOP_Aircraft.Display_Object_Details (Object => Military_Ptr);
      OOP_Aircraft.Display (Object => Military_Ptr.all);

      OOP_Aircraft.Display_Object_Details (Object => Passenger); 
      OOP_Aircraft.Display_Object_Details (Object => Passenger'access);   
      OOP_Aircraft.Display_Object_Details (Object => Passenger_Ptr);
      OOP_Aircraft.Display (Object => Passenger_Ptr.all);

   end Run;
   
end OOP_Exercise_1;

