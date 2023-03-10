import 'package:firebasebooks/providers/home_provider.dart';
import 'package:firebasebooks/screens/pdf_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../screens/home_screen.dart';

Map<String, WidgetBuilder> routes() {
  return <String, WidgetBuilder>{
    HomeScreen.routeName: (_) {
      return ChangeNotifierProvider(
        create: (context) => HomeProvider(),
        builder: (context, child) {
          return HomeScreen();
        },
      );


    },
    PDFScreen.routeName: (_) {
      return ChangeNotifierProvider(
        create: (context) => HomeProvider(),
        builder: (context, child) {
          return PDFScreen();
        },
      );


    },
  };
}
