import 'package:che/core/const.dart';
import 'package:che/core/pdf/syllabus/syllabus15_pdf_path.dart';
import 'package:che/core/theme_color.dart';
import 'package:che/presentation/widgets/pdf_viewer.dart';
import 'package:che/presentation/widgets/custom_sub_button.dart';
import 'package:flutter/material.dart';

class SemFourSyllabusRev15 extends StatelessWidget {
  const SemFourSyllabusRev15({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    text,
                    style: const TextStyle(
                      color: ThemeColor.black,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  InkWell(
                    child: Container(
                      decoration: BoxDecoration(
                          color: ThemeColor.lightGrey,
                          borderRadius: BorderRadius.circular(12)),
                      padding: const EdgeInsets.all(12),
                      child: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  )
                ],
              ),
            ),
            kHeight25,
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PdfViewer(
                              src: Syllabus15PdfPath.mpAndi,
                            ),
                          ),
                        );
                      },
                      child: CustomSubButton(
                        size: size,
                        coursename: 'Microprocessors and Interfacing',
                        coursecode: '4151',
                      ),
                    ),
                    kHeight20,
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PdfViewer(
                              src: Syllabus15PdfPath.os,
                            ),
                          ),
                        );
                      },
                      child: CustomSubButton(
                        size: size,
                        coursename: 'Operating Systems',
                        coursecode: '4134',
                      ),
                    ),
                    kHeight20,
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PdfViewer(
                              src: Syllabus15PdfPath.ds,
                            ),
                          ),
                        );
                      },
                      child: CustomSubButton(
                        size: size,
                        coursename: 'Data Structures',
                        coursecode: '4133',
                      ),
                    ),
                    kHeight20,
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PdfViewer(
                              src: Syllabus15PdfPath.csh,
                            ),
                          ),
                        );
                      },
                      child: CustomSubButton(
                        size: size,
                        coursename: 'Computer System Hardware',
                        coursecode: '4131',
                      ),
                    ),
                    kHeight20,
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PdfViewer(
                              src: Syllabus15PdfPath.saLab,
                            ),
                          ),
                        );
                      },
                      child: CustomSubButton(
                        size: size,
                        coursename: 'System Administration Lab',
                        coursecode: '4139',
                      ),
                    ),
                    kHeight20,
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PdfViewer(
                              src: Syllabus15PdfPath.dsLab,
                            ),
                          ),
                        );
                      },
                      child: CustomSubButton(
                        size: size,
                        coursename: 'Data Structures Lab',
                        coursecode: '4138',
                      ),
                    ),
                    kHeight20,
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PdfViewer(
                              src: Syllabus15PdfPath.cshLab,
                            ),
                          ),
                        );
                      },
                      child: CustomSubButton(
                        size: size,
                        coursename: 'Computer System Hardware Lab',
                        coursecode: '4137',
                      ),
                    ),
                    kHeight20,
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PdfViewer(
                              src: Syllabus15PdfPath.miniproject,
                            ),
                          ),
                        );
                      },
                      child: CustomSubButton(
                        size: size,
                        coursename: 'Mini Project',
                        coursecode: '4009',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
