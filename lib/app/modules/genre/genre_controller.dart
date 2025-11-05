import 'package:get/get.dart';
import '../../data/book_data.dart';

class GenreController extends GetxController {
  final genres = <String>[
    'Teknologi',
    'Self-Help',
    'Fiksi',
    'Non-Fiksi',
    'Biografi',
    'Sejarah',
    'Sains',
    'Bisnis',
  ].obs;

  // Get jumlah buku untuk genre tertentu
  int getBookCount(String genre) {
    return BookData.getBookCountByGenre(genre);
  }
}
