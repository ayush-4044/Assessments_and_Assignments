import 'dart:io';

int factorial(int n)
{
  int fact = 1;
  for(int i=1;i<=n;i++)
    {
      fact = fact * i;
    }
  return fact;
}
void main()
{
    print("Enter number : ");
    int num = int.parse((stdin.readLineSync().toString()));

    int result = factorial(num);
    print("The factorial of this number is : $result");
}