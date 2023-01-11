import 'package:flutter/material.dart';

import '../../../../../core/const.dart';
import '../../../../../core/pdf/syllabus/syllabus21_pdf_path.dart';
import '../../../../../core/theme_color.dart';
import '../../../../widgets/custom_sub_button.dart';
import '../../../../widgets/pdf_viewer.dart';

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
                      kHeight,
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
                      kHeight,
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
                      kHeight,
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
                      kHeight,
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
                      kHeight,
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
                      kHeight,
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
                      kHeight,
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
                      kHeight,
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
                      kHeight,
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
      ),
    );
  }
}
