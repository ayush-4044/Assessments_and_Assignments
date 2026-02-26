import 'dart:io';

void  main()
{
  try
      {
        File file = File("file1.txt");

        String content = file.readAsStringSync();
        print("File content : \n");
        print(content);
      }
  catch(e)
  {
    print("Error : File doesn't found");
  }

}