import 'package:get/get.dart';
import '../../data/book.dart';

class DetailController extends GetxController {
  late final Book book;

  @override
  void onInit() {
    book = Get.arguments as Book;
    super.onInit();
  }
}
