with Ada.Text_io;

procedure Ada95_Tasking_Exercise_1 is

   ------------------------------------------------------------------------
   --
   -- Write a procedure that contains a task with a discriminant.  
   --
   -- The discriminant should be an access to a procedure which takes a single parameter of 
   -- type string.  Declare two local procedures that match the signature of the discriminant, 
   -- one that prints the string forwards and the other backwards.  
   --
   -- The discriminant should have a default which points to operation that prints the 
   -- string forwards.  
   --
   -- The task should contain an entry point with three parameters: 
   --
   --	   - The string to print
   --	   - The number of times to print it
   --	   - The delay between printing.  
   --
   -- To print the string, the discriminant should be used.
   --
   -- The main procedure should declare two tasks, one that prints forwards, 
   -- the other in reverse.  Check each task executes as expected.
   --   
   ------------------------------------------------------------------------  
 
   --
   -- The following access type points to procedures that take a string
   -- as a single argument.
   --
   type Display_Type is 
   
   --
   -- I have forward declared this procedure because it is a default
   -- discriminant to the task.
   --
   procedure Print_Forwards (Item : in String);  

------------------------------------------------------------------------   

   --
   -- The following task specification matches that required by the question
   --
   task type Periodic (
     
   end Periodic;

------------------------------------------------------------------------

   --
   -- The following task body enters an endless loop waiting for a rendezvous.
   -- When called, Execute will call the procedure passed as a discriminant.
   -- The number of times, the delay between the iterations and the string
   -- printed are passed to the entry point.
   --
   task body Periodic is
   begin
      Forever:
      loop
         
      end loop Forever;
   end Periodic;
   
------------------------------------------------------------------------

   --
   -- Simple procedure to print strings Forwards.
   --
   procedure Print_Forwards (Item : in String) is
   begin
     
   end Print_Forwards;

------------------------------------------------------------------------

   --
   -- Simple procedure to print strings Forwards.
   --
   procedure Print_Backwards (Item : in String) is
   begin
      
      
   end Print_Backwards;

------------------------------------------------------------------------

   --
   -- Declare two tasks, one without the discriminant explicitly set, which will
   -- use the default.  The other passes the print reverse procedure as the
   -- discriminant.
   --
   Forward_Task : 
   Reverse_Task : 
   
  
begin
   --
   -- Call the entry points for each of the tasks.
   --
   

end Ada95_Tasking_Exercise_1;
