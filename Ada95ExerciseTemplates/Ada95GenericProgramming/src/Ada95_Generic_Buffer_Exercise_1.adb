   --------------------------------------------------------------------
   --
   -- For a description of this package see the specification.
   --
   --------------------------------------------------------------------

with Ada.Text_io;

package body Ada95_Generic_Buffer_Exercise_1 is

   --
   -- The buffer type can be declared directly of the index type
   --
   type Buffer_Type is array (Index_Type) of Item_Type;
   Buffer : Buffer_Type;
   
   Read_Pointer  : Index_Type := Buffer'First;
   Write_Pointer : Index_Type := Buffer'First;

   --
   -- The maximum number of entries can now be derived using the attributes
   -- of the index type.   
   --
   Maximum_Number_Of_Entries : constant Natural := Natural (Index_Type'Modulus);
  
   --
   -- The following types represent the length of the buffer.  
   -- It is derived from the generic parameter, Index_Type
   -- Subtype because generic parameters are non-static
   --
   subtype Buffer_Length_Type is Natural range 0..Maximum_Number_Of_Entries;
   
   --
   -- Because the buffer is circular, I want to easily keep track of the
   -- number of items currently stored in the buffer, the following object 
   -- does that.
   --
   Number_In_Buffer : Buffer_Length_Type := 0;
   
---------------------------------------------------------------------

   --
   -- This procedure satisfies the Write requirements 
   -- detailed in the specification
   --
   procedure Write (Item : in Item_Type) is
   begin
      if Number_In_Buffer = Maximum_Number_Of_Entries
      then
         raise Overflow;
      else
         Buffer (Write_Pointer) := Item;
         Number_In_Buffer := Natural'Succ (Number_In_Buffer);

         --
         -- The write pointer can be simply incremented, and because the
         -- index type is a modular type, it will wrap automatically.
         --
         Write_Pointer := Index_Type'Succ (Write_Pointer);
         
      end if;
   end Write;

---------------------------------------------------------------------
   --
   -- This procedure satisfies the Read requirements 
   -- detailed in the specification
   --
   procedure Read (Item : out Item_Type) is
   begin
      if Number_In_Buffer = 0
      then
         raise Underflow;
      else
         Item := Buffer (Read_Pointer); 
         Number_In_Buffer := Natural'Pred (Number_In_Buffer);

         --
         -- The read pointer can be simply incremented, and because the
         -- index type is a modular type, it will wrap automatically.
         --
         Read_Pointer := Index_Type'Succ (Read_Pointer);
         
      end if;
   end Read;

---------------------------------------------------------------------

   procedure Display is
   
      Temp_Read_Pointer : Index_Type := Read_Pointer;

   begin
      Ada.Text_io.Put_Line ("Printing Buffer");
      
      if Number_In_Buffer = 0
      then
         Ada.Text_io.Put_Line ("The Buffer is empty");
      else
      
         Print_All_Items:
         for Index in 1..Number_In_Buffer
         loop
            --
            -- Each element is passed to "To_Integer" for conversion and then
            -- to Display_Utilities.Put to be printed.
            --
            Display_Utilities.Put 
               (To_Integer (Item => Buffer (Temp_Read_Pointer)));
            Ada.Text_IO.New_Line;
            Temp_Read_Pointer := Index_Type'Succ (Temp_Read_Pointer);
            
         end loop Print_All_Items;

      end if;
      
      Ada.Text_io.Put_Line ("Completed Printing Stack");

   end display;

end Ada95_Generic_Buffer_Exercise_1;
