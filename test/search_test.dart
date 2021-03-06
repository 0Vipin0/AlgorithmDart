import 'package:AlgorithmDart/search/binary_search.dart';
import 'package:AlgorithmDart/search/linear_search.dart';
import 'package:AlgorithmDart/search/search.dart';
import 'package:test/test.dart';

void main() {
  group("Search", () {
    test('Linear Search to be tested', () {
      final Search search = LinearSearch();

      final List<int> number = <int>[12, 1, 34, 56, 45];

      expect(search.search(12, number), 0);
      expect(search.search(45, number), 4);
      expect(search.search(2, number), -1);
    });
    test('Binary Search to be tested', () {
      final Search search = BinarySearch();

      final List<int> number = <int>[1, 12, 43, 67, 90];

      expect(search.search(1, number), 0);
      expect(search.search(43, number), 2);
      expect(search.search(2, number), -1);
      expect(search.search(90, number), 4);
    });
  });
}
