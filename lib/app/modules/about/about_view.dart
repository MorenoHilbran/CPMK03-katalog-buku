import 'package:flutter/material.dart';

class AboutView extends StatelessWidget {
  const AboutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFBF5),
      appBar: AppBar(
        title: const Text(
          'Tentang Perpustakaan',
          style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 0.5),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Logo Section
            Center(
              child: Container(
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: const Color(0xFF6B4423).withOpacity(0.1),
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.local_library_rounded,
                  size: 80,
                  color: Color(0xFF6B4423),
                ),
              ),
            ),
            const SizedBox(height: 32),
            // Title
            const Center(
              child: Text(
                'Perpustakaan Digital',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF2C1810),
                  letterSpacing: 0.5,
                ),
              ),
            ),
            const SizedBox(height: 8),
            const Center(
              child: Text(
                'Jelajahi Dunia Pengetahuan',
                style: TextStyle(
                  fontSize: 15,
                  color: Color(0xFF8B7355),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(height: 32),
            // Description Card
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: const Text(
                'Aplikasi katalog buku digital yang dirancang untuk membantu Anda menemukan, menjelajahi, dan mengelola koleksi buku favorit. Dengan antarmuka yang intuitif dan fitur pencarian yang canggih, pengalaman membaca Anda menjadi lebih menyenangkan.',
                style: TextStyle(
                  fontSize: 15,
                  color: Color(0xFF5D4E37),
                  height: 1.6,
                  letterSpacing: 0.2,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
            const SizedBox(height: 32),
            // Features Section
            const Text(
              'Fitur Unggulan',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF2C1810),
              ),
            ),
            const SizedBox(height: 16),
            _buildFeatureItem(
              icon: Icons.search_rounded,
              title: 'Pencarian Cepat',
              description: 'Temukan buku favorit dengan mudah',
              color: const Color(0xFF6B4423),
            ),
            const SizedBox(height: 12),
            _buildFeatureItem(
              icon: Icons.category_rounded,
              title: 'Beragam Genre',
              description: 'Jelajahi berbagai kategori buku',
              color: const Color(0xFF8B7355),
            ),
            const SizedBox(height: 12),
            _buildFeatureItem(
              icon: Icons.menu_book_rounded,
              title: 'Detail Lengkap',
              description: 'Informasi buku yang komprehensif',
              color: const Color(0xFFD4A574),
            ),
            const SizedBox(height: 12),
            _buildFeatureItem(
              icon: Icons.favorite_rounded,
              title: 'Koleksi Favorit',
              description: 'Simpan buku yang Anda sukai',
              color: const Color(0xFFA0826D),
            ),
            const SizedBox(height: 32),
            // Version Info
            Center(
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 12,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xFF6B4423).withOpacity(0.1),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text(
                  'Versi 1.0.0',
                  style: TextStyle(
                    fontSize: 13,
                    color: Color(0xFF6B4423),
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.5,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            const Center(
              child: Text(
                '© 2024 Perpustakaan Digital',
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xFF8B7355),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFeatureItem({
    required IconData icon,
    required String title,
    required String description,
    required Color color,
  }) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: color.withOpacity(0.1),
            blurRadius: 8,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: color.withOpacity(0.15),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(icon, color: color, size: 24),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2C1810),
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  description,
                  style: const TextStyle(
                    fontSize: 13,
                    color: Color(0xFF8B7355),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
