-------------------------------------------------------------------------------   
--
-- This class implements the <<abstract>> Figure class.  It also extends the 
-- Figure class with the private attribute Radius.  Furthermore,
-- it provides implementation for the <<abstract>> operation Area, returning
-- the area of the circle.
--
-- It also overrides its parent's Draw operation and re-uses it. 
-- 
-------------------------------------------------------------------------------   

with Symbol;

package Circle is
   

   type Object is 
   type Handle is 
   
   procedure Draw (This : access Object);
   
   function Area (This : access Object) return Float;
   
   procedure Construct (This         : access Object;
                        The_Row      : in Integer;
                        The_Column   : in Integer;
                        The_Radius   : in Integer);

private
         
      type Object is 

end Circle;
