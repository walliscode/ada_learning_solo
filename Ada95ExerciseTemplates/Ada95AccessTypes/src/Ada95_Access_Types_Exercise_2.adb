with Ada.Text_Io;

procedure Ada95_Access_Types_Exercise_2 is 

   ------------------------------------------------------------------------------------
   --   
   -- Write A Main Program That Contains 5 Different Internal Procedures with 
   -- The Same Signature (i.e. Each procedure Prints A Different Message To The Screen).
   --
   -- Define A type Which represents Softkeys (1 .. 5) and create a list 
   -- (Indexed By The Softkey Number) whos elements point to The Internal Procedures.
   --
   -- Create A List and Attach A Different procedure To Each Softkeys.
   -- The User Should Be Able To select A Softkey Number From The Terminal, when Selected,
   -- The List Should Be Indexed and The Attached procedure Called.
   --
   ------------------------------------------------------------------------------------
 
   --
   -- The following type points to procedures with no parameters.
   --
   type Operation_Type is ???

   --
   -- The following types represent the softkey numbers and a list
   -- (indexed by the softkeys) that point at operations with no parameters.
   --
   type Softkey_Type is range 1 .. 5; 
   type Operation_List_Type is array (Softkey_Type) of Operation_Type; 

   --
   -- The following operations simply print different message to the screen.
   -- Their signature match the access type. 
   --
   procedure Softkey_1 is 
   begin
       Ada.Text_Io.Put_Line ("Softkey 1 pressed");
   end Softkey_1;

   procedure Softkey_2 is 
   begin
       Ada.Text_Io.Put_Line ("Softkey 2 pressed");
   end Softkey_2;

   procedure Softkey_3 is 
   begin
       Ada.Text_Io.Put_Line ("Softkey 3 pressed");
   end Softkey_3;

   procedure Softkey_4 is 
   begin
       Ada.Text_Io.Put_Line ("Softkey 4 pressed");
   end Softkey_4;

   procedure Softkey_5 is 
   begin
       Ada.Text_Io.Put_Line ("Softkey 5 pressed");
   end Softkey_5;

   --
   -- The following constant holds the list of procedures which
   -- must be called dependant on the softkey selected.
   --
   Operation_List : constant Operation_List_Type :=
      

   --
   -- The following package and object are used to accept user input.
   --
   package Softkey_Io is new Ada.Text_Io.Integer_Io (Softkey_Type);
   The_Softkey : Softkey_Type;

begin
   Forever:
   loop
      --
      -- Read the user input
      --
      Ada.Text_Io.Put ("Enter S/K number : ");
      Softkey_Io.Get (The_Softkey);
      
      --
      -- Index the list, dereference the access type to call the attached operation.
      --
     
      
   end loop Forever;

end Ada95_Access_Types_Exercise_2;
