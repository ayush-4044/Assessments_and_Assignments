import 'dart:io';

class Shape
{
  var a;
  var b;
  var radius;

  details(var a,var b)
  {
    this.a=a;
    this.b=b;
  }
  detaials2(var radius)
  {
    this.radius=radius;
  }
  
}
class Rectangle extends Shape
{
  rect()
  {
    var area = a*b;
    print("The area of rectangle is $area");
  }

}
class Triangle extends Shape
{
  tria()
  {
    var area = 0.5*a*b;
    print("The area of triangle is $area");
  }
}
class Circle extends Shape
{
  cir()
  {
    var area = 3.14*radius*radius;
    print("The area of circle is $area");
  }
}

void main()
{
  print("Enter value of A : ");
  var a = int.parse((stdin.readLineSync().toString()));

  print("Enter value of B : ");
  var b = int.parse((stdin.readLineSync().toString()));

  Rectangle rec = Rectangle();
  rec.details(a, b);
  rec.rect();

  Triangle tri = Triangle();
  tri.details(a, b);
  tri.tria();

  print("Enter raduis : ");
  var raduis = int.parse((stdin.readLineSync().toString()));

  Circle ci = Circle();
  ci.detaials2(raduis);
  ci.cir();

}