class Emp
{
  var _id;
  var _name;

  get id => _id;

  set id(value) {
    _id = value;
  }

  get name => _name;

  set name(value) {
    _name = value;
  }
}
void main()
{
    Emp e1= Emp();
    e1.id = 101;
    e1.name = "Ayush";

    print(e1.id);
    print(e1.name);
}