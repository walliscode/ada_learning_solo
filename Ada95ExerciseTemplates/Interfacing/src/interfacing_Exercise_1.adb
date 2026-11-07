
--------------------------------------------------------------------
--
-- Assume a message arrives from a missile as a sixteen bit word and 
-- represents the following: 

--   Bits (0 .. 5) = Mode :  Searching => 09 Hex 
--                           Locked_On => 12 Hex
--                           Failure   => 24 Hex
--                           Standby   => 2A Hex 
--
--   Bits (6 .. 12) = Range_To_Target (0 to 127 miles) 
--
--   Bits (13 .. 15) = Identity (0..7) 

-- Write a program that accepts user input (to simulate the 16 bit word) and 
-- converts it to the appropriate typed representation.  Print the converted values 
-- to the screen.

-- Ensure that the program does not try to print any out of range values, but 
-- does inform the user that the value is out of range.  The program should exit 
-- when the user enters a value of zero.
--
--------------------------------------------------------------------

with Text_Io;
with Ada.Unchecked_conversion;

procedure Interfacing_Exercise_1 is

   --
   -- Declare a type to represnt the 16 bit input data and a package
   -- to allow it to be input at the terminal.
   --
   type Input_Type is 
   for Input_Type'size 
   
   package Input_Package is new Text_io.integer_io (Input_type);

   type Range_To_Target_Type is 
   for Range_To_Target_Type'Size 

   --
   -- Now define types (with representation) based upon the
   -- bit representation defined in the question.
   --
   type Identity_Type is 
   for Identity_Type'Size 

   type Mode_Type is
     (Searching,
      Locked_On,
      Failure,
      Standby);

   for Mode_Type'Size use 
   for Mode_Type use
     (???);

   --
   -- Define a record type to match the input details
   --
   type Message_Type is
      record
         ???
      end record;

   --
   -- Provide bit representation for the record, as defined
   -- by the question.
   --
   for Message_Type use
      record
        ???
   end record;
   --
   -- ensure unchecked on items of the same size
   --
   for Message_Type'size use Input_Type'size; 
     
   --
   -- Define an unchecked conversion to convert the raw 16
   -- bit input data to the typed format.
   --
   function To_Message is new Ada.Unchecked_conversion
      (???);

   --
   -- Local declerations to hold the input data and converted data.
   --
   Input : Input_Type := 1;
   Message : Message_Type;

begin

   Until_User_Input_0:
   while Input /= 0
   loop
      --
      -- Ask the user to input a value
      --
      Text_io.new_line (2);
      Text_io.put ("Enter Value : ");
      Input_Package.Get (Input);
  
      --
      -- Convert the raw data to typed form
      --


      --
      -- Check valid data ranges and display details.
      --
      

      --
      -- No need to check range and identity valid, they occupy all
      -- available bits. 
      --


   end loop Until_User_Input_0;

end Interfacing_Exercise_1;
