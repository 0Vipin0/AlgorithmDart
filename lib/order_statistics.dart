class OrderStatistics {
  int maximumValue(List<int> a) {
    assert(a.isNotEmpty);
    int temp = a[0];
    for (int i = 1; i < a.length; i++) {
      if (temp < a[i]) {
        temp = a[i];
      }
    }
    return temp;
  }

  int minimumValue(List<int> a) {
    assert(a.isNotEmpty);
    int temp = a[0];
    for (int i = 1; i < a.length; i++) {
      if (temp > a[i]) {
        temp = a[i];
      }
    }
    return temp;
  }

  Pair minimumMaximumValue(List<int> a) {
    assert(a.isNotEmpty);
    int min = minimumValue(a);
    int max = maximumValue(a);
    return Pair(min, max);
  }
}

class Pair {
  final int a;
  final int b;

  Pair(this.a, this.b);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Pair &&
          runtimeType == other.runtimeType &&
          a == other.a &&
          b == other.b;

  @override
  int get hashCode => a.hashCode ^ b.hashCode;
}
