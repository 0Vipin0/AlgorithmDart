import 'package:AlgorithmDart/order_statistics.dart';
import 'package:test/test.dart';

void main() {
  final OrderStatistics orderStatistics = OrderStatistics();
  final List<int> list = [12, 3434, 6, 0, -6];
  group("Order Statistics", () {
    test('MinimumValue to be tested', () {
      expect(orderStatistics.minimumValue(list), -6);
    });
    test('MaximumValue to be tested', () {
      expect(orderStatistics.maximumValue(list), 3434);
    });
    test('MinimumMaximumValueSimple to be tested', () {
      expect(orderStatistics.minimumMaximumValue(list), Pair(-6, 3434));
    });
  });
}
