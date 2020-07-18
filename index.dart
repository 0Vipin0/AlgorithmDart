import 'package:bharatscanmobile/binary_search.dart';

int search(List<int> list, int value, int min, int max) {
  if (min > max) {
    return null;
  }

  final int mid = (max + min) ~/ 2;

  if (value < list[mid]) {
    return search(list, value, min, mid - 1);
  } else if (value > list[mid]) {
    return search(list, value, mid + 1, max);
  } else {
    return mid;
  }
}

void main() {
  final List<int> list = <int>[1, 2, 5, 7, 9, 12, 25, 26];
//  print(search(list, 5, 0, list.length - 1));
//  print(search(list, 1, 0, list.length - 1));
//  print(search(list, 6, 0, list.length - 1));
  final Search search = Search();
  print(search.binarySearch(3, list));
}
