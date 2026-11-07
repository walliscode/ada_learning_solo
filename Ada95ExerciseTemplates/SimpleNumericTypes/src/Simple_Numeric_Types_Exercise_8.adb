

--------------------------------------------------------------------
--
--  Declare a type To Represent People'S Ages. Declare Three Subtypes, 
--  One To Represent The Ages of Children, One for Adults and One for 
--  Pensioners.  
--
--  Declare An Object of Each and Assign Them Initial Values. Now:
--
--     - Display The Age of Each Person On The Screen
--     - Assign The Age of The Adult To The Pensioner Object
--     - Assign The Age of The Adult To The Child (What Happened ?)
--
--------------------------------------------------------------------

with Text_IO;

procedure Simple_Numeric_Types_Exercise_8 is
   
   type Age_Type is 
   
   subtype Child_Type is 
   
   subtype Adult_Type is 
   
   subtype Pensioner_Type is 
   
   Child : Child_Type     := 10;
   Adult : Adult_Type     := 21;
   Oldie : Pensioner_Type := 70;
   
   begin
   --
   -- Print the ages
   --

   
   --
   -- Assign The Age of The Adult To The Pensioner Object
   -- Assign The Age of The Adult To The Child (What Happened ?)
   --

   
end Simple_Numeric_Types_Exercise_8;
