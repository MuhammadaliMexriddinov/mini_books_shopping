import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';

import '../model/book.dart';

class DBRepository {


  static Future<List<Book>> fetchBooksFromRange() async {
    FirebaseFirestore _fireStore = FirebaseFirestore.instance;
    QuerySnapshot<Map<String, dynamic>>? _querySnapshot = await _fireStore.collection('books').get();
    List<QueryDocumentSnapshot> _loadedItems = _querySnapshot.docs;

    var list = _loadedItems. map((QueryDocumentSnapshot doc) {
      return Book.fromFirestore(doc);
    }).toList();

    return list;
  }


}
