// Copyright 2020 Ammar Yasser. All rights reserved.
// Use of this source code is governed by a BSD 2-Clause "Simplified" license
// that can be found in the LICENSE file.

library design_patterns;

import 'book.dart';
import 'interfaces.dart';

// Observer is a behavioral design pattern that lets you define a subscription mechanism
// to notify multiple objects about any events that happen to the object they’re observing.

class Member implements Subscriber {
  final int id;
  String name;
  List<BookGenre> favoriteGenres = List<BookGenre>();

  Member({this.id, this.name});

  @override
  void update(Publisher publisher) {
    if (publisher is Library) {
      for (Book book in publisher.books) {
        if (favoriteGenres.contains(book.genre)) {
          print("هناك كتاب جديد: ${book.name}");
        }
      }
    }
  }

  void changeMemberName(String newName) => name = newName;

  void addFavoriteGenre(BookGenre genre) => favoriteGenres.add(genre);

  void removeFavoriteGenre(BookGenre genre) => favoriteGenres.remove(genre);
}

class Library implements Publisher {
  final String name;

  List<Book> books = List<Book>();
  List<Subscriber> members = List<Subscriber>();

  Library(this.name);

  @override
  void attach(Subscriber subscriber) => members.add(subscriber);

  @override
  void detach(Subscriber subscriber) => members.remove(subscriber);

  @override
  void notify() {
    members.forEach((subscriber) {
      subscriber.update(this);
    });
  }

  void addBook(Book book) {
    print("*************************");
    books.add(book);
    notify();
  }

  void addNewMember(Subscriber subscriber) => members.add(subscriber);

  void removeMember(Subscriber subscriber) => members.remove(subscriber);
}
