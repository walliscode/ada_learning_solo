
--------------------------------------------------------------------
--
-- Write a program that contains a discriminated record containing 
-- softkey details.  The softkey details should include:
--
--      Row
--      Column
--      A Variable Length Legend (String Up To 5 Characters)
--
-- Declare two Objects of The Discriminated record type, One with 
-- a legend of ADC and one with a legend of TIALD.
--
-- Write an Internal procedure That Takes in The Discriminated 
-- record as a parameter, and Displays all The discriminated record 
-- details On The Screen.
--            
----------------------------------------------------------------------  

with Text_IO;

procedure Discriminated_Record_Types_Exercise_1 is

   --
   -- Legends can be between 1 and 5 characters long
   --
   Maximum_Legend_Length : Positive := 5;
   
   subtype Legend_Length_Type is Positive range 
      Positive'First ..Maximum_Legend_Length;
      
   --
   -- Define a discriminated record type with a variable length 
   -- legend.
   --
   type Softkey_Details_Type (???) is
   record
     ???
   end record;
   
   --
   -- Declare two objects with different length legends
   --
   Softkey_1 : constant Softkey_Details_Type := 

       
   Softkey_2 : constant Softkey_Details_Type := 


   ------------------------------------------------------------------------

   procedure Display (The_Details : in Softkey_Details_Type) is
   begin
       --
       -- Display the details of the parameter passed in.
       --

                               
   end Display;                              
                                 
------------------------------------------------------------------------

begin
  --
  -- Call the display operation for each of the softkey objects.
  --

  
end Discriminated_Record_Types_Exercise_1;
