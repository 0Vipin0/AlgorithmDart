import 'package:AlgorithmDart/order_statistics.dart';
import 'package:test/test.dart';

void main() {
  final OrderStatistics orderStatistics = OrderStatistics();
  final List<int> list = <int>[12, 3434, 6, 0, -6];
  group("Order Statistics", () {
    test('MinimumValue to be tested', () {
      expect(orderStatistics.minimumValue(list), -6);
    });
    test('MaximumValue to be tested', () {
      expect(orderStatistics.maximumValue(list), 3434);
    });
    test('MinimumMaximumValue to be tested', () {
      expect(orderStatistics.minimumMaximumValue(list), Pair(-6, 3434));
    });
    test('MeanValue to be tested', () {
      expect(orderStatistics.meanValue(list), 689.2);
    });
    test('MedianValue to be tested', () {
      expect(orderStatistics.medianValue(list), 6);
    });
    test('Factorial to be tested', () {
      expect(orderStatistics.factorial(5), 120);
    });
  });
}
