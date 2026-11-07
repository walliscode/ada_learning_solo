------------------------------------------------------------------------------
--                                                                          --
-- Write A Program That Performs The Following Complex Number Calculations  --
-- and Print The Result On The Screen Using Ada.Float_Text_Io To Display    --  
-- The Values of The Real and Imaginary Parts:                              --
--                                                                          --
--  A.	(3-5I) + (6+7I)                                                 --
--  B.	(3-5I) - (6+7I)                                                 --
--  C.	(3-5I) * (6+7I)                                                 --
--  D.	(3-5I) / (6+7I)                                                 --
--                                                                          --
-- Use A constant To Define The First Complex Number (3-5I) and The         -- 
-- Constructor (Set_Re & Set_Im) To Setup A Variable Containing The         --
--   Second Complex Number (6_7I).                                          --
--                                                                          --
--   use The Functions Re & Im To Get The Complex Number Component Values   --
--                                                                          --
------------------------------------------------------------------------------
with Ada.Numerics.Complex_Types;
use type Ada.Numerics.Complex_Types.Complex;

with Ada.Text_IO;
with Ada.Float_Text_io;

procedure Complex_Numbers_Test_1 is

   --
   -- Define constants for the two complex numbers used in the calculations.
   --
   C1 : constant Ada.Numerics.Complex_Types.Complex :=  
                       (Re =>  3.0,  -- Real part
                        Im => -5.0); -- imaginary part
                        
   --
   -- Will be set using a the constructor
   --                     
   C2 : Ada.Numerics.Complex_Types.Complex;

   --
   -- Internal procedure for printing a complex number of the screen
   --              
   procedure Print_Complex (Message : in String ;
                            Value   : in Ada.Numerics.Complex_Types.Complex) is
   begin
   
     Ada.Text_IO.Put (Message);
     Ada.Float_Text_io.Put (Item => Ada.Numerics.Complex_Types.Re(X => Value),
                            Aft => 0,
                            EXP => 0);
                            
     Ada.Float_Text_io.Put (Item => Ada.Numerics.Complex_Types.Im(x => Value),
                            Aft => 0,
                            EXP => 0);
     Ada.Text_IO.Put_Line ("i");
                      
   end Print_Complex;                        
   
begin
   --
   -- Use constructor to setup the second complex number
   --
   Ada.Numerics.Complex_Types.Set_Re (X  => C2 , 
                                      Re => 6.0 );
                                      
   Ada.Numerics.Complex_Types.Set_Im (X  => C2 , 
                                      Im => 7.0 );

   --
   -- Display the value of C1 + C2
   --
   Print_Complex (Message => "3-5i + 6+7i = ",
                  Value   => C1 + C2);
                
   --
   -- Display the value of C1 - C2
   --           
   Print_Complex (Message => "3-5i - 6+7i = ",
                  Value   => C1 - C2);
   
   --
   -- Display the value of C1 * C2
   --    
   Print_Complex (Message => "3-5i * 6+7i = ",
                  Value   => C1 * C2);

   --
   -- Display the value of C1 / C2
   --
   Print_Complex (Message => "3-5i / 6+7i = ",
                  Value   => C1 / C2);                    
   
  
end Complex_Numbers_Test_1;

