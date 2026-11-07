with Ada.Text_Io;

procedure Ada95_Access_Types_Exercise_1 is

   ------------------------------------------------------------------------------------   
   --
   -- Declare a record type to hold 1553 message details (RT , SA and Word Count).
   -- Declare a number of constants (of the record type) which represent transactions.

   -- Declare an unconstrained array type whose elements can point to the statically
   -- declared transactions (these represent Frames).  

   -- Declare a number constants of the unconstrained type (say,  Frame_1,2,3) which 
   -- contain a list of transactions that would be scheduled for each frame 
   -- (Make each frame a different length).

   --Write an internal procedure (Print_Frame) that takes a Frame as a parameter and 
   --prints the details of each transaction.

   --Call the Print operation for each frame. 
   --
   ------------------------------------------------------------------------------------

   --
   -- The following type represents the required transaction details.
   --
   type Transaction_Type is 
   record 

   end record;

   --
   -- The following constants define various transactions.
   -- Note: They are marked as aliased so they can be pointed at.
   --
   Hudwac_Message_1 : 

   Hudwac_Message_2 : 

   Ingps_Message_1 : 

   Ingps_Message_2 : 

   --
   -- The following type defines an access type that can point at 
   -- statically declared transactions.
   --
   type Transaction_Ptr_Type is access  

   --
   -- The following type allows variable length sets of transactions to be created.
   --
   type Minor_Frame_Type is array (Natural range <>) of Transaction_Ptr_Type; 

   --
   -- The following objects represent two different frames, sets of transactions.
   --
   Minor_Frame_1 : constant Minor_Frame_Type :=
    
   Minor_Frame_2 : constant Minor_Frame_Type :=
    


-------------------------------------------------------------------------
   --
   -- The following operation performs the required write operation
   --
   procedure Print_Minor_Frame (
      Frame : in Minor_Frame_Type ) is 
   begin
      Ada.Text_Io.New_Line (2);
      Ada.Text_Io.Put_Line ("Printing Minor Frame");
   
      Print_All_Transactions:
      for Index in Frame'range
      loop
         

      end loop Print_All_Transactions;

   end Print_Minor_Frame;

-------------------------------------------------------------------------         

begin
   --
   -- Call the internal operation to print the transaction details.
   --


end Ada95_Access_Types_Exercise_1;
