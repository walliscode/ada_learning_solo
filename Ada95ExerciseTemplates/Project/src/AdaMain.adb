with Ada.Text_IO;
with Ada.Integer_Text_IO;
with TestUtilities;
with Section;
with TestFile;
with TestFileList;

procedure AdaMain is

   TheTestList : TestFileList.Handle := new TestFileList.Object;

   SelectedSection : Natural;

   procedure Initialise is
   begin

      AddAllSections:
      for S in Section.SectionT
      loop
         declare
            NewSection : Section.Handle := new Section.Object;
         begin
            NewSection.SetSectionType (S => S);
            TheTestList.Section.Add(V => NewSection);
         end;
      end loop AddAllSections;
   end Initialise;


begin
   Ada.Text_IO.Put_Line("Test Harness Started ...");
   Initialise;
   TestUtilities.AddFiles (ToList => TheTestList);

   Forever:
   loop

      PrintSections:
      for S in 1 .. TheTestList.Section.Count
      loop
         declare
            TheSection : Section.Handle renames TheTestList.all.Section.Get(AtIndex => S);
         begin

            if TheSection.GetFileCount > 0
            then
               Ada.Integer_Text_IO.Put (Item => S, Width => 3);
               Ada.Text_IO.Put (" => " & TheSection.GetName & " (" );
               Ada.Integer_Text_IO.Put  (TheSection.GetFileCount, Width => 0);
               Ada.Text_IO.Put_Line (")");
            end if;
         end;
      end loop PrintSections;


      Ada.Text_IO.Put ("Enter Section Number (0 to exit) : ");
      Ada.Integer_Text_IO.Get (SelectedSection);

      exit Forever when SelectedSection = 0;

      declare
         TheSection        : Section.Handle := TheTestList.all.Section.Get(AtIndex => SelectedSection);
         NumberOfExercises : Natural := TheSection.GetFileCount;
         FileNumber        : Natural;
         TheFile          : TestFile.Handle;

         use type TestFile.Handle;
      begin
         if NumberOfExercises > 0
         then
            Ada.Text_IO.Put ("Enter Exercise Number [1 .. " & NumberOfExercises'Image & "]");
            Ada.Integer_Text_IO.Get (FileNumber);
            TheFile := TheSection.GetFile(Pos => FileNumber);

            if TheFile /= Null
            then
               TheFile.TheFile.all;
            else
               Ada.Text_IO.Put_Line (" *** Invalid Exercise Number  ***");
            end if;

         end if;

      end ;
   end loop Forever;


end AdaMain;
