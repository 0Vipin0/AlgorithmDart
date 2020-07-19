import 'package:AlgorithmDart/graph.dart';
import 'package:test/test.dart';

void main() {
  final Graph graph = Graph(6);
  graph.addEdge(0, 1);
  graph.addEdge(0, 2);
  graph.addEdge(0, 3);
  graph.addEdge(1, 4);
  graph.addEdge(2, 4);
  graph.addEdge(2, 5);
  graph.addEdge(4, 3);
  group("Graph", () {
    test('Print Adjacency Matrix', () {
      graph.printAdjacencyMatrix();
    });
  });
}
