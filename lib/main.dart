import 'base_conversion.dart';
import 'search/linear_search.dart';
import 'search/search.dart';
import 'sort/bubble_sort.dart';

void main() {
  final List<int> list = <int>[1, 2, 5, 7, 9, 12, 25, 26];
  final Search search = LinearSearch();
  print(search.search(2, list));
  final List<int> unsortedList = <int>[5, 1, 25, 78, 26];
  final BubbleSort bubbleSort = BubbleSort();
  print(bubbleSort.sort(unsortedList));
  final BaseConversion conversion = BaseConversion();
  print(conversion.convert(3, 2));
}
