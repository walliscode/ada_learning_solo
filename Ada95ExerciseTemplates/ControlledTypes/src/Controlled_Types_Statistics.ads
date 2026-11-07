
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
with Ada.Finalization;

package Controlled_Types_Statistics is

   --
   -- The object type must be tagged because it is an extension
   -- of Ada.Finalization.Limited_Controlled.  It is limited so 
   -- that no copies can be made.
   --
   type Object_Type is  

   --
   -- This operation displays the required details about the
   -- object passed to it as a parameter.
   --
   procedure Display_Object_Information; 

private

   --
   -- Object type is an extension of Ada.Finalization.Limited_Controlled with
   -- the creation time as its extended component.
   --
   type Object_Type is new ??? with 
   record 
     
   end record; 

   --
   -- Override the primitive Initialize and Finalize, these will setup the
   -- information required whenever a new object is either created or destroyed.
   --


end Controlled_Types_Statistics;
