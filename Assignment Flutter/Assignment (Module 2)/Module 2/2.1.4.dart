import 'dart:io';

void main()
{
  const pi = 3.14;

  print("Enter a radius : ");
  var radius = int.parse(stdin.readLineSync().toString());
  
  var area = pi * radius * radius;
  var circumference = 2 * pi * radius;
  
  print("Area of circle is : $area");
  print("Circumference of circle is : $circumference");
}