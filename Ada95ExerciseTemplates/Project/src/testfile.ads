package TestFile is

   
   type TestFilePtrT is access procedure;
   
   type Object is tagged
      record
         TheFile : TestFilePtrT;
      end record;
   
    type Handle is access all Object;

end TestFile;
