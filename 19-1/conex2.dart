// Parameterized Constructor

class Student
{
  Student(var name, [var surname])
  {
    print("$name and $surname");
  }
}
void main()
{
  Student s1 = Student("Aayush", "Hirpara");
  Student s2 = Student("Dhaval");
}