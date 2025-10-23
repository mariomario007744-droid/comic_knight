import 'package:flutter/material.dart';
import 'package:pdfx/pdfx.dart';
import 'package:http/http.dart' as http;

class ComicPdfView extends StatefulWidget {
  const ComicPdfView({required this.pdfUrl});
  final String pdfUrl;
  @override
  State<ComicPdfView> createState() => _ComicPdfViewState();
}

class _ComicPdfViewState extends State<ComicPdfView> {
  PdfControllerPinch? pdfController;
  var pdf;
  @override
  void initState() {
    super.initState();
    pdf = getPdf();
  }

  getPdf() async {
    final response = await http.get(Uri.parse(widget.pdfUrl));
    pdf = PdfDocument.openData(response.bodyBytes);
    if (mounted) {
  setState(() {
    pdfController = PdfControllerPinch(document: pdf);
  });
}
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pdfController==null
          ? Center(child: CircularProgressIndicator())
          : PdfViewPinch(controller: pdfController!),
    );
  }
}
