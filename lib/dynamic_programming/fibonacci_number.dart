import 'dart:collection';

class FibonacciNumber {
  Map<int, int> _memoizeTable;

  FibonacciNumber() {
    _memoizeTable = HashMap<int, int>();
    _memoizeTable[0] = 0;
    _memoizeTable[1] = 1;
  }

  int fibonacciNaive(int number) {
    if (number == 0) {
      return 0;
    }
    if (number == 1) {
      return 1;
    }
    return fibonacciNaive(number - 1) + fibonacciNaive(number - 2);
  }

  int fibonacciDynamicMap(int number) {
    if (_memoizeTable.containsKey(number)) {
      return _memoizeTable[number];
    }
    _memoizeTable[number - 1] = fibonacciDynamicMap(number - 1);
    _memoizeTable[number - 2] = fibonacciDynamicMap(number - 2);
    final int calculatedNumber =
        _memoizeTable[number - 1] + _memoizeTable[number - 2];
    _memoizeTable[number] = calculatedNumber;
    return calculatedNumber;
  }

  int fibonacciDynamicArray(int n) {
    final List<int> f = List<int>(n + 2);
    int i;
    f[0] = 0;
    f[1] = 1;
    for (i = 2; i <= n; i++) {
      f[i] = f[i - 1] + f[i - 2];
    }
    return f[n];
  }
}
