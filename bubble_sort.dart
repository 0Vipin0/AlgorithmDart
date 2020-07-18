class BubbleSort {
  List<int> sort(List<int> a) {
    final List<int> result = a;
    for (int i = 0; i < a.length; i++) {
      for (int j = 0; j < a.length - i - 1; j++) {
        if (result[j] > result[j + 1]) {
          int temp = result[j];
          result[j] = result[j + 1];
          result[j + 1] = temp;
        }
      }
    }
    return result;
  }
}
