
--------------------------------------------------------------------
--
-- Define two subtypes, one to represent Militart aircraft and one to
-- represent commercial aircraft
-- Question: Can you spot the problem?
--
--------------------------------------------------------------------

with Text_Io;

procedure Enumeration_Types_Exercise_3 is 

   type Aircraft_Type is 
          
    --
    -- Problem here is that if I re-order the base type, the subtypes might
    -- not make sense, e.g. if I move EFA to be the first in the list, it would
    -- not appear in the Militart list.
    --
    subtype Commercial_Aircraft_Type is 
       
    subtype Military_Aircraft_Type is 
       
begin
                          



end Enumeration_Types_Exercise_3;
