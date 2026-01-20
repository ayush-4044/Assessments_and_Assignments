class A
{
  a()
  {
    print("A called");
  }
}
class B
{
  b()
  {}
}
class C extends A implements B
{
  c()
  {
    print("C called");
  }

  @override
  b() {
    print("B called");
  }

}
void main()
{
  C c1 = C();
  c1.a();
  c1.b();
  c1.c();
}