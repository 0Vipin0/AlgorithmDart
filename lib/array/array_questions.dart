class ArrayQuestions {
  List<int> reverse(List<int> a) {
    final List<int> result = List<int>(a.length);
    for (int i = 0; i < a.length; i++) {
      result[i] = a[a.length - i - 1];
    }
    return result;
  }

  int nthSmallestElement(List<int> a, int index) {
    a.sort();
    return a[index - 1];
  }

  int nthLargestElement(List<int> a, int index) {
    a.sort();
    return a[a.length - index - 1];
  }

  List<int> commonElementUsingSort(List<int> a, List<int> b) {
    a.sort();
    b.sort();
    int i = 0, j = 0;
    final List<int> result = <int>[];
    while (i < a.length && j < b.length) {
      if (a[i] == b[j]) {
        result.add(a[i]);
        i++;
        j++;
      } else if (a[i] < b[j]) {
        i++;
      } else {
        j++;
      }
    }
    return result;
  }

  List<int> commonElementUsingSet(List<int> a, List<int> b) {
    final int aLength = a.length;
    final int bLength = b.length;
    final Set<int> hashSet = aLength < bLength ? a.toSet() : b.toSet();
    final Set<int> commonElements = <int>{};
    if (aLength < bLength) {
      for (int i = 0; i < b.length; i++) {
        if (hashSet.contains(b[i])) {
          commonElements.add(b[i]);
        }
      }
    } else {
      for (int i = 0; i < a.length; i++) {
        if (hashSet.contains(a[i])) {
          commonElements.add(a[i]);
        }
      }
    }
    return commonElements.toList();
  }

  List<int> removeDuplicates(List<int> a) {
    final Set<int> tempSet = a.toSet();
    return tempSet.toList();
  }
}
