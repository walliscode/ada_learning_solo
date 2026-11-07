--
-- This package provides the facilities specified by the question, 
-- Object Oriented Programming exercise 1,  See main program for description.
--

package OOP_Aircraft.Powered is

   --
   -- Dot notation to avoid name clashes if child packages are used
   --
   -- type Aircraft_Type is new OOP_Aircraft.Aircraft_Type with private;
   type Aircraft_Type is  new OOP_Aircraft.Aircraft_Type with private;

   --
   -- Additional primitive operation to set the fuel load attribute
   --   
   procedure Set_Fuel_Load 
      (Object : access Aircraft_Type;
       Value  : in     Natural);
   
private 
   --
   -- Private extension.
   --
   type Aircraft_Type is new OOP_Aircraft.Aircraft_Type with
   record
      Fuel_Load : Natural;
   end record;
   
   --
   -- Overridden primitive operation.
   -- Note: It is declared in the private part which means it can not be
   --       called directly, only dispatched to.
   -- 
   Procedure Display (Object : in Aircraft_Type);

end OOP_Aircraft.Powered;
