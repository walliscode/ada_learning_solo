
--------------------------------------------------------------------
--
-- Write a program to calculate the area of a circle whose radius is 
-- entered at the terminal (as a float). 
--
--------------------------------------------------------------------

with Text_io;
procedure Real_Types_Exercise_2 is

   --
   -- Declare a package to allow fgloats to be entered an displayed
   --
   package Float_IO is new Text_Io.Float_Io (Float);

   --
   -- Declare objects to hold the radius and calculated area
   --
   Radius : Float ;
   Area : Float;

   PI : constant Float := 22.0 / 7.0;
   
begin
   --
   -- Ask user to enter a value for the radius
   --
   Text_Io.Put ("Enter Radius : ");
   Float_Io.Get (Radius);

   --
   -- Calculate the area and display it on the screen
   --


end Real_Types_Exercise_2;
