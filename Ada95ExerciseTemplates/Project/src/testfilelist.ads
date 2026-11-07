with List;
with Section;
with TestFile;

package TestFileList is

   package SectionList is new List (ItemType => Section.Handle,
                                    ListSize => 30);
   
   type Object is tagged
   record
      Section : SectionList.ListT;      
      end record;
   
   type Handle is access Object; 
   
   
   procedure AddFile (This : access Object; S : Section.SectionT; F : TestFile.TestFilePtrT);
   
   

end TestFileList;
