class BaseConversion {
  String convert(int number, int base) {
    if (number < base) {
      return "$number";
    } else {
      return convert(number ~/ base, base) + '${number % base}';
    }
  }
}
