class Mycolor
{
  String color = "White";
}
class Mycolor2 extends Mycolor
{
  String color = "Black";
  show()
  {
    print(color);
    print(super.color);
  }
}
void main()
{
  Mycolor2 m = Mycolor2();
  m.show();
}