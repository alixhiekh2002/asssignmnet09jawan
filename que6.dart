void main() {
  final List<String> nameList = [
    "Shahzeb Naqvi", "Abdullah", "Abdullah", "Shahzeb Naqvi",
    "Abdullah", "Zain"
  ];

  // Create a list with duplicates of repeating items without using explicit loops
  final List<String> duplicatedList = nameList
    .where((name) => nameList.where((n) => n == name).length > 1) // Filter repeating items
    .toSet() // Remove duplicates
    .expand((name) => List.filled(nameList.where((n) => n == name).length, name)) // Duplicate items
    .toList(); // Convert to list

  print(duplicatedList);
}