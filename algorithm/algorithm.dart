import 'dart:io';
import 'dart:math';

void main() {
  while (true) {
    try {
      /// Read the input line from the console
      print("Enter five space-separated intergers: ");
      String input = stdin.readLineSync()!;

      /// Split and convert input to list of integers
      List<int> arr = input.split(' ').map(int.parse).toList();

      /// Check for ensure there are exactly 5 numbers
      if (arr.length != 5) {
        throw const FormatException('Must enter exactly 5 integers! Try again.');
      }

      /// Check for duplicate numbers
      Set<int> uniqueNumbers = arr.toSet();
      if (uniqueNumbers.length != arr.length) {
        throw const FormatException('Numbers must be unique! Try again.');
      }

      /// Call miniMaxSum function
      miniMaxSum(arr);

      /// Bonus
      countTotal(arr);
      findMin(arr);
      findMax(arr);
      findEvenElements(arr);
      findOddElements(arr);

      ///
      calculateSums(arr);
      break;
    } catch (e) {
      print('Error: ${e}\nTry again.');
    }
  }
}

void miniMaxSum(List<int> arr) {
  /// Sort the array
  arr.sort();

  /// Calculate the minimum sum by excluding the maximum element
  int minSum = arr.reduce((a, b) => a + b) - arr.reduce(max);

  /// Calculate the maximum sum by excluding the minimum element
  int maxSum = arr.reduce((a, b) => a + b) - arr.reduce(min);

  /// Print the results as space-separated integers
  print('$minSum $maxSum');
}

void countTotal(List<int> arr) {
  int total = arr.length;
  print('Count total of array: $total');
}

void findMin(List<int> arr) {
  int min = arr.reduce((a, b) => a < b ? a : b);
  print('Min: $min');
}

void findMax(List<int> arr) {
  int max = arr.reduce((a, b) => a > b ? a : b);
  print('Max: $max');
}

void findEvenElements(List<int> arr) {
  List<int> evenElements = arr.where((element) => element % 2 == 0).toList();
  print('Even element(s) in array: $evenElements');
}

void findOddElements(List<int> arr) {
  List<int> oddElements = arr.where((element) => element % 2 != 0).toList();
  print('Odd element(s) in array: $oddElements');
}

///

void calculateSums(List<int> arr) {
  /// Total sum of all numbers
  int totalSum = arr.reduce((a, b) => a + b);

  /// Calculate and print sum excluding each number
  for (int number in arr) {
    print(
      'If we sum everything except $number, our sum is: ${totalSum - number}',
    );
  }
}
