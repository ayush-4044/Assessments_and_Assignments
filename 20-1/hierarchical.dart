class A
{
  a()
  {
    print("A called");
  }
}
class B extends A
{
  b()
  {
    print("B called");
  }
}
class C extends A
{
  c()
  {
    print("C called");
  }
}

void main()
{
  B b1= B();
  C c1=C();

  b1.a();
  b1.b();
  c1.c();
}