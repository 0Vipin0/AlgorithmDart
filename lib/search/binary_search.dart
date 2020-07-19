import 'search.dart';

class BinarySearch implements Search {
  int search(int value, List<int> a) {
    return _searchInner(value, a, 0, a.length);
  }

  int _searchInner(int value, List<int> list, int start, int end) {
    if (start > end) {
      return -1;
    }
    final int mid = (end + start) ~/ 2;
    if (value < list[mid]) {
      return _searchInner(value, list, start, mid - 1);
    } else if (value > list[mid]) {
      return _searchInner(value, list, mid + 1, end);
    } else {
      return mid;
    }
  }
}
