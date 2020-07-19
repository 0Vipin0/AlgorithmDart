class ArrayQuestions {
  List<int> reverse(List<int> a) {
    final List<int> result = List<int>(a.length);
    for (int i = 0; i < a.length; i++) {
      result[i] = a[a.length - i - 1];
    }
    return result;
  }
}
