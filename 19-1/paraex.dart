class Emp
{
  var name;
  var surname;
  Emp(var name, var surname)
  {
    this.name = name;
    this.surname = surname;
  }
  void show()
  {
    print("Name is $name");
    print("Surname is $surname");
  }
}
void main()
{
  Emp e1 = Emp("Ayush", "Hirpara");
  Emp e2 = Emp("Dhaval", "Jethva");

  e1.show();
  e2.show();
}