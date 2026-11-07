
--------------------------------------------------------------------
--
-- Declare two objects of type Integer and give them different initial values.  
-- Print the result on the screen, when:
--
--    - The Two Objects Are Added Together
--    - One is Subtracted From The Other
--    - The Two Objects Are Multiplied Together
--    - One is Divided By The Other
--
--------------------------------------------------------------------

with 

procedure Simple_Numeric_Types_Exercise_4 is 

   Object_1 : Integer;  
   Object_2 : Integer;  

   package Int_Io is new Text_Io.Integer_Io (Integer);

begin
   Text_IO.Put ("Enter Object 1 value : ");
   Int_IO.Get (Object_1);
   
   Text_IO.Put ("Enter Object 2 value : ");
   Int_IO.Get (Object_2);
   
-- Print the result on the screen, when:
--
--    - The Two Objects Are Added Together
--    - One is Subtracted From The Other
--    - The Two Objects Are Multiplied Together
--    - One is Divided By The Other
                      
end Simple_Numeric_Types_Exercise_4;
