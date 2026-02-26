import 'dart:io';

void main()
{
  print("Enter number : ");
  int num = int.parse((stdin.readLineSync().toString()));

  int count = 0;
  for(int i=1;i<=num;i++)
    {
      if(num%i==0)
        {
          count++;
        }
    }
  if(count==2)
    {
      print("Number is prime");
    }
  else
    {
      print("Number is not prime");
    }

}