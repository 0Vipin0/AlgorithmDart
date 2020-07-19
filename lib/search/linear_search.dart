import 'search.dart';

class LinearSearch implements Search {
  int search(int value, List<int> a) {
    int p = -1;
    for (int i = 0; i < a.length; i++) {
      if (value == a[i]) {
        p = i;
      }
    }
    return p;
  }
}
