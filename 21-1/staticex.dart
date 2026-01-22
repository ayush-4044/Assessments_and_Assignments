class Tops
{
  int num = 0;
  String name = "";
  static String clg = "VVP";

  Tops(int num,String name)
  {
    this.num = num;
    this.name = name;
  }
  void show()
  {
    print("$num and $name and $clg");
  }
  static void change()
  {
    clg = "Atmiya";
  }
}

void main()
{
  Tops t1 = Tops(111, "Ayush");
  Tops t2 = Tops(222, "Dhaval");
  Tops.change();
  t1.show();
  t2.show();


}