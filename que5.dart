import 'dart:io';

void main() {
  stdout.write("Enter a character: ");
  String char = stdin.readLineSync()!;
  
  // Check if the character is a vowel
  bool isVowel = 'aeiouAEIOU'.contains(char);
  
  print(isVowel ? "True" : "False");
}