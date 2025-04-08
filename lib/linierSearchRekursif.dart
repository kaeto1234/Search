int linearSearch(List<int> arr, int size, int key) {
  if (size == 0) {
    return -1;
  } else if (arr[size - 1] == key) {
    // Return the index of found key.
    return size - 1;
  } else {
    return linearSearch(arr, size - 1, key);
  }
}