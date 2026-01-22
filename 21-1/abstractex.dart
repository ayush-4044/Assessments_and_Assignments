abstract class A
{
  void a()
  {
    print("A called");
  }
  void a1();
}
class B extends A
{
    void b()
    {
      print("B called");
    }

  @override
  void a1() {
   print("A1 called");
  }
}
void main()
{
    B b1 = B();
    b1.a();
    b1.a1();
    b1.b();

}