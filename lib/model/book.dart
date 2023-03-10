import 'package:flutter/cupertino.dart';

class Book {
  Book({
    @required this.BookName,
    @required this.photoUrl,
    @required this.link,
    @required this.language,
    @required this.pages,
  });

  String? BookName;
  final String? photoUrl;
  final String? link;
  final String? language;
  final String? pages;

  factory Book.fromMap(Map<String, dynamic> map) {
    return Book(
      BookName: map['BookName'],
      photoUrl: map['photoUrl'],
      link: map['link'],
      language: map['language'],
      pages: map['pages'],
    );
  }

  factory Book.fromFirestore(dynamic book) {
    return Book(
      BookName: book.get('BookName'),
      link: book.get('link'),
      language: book.get('language'),
      photoUrl: book.get('photoUrl'),
      pages: book.get('pages'),
    );
  }

}