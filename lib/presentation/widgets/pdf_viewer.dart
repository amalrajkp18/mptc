import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import '../../core/theme_color.dart';

class PdfViewer extends StatelessWidget {
  const PdfViewer({super.key, required this.src});
  final String src;
  @override
  Widget build(BuildContext context) {
    if (src.isEmpty) {
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: ThemeColor.primary,
          title: const Text(
            "PDF Viewer",
            style: TextStyle(
              fontSize: 20,
              color: ThemeColor.white,
            ),
          ),
        ),
        backgroundColor: ThemeColor.white,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'images/notfound.gif',
                fit: BoxFit.cover,
              ),
              const Text(
                'Sorry! No PDF found :(',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 70,
              )
            ],
          ),
        ),
      );
    }
    return Scaffold(
        backgroundColor: ThemeColor.white,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: ThemeColor.primary,
          title: const Text(
            "PDF Viewer",
            style: TextStyle(
              fontSize: 20,
              color: ThemeColor.white,
            ),
          ),
        ),
        body: SafeArea(
          child: SfPdfViewer.network(
            src,
          ),
        ));
  }
}
