procedure Hierarchical_Libraries_Stack.Delete (Stack : in out Stack_Type) is

   New_Stack : Stack_Type;

begin
   for Index in Stack.Data'first..Stack.Top
   loop
      if not Delete_This_One (Item => Stack.Data (Index))
      then
         Push (Item  => Stack.Data (Index),
               Stack => New_Stack);
      end if;
   end loop; 

   Stack := New_Stack; 
     
end Hierarchical_Libraries_Stack.Delete;

