import 'package:che/core/const.dart';
import 'package:che/core/pdf/syllabus/syllabus21_pdf_path.dart';
import 'package:che/core/theme_color.dart';
import 'package:che/presentation/widgets/custom_sub_button.dart';
import 'package:che/presentation/widgets/pdf_viewer.dart';
import 'package:flutter/material.dart';

class SemTwoSyllabusRev21 extends StatelessWidget {
  const SemTwoSyllabusRev21({
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
                              src: Syllabus21PdfPath.math2,
                            ),
                          ),
                        );
                      },
                      child: CustomSubButton(
                        size: size,
                        coursename: 'Mathematics II',
                        coursecode: '2002',
                      ),
                    ),
                    kHeight20,
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PdfViewer(
                              src: Syllabus21PdfPath.aPhsyics2,
                            ),
                          ),
                        );
                      },
                      child: CustomSubButton(
                        size: size,
                        coursename: 'Applied Physics II',
                        coursecode: '2003',
                      ),
                    ),
                    kHeight20,
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PdfViewer(
                              src: Syllabus21PdfPath.es,
                            ),
                          ),
                        );
                      },
                      child: CustomSubButton(
                        size: size,
                        coursename: 'Environmental Science',
                        coursecode: '2001',
                      ),
                    ),
                    kHeight20,
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PdfViewer(
                              src: Syllabus21PdfPath.foeAndee,
                            ),
                          ),
                        );
                      },
                      child: CustomSubButton(
                        size: size,
                        coursename:
                            'Fundamentals of Electrical & Electronics Engineering',
                        coursecode: '2031',
                      ),
                    ),
                    kHeight20,
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PdfViewer(
                              src: Syllabus21PdfPath.psAndp,
                            ),
                          ),
                        );
                      },
                      child: CustomSubButton(
                        size: size,
                        coursename: 'Problem Solving and Programming',
                        coursecode: '2131',
                      ),
                    ),
                    kHeight20,
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PdfViewer(
                              src: Syllabus21PdfPath.cEnglishLab,
                            ),
                          ),
                        );
                      },
                      child: CustomSubButton(
                        size: size,
                        coursename: 'Communication Skills in English Lab',
                        coursecode: '2008',
                      ),
                    ),
                    kHeight20,
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PdfViewer(
                              src: Syllabus21PdfPath.aPhysicsLab2,
                            ),
                          ),
                        );
                      },
                      child: CustomSubButton(
                        size: size,
                        coursename: 'Applied Physics Lab',
                        coursecode: '2006',
                      ),
                    ),
                    kHeight20,
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PdfViewer(
                              src: Syllabus21PdfPath.foeAndeeLab,
                            ),
                          ),
                        );
                      },
                      child: CustomSubButton(
                        size: size,
                        coursename:
                            'Fundamentals of Eletrical & Electronics Engineering Lab',
                        coursecode: '2039	',
                      ),
                    ),
                    kHeight20,
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PdfViewer(
                              src: Syllabus21PdfPath.psAndpLab,
                            ),
                          ),
                        );
                      },
                      child: CustomSubButton(
                        size: size,
                        coursename: 'Problem Solving and Programming Lab',
                        coursecode: '2139',
                      ),
                    ),
                    kHeight20,
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PdfViewer(
                              src: Syllabus21PdfPath.workShop2,
                            ),
                          ),
                        );
                      },
                      child: CustomSubButton(
                        size: size,
                        coursename: 'Engineering Workshop Practice',
                        coursecode: '2009',
                      ),
                    ),
                    kHeight20,
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PdfViewer(
                              src: Syllabus21PdfPath.intership1,
                            ),
                          ),
                        );
                      },
                      child: CustomSubButton(
                        size: size,
                        coursename: 'Internship I',
                        coursecode: '3009',
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
    );
  }
}
