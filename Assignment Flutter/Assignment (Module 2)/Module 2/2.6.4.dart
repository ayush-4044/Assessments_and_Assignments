import 'dart:io';

void main() {

  List<int> numbers = [];
   print("Enter integers one by one");
   print("Type 'done' to finish");

   while(true)
  {
    print("Enter a number : ");
    String input = stdin.readLineSync().toString();

    if(input.toLowerCase() == 'done')
      {
        break;
      }
    try
        {
          int value = int.parse(input);
          numbers.add(value);
        }
    catch(e)
  {
    print("Invalid input! Please enter an integer value");
  }

  }
   print("You entered the following integers : ");
   print(numbers);


}
