--------------------------------------------------------------------
--
-- Using attributes, display the length of the array and the value of 
-- the first and last indexes.  Display the number of bits the array 
-- occupies.
-- Note: Work out The Expected Result Before Running Your Program
--
--------------------------------------------------------------------
with Text_Io;

procedure Simple_Array_Types_Exercise_2 is 

  --
   -- Create types to represent the screen positions
   --
   type Row_Type is range 1..24;
   type Column_Type is range 1..80;
   
   --
   -- Create a record type to hold the logically related
   -- row / column types.
   --        
   type Screen_Position_Type is
   record
      Row    : Row_Type;
      Column : Column_Type;
   end record;
   
   --
   -- Define a type to represent a softkey which logically has a
   -- legend and a position to display it
   --
   type Softkey_Details_Type is
   record
      Legend   : String (1..5);
      Position : Screen_Position_Type;
   end record;
   
   --
   -- Define the number of softkeys and an index that can be used
   -- to define the array.
   --
   Number_Of_Softkeys : constant := 5;
   type Softkey_Type is range 1..Number_Of_Softkeys;
   
   --
   -- Define an array type to hold details for all softkeys.
   --
   type Softkey_List_Type is array (Softkey_Type) of Softkey_Details_Type;
   
   --
   -- Define (and initialise) the object holding the softkey details.
   -- 
   The_Softkeys : constant Softkey_List_Type :=
      (1 => (Legend   =>  "Key 1",
             Position => (Row    => 1 ,
                          Column => 11)),
                         
       2 => (Legend   =>  "Key 2",
             Position => (Row    => 2 ,
                          Column => 22)),
                         
       3 => (Legend   =>  "Key 3",
             Position => (Row    => 3 ,
                          Column => 33)),
                         
       4 => (Legend   =>  "Key 4",
             Position => (Row    => 4 ,
                          Column => 44)),
                         
       5 => (Legend   =>  "Key 5",
             Position => (Row    => 5 ,
                          Column => 55)));

begin
   --
   -- Use attributes to display the length and size of the array
   --
???

   --
   -- Now display the first and last index values
   --
???

end Simple_Array_Types_Exercise_2;
