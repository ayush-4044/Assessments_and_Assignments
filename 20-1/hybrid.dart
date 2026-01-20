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
class D extends B implements C
{
  d()
  {
    print("D called");
  }

  @override
  c() {
    print("C called");
  }
}
void main()
{
  D d1 = D();
  d1.a();
  d1.b();
  d1.c();
  d1.d();
}