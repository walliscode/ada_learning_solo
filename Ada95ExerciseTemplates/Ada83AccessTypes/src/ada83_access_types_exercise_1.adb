with ???

  procedure Ada83_Access_Types_Exercise_1 is
   
   type StringPtrT is ????
   type ListT is array ?????
   L : ListT;

   Input : String (1..80);
   Len : Integer;

begin

   ReadNames:
   for I in L'Range
   loop
      Ada.Text_IO.Put ("Enter Name : ");
      Ada.Text_IO.Get_Line (Input , Len);

      L(I) := ????

   end loop ReadNames;


   WriteNames:
   for I in L'Range
   loop
      Ada.Text_IO.Put_Line (?????);
   end loop WriteNames;

   
end Ada83_Access_Types_Exercise_1;
