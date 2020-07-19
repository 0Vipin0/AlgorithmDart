import 'package:AlgorithmDart/dynamic_programming/fibonacci_number.dart';
import 'package:test/test.dart';

void main() {
  final FibonacciNumber fibonacciNumber = FibonacciNumber();
  group("Fibonacci Test", () {
    test("Fibonacci using naive", () {
//      final Stopwatch stopwatch = Stopwatch();
//      stopwatch.start();
      expect(fibonacciNumber.fibonacciNaive(5), 5);
      expect(fibonacciNumber.fibonacciNaive(25), 75025);
//      stopwatch.stop();
//      print("Time Fibonacci Naive : ${stopwatch.elapsedMicroseconds} microseconds");
    });
    test("Fibonacci using dynamic programming and storing in Map", () {
//      final Stopwatch stopwatch = Stopwatch();
//      stopwatch.start();
      expect(fibonacciNumber.fibonacciDynamicMap(5), 5);
      expect(fibonacciNumber.fibonacciDynamicMap(75), 2111485077978050);
//      stopwatch.stop();
//      print("Time Fibonacci dynamic programming and storing in Map : ${stopwatch.elapsedMicroseconds}  microseconds");
    });
    test("Fibonacci using dynamic programming and storing in Array", () {
//      final Stopwatch stopwatch = Stopwatch();
//      stopwatch.start();
      expect(fibonacciNumber.fibonacciDynamicArray(5), 5);
      expect(fibonacciNumber.fibonacciDynamicArray(75), 2111485077978050);
//      stopwatch.stop();
//      print("Time Fibonacci dynamic programming and storing in Array : ${stopwatch.elapsedMicroseconds} microseconds");
    });
  });
}
