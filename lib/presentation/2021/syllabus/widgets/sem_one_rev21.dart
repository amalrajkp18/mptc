import 'package:che/core/const.dart';
import 'package:che/core/pdf/syllabus/syllabus21_pdf_path.dart';
import 'package:che/core/theme_color.dart';
import 'package:che/presentation/widgets/custom_sub_button.dart';
import 'package:che/presentation/widgets/pdf_viewer.dart';
import 'package:flutter/material.dart';

class SemOneSyllabusRev21 extends StatelessWidget {
  const SemOneSyllabusRev21({
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
                              src: Syllabus21PdfPath.cEnglish1,
                            ),
                          ),
                        );
                      },
                      child: CustomSubButton(
                        size: size,
                        coursename: 'Communication Skills in English',
                        coursecode: '1001',
                      ),
                    ),
                    kHeight20,
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PdfViewer(
                              src: Syllabus21PdfPath.math1,
                            ),
                          ),
                        );
                      },
                      child: CustomSubButton(
                        size: size,
                        coursename: 'Mathematics I',
                        coursecode: '1002',
                      ),
                    ),
                    kHeight20,
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PdfViewer(
                              src: Syllabus21PdfPath.aPhsyics,
                            ),
                          ),
                        );
                      },
                      child: CustomSubButton(
                        size: size,
                        coursename: 'Applied Physics I',
                        coursecode: '1003',
                      ),
                    ),
                    kHeight20,
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PdfViewer(
                              src: Syllabus21PdfPath.aChemistry,
                            ),
                          ),
                        );
                      },
                      child: CustomSubButton(
                        size: size,
                        coursename: 'Applied Chemistry',
                        coursecode: '1004',
                      ),
                    ),
                    kHeight20,
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PdfViewer(
                              src: Syllabus21PdfPath.eGraphics,
                            ),
                          ),
                        );
                      },
                      child: CustomSubButton(
                        size: size,
                        coursename: 'Engineering Graphics',
                        coursecode: '1005',
                      ),
                    ),
                    kHeight20,
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PdfViewer(
                              src: Syllabus21PdfPath.aPhysicsLab,
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
                              src: Syllabus21PdfPath.aChemistryLab,
                            ),
                          ),
                        );
                      },
                      child: CustomSubButton(
                        size: size,
                        coursename: 'Applied Chemistry Lab',
                        coursecode: '1007',
                      ),
                    ),
                    kHeight20,
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PdfViewer(
                              src: Syllabus21PdfPath.itLab,
                            ),
                          ),
                        );
                      },
                      child: CustomSubButton(
                        size: size,
                        coursename: 'Introduction to IT systems Lab',
                        coursecode: '1008',
                      ),
                    ),
                    kHeight20,
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PdfViewer(
                              src: Syllabus21PdfPath.workShop,
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
                              src: Syllabus21PdfPath.sportsAndYoga,
                            ),
                          ),
                        );
                      },
                      child: CustomSubButton(
                        size: size,
                        coursename: 'Sports and Yoga',
                        coursecode: '1009	',
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
