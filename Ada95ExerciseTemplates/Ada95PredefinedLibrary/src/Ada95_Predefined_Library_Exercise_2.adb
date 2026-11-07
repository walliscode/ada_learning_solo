
   ------------------------------------------------------------------------
   --
   -- Write a program that contains an unbounded string. Set the string to 
   -- "EFA was developed by British Aerospace and first flew in 1994"
   -- 
   -- Find the following:
   --
   -- The number of capital letters (using a character set)
   -- The position that British Aerospace appears within the string 
   -- Replace "British Aerospace" with "BAE Systems"
   --
   ------------------------------------------------------------------------

with Ada.Text_Io;
with Ada.Strings.Maps;
with Ada.Strings.Unbounded;

procedure Predefined_Library_Exercise_2 is 

   --
   -- Define the string and set it to the specified value.
   --
   Sentence : Ada.Strings.Unbounded.Unbounded_String := 
      Ada.Strings.Unbounded.To_Unbounded_String
         ("EFA was developed by British Aerospace and first flew in 1994");      
   --
   -- Define a character map of upper case leters.
   --   
   Capital_Letters : Ada.Strings.Maps.Character_Set := 
     Ada.Strings.Maps.To_Set (Span => (Low => 'A', High => 'Z'));

   --
   -- The following objects are used to hold the return values.
   --       
   Index : Integer;  
   Count : Integer;  

begin
   --
   -- Print the unbounded string
   --
   Ada.Text_Io.Put_Line ("The String is " &
      Ada.Strings.Unbounded.To_String (Sentence));

   --
   -- Count & Print the number of Capital letters
   --
   Count := Ada.Strings.Unbounded.Count (Sentence , Capital_Letters);
   Ada.Text_Io.Put_Line ("number of Capital Letters is " &
      Integer'Image (Count));

   --
   -- Find where British starts in the string
   --
   Index := Ada.Strings.Unbounded.Index (Sentence , "British");
   Ada.Text_Io.Put_Line ("British Aerospace is at position " &
      Integer'Image (Index));

   --
   -- Replace British Aerospace with BAE Systems.
   -- Note: Should not really use absolute numbers, we could find the start
   --       (as above) and the length.
   --
   Ada.Strings.Unbounded.Replace_Slice (Sentence , 22 , 38 , "BAE Systems"
      );
   Ada.Text_Io.Put_Line ("The String is " &
      Ada.Strings.Unbounded.To_String (Sentence));

end Predefined_Library_Exercise_2;
