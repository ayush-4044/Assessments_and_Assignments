void main()
{
  List tech = [
    "Flutter",
    "Java",
    "Android",
  ];
  List tech2 = [
    "Designing",
    "Dm",
    "SEC",
  ];

  tech.add("Testing");
  tech.addAll(tech2);
  tech.remove("Testing");
  tech.removeAt(3);
  for(var item in tech)
    {
      print(item);
    }


}