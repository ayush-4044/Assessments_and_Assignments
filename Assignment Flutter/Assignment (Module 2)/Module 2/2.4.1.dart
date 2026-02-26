import 'dart:io';

void main(){

  print("Enter length of list : ");
  var list=int.parse(stdin.readLineSync().toString());
  List num=[];

  for(int i=0;i<list;i++){
    stdout.write("Enter num[$i] : ");
    num.add(int.parse(stdin.readLineSync().toString()));
  }

  print("List Elements are : $num");
  print("");

  List temp=num;

  for(int i=0;i<list;i++){

    for (int j = 0; j < list - i - 1; j++) {
      if (temp[j] > temp[j + 1]) {
        int t = temp[j];
        temp[j] = temp[j + 1];
        temp[j + 1] = t;
      }
    }

  }

  print("Ascending Order : $temp");
  print("");

  List temp2=num;

  for(int i=0;i<list;i++){

    for (int j = 0; j < list - i - 1; j++) {
      if (temp2[j] < temp2[j + 1]) {
        int t = temp2[j];
        temp2[j] = temp2[j + 1];
        temp2[j + 1] = t;
      }
    }

  }

  print("Descending Order : $temp2");

}