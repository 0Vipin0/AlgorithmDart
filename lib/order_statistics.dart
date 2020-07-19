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
    final int min = minimumValue(a);
    final int max = maximumValue(a);
    return Pair(min, max);
  }

  double meanValue(List<int> a) {
    assert(a.isNotEmpty);
    int sum = a[0];
    for (int i = 1; i < a.length; i++) {
      sum += a[i];
    }
    return sum / a.length;
  }

  // This is a naive approach
  double medianValue(List<int> a) {
    a.sort();
    if (a.length % 2 != 0) {
      return a[a.length ~/ 2].toDouble();
    }
    return (a[(a.length - 1) ~/ 2] + a[a.length ~/ 2]) / 2;
  }

  int factorial(int number) {
    if (number <= 1) {
      return 1;
    } else {
      return number * factorial(number - 1);
    }
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
