void binarySearchInteraktive(List<int> arr, int l, int r, int x) {
  while (r - l > 1) {
    int mid = (l + r) ~/ 2;
    if (arr[mid] < x) {
      l = mid + 1;
    } else {
      r = mid;
    }
  }
  if (arr[l] == x) {
    print("Found At Index $l");
  } else if (arr[r] == x) {
    print("Found At Index $r");
  } else {
    print("Not Found");
  }
}
