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
            // actions: <Widget>[
            //   InkWell(
            //     child: Container(
            //       decoration: BoxDecoration(
            //           color: ThemeColor.primary,
            //           borderRadius: BorderRadius.circular(12)),
            //       padding: const EdgeInsets.all(15),
            //       child: const Icon(
            //         Icons.arrow_back,
            //         color: Colors.white,
            //       ),
            //     ),
            //     onTap: () {
            //       Navigator.pop(context);
            //     },
            //   )
            // ],
            title: const Text(
              "PDF Viewer",
              style: TextStyle(
                fontSize: 20,
                color: ThemeColor.white,
              ),
            )),
        body: SafeArea(
          child: SfPdfViewer.network(
            src,
          ),
        ));
  }
}
