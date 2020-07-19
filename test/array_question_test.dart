import 'package:AlgorithmDart/array/array_questions.dart';
import 'package:test/test.dart';

void main() {
  final ArrayQuestions arrayQuestions = ArrayQuestions();
  final List<int> array = <int>[12, 2, 34, 45, 5, 6];
  group("Array Questions", () {
    test("Reverse an Array", () {
      final List<int> reversedArray = array.reversed.toList();
      expect(arrayQuestions.reverse(array), reversedArray);
    });
  });
}
