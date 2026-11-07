--------------------------------------------------------------------
-- 
-- Assuming a system contained 20 softkeys, create a structure capable of
-- holding the details for each key.  The details should include:
--
--    Softkey legend (string 1.. 5)
--    Legend Position (Row, Column). 
--
-- Create a constant to hold details for only 2 softkeys and populate it 
-- with example details.  Iterate through the array and print all the details 
-- for each key on the display.  
-- 
--------------------------------------------------------------------

with Text_Io;

procedure Unconstrained_Array_Types_Exercise_1 is 

   --
   -- Define types to represnt the row and column
   --
   type Row_Type is range 1..24;
   type Column_Type is range 1..80;
   
   --
   -- Define a record type to hold details for one softkey
   --   
   type Softkey_Details_Type is
   record
      Legend : String (1..5);
      Row    : Row_Type;
      Column : Column_Type;
   end record;
   
   --
   -- Define types to represent the number of keys and an unconstrained array
   -- to hold a variable number of softkeys.
   --
   type Softkey_Type is range 1..20;

   type Softkey_Details_List_Type is array (???) of Softkey_Details_Type;
   
   --
   -- Declare an object to hold 2 softkeys
   --
   Page_1_Details : Softkey_Details_List_Type :=
      (1 => (Legend => "Tiald" ,
             Row    => 10 ,
             Column => 20),
       2 => (Legend => "Auto " ,
             Row    => 22 ,
             Column => 40));
begin
 
   --
   -- Print the array of records to show you can access the array and record components
   --
                         
end Unconstrained_Array_Types_Exercise_1;
