with Ada.Text_Io;
with Ada.Numerics;

package body Circle is

   ---------------
   -- Construct --
   ---------------

   procedure Construct
     (This         : access Object;
      The_Row      : in Integer;
      The_Column   : in Integer;
      The_Radius   : in Integer) is
   begin
      Ada.Text_IO.Put_Line ("Circle.Construct >>>");

    
      
   end Construct;

   ----------
   -- Draw --
   ----------
   procedure Draw (This : access Object) is
   begin
     
   end Draw;
   
   ----------
   -- Area --
   ----------
   function Area (This : access Object) return Float is
   begin
 
   end Area;


end Circle;

