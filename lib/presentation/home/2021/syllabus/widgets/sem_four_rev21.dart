import 'package:flutter/material.dart';

import '../../../../../core/const.dart';
import '../../../../../core/pdf/syllabus/syllabus21_pdf_path.dart';
import '../../../../../core/theme_color.dart';
import '../../../../widgets/custom_sub_button.dart';
import '../../../../widgets/pdf_viewer.dart';

class SemFourSyllabusRev21 extends StatelessWidget {
  const SemFourSyllabusRev21({
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
                                src: Syllabus21PdfPath.oops,
                              ),
                            ),
                          );
                        },
                        child: CustomSubButton(
                          size: size,
                          coursename: 'Object Oriented Programming',
                          coursecode: '4131',
                        ),
                      ),
                      kHeight,
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const PdfViewer(
                                src: Syllabus21PdfPath.cn2,
                              ),
                            ),
                          );
                        },
                        child: CustomSubButton(
                          size: size,
                          coursename: 'Computer Networks II',
                          coursecode: '4151',
                        ),
                      ),
                      kHeight,
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const PdfViewer(
                                src: Syllabus21PdfPath.esAndrtos,
                              ),
                            ),
                          );
                        },
                        child: CustomSubButton(
                          size: size,
                          coursename:
                              'Embedded System and Real time Operating System',
                          coursecode: '4152',
                        ),
                      ),
                      kHeight,
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const PdfViewer(
                                src: Syllabus21PdfPath.csiks,
                              ),
                            ),
                          );
                        },
                        child: CustomSubButton(
                          size: size,
                          coursename:
                              'Community Skills in Indian knowledge system',
                          coursecode: '4001',
                        ),
                      ),
                      kHeight,
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const PdfViewer(
                                src: Syllabus21PdfPath.oopsLab,
                              ),
                            ),
                          );
                        },
                        child: CustomSubButton(
                          size: size,
                          coursename: 'Object Oriented Programming Lab',
                          coursecode: '4136',
                        ),
                      ),
                      kHeight,
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const PdfViewer(
                                src: Syllabus21PdfPath.naLab,
                              ),
                            ),
                          );
                        },
                        child: CustomSubButton(
                          size: size,
                          coursename: 'Network Administration Lab I',
                          coursecode: '4157',
                        ),
                      ),
                      kHeight,
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const PdfViewer(
                                src: Syllabus21PdfPath.esLab,
                              ),
                            ),
                          );
                        },
                        child: CustomSubButton(
                          size: size,
                          coursename: 'Embedded system Lab',
                          coursecode: '4158',
                        ),
                      ),
                      kHeight,
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const PdfViewer(
                                src: Syllabus21PdfPath.chLab2,
                              ),
                            ),
                          );
                        },
                        child: CustomSubButton(
                          size: size,
                          coursename: 'Computer Hardware Lab II',
                          coursecode: '4159',
                        ),
                      ),
                      kHeight,
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const PdfViewer(
                                src: Syllabus21PdfPath.minorProject,
                              ),
                            ),
                          );
                        },
                        child: CustomSubButton(
                          size: size,
                          coursename: 'Minor Project',
                          coursecode: '4009',
                        ),
                      ),
                      kHeight,
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const PdfViewer(
                                src: Syllabus21PdfPath.intership2,
                              ),
                            ),
                          );
                        },
                        child: CustomSubButton(
                          size: size,
                          coursename: 'Internship II',
                          coursecode: '5009	',
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
