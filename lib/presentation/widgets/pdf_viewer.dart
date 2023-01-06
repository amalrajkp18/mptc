import 'package:che/core/theme_color.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PdfViewer extends StatelessWidget {
  const PdfViewer({super.key, required this.src});
  final String src;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ThemeColor.white,
        body: SafeArea(
          child: Container(
            child: SfPdfViewer.network(
              src,
            ),
          ),
        ));
  }
}
