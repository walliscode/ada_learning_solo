generic
   type ItemType is private;
   
   ListSize : in Positive;
      
package List is

   subtype ListSizeT is Natural range 0 .. ListSize;
   subtype ListIndexT is ListSizeT range 1 .. ListSize;
   
   type ListT is tagged private;
   
   
   Overflow  : exception;
   Underflow : exception;
   
  
   procedure Add (This : in out ListT; V : in ItemType);
   
   function Get (This : in ListT; AtIndex : in ListIndexT) return ItemType;
     
   function Count (This : in ListT) return ListSizeT;
   
   procedure Clear (This : in out ListT);
   
   function "=" (L: in ListT; R : in ListT) return Boolean;
   
   
private
   
   type ListDataT is array (ListIndexT) of ItemType;
   
   type ListT is tagged
   record
      NextFree : ListSizeT := 0;
      Data     : ListDataT ;
   end record;
   
end List;
