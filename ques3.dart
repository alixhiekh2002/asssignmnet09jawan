void main() {
  List<String> names = ["Ahmed", "Bilal", "Shahzeb Naqvi", "Muhmmad", "Ali", "Abdullah", "Ali"];
  List<String> uniqueNames =  names.toSet().toList();
  print(uniqueNames);
}