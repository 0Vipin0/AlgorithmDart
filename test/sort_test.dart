import 'package:AlgorithmDart/sort/bubble_sort.dart';
import 'package:AlgorithmDart/sort/merge_sort.dart';
import 'package:AlgorithmDart/sort/sort.dart';
import 'package:test/test.dart';

void main() {
  group("Sort", () {
    test('Merge Sort to be tested', () {
      final Sort mergeSort = MergeSort();

      final List<int> number = [12, 1, 34, 56, 45];
      final List<int> sortedNumber = number;
      sortedNumber.sort();

      expect(mergeSort.sort(number), sortedNumber);
    });
    test('Bubble Sort to be tested', () {
      final Sort bubbleSort = BubbleSort();

      final List<int> number = [12, 1, 34, 56, 45];
      final List<int> sortedNumber = number;
      sortedNumber.sort();

      expect(bubbleSort.sort(number), sortedNumber);
    });
  });
}
