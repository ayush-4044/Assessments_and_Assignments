class Student
{
  var name;
  var surname;
  var email;
  var pass;
  
  Student(var n,var s,var e,var p)
  {
    name = n;
    surname = s;
    email = e;
    pass = p;
  }
  void show()
  {
    print("$name,$surname,$email,$pass");
  }
}

void main()
{
  Student s1 = Student("Ayush", "Hirpara", "a@gmail.com", "12345");
  s1.show();
  Student s2 = Student("Dhaval", "Jethva", "d@gmail.com", "56789");
  s2.show();
}
