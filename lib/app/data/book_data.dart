import 'book.dart';

class BookData {
  static final List<Book> allBooks = [
    // Teknologi - 3 buku
    Book(
      id: '1',
      title: 'Flutter in Action',
      author: 'Eric Windmill',
      genre: 'Teknologi',
      coverUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRKRaazQd2nP4zhAOIcADgvWh1eNcReh_xeyw&s',
      description: 'Panduan praktis membangun aplikasi Flutter dari dasar hingga mahir. Buku ini mencakup widget, state management, networking, dan deployment.',
    ),
    Book(
      id: '2',
      title: 'Clean Code',
      author: 'Robert C. Martin',
      genre: 'Teknologi',
      coverUrl: 'https://covers.openlibrary.org/b/id/9641982-L.jpg',
      description: 'Prinsip menulis kode yang bersih, rapi, dan mudah dipelihara. Buku wajib bagi programmer profesional.',
    ),
    Book(
      id: '11',
      title: 'Design Patterns',
      author: 'Erich Gamma et al.',
      genre: 'Teknologi',
      coverUrl: 'https://covers.openlibrary.org/b/id/8231996-L.jpg',
      description: 'Pola desain perangkat lunak yang telah terbukti efektif dalam pengembangan aplikasi.',
    ),

    // Self-Help - 3 buku
    Book(
      id: '3',
      title: 'Atomic Habits',
      author: 'James Clear',
      genre: 'Self-Help',
      coverUrl: 'https://covers.openlibrary.org/b/id/9875161-L.jpg',
      description: 'Strategi membangun kebiasaan kecil yang berdampak besar dalam hidup Anda. Transformasi dimulai dari perubahan kecil.',
    ),
    Book(
      id: '12',
      title: 'The Power of Now',
      author: 'Eckhart Tolle',
      genre: 'Self-Help',
      coverUrl: 'https://covers.openlibrary.org/b/id/8235116-L.jpg',
      description: 'Panduan spiritual untuk mencapai kebahagiaan dan pencerahan melalui kesadaran saat ini.',
    ),
    Book(
      id: '13',
      title: 'Think and Grow Rich',
      author: 'Napoleon Hill',
      genre: 'Self-Help',
      coverUrl: 'https://covers.openlibrary.org/b/id/11153249-L.jpg',
      description: 'Filosofi kesuksesan yang telah mengubah hidup jutaan orang di seluruh dunia.',
    ),

    // Fiksi - 3 buku
    Book(
      id: '4',
      title: 'Harry Potter and the Sorcerer\'s Stone',
      author: 'J.K. Rowling',
      genre: 'Fiksi',
      coverUrl: 'https://images.moviesanywhere.com/143cdb987186a1c8f94d4f18de211216/fdea56fa-2703-47c1-8da8-70fc5382e1ea.jpg?h=375&resize=fit&w=250',
      description: 'Petualangan seorang penyihir muda di sekolah sihir Hogwarts. Saga epik tentang persahabatan dan keberanian.',
    ),
    Book(
      id: '14',
      title: 'The Hobbit',
      author: 'J.R.R. Tolkien',
      genre: 'Fiksi',
      coverUrl: 'https://covers.openlibrary.org/b/id/6979861-L.jpg',
      description: 'Petualangan Bilbo Baggins mencari harta karun bersama para kurcaci.',
    ),
    Book(
      id: '15',
      title: '1984',
      author: 'George Orwell',
      genre: 'Fiksi',
      coverUrl: 'https://covers.openlibrary.org/b/id/7222246-L.jpg',
      description: 'Novel dystopia tentang masyarakat totalitarian yang mengontrol segala aspek kehidupan.',
    ),

    // Non-Fiksi - 2 buku
    Book(
      id: '5',
      title: 'Sapiens: A Brief History of Humankind',
      author: 'Yuval Noah Harari',
      genre: 'Non-Fiksi',
      coverUrl: 'https://covers.openlibrary.org/b/id/8370225-L.jpg',
      description: 'Sejarah singkat umat manusia dari zaman batu hingga era modern. Perspektif baru tentang evolusi manusia.',
    ),
    Book(
      id: '16',
      title: 'Educated',
      author: 'Tara Westover',
      genre: 'Non-Fiksi',
      coverUrl: 'https://covers.openlibrary.org/b/id/8371346-L.jpg',
      description: 'Memoar inspiratif tentang kekuatan pendidikan dalam mengubah hidup seseorang.',
    ),

    // Biografi - 2 buku
    Book(
      id: '6',
      title: 'Steve Jobs',
      author: 'Walter Isaacson',
      genre: 'Biografi',
      coverUrl: 'https://covers.openlibrary.org/b/id/7222241-L.jpg',
      description: 'Biografi resmi pendiri Apple Inc. yang mengubah industri teknologi. Kisah inovasi dan kegigihan.',
    ),
    Book(
      id: '17',
      title: 'Einstein: His Life and Universe',
      author: 'Walter Isaacson',
      genre: 'Biografi',
      coverUrl: 'https://covers.openlibrary.org/b/id/7222238-L.jpg',
      description: 'Kehidupan dan karya ilmuwan terbesar abad ke-20. Perjalanan dari clerk paten hingga Nobel.',
    ),

    // Sejarah - 2 buku
    Book(
      id: '7',
      title: 'A Brief History of Time',
      author: 'Stephen Hawking',
      genre: 'Sejarah',
      coverUrl: 'https://covers.openlibrary.org/b/id/240726-L.jpg',
      description: 'Penjelasan tentang alam semesta dari Big Bang hingga lubang hitam. Sains untuk semua orang.',
    ),
    Book(
      id: '18',
      title: 'Guns, Germs, and Steel',
      author: 'Jared Diamond',
      genre: 'Sejarah',
      coverUrl: 'https://covers.openlibrary.org/b/id/9875185-L.jpg',
      description: 'Analisis tentang bagaimana geografi membentuk peradaban manusia.',
    ),

    // Sains - 2 buku
    Book(
      id: '8',
      title: 'Cosmos',
      author: 'Carl Sagan',
      genre: 'Sains',
      coverUrl: 'https://covers.openlibrary.org/b/id/9875201-L.jpg',
      description: 'Eksplorasi alam semesta dan tempat manusia di dalamnya. Perjalanan kosmik yang menakjubkan.',
    ),
    Book(
      id: '19',
      title: 'The Selfish Gene',
      author: 'Richard Dawkins',
      genre: 'Sains',
      coverUrl: 'https://covers.openlibrary.org/b/id/9875239-L.jpg',
      description: 'Teori evolusi dari perspektif gen. Pandangan revolusioner tentang kehidupan.',
    ),

    // Bisnis - 3 buku
    Book(
      id: '9',
      title: 'Zero to One',
      author: 'Peter Thiel',
      genre: 'Bisnis',
      coverUrl: 'https://covers.openlibrary.org/b/id/8235087-L.jpg',
      description: 'Bagaimana membangun startup yang sukses dengan menciptakan hal baru. Dari pendiri PayPal.',
    ),
    Book(
      id: '10',
      title: 'The Lean Startup',
      author: 'Eric Ries',
      genre: 'Bisnis',
      coverUrl: 'https://covers.openlibrary.org/b/id/9875275-L.jpg',
      description: 'Metodologi untuk membangun bisnis yang efisien dan inovatif. Build, measure, learn.',
    ),
    Book(
      id: '20',
      title: 'Good to Great',
      author: 'Jim Collins',
      genre: 'Bisnis',
      coverUrl: 'https://covers.openlibrary.org/b/id/9875299-L.jpg',
      description: 'Riset tentang perusahaan yang berhasil bertransformasi dari baik menjadi luar biasa.',
    ),
  ];

  static List<Book> getAllBooks() => allBooks;

  static List<Book> getBooksByGenre(String genre) =>
      allBooks.where((book) => book.genre == genre).toList();

  static int getBookCountByGenre(String genre) =>
      allBooks.where((book) => book.genre == genre).length;

  static List<Book> getFeaturedBooks() => [
        allBooks[0],
        allBooks[3],
        allBooks[6],
        allBooks[9],
        allBooks[12],
        allBooks[15],
      ];
}
