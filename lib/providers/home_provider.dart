import 'package:firebasebooks/model/book.dart';
import 'package:flutter/cupertino.dart';

import '../repositories/db_repository.dart';

class HomeProvider extends ChangeNotifier{
  late List<Book> results= [] ;
 late bool progress;
 loadData()async{
    progress=true;
    notifyListeners();
    Future.delayed(Duration(milliseconds: 500));
    results=  await DBRepository.fetchBooksFromRange();
    progress=false;
    notifyListeners();
  }

}