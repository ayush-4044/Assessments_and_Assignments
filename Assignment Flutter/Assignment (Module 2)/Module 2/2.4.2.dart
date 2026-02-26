import 'dart:io';

void main() {
  List<String> words = [];

  print("Enter number of words:");
  int n = int.parse(stdin.readLineSync()!);

  print("Enter the words:");
  for (int i = 0; i < n; i++) {
    words.add(stdin.readLineSync()!);
  }

  Set<String> uniqueWordsSet = words.toSet();

  List<String> uniqueWordsList = uniqueWordsSet.toList();

  uniqueWordsList.sort();

  print("Unique words in alphabetical order:");
  for (var word in uniqueWordsList) {
    print(word);
  }
}
