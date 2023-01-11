import 'package:che/core/theme_color.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PdfViewer extends StatelessWidget {
  const PdfViewer({super.key, required this.src});
  final String src;
  @override
  Widget build(BuildContext context) {
    if (src.isEmpty) {
      return Scaffold(
        backgroundColor: ThemeColor.white,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                'https://i.pinimg.com/originals/5d/35/e3/5d35e39988e3a183bdc3a9d2570d20a9.gif',
                fit: BoxFit.cover,
              ),
              const Text(
                'Sorry! No Pdf found :(',
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
        body: SafeArea(
          child: SfPdfViewer.network(
            src,
          ),
        ));
  }
}
