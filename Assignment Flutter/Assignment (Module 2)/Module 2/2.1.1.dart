import 'dart:io';

void main()
{
  print("Enter your name : ");
  var name = ((stdin.readLineSync().toString()));

  print("Enter your age : ");
  int age = int.parse((stdin.readLineSync().toString()));

  int year = 100 - age;
  
  print("Welcome $name");
  print("you have $year years left until you turn 100");
}