with List;
with TestFile;
package Section is

   type SectionT is (Introduction, SimpleNumericTypes, EnumerationTypes,
                     RealTypes, RecordTypes, SimpleArrayTypes);
   

   type Object is tagged private;   
   type Handle is access Object;
   
  
   procedure SetSectionType (This : access Object; S : SectionT);
   
   function GetSectionType (This : access Object) return SectionT;
   
   
   function HasFiles (This : access Object) return boolean;
   
   function GetName (This : access Object) return String;
   
   
   procedure AddFile (This : access Object; F : TestFile.Handle);
   
   function GetFile (This : access Object; Pos : Natural) return TestFile.Handle;
   
   function GetFileCount (This : access Object) return Natural;
   
         
private
   
      package TestFileList is new List (ItemType => TestFile.Handle, 
                                        ListSize => 10); 
   
   type StrPtrT is access String ;
   
      type Object is tagged
      record
         Name        : StrPtrT := null;
         SectionType : SectionT ;
         Files       : TestFileList.ListT; 
      end record;
   
end Section;
