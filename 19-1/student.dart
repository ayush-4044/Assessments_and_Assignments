class Student
{
  var name;
  var surname;
}
void main()
{
  Student s1 = Student();
  s1.name = "Ayush";
  s1.surname = "Hirpara";

  //String interpolation
  print("Name is ${s1.name}");
  print("Surname is ${s1.surname}");
}