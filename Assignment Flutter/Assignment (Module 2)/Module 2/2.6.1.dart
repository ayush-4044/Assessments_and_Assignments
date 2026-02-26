import 'dart:io';

void  main()
{
  try
      {
        print("Enter first number : ");
        int num1 = int.parse((stdin.readLineSync().toString()));

        print("Enter second number : ");
        int num2 = int.parse((stdin.readLineSync().toString()));

        if(num2 == 0)
          {
            throw Exception("Division by zero is not allowed");
          }

        int result = num1~/num2;
        print("Result : $result");
      }
  catch(e)
  {
    print("Error : ${e.toString()}");
  }
  finally
      {
        print("Program complete");
      }

}