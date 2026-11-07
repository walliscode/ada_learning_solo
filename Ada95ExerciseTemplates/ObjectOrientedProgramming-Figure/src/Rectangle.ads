-------------------------------------------------------------------------------   
--
-- This class implements the <<abstract>> Figure class.  It also extends the 
-- Figure class with the private attributes Height and Width.  Furthermore,
-- it provides implementation for the <<abstract>> operation Area, returning
-- the area of the rectangle.
--
-- It also overrides its parent's Draw operation and re-uses it. 
-- 
-------------------------------------------------------------------------------   

with Symbol;

package Rectangle is
   

   type Object 
   type Handle 
   
   procedure Draw (This : access Object);
   
   function Area (This : access Object) return Float;
   
   procedure Construct (This         : access Object;
                        The_Row      : in Integer;
                        The_Column   : in Integer;
                        The_Height   : in Integer;
                        The_Width    : in Integer);

private
         
      type Object is 

end Rectangle;
