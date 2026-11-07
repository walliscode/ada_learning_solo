with Ada.Text_io;

procedure Ada95_Tasking_Exercise_2 is

   -----------------------------------------------------------------
   --
   -- Write a procedure that contains a protected type that holds aircraft: 
   --
   --       Height  -   As a Natural
   --       Speed   -   As a Natural.  
   --
   -- The protected type should allow the height and speed to be "Updated".  
   --
   -- The protected type should also provide the facility to "Read" the 
   -- aircraft details, but not until they have been written to at least once.   
   --
   -- Test that calling the Read operation before the Update operation causes the 
   -- program to be suspended.  
   --
   -----------------------------------------------------------------

   --
   -- The following type represents the aircraft details, as specified.
   --
   type Aircraft_Details_Type is
   record
      Height : Natural ;
      Speed  : Natural ;
   end record;       

----------------------------------------------------------
   
   --
   -- The following type represents a protected spec which
   -- contains the protected data and access protocol.
   --
   protected type 
     
       procedure Update (.....
                         function Read ...     
                           
   private
      --
      -- The following objects are protected.
      -- The_Details_Are_Valid are used to guard the Read entry. 
      --
      
       
   end Protected_Aircraft_Details;

---------------------------------------------------------
   --
   -- The following body represents the protected implementation.
   --
   protected body Protected_Aircraft_Details is
   
      
          
   end Protected_Aircraft_Details;
    
   --
   -- Harrier is the protected object, New_Details is
   -- used to pass to the read entry.
   --
   Harrier     : Protected_Aircraft_Details;
   New_Details : Aircraft_Details_Type;
begin
                         
   --
   -- Try reading the object before updating it
   --
                         
   --
   -- Call the update to write to the object.
   --
   Harrier.Update (

   --
   -- Now read the object and print the result.
   --                
   Ada.Text_io.Put_Line ("reading data");
   

end Ada95_Tasking_Exercise_2;
