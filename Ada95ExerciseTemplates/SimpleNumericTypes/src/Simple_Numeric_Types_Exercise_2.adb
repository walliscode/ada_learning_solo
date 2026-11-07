
--------------------------------------------------------------------
--
-- Remove the hard coded values (from exercise 1)  and prompt the 
-- user to enter the height and width
--
--------------------------------------------------------------------

with Text_Io;
with Ada.Integer_Text_IO;

procedure Simple_Numeric_Types_Exercise_2 is 

   Height :  
   Width  : 

   package Int_IO is new Text_IO.Integer_IO (Integer);  

begin
   Text_IO.Put ("Enter Height : ");
   Ada.Integer_Text_IO.Get (Height);
   
   Text_IO.Put ("Enter Width : ");
   Int_IO.Get (Width);
   
      --
      -- Calculate area and print it
      --
      

end Simple_Numeric_Types_Exercise_2;
