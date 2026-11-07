-----------------------------------------------------------------------------
--                                                                         --
-- Write A Program That Performs the same complex number calculations      --
-- as exercise 1, but using a user defined floating point type with nine   -- 
-- digits of precision.                                                    --
--                                                                         --
-----------------------------------------------------------------------------

--
-- Need to with the packages for using complex numbers
--
with Ada.Numerics.Generic_Complex_Types ;
with Ada.Text_IO;


procedure Complex_Numbers_Test_2 is

   --
   -- Define a user defined floating point type and instantiate the generic
   -- complex library to provide complex operations on that type.
   --
   type My_Float is digits 9;

   package My_Complex is new Ada.Numerics.Generic_Complex_Types (Real => My_Float);

   --
   -- Define constants for the two complex numbers used in the calculations.
   --
   C1 : constant My_Complex.Complex :=  
                       (Re =>  3.0,  -- Real part
                        Im => -5.0); -- imaginary part
                        
   --
   -- Will be set using a the constructor
   --                     
   C2 : My_Complex.Complex;

   --
   -- Internal procedure for printing a complex number of the screen
   --              
   procedure Print_Complex (Message : in String ;
                            Value   : in My_Complex.Complex) is
                            
     package My_Float_IO is new Ada.Text_IO.Float_IO (My_Float);                          
                             
   begin
   
     Ada.Text_IO.Put (Message);
     My_Float_IO.Put (Item => My_Complex.Re(X => Value),
                      Aft => 0,
                      EXP => 0);
                            
     My_Float_IO.Put (Item => My_Complex.Im(x => Value),
                      Aft => 0,
                      EXP => 0);
     Ada.Text_IO.Put_Line ("i");
                      
   end Print_Complex;    
                    
   use type My_Complex.Complex;

begin
   --
   -- Use constructor to setup the second complex number
   --
   My_Complex.Set_Re (X  => C2 , 
                      Re => 6.0 );
                                      
   My_Complex.Set_Im (X  => C2 , 
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
   
  
end Complex_Numbers_Test_2;