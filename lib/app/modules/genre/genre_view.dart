import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../routes/app_pages.dart';
import 'genre_controller.dart';

class GenreView extends GetView<GenreController> {
  const GenreView({super.key});

  @override
  Widget build(BuildContext context) {
    final c = Get.put(GenreController());
    
    final genreIcons = {
      'Teknologi': Icons.computer_rounded,
      'Self-Help': Icons.self_improvement_rounded,
      'Fiksi': Icons.auto_stories_rounded,
      'Non-Fiksi': Icons.book_rounded,
      'Biografi': Icons.person_rounded,
      'Sejarah': Icons.history_edu_rounded,
      'Sains': Icons.science_rounded,
      'Bisnis': Icons.business_center_rounded,
    };

    final genreColors = [
      const Color(0xFF6B4423),
      const Color(0xFF8B7355),
      const Color(0xFFD4A574),
      const Color(0xFFA0826D),
    ];

    return Scaffold(
      backgroundColor: const Color(0xFFFFFBF5),
      appBar: AppBar(
        title: const Text(
          'Genre Buku',
          style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 0.5),
        ),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: 1.3,
        ),
        itemCount: c.genres.length,
        itemBuilder: (context, index) {
          final genre = c.genres[index];
          final color = genreColors[index % genreColors.length];
          final icon = genreIcons[genre] ?? Icons.category_rounded;

          return InkWell(
            onTap: () {
              // Navigate to genre books list
              Get.toNamed(Routes.GENRE_BOOKS, arguments: genre);
            },
            borderRadius: BorderRadius.circular(20),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: color.withOpacity(0.2),
                    blurRadius: 12,
                    offset: const Offset(0, 6),
                  ),
                ],
              ),
              child: Stack(
                children: [
                  // Background Pattern
                  Positioned(
                    right: -20,
                    bottom: -20,
                    child: Icon(
                      icon,
                      size: 100,
                      color: color.withOpacity(0.1),
                    ),
                  ),
                  // Content
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: color.withOpacity(0.15),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Icon(
                            icon,
                            color: color,
                            size: 28,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              genre,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: color,
                                letterSpacing: 0.3,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              '${c.getBookCount(genre)} buku',
                              style: TextStyle(
                                fontSize: 12,
                                color: color.withOpacity(0.7),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
