
package body TestFileList is

   -------------
   -- AddFile --
   -------------

   procedure AddFile
     (This : access Object; S : Section.SectionT; F : TestFile.TestFilePtrT)
   is
      ThisSection : Section.Handle;
      use type Section.SectionT;

      TheTestFile : TestFile.Handle := new TestFile.Object;

   begin
      FindTheSection:
      for I in 1 .. this.Section.Count
      loop
         ThisSection := This.Section.Get(AtIndex => I);
         if ThisSection.GetSectionType = S
         then
            TheTestFile.all.TheFile := F;
            ThisSection.AddFile(F => TheTestFile);
            exit FindTheSection;
         end if;

      end loop FindTheSection;



   end AddFile;

end TestFileList;
