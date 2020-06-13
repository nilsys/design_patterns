enum BookGenre { fiction, action, adventure, detective, mystery }

class Book {
  final String name;
  final BookGenre genre;

  Book({this.name, this.genre});
}
