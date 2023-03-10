import 'package:firebasebooks/screens/home_screen.dart';
import 'package:firebasebooks/utils/routes.dart';
import 'package:firebasebooks/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      routes: routes(),
      initialRoute: HomeScreen.routeName,
    );
  }
}



/***
 * import 'package:flutter/foundation.dart';

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

 *
 *
 * */

