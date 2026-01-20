class Student
{
  var name;
  var surname;
  var email;
  var pass;

  void show()
  {
    print("$name,$surname,$email,$pass");
  }
}
void main()
{
  Student s1 = Student();
  s1.name = "Ayush";
  s1.surname = "Hirpara";
  s1.email = "a@gmail.com";
  s1.pass = "12345";
  s1.show();

  Student s2 = Student();
  s2.name = "Dhaval";
  s2.surname = "Jethva";
  s2.email = "d@gmail.com";
  s2.pass = "56789";
  s2.show();
}