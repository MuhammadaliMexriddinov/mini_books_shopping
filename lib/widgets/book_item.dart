import 'package:firebasebooks/screens/pdf_screen.dart';
import 'package:flutter/material.dart';

import '../model/book.dart';

class DefaultBookItem extends StatelessWidget {
  const DefaultBookItem(this.book);

  final Book? book;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).pushNamed(
        PDFScreen.routeName,
        arguments: book,
      ),

      borderRadius: BorderRadius.circular(15),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(5),
            height: 180,
            decoration: BoxDecoration(
              color: Color(0xFFd8e0e7),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Align(
              alignment: Alignment.center,
              child: Container(
                width: 105,
                height: 145,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[500]!,
                      offset: Offset(1, 2),
                      blurRadius: 3,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    book!.photoUrl!,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 3),
            child: Text(
              book!.BookName!,
              style: Theme.of(context).textTheme.bodyText1!,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              maxLines: 2,
            ),
          ),
        ],
      ),
    );
  }
}
