-------------------------------------------------------------------------------   
--
-- This class is built up over 4 steps; this is the final result of the 4
-- steps.  This <<abstract>> class has three operations, 1 <<abstract>> and 2
-- are primitive.
-- Implementors of this class are obligated to implement the missing behaviour 
-- of Area. However, they can choose to inherit or override the Draw procedure.
-- 
-- The Figure class provides two private attributes: Row and Column.  These
-- attributes should really be constrained through the use of types but this
-- would retract from the purpose of the example, which is to get across the
-- use of <<abstract>> classes and polymorphism in object oriented programming.
-- 
-------------------------------------------------------------------------------   

package Symbol is
   
   type Object is 
   type Handle is 
   
  
   procedure Construct (This         : access Object;
                        The_Row      : in Integer;
                        The_Column   : in Integer);  
   
   function Area (This : access Object) return Float;
   
   procedure Draw (This : access Object);
   

private
   
   type Object is ???

end Symbol;
   
