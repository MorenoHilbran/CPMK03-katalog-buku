import 'package:get/get.dart';
import '../../data/book.dart';
import '../../data/book_data.dart';

class GenreBooksController extends GetxController {
  final String genre = Get.arguments as String;
  final books = <Book>[].obs;

  @override
  void onInit() {
    super.onInit();
    loadBooksByGenre();
  }

  void loadBooksByGenre() {
    // Menggunakan data dari BookData
    books.value = BookData.getBooksByGenre(genre);
  }
}
