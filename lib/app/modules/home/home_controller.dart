import 'package:get/get.dart';
import '../../data/book_data.dart';

class HomeController extends GetxController {
  // Menggunakan featured books dari BookData
  final books = BookData.getFeaturedBooks().obs;
}
