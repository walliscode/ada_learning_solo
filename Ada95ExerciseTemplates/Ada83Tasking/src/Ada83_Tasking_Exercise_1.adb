
----------------------------------------------------------------------
--
-- Write a procedure that contains a task which writes the word "Iteration" 
-- to the screen as parameterised by entry parameters.  
--
-- The task should contain one entry point "Execute" with the following 
-- parameters: 
--      The number of times the string should be printed
--      The delay between the print operations.  
--
-- The entry should not return control back to the caller until the 
-- printing is complete.
--
---------------------------------------------------------------------
   
with Text_Io;

procedure Ada83_Tasking_Exercise_1 is 

   --
   -- Task specification with the required entry point.
   --


   -----------------------------------------------------------------------
   --
   -- Task body
   -- Continuously loops, waiting for rendezvous. 
   -- The rendezvous is not complete until the 
   -- printing has finished.
   --
   task body Periodic is
   begin
      Forever:
      loop
         --
         -- Wait for Rendezvous, when called, does not
         -- return control back until printing is complete
         -- Note:  do, with code embedded.
         --

   end loop Forever;
end Periodic;

begin
   --
   -- Rendezvous with task to print 5 times @ 1 second intervals.
   --


   Text_Io.Put_Line ("Execute Rendezvous complete");


end Ada83_Tasking_Exercise_1;
