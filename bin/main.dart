import 'dart:io';
import '../lib/linierSearchInteraktive.dart';
import '../lib/linierSearchRekursif.dart';
import '../lib/linierSearchAll.dart';
import '../lib/binarySearchRekursif.dart';
import '../lib/binarySearchInteraktive.dart';
import '../lib/perbandingan.dart';

void main() {
  while (true) {
    print("===== Pilih Program =====\n");
    print(
        "1. Implementasi pencarian dengan metode Linear search dengan Teknik iterative");
    print(
        "2. Implementasi pencarian dengan metode Linear search dengan Teknik rekursif");
    print(
        "3. Implementasi pencarian dengan metode binary search dengan Iterative");
    print(
        "4. Implementasi pencarian dengan metode binary search dengan Rekursif");

    print("5. Perbandingan");

    print("6. Implementasi pencarian semua data dengan metode Linear search ");

    print("7. keluar");

    stdout.write("Masukkan pilihan (1-7): ");
    int pilihan = int.parse(stdin.readLineSync()!);

    if (pilihan == 1) {
      List<int> arr = [2, 3, 4, 10, 40];
      int x = 10;
      int result = sequentialSearch(arr, x);
      if (result == -1) {
        print("Elemen tidak ada dalam array");
      } else {
        print("\nElemen ditemukan pada indeks ke: $result\n");
      }
    } else if (pilihan == 2) {
      List<int> arr = [2, 3, 4, 10, 40];
      int x = 10;
      int result = linearSearch(arr, arr.length, x);
      if (result == -1) {
        print("Elemen tidak ada dalam array");
      } else {
        print("\nElemen ditemukan pada indeks ke: $result\n");
      }
    } else if (pilihan == 3) {
      List<int> arr = [2, 3, 4, 10, 40];
      int x = 10;
      int size = arr.length;
      binarySearchInteraktive(arr, 0, size - 1, x);
    } else if (pilihan == 4) {
      List<int> arr = [2, 3, 4, 10, 40];
      int x = 10;
      int size = arr.length;
      int result = binarySearchRekursif(arr, 0, size - 1, x);
      if (result == -1) {
        print("\nElemen tidak ada dalam array");
      } else {
        print("\nElemen ditemukan pada indeks ke: $result\n");
      }
    } else if (pilihan == 5) {
      List<int> arr = [1, 3, 5, 7, 9, 11, 13, 15, 17, 19];
      int target = 7;

      sequentialSearchPerbandingan(arr, target);
      binarySearchIterativePerbandingan(arr, target);
    }  else if (pilihan == 6) {
      List<int> arr = [1, 3, 7, 7, 8, 7, 10, 7, 15];
      int target = 7;

      sequentialSearchAll(arr, target);
    } else if (pilihan == 7) {
      print("Keluar dari program...");
      break;
    } else {
      print("Pilihan tidak valid!");
    }
  }
}
