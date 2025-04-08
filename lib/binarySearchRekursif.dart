int binarySearchRekursif(List<int> arr, int l, int r, int x) {
  if (r >= l) {
    int mid = l + (r - l) ~/ 2;
    if (arr[mid] == x) return mid;
    if (arr[mid] > x) return binarySearchRekursif(arr, l, mid - 1, x);
    return binarySearchRekursif(arr, mid + 1, r, x);
  }
  return -1;
}