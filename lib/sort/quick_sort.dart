import 'package:AlgorithmDart/sort/sort.dart';

class QuickSort implements Sort {
  @override
  List<int> sort(List<int> a) {
    _innerSort(a, 0, a.length - 1);
    return a;
  }

  void _innerSort(List<int> a, int start, int end) {
    if (start < end) {
      int partitionIndex = _partition(a, start, end);
      _innerSort(a, start, partitionIndex - 1);
      _innerSort(a, partitionIndex + 1, end);
    }
  }

  int _partition(List<int> a, int start, int end) {
    int pivot = a[end];
    int i = (start - 1);
    for (int j = start; j < end; j++) {
      // If element is smaller than pivot, then put it to the left of the pivot
      if (a[j] <= pivot) {
        i++;
        _swap(a[i], a[j]);
      }
    }
    _swap(a[i + 1], a[end]);
    return i + 1;
  }

  void _swap(int a, int b) {
    int swapTemp = a;
    a = b;
    b = swapTemp;
  }
}
