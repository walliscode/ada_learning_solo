package OOP_Aircraft is

   -------------------------------------------------------------------------   
   --
   -- OOP Exercise 1
   --
   -- Complete The Specification and Write The body for package Aircraft.
   --         
   -- Note: Display is A Primitive Operation Which Displays The Value of all
   -- The Components On The Screen.  
   --
   -- The Two Display_Object_Details Operations Are Non-Dispatching But 
   -- Should Be Written To Dispatch To The Appropriate Display Primitive.
   --
   -------------------------------------------------------------------------         

   type Aircraft_Type is abstract tagged private; 

   type Aircraft_Ptr_Type is access all Aircraft_Type'Class; 

   --
   -- primitive subprogram
   --   
   procedure Display (Object : in Aircraft_Type ); 

   procedure Set_Airspeed (Object : access Aircraft_Type; 
                           Value  : in     Natural        ); 
   --
   -- Subprograms to demonstrate dispatching
   --
   procedure Display_Object_Details (Object : in     Aircraft_Ptr_Type ); 
   procedure Display_Object_Details (Object : in     Aircraft_Type'Class ); 

private
   --
   -- Full private decleration of Aircraft type
   --
   type Aircraft_Type is abstract tagged 
   record 
      Airspeed : Natural;  
   end record; 

end OOP_Aircraft;