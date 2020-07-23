library design_patterns;

import 'book.dart';
import 'observer.dart';

/// drive program

void main() {
  Library publicEgyptLibrary = Library("مكتبة مصر العامة");

  Member member = Member(id: 2, name: "سارة");
  member.addFavoriteGenre(BookGenre.detective);
  member.addFavoriteGenre(BookGenre.adventure);

  publicEgyptLibrary.attach(member);

  Book newBook1 = Book(name: 'المحقق كونان', genre: BookGenre.detective);
  Book newBook2 = Book(name: 'لونا', genre: BookGenre.adventure);

  publicEgyptLibrary.addBook(newBook1);
  publicEgyptLibrary.addBook(newBook2);
}
