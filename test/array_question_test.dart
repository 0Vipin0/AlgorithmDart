import 'package:AlgorithmDart/array/array_questions.dart';
import 'package:test/test.dart';

void main() {
  final ArrayQuestions arrayQuestions = ArrayQuestions();
  final List<int> array = <int>[12, 2, 34, 45, 5, 6];
  final List<int> array2 = <int>[2, 6, 25, 90, 67, 78];
  final List<int> commonElement = <int>[2, 6];
  group("Array Questions", () {
    test("Reverse an Array", () {
      final List<int> reversedArray = array.reversed.toList();
      expect(arrayQuestions.reverse(array), reversedArray);
    });
    test("Common Elements between two array using Sort", () {
      expect(
          arrayQuestions.commonElementUsingSort(array, array2), commonElement);
    });
    test("Common Elements between two array using Set", () {
      expect(
          arrayQuestions.commonElementUsingSet(array, array2), commonElement);
    });
    test("Remove Duplicate Element", () {
      final List<int> duplicateElement = <int>[2, 2, 4, 5, 6, 4, 7];
      final List<int> noDuplicateElement = <int>[2, 4, 5, 6, 7];
      expect(arrayQuestions.removeDuplicates(duplicateElement),
          noDuplicateElement);
    });
  });
}
