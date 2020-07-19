import 'dart:collection';
import 'dart:io';

class Graph {
  List<List<int>> _adjacencyMatrix;
  List<bool> _visited;

  // Allocating memory for the Graph
  Graph(int vertices) {
    _adjacencyMatrix = List<List<int>>(vertices);
    _visited = List<bool>(vertices);
    for (int i = 0; i < vertices; i++) {
      _visited[i] = false;
      _adjacencyMatrix[i] = List<int>(vertices);
      for (int j = 0; j < vertices; j++) {
        _adjacencyMatrix[i][j] = 0;
      }
    }
  }

  void addEdge(int source, int destination) {
    _adjacencyMatrix[source][destination]++;
    _adjacencyMatrix[destination][source]++;
  }

  void breadthFirstSearch(int vertex) {
    final Queue<int> queue = Queue<int>();
    queue.add(vertex);
    _visited[vertex] = true;
    while (queue.isNotEmpty) {
      final int node = queue.last;
      print(node);
      final List<int> childList = _adjacencyMatrix[node];
      for (int child in childList) {
        if (_visited[child]) {
          queue.add(child);
          _visited[child] = true;
        }
      }
    }
  }

  void depthFirstSearch(int vertex) {
    _visited[vertex] = true;
    print("$vertex");
    for (int i = 0; i < _adjacencyMatrix[vertex].length; i++) {
      if (!_visited[i]) {
        depthFirstSearch(i);
      }
    }
  }

  void printAdjacencyMatrix() {
    for (int i = 0; i < _adjacencyMatrix.length; i++) {
      final List<int> temp = _adjacencyMatrix[i];
      for (int j = 0; j < temp.length; j++) {
        stdout.write("${temp[j]} ");
      }
      stdout.write("\n");
    }
  }
}
