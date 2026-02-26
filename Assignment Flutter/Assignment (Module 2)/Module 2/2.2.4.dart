import 'dart:io';

void main()
{
  print("Basic Calculator");
  print("1. Addition");
  print("2. Subtraction");
  print("3. Multiplication");
  print("4. Division");

  print("Enter your choice between 1 to 4 : ");
  int choice = int.parse((stdin.readLineSync().toString()));

  print("Enter first number : ");
  int num1 = int.parse((stdin.readLineSync().toString()));

  print("Enter second number : ");
  int num2 = int.parse((stdin.readLineSync().toString()));

  if(choice==1)
    {
      print("The Addition is : ${num1+num2}");
    }
  else if(choice==2)
  {
    print("The Subtraction is : ${num1-num2}");
  }
  else if(choice==3)
  {
    print("The Multiplication is : ${num1*num2}");
  }
  else if(choice==4)
  {
    if(num2==0)
      {
        print("Division by zero is not allowed");
      }
    else{
    print("The Division is : ${num1/num2}");
  }
  }
  else
    {
      print("Invalid Choice");
    }
}
