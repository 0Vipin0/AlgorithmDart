import 'sort.dart';

class BubbleSort implements Sort {
  @override
  List<int> sort(List<int> a) {
    final List<int> result = a;
    for (int i = 0; i < a.length; i++) {
      for (int j = 0; j < a.length - i - 1; j++) {
        if (result[j] > result[j + 1]) {
          _swap(result[j], result[j + 1]);
        }
      }
    }
    return result;
  }

  void _swap(int a, int b) {
    final int swapTemp = a;
    a = b;
    b = swapTemp;
  }
}
