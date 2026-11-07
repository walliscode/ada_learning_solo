
--------------------------------------------------------------------
--
-- Write a procedure that contains an internal procedure to display a string.  
-- The procedure should have a parameter defaulted to true which is used to 
-- determine whether the string is printed either forward or backwards.  The 
-- main program should call the internal procedure twice, once without the 
-- defaulted parameter missing and once with it set false.  
--
--------------------------------------------------------------------
with Text_Io;

procedure Subprograms_Exercise_4 is
                         
   --------------------------------------------------------------------------

   procedure Display (????) is
   begin
       ????
   end Display;
   
   --------------------------------------------------------------------------
begin

   --
   -- Call display using the default
   --
   Display ???
   
   --
   -- Call display to print backwards
   --
   Display ???                                               

end Subprograms_Exercise_4;
