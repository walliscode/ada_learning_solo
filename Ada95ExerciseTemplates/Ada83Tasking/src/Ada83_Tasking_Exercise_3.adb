
----------------------------------------------------------------------
--
-- Modify the program from Ada83 Tasking, exercise 2 so that "Wake Up"
-- is printed if no iterations of the task are requested for 10 seconds.
--
-- Hint: A select statement will be required.
--
---------------------------------------------------------------------
with Text_Io;

procedure Ada83_Tasking_Exercise_3 is 
   --
   -- Task specification with the required entry point.
   --

   end Periodic;

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


      end loop Forever;
   end Periodic;

   
   P1 : Periodic (S => new String'("Hello"));
   P2 : Periodic (S => new String'("World"));
   
   
begin
   --
   -- Rendezvous with task to print 5 times @ 1 second intervals. 
   --


   Text_Io.Put_Line ("Execute Rendezvous complete");

   --
   -- wait 11 seconds to allow task to time out.
   --
   Text_IO.Put_Line ("Waiting 11 seconds");   
   delay 11.0;
   
   --
   -- Perform a second rendezvous
   --



end Ada83_Tasking_Exercise_3;
