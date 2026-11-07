
   ------------------------------------------------------------------------------------
   --
   --
   -- Write a package "Statistics" that contains one type and the procedure "Display_Object_Information".
   -- You should ensure that users cannot copy objects of the type.  
   --
   -- The procedure is required to display the following information:
   --
   --   The current number of objects of the type that exist
   --   The maximum number of objects that have existed
   --   The length of time the longest object lived for
   --
   -- Note: A Limited Private controlled type should be used.
   -- 
   -- The main program should declare variables, delay etc. to check the package works correctly.
   --
   ------------------------------------------------------------------------------------

with Ada.Calendar;
with Ada.Text_IO;
with Ada.Float_Text_IO;

use type Ada.Calendar.Time;

package body Controlled_Types_Statistics is

   --
   -- The following objects are used to keep track of the object creation
   -- and destruction information.
   --
   The_Longest_Living_Object : Duration := 0.0;
   
   The_Current_Number_Of_Objects : Natural := 0;
   
   The_Maximum_Number_Of_Objects : Natural := 0;   
   
--------------------------------------------------------------

   --
   -- The following operation performs the required display operation
   --

   procedure Display_Object_Information is
   begin

                            
   end Display_Object_Information;

--------------------------------------------------------------

   --
   -- The following operation overrides the inherited primitive.
   -- When called The creation time of the object is then assigned 
   -- by reading the clock.
   --
   -- The current number of objects that exist is incremented and
   -- a check is performed to determine whether the current number is
   -- largest number ever.  If so, then the largest number ever is updated.
   --
   procedure Initialize (Object : in out Object_Type) is
   begin
      --
      -- Store the time this object was created
      --
      Object.Creation_Time := Ada.Calendar.Clock; 

      --
      -- Increment the number of objects in existence
      --

         
      --
      -- Determine if the peak number of objects has been exceeded
      --

      
   end Initialize; 
   
--------------------------------------------------------------   
   --
   -- The following operation overrides the inherited primitive.
   -- When called, it calculates how long the object being 
   -- destroyed lived for.  If it was the longest living object
   -- ever, the the object holding that information is updated.
   --   
   procedure Finalize (Object : in out Object_Type) is

      This_Objects_Lifetime : constant Duration :=
         Ada.Calendar.Clock - Object.Creation_Time;      
   begin
      --
      -- Decrement the number of objects in existence
      --

      --
      -- Determine if this was the longest living object
      --


   end Finalize;

end Controlled_Types_Statistics;

