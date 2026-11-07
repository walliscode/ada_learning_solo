with Section;

--
-- 'with' your test programs here
--
with An_Introduction_To_Ada_Exercise_1;
with An_Introduction_To_Ada_Exercise_3;

package body TestUtilities is
   --------------
   -- AddFiles --
   --------------
   procedure AddFiles (ToList : in out TestFileList.Handle) is
   begin
      --
      -- Add them to the list adding the section number if you want!!
      --
      ToList.AddFile (S => Section.Introduction, F => An_Introduction_To_Ada_Exercise_1'Access);
      ToList.AddFile (S => Section.Introduction, F => An_Introduction_To_Ada_Exercise_3'Access);

   end AddFiles;

end TestUtilities;
