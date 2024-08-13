void main() {
  List<int> numbers = [3, 5, 7, 2, 8, -1, 4];
  
  int largest = numbers.reduce((a, b) => a > b ? a : b);
  int smallest = numbers.reduce((a, b) => a < b ? a : b);
  
  print("Largest: $largest, Smallest: $smallest");
}