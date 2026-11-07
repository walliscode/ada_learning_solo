
----------------------------------------------------------------------
--
-- Modify the program from Ada83 Tasking, exercise 1 so that the 
-- rendezvous is complete before any printing is performed.
--
-- Test that the main program continues in parallel to the task.  
--
-- Hint:  Place a line of text_io directly after the entry call.
--
---------------------------------------------------------------------

with Text_Io;

procedure Ada83_Tasking_Exercise_2 is 

   --
   -- Task specification with the required entry point.
   --


   -----------------------------------------------------------------------
   --
   -- Task body
   -- Continuously loops, waiting for rendezvous. 
   -- The rendezvous is complete before printing starts. 
   --
   task body Periodic is
   
      Required_Iterations : Positive; 
      Required_Wait       : Duration;
   begin
      Forever:
      loop
         --
         -- Wait for Rendezvous, when called, copies the
         -- parameters and returns control back.  Printing is 
         -- performed in parallel.
         --


      end loop Forever;
   end Periodic;

begin
   --
   -- Rendezvous with task to print 5 times @ 1 second intervals. 
   --


end Ada83_Tasking_Exercise_2;
