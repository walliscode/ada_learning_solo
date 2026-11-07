--
-- This package provides the facilities specified by the question, 
-- Object Oriented Programming exercise 1,  See main program for description.
--

with Ada.Text_IO;

package body OOP_Aircraft is
  
----------------------------------------------------------------------
   --
   -- The following operation performs the required Set_Airspeed operation
   --
   procedure Set_Airspeed
      (Object : access Aircraft_Type;
       Value  : in     Natural) is
   begin
      Object.Airspeed := Value;   
   end Set_Airspeed;
   
----------------------------------------------------------------------
   
   --
   -- The following operation performs the required Display operation
   --
   procedure Display (Object : in Aircraft_Type) is
   begin
      Ada.Text_IO.Put_Line ("Displaying details for Aircraft.Aircraft_Type");
      Ada.Text_IO.Put_Line ("Airspeed is " & Natural'Image (Object.Airspeed));
   end Display;
      
----------------------------------------------------------------------  

   --
   -- The following operation performs the required Display_Object_Details
   -- operation
   --
   procedure Display_Object_Details (Object : in Aircraft_Type'class) is
   begin
      --
      -- This operation is passed a parameter of a class wide type.
      -- A call to the primitive operation Display will dispatch.
      --
      Ada.Text_io.put_line ("Display (class wide) called, Dispatching");
      Display (Object);
      
   end Display_Object_Details;
   
----------------------------------------------------------------------
   --
   -- The following operation performs the required Display_Object_Details
   -- operation
   --
   procedure Display_Object_Details (Object : in Aircraft_Ptr_Type) is
   begin
      --
      -- This operation is passed a parameter of a class wide access type.
      -- A call to the primitive operation Display will dispatch.
      --
      -- Note: The access type is dereferenced.
      --
      Ada.Text_io.put_line ("Display (access type) called, Dispatching");
      Display (Object.all);
      
   end Display_Object_Details;
   
end OOP_Aircraft;

