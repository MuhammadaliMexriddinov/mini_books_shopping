import 'package:advance_pdf_viewer_fork/advance_pdf_viewer_fork.dart';
import 'package:flutter/material.dart';

import 'package:firebasebooks/model/book.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import '../utils/styles.dart';

class PDFScreen extends StatefulWidget {
  static const String routeName = '/pdf';

  @override
  State<PDFScreen> createState() => _PDFScreenState();
}

class _PDFScreenState extends State<PDFScreen> {
  bool _isLoading = true;
  late PDFDocument document;
  bool _usePDFListView = false;
  Book? book;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    document.clearImageCache();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    book = ModalRoute.of(context)!.settings.arguments as Book;

    setState(() {
      changePDF(book!.link?.toString());
    });

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Book",
          style: appBarTitle(),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_rounded, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
          splashRadius: 22,
        ),
      ),
      body: SfPdfViewer.network(
          book!.link!
          //    key: _pdfViewerKey,
          ),
    );
  }

  changePDF(String? value) async {
    setState(() => _isLoading = true);
    document = await PDFDocument.fromURL(value!);
    setState(() => _isLoading = false);
  }
}
