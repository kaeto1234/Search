int sequentialSearchPerbandingan(List<int> arr, int x) {
  int N = arr.length;
  int comparisons = 0;
  for (int i = 0; i < N; i++) {
    comparisons++;
    if (arr[i] == x) {
      print("\nSequential Search: ditemukan pada indeks $i dengan $comparisons perbandingan");
      return i;
    }
  }
  print("\nSequential Search: Tidak ditemukan dengan $comparisons perbandingan");
  return -1;
}

void binarySearchIterativePerbandingan(List<int> arr, int x) {
  int l = 0, r = arr.length - 1;
  int comparisons = 0;
  while (r - l > 1) {
    int mid = (l + r) ~/ 2;
    comparisons++;
    if (arr[mid] < x) {
      l = mid + 1;
    } else {
      r = mid;
    }
  }
  comparisons++;
  if (arr[l] == x) {
    print("\nBinary Search: ditemukan di indeks $l dengan $comparisons dengan perbandingan");
  } else if (arr[r] == x) {
    print("\nBinary Search: ditemukan di indeks $r dengan $comparisons dengan perbandingan");
  } else {
    print("\nBinary Search: tidak ditemukan dengan $comparisons perbadingan");
  }
}