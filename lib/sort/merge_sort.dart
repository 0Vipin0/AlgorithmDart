import 'sort.dart';

class MergeSort implements Sort {
  /// Returns sorted copy of List a
  @override
  List<int> sort(List<int> a) {
    if (a.length <= 1) {
      return _baseSort(a);
    } else {
      final int subSize = a.length ~/ 2;
      final List<int> firstHalf = sort(a.sublist(0, subSize));
      final List<int> secondHalf = sort(a.sublist(subSize, a.length));
      return _mergeArray(firstHalf, secondHalf);
    }
  }

  /// Given a and b (assumed to be sorted) returns a merged array that preserves order
  List<int> _mergeArray(List<int> a, List<int> b) {
    final int totalLength = a.length + b.length;
    final List<int> result = List<int>(totalLength);
    int i = 0, j = 0;
    // Traverse complete list
    for (int k = 0; k < totalLength; k++) {
      // Will run initially
      // These are cases when single element is left in b
      if (i >= a.length) {
        result[k] = b[j];
        j++;
      }
      // Will not run initially
      // These are cases when single element left in a
      else if (j >= b.length) {
        result[k] = a[i];
        i++;
      }
      // Will run initially
      else {
        // Check if the element in a > b
        // This is the main condition where comparision happens
        if (a[i] < b[j]) {
          result[k] = a[i];
          i++;
        } else {
          result[k] = b[j];
          j++;
        }
      }
    }
    return result;
  }

  /// Given an array of one element (or empty), return a copy of the array sorted
  List<int> _baseSort(List<int> a) {
    assert(a.length <= 1);
    return a;
  }
}
