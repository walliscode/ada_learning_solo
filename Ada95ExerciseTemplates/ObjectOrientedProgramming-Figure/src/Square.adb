with Ada.Text_IO;

package body Square is

   ---------------
   -- Construct --
   ---------------

   procedure Construct
     (This         : access Object;
      The_Row      : in Integer;
      The_Column   : in Integer;
      The_Side     : in Integer) is
   begin
      Ada.Text_IO.Put_Line ("Square.Construct >>>");


   end Construct;

end Square;

