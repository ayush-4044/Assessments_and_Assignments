import 'dart:io';
void largeandsmall(int num)
{
    int large = 0;
    int small = 9;

    while(num>0) {
      int digit = num % 10;

      if (digit > large) {
        large = digit;
      }
      if (digit < small) {
        small = digit;
      }
      num = num ~/ 10;
    }
    print("Large number is : $large");
    print("Small number is : $small");

}
void main()
{
  print("Enter number : ");
  int num = int.parse((stdin.readLineSync().toString()));

  largeandsmall(num);
}