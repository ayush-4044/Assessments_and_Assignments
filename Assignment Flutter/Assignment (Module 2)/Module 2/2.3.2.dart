import 'dart:io';

void palindrome(String str)
{
    String rev = "";

    for(int i=str.length-1;i>=0;i--)
      {
          rev = rev + str[i];
      }

    if(str == rev)
      {
          print("String is palindrome");
      }
    else
      {
        print("String is not palindrome");
      }
}

void main()
{
    print("Enter string : ");
    String str1 = stdin.readLineSync().toString();
    
    palindrome(str1);

}