// Named Constructor

class Student
{
  Student(var name,{var surname})
  {
    print("$name and $surname");
  }
  Student.a(var name)
  {
    print("$name");
  }
}
void main()
{
  Student s1 = Student("Aayush", surname: "Hirpara");
  Student s2 = Student("Dhaval");
  Student s3 = Student.a("Meet");
}