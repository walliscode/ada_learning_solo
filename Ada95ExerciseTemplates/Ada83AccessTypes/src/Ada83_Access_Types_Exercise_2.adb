

------------------------------------------------------------------------------------   
-- Write a main procedure to allow a user to enter Aircraft details at the terminal.  
-- The details should include:
--
--     Height (as an Natural)
--     A 3 digit identifier (0..999)
--     Aircraft name (as a string of any length).
--
-- The Aircraft details should be held in a record with a field that allows it to point to another aircraft.  
--
-- Declare an object which represents the head of aircraft held in a stack.  
-- You should write two internal operations:
--
--   Add_Aircraft      -   Adds new aircraft to the end of the stack using dynamic memory allocation.
--   Display_Stack   -   Displays the details of all aircraft currently in the stack

-- Notes:
--      1.   A pointer to a string should be used to point to the Name 
--      2.   The following variables and procedure call should be used to read a variable length 
--           string from the keyboard:
--
--               Entered_Name   : String (1..80);
--               Name_length      : integer;
--               Text_io.Get ( Entered_Name,Name_length);
--   
------------------------------------------------------------------------------------   

with Text_io;

procedure Ada83_Access_Types_Exercise_1 is
   --
   -- The Aircraft_Type must be forward declared because its full definition
   -- contains a point to itself.
   --     
   type Aircraft_Type;
   type Aircraft_Handle_Type is ;
   
   --
   -- Define type to hold the name and identifier.
   --
   type Aircraft_Name_Type is access String;   
   type Identifier_Type is range 0..999;
   
   --
   -- Declare the full definition of aircraft type which contains a
   -- pointer to an object of the same type.
   --
   type Aircraft_Type is
   record
     
   end record;
 
   --
   -- The following object represents the head of the aircraft stack.
   --
   The_Aircraft_Stack : ;
   
   --
   -- Objects and operations for User Input
   --
   package Height_Io     is new Text_io.Integer_Io ;
   package Identifier_Io is new Text_io.Integer_Io ;   

   --
   -- The following objects are used for user input.
   --
   Entered_Height     : 
   Entered_Identifier : 
   Entered_Name       : 
   Name_length        : 
   Option : Character :
  
  
-------------------------------------------------------------------------
   --
   -- The following operation performs the required Add Aircraft operation
   --  
   procedure Add_Aircraft (The_Stack      : in out Aircraft_Handle_Type;
                           The_Height     : in Natural;
                           The_Name       : in String;
                           The_Identifier : in Identifier_Type) is
   begin
      --
      -- If the stack is currently empty, i.e. points nowhere,
      -- then this aircraft can simply be added top the start.
      --
    
            
   end Add_Aircraft; 
                       
-------------------------------------------------------------------------
   --
   -- The following operation performs the required Print operation
   --     
   procedure Print_Stack (The_Stack : in Aircraft_Handle_Type) is

      --
      -- We must take a copy of the stack because we will manipulate its value.
      --   
 
   begin
      
      
   end Print_Stack;      
            
----------------------------------------------------------------               
                             
begin
   --
   -- The main program loops through until the user enters any key other that 'a' or 'A'
   --
   while Option = 'A' or Option = 'a'
   loop
      Text_io.Put ("Add Aircraft (A) , any other key exits : ");
      Text_io.get (Option);
      
      if Option = 'A' 
      or Option = 'a'
      then
         
      end if;
      
      --
      -- Display the current stack contents.
      --
      Print_Stack (The_Stack => The_Aircraft_Stack);

   end loop;                               

end Ada83_Access_Types_Exercise_1;
