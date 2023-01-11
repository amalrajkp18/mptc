
import 'package:flutter/material.dart';

import '../../../../../core/const.dart';
import '../../../../../core/pdf/syllabus/syllabus21_pdf_path.dart';
import '../../../../../core/theme_color.dart';
import '../../../../widgets/custom_sub_button.dart';
import '../../../../widgets/pdf_viewer.dart';

class SemThreeSyllabusRev21 extends StatelessWidget {
  const SemThreeSyllabusRev21({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
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
              kHeight20,
              Expanded(
                child: SingleChildScrollView(
                  
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const PdfViewer(
                                src: Syllabus21PdfPath.csa,
                              ),
                            ),
                          );
                        },
                        child: CustomSubButton(
                          size: size,
                          coursename: 'Computer System Architecture',
                          coursecode: '3151',
                        ),
                      ),
                      kHeight,
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const PdfViewer(
                                src: Syllabus21PdfPath.pc,
                              ),
                            ),
                          );
                        },
                        child: CustomSubButton(
                          size: size,
                          coursename: 'Programming in C',
                          coursecode: '3132',
                        ),
                      ),
                      kHeight,
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const PdfViewer(
                                src: Syllabus21PdfPath.cn1,
                              ),
                            ),
                          );
                        },
                        child: CustomSubButton(
                          size: size,
                          coursename: 'Computer Networks I',
                          coursecode: '3152',
                        ),
                      ),
                      kHeight,
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const PdfViewer(
                                src: Syllabus21PdfPath.dcf,
                              ),
                            ),
                          );
                        },
                        child: CustomSubButton(
                          size: size,
                          coursename: 'Digital Computer Fundamentals',
                          coursecode: '3134',
                        ),
                      ),
                      kHeight,
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const PdfViewer(
                                src: Syllabus21PdfPath.pcLab,
                              ),
                            ),
                          );
                        },
                        child: CustomSubButton(
                          size: size,
                          coursename: 'Programming in C Lab',
                          coursecode: '3135',
                        ),
                      ),
                      kHeight,
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const PdfViewer(
                                src: Syllabus21PdfPath.saLab,
                              ),
                            ),
                          );
                        },
                        child: CustomSubButton(
                          size: size,
                          coursename: 'System Administration Lab',
                          coursecode: '3157',
                        ),
                      ),
                      kHeight,
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const PdfViewer(
                                src: Syllabus21PdfPath.dcfLab,
                              ),
                            ),
                          );
                        },
                        child: CustomSubButton(
                          size: size,
                          coursename: 'Digital Computer Fundamentals Lab',
                          coursecode: '3137',
                        ),
                      ),
                      kHeight,
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const PdfViewer(
                                src: Syllabus21PdfPath.chLab,
                              ),
                            ),
                          );
                        },
                        child: CustomSubButton(
                          size: size,
                          coursename: 'Computer Hardware Lab I',
                          coursecode: '3158	',
                        ),
                      ),
                      kHeight,
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const PdfViewer(
                                src: Syllabus21PdfPath.adLab,
                              ),
                            ),
                          );
                        },
                        child: CustomSubButton(
                          size: size,
                          coursename: 'Application Development Lab',
                          coursecode: '3159',
                        ),
                      ),
                      kHeight,
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
