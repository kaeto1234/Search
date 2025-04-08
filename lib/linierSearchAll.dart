void sequentialSearchAll(List<int> arr, int x) {
  List<int> indices = [];
  int comparisons = 0;
  
  for (int i = 0; i < arr.length; i++) {
    comparisons++;
    if (arr[i] == x) {
      indices.add(i);
    }
  }
  
  if (indices.isNotEmpty) {
    print("\nDitemukan di indeks: ${indices.join(", ")} dengan $comparisons perbandingan");
  } else {
    print("\nTidak ditemukan dengan $comparisons perbandingan");
  }
}