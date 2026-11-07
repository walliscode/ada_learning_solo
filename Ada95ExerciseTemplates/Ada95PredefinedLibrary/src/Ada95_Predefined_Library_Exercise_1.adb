
   ------------------------------------------------------------------------
   --
   -- Using the Ada.Numerics.Discrete_Random package, write a short program 
   -- to deal cards when requested to by the user.  
   --
   -- Do not worry about remembering whether a card has been dealt before.  
   --
   -- Hint: You will need two instantiations, one for the suite and one for 
   -- the card).
   --
   ------------------------------------------------------------------------

with Ada.Text_Io;
with Ada.Numerics.Discrete_Random;

procedure Predefined_Library_Exercise_1 is 

   --
   -- Define types to represent the Suite and Playing Cards. 
   --
   type Suite_Type is 
         (Hearts,   
          Spades,   
          Diamonds, 
          Clubs); 

   type Card_Type is 
         (One,   d
          Two,   
          Three, 
          Four,  
          Five,  
          Six,   
          Seven, 
          Eight, 
          Nine,  
          Ten,   
          Jack,  
          Queen, 
          King); 

   --
   -- Instantiate the Random package for both suites and cards.
   --
   package Random_Suite is new Ada.Numerics.Discrete_Random (Suite_Type);
   package Random_Card  is new Ada.Numerics.Discrete_Random (Card_Type);

   --
   -- The following objects are the generators used to generate the
   -- random numbers.
   --
   Suite_Generator : Random_Suite.Generator;  
   Card_Generator  : Random_Card.Generator;  
   
   --
   -- The following objects hold the suite and card returned 
   -- from the random package.
   --
   Suite : Suite_Type;  
   Card  : Card_Type;  

   --
   -- The following object is used for user input.
   --
   Input : Character := ' ';  

begin
   Until_User_Requests_Exit:
   while Input /= 'x'
   loop
      --
      -- Generate a new card and suite
      --
      Suite := Random_Suite.Random (Suite_Generator);
      Card  := Random_Card.Random (Card_Generator);

      --
      -- Display the card and suite
      --
      Ada.Text_Io.Put_Line ("Your card is " &
         Card_Type'Image (Card) & " of " &
         Suite_Type'Image (Suite));

      --
      -- Ask the user for input
      --
      Ada.Text_Io.Put ("Enter any character <cr> to deal, x to exit > ");
      Ada.Text_Io.Get (Input);

   end loop Until_User_Requests_Exit;

end Predefined_Library_Exercise_1;
