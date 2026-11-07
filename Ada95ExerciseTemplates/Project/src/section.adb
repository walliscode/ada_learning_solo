
package body Section is


   --------------
   -- HasFiles --
   --------------

   function HasFiles (This : access Object) return boolean is
   begin
      return This.Files.Count > 0;
   end HasFiles;

   -------------
   -- GetName --
   -------------

   function GetName (This : access Object) return String is
   begin
      return This.Name.all;
   end GetName;

   -------------
   -- AddFile --
   -------------

   procedure AddFile (This : access Object; F : TestFile.Handle) is
   begin
     This.Files.Add(V => F);
   end AddFile;

   -------------
   -- GetFile --
   -------------

   function GetFile
     (This : access Object; Pos : Natural) return TestFile.Handle
   is
   begin
      return This.Files.Get(AtIndex => Pos);
   end GetFile;

   function GetFileCount (This : access Object) return Natural is
   begin
      return This.Files.Count;
   end GetFileCount;



   function ConvertToString (S : SectionT) return String is

      NameLookup : constant array (SectionT) of StrPtrT :=
        (Introduction       => new String'("Introduction"),
         SimpleNumericTypes => new String'("Simple Numeric Types"),
         EnumerationTypes   => new String'("Enumeration Types"),
         RealTypes          => new String'("Real Types"),
         RecordTypes        => new String'("Record Types"),
         SimpleArrayTypes   => new String'("Simple Array Types"));
   begin
      return NameLookup(S).all;
   end ConvertToString;


   procedure SetSectionType (This : access Object; S : SectionT) is
   begin
      This.SectionType := S;
      This.Name := new String'(ConvertToString(S));

   end SetSectionType;

   function GetSectionType (This : access Object) return SectionT is
   begin
      return This.SectionType;
   end GetSectionType;



end Section;
