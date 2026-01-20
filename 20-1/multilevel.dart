class A {
  a() {
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
class C extends B
{
  c()
  {
    print("C called");
  }
}
class D extends C
{
  d()
  {
    print("D called");
  }
}
void main()
{
    D d1= D();
    d1.a();
    d1.b();
    d1.c();
    d1.d();
}