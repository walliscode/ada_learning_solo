
package body List is


   Var : Integer := 0;



   function "=" (L: in ListT; R : in ListT) return Boolean is
   begin
      return L.NextFree = R.NextFree and then
        L.Data(L.Data'first .. L.NextFree) = R.Data(R.Data'First .. R.NextFree);
   end "=";




   ---------
   -- Add --
   ---------

   procedure Add (This : in out ListT; V : in ItemType) is
   begin
      if This.NextFree < listsize
      then
         This.NextFree := This.NextFree + 1;
         This.Data(This.NextFree) := V;
      else
         raise Overflow;
      end if;


   end Add;

   ---------
   -- Get --
   ---------

   function Get (This : in ListT; AtIndex : in ListIndexT) return ItemType is
   begin
      return This.Data(AtIndex);
   end Get;

   -----------
   -- Count --
   -----------

   function Count (This : in ListT) return ListSizeT is
   begin
      return This.NextFree;
   end Count;

   -----------
   -- Clear --
   -----------

   procedure Clear (This : in out ListT) is
   begin
      This.NextFree := 0;
      --This.Data := (others => 0);
   end Clear;



end List;
