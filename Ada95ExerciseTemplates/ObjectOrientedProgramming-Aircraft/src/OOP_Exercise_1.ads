
   -------------------------------------------------------------------------   
   --
   -- OOP Exercise 1
   --
   -- Complete The Specification and Write The body for package Aircraft.
   --         
   -- Note: Display is A Primitive Operation Which Displays The Value of all
   -- The Components On The Screen.  
   --
   -- The Two Display_Object_Details Operations Are Non-Dispatching But 
   -- Should Be Written To Dispatch To The Appropriate Display Primitive.
   --
   -- This package is required due to the access type accessibilty rules.
   -- Because the Aircraft objects are being pointed at, they must be at the
   -- same accessibilty level as the access type, i.e. at package level.
   --
   -- This package contains the main test code and is call ed run froma 
   -- simple main program.
   --
   ------------------------------------------------------------------------- 
package OOP_Exercise_1 is

   --
   -- This operation is called from the main program to execute the exercise.
   --
   procedure Run;
   
end OOP_Exercise_1;