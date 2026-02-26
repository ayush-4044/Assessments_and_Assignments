class Vehicle
{
  String fueltype = "";
  int maxspeed = 0;

  Vehicle(String fueltype,int maxspeed)
  {
    this.fueltype = fueltype;
    this.maxspeed = maxspeed;
  }
}
class Car extends Vehicle
{
  Car(super.fueltype, super.maxspeed);

  void showcardetail()
  {
    print("Vehicle type : Car");
    print("Fuel type : $fueltype");
    print("Max speed : $maxspeed");
  }

}
class Bike extends Vehicle
{
  Bike(super.fueltype, super.maxspeed);
  void showcbikedetail()
  {
    print("Vehicle type : Bike");
    print("Fuel type : $fueltype");
    print("Max speed : $maxspeed");
  }

}
void main()
{
  Car c1 = Car("Diesel", 250);
  Bike b1 = Bike("Petrol", 150);

  c1.showcardetail();
  b1.showcbikedetail();
}