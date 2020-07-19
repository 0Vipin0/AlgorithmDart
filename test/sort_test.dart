import 'package:AlgorithmDart/sort/bubble_sort.dart';
import 'package:AlgorithmDart/sort/merge_sort.dart';
import 'package:AlgorithmDart/sort/quick_sort.dart';
import 'package:AlgorithmDart/sort/sort.dart';
import 'package:test/test.dart';

void main() {
  final List<int> number = <int>[12, 1, 34, 56, 45];
  final List<int> sortedNumber = number;
  sortedNumber.sort();
  group("Sort", () {
    test('Merge Sort to be tested', () {
      final Sort mergeSort = MergeSort();

      expect(mergeSort.sort(number), sortedNumber);
    });
    test('Bubble Sort to be tested', () {
      final Sort bubbleSort = BubbleSort();

      expect(bubbleSort.sort(number), sortedNumber);
    });
    test('Quick Sort to be tested', () {
      final Sort quickSort = QuickSort();

      expect(quickSort.sort(number), sortedNumber);
    });
  });
}
