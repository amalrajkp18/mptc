import 'package:flutter/material.dart';

import '../../../../../core/const.dart';
import '../../../../../core/pdf/syllabus/syllabus15_pdf_path.dart';
import '../../../../../core/theme_color.dart';
import '../../../../widgets/custom_sub_button.dart';
import '../../../../widgets/pdf_viewer.dart';

class SemSixSyllabusRev15 extends StatelessWidget {
  const SemSixSyllabusRev15({
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
                                src: Syllabus15PdfPath.mic,
                              ),
                            ),
                          );
                        },
                        child: CustomSubButton(
                          size: size,
                          coursename: 'Microcontrollers',
                          coursecode: '6132',
                        ),
                      ),
                      kHeight,
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const PdfViewer(
                                src: Syllabus15PdfPath.nim,
                              ),
                            ),
                          );
                        },
                        child: CustomSubButton(
                          size: size,
                          coursename: 'Network Infrastructure Mangagement',
                          coursecode: '6135',
                        ),
                      ),
                      kHeight,
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const PdfViewer(
                                src: Syllabus15PdfPath.mc,
                              ),
                            ),
                          );
                        },
                        child: CustomSubButton(
                          size: size,
                          coursename: 'Mobile Communication	',
                          coursecode: '6134',
                        ),
                      ),
                      kHeight,
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const PdfViewer(
                                src: Syllabus15PdfPath.wp,
                              ),
                            ),
                          );
                        },
                        child: CustomSubButton(
                          size: size,
                          coursename: 'Web Programming',
                          coursecode: '6153',
                        ),
                      ),
                      kHeight,
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const PdfViewer(
                                src: Syllabus15PdfPath.micLab,
                              ),
                            ),
                          );
                        },
                        child: CustomSubButton(
                          size: size,
                          coursename: 'Microcontroller Lab',
                          coursecode: '6139',
                        ),
                      ),
                      kHeight,
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const PdfViewer(
                                src: Syllabus15PdfPath.nimLab,
                              ),
                            ),
                          );
                        },
                        child: CustomSubButton(
                          size: size,
                          coursename: 'Network Infrastructure Mangagement Lab',
                          coursecode: '6159',
                        ),
                      ),
                      kHeight,
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const PdfViewer(
                                src: Syllabus15PdfPath.project,
                              ),
                            ),
                          );
                        },
                        child: CustomSubButton(
                          size: size,
                          coursename: 'Project & Seminar',
                          coursecode: '6009',
                        ),
                      ),
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
