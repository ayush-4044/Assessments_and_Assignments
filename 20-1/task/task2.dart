import 'dart:io';

class A
{
    var num1;
    void val(var n)
    {
      num1=n;
    }
}
class B extends A
{
  var num2;
  void val2(var n)
  {
    num2=n;

  }
}
class C extends A
{
  var num3;
  void val3(var n)
  {
    num3=n;
  }
}
class D extends B implements C
{

  @override
  var num3;

  @override
  void val3(var n) {
    num3=n;
  }

  void show()
  {
    var ans = num1*num2*num3;
    print("The multiplication of three number is : $ans");
  }

}
void main()
{
  print("Enter Number 1 : ");
  var num1 = int.parse((stdin.readLineSync().toString()));

  print("Enter Number 2 : ");
  var num2 = int.parse((stdin.readLineSync().toString()));

  print("Enter Number 3 : ");
  var num3 = int.parse((stdin.readLineSync().toString()));

  D d = D();
  d.val(num1);
  d.val2(num2);
  d.val3(num3);
  d.show();
}