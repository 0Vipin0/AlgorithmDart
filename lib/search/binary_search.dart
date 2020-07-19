import 'dart:math';

import 'search.dart';

class BinarySearch implements Search {
  @override
  int search(int value, List<int> a, [bool iterativeBinary]) {
    return iterativeBinary
        ? _searchIterative(value, a, 0, a.length)
        : _searchRecursive(value, a, 0, a.length);
  }

  int _searchRecursive(int value, List<int> list, int start, int end) {
    if (start > end) {
      return -1;
    }
    final int mid = (end + start) ~/ 2;
    if (value < list[mid]) {
      return _searchRecursive(value, list, start, mid - 1);
    } else if (value > list[mid]) {
      return _searchRecursive(value, list, mid + 1, end);
    } else {
      return mid;
    }
  }

  int _searchIterative(int value, List<int> list, int start, int end) {
    int index = -1;
    final int totalLength = end - start;
    for (int i = 0; i < log(totalLength); i++) {
      final int mid = (start + end) ~/ 2;
      if (value > list[mid]) {
        start = mid + 1;
        list.sublist(start);
      } else if (value < list[mid]) {
        end = mid - 1;
        list.sublist(start, end);
      } else {
        // Don't assign the index value here, instead assign the mid
        index = mid;
      }
    }
    return index;
  }
}
