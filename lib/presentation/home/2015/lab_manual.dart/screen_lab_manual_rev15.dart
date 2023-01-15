import 'package:flutter/material.dart';

import '../../../../core/const.dart';
import '../../../../core/pdf/lab_manual/lab_manual_rev15.dart';
import '../../../../core/theme_color.dart';
import '../../../widgets/custom_sub_button.dart';
import '../../../widgets/pdf_viewer.dart';
import '../../../widgets/screen_sems_list.dart';

class ScreenLabManualRev15 extends StatelessWidget {
  const ScreenLabManualRev15({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return ScreenSemsList(
      text: text,
      semOne: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const PdfViewer(src: LabManualRev15.cf),
          ),
        );
      },
      semTwo: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const PdfViewer(src: LabManualRev15.pc),
          ),
        );
      },
      semThree: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ScreenSubjectsThreeList(
              text: text,
              btOneSubname: 'Object Oriented Programming Lab',
              btOneSubCode: '3137',
              btOneSrc: LabManualRev15.oops,
              btTwoSubname: 'Digital Computer Principles Lab',
              btTwoSubCode: '3138',
              btTwoSrc: LabManualRev15.dcp,
              btThreeSubname: 'Database and SQL Lab',
              btThreeSubCode: '3159',
              btThreeSrc: LabManualRev15.dbAndSql,
            ),
          ),
        );
      },
      semFour: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ScreenSubjectsThreeList(
              text: text,
              btOneSubname: 'Computer System Hardware Lab',
              btOneSubCode: '4137',
              btOneSrc: LabManualRev15.csh,
              btTwoSubname: 'Data Structures Lab',
              btTwoSubCode: '4138',
              btTwoSrc: LabManualRev15.ds,
              btThreeSubname: 'System Administration Lab',
              btThreeSubCode: '4159',
              btThreeSrc: LabManualRev15.sa,
            ),
          ),
        );
      },
      semFive: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ScreenSubjectsThreeList(
              text: text,
              btOneSubname: 'Computer Network Engineering Lab',
              btOneSubCode: '5137',
              btOneSrc: LabManualRev15.cn,
              btTwoSubname: 'Microprocessor Lab',
              btTwoSubCode: '5138',
              btTwoSrc: LabManualRev15.mp,
              btThreeSubname: 'Network Programming Lab',
              btThreeSubCode: '5159',
              btThreeSrc: LabManualRev15.np,
            ),
          ),
        );
      },
      semSix: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const PdfViewer(src: ''),
          ),
        );
      },
    );
  }
}

// Lab Sub List Screen
class ScreenSubjectsThreeList extends StatelessWidget {
  const ScreenSubjectsThreeList({
    super.key,
    required this.text,
    required this.btOneSubname,
    required this.btOneSubCode,
    required this.btTwoSubname,
    required this.btTwoSubCode,
    required this.btThreeSubname,
    required this.btThreeSubCode,
    required this.btOneSrc,
    required this.btTwoSrc,
    required this.btThreeSrc,
  });

  final String text;
  final String btOneSubname;
  final String btOneSubCode;
  final String btOneSrc;
  final String btTwoSubname;
  final String btTwoSubCode;
  final String btTwoSrc;
  final String btThreeSubname;
  final String btThreeSubCode;
  final String btThreeSrc;

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
                              builder: (context) => PdfViewer(
                                src: btOneSrc,
                              ),
                            ),
                          );
                        },
                        child: CustomSubButton(
                          size: size,
                          coursename: btOneSubname,
                          coursecode: btOneSubCode,
                        ),
                      ),
                      kHeight,
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PdfViewer(
                                src: btTwoSrc,
                              ),
                            ),
                          );
                        },
                        child: CustomSubButton(
                          size: size,
                          coursename: btTwoSubname,
                          coursecode: btTwoSubCode,
                        ),
                      ),
                      kHeight,
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PdfViewer(
                                src: btThreeSrc,
                              ),
                            ),
                          );
                        },
                        child: CustomSubButton(
                          size: size,
                          coursename: btThreeSubname,
                          coursecode: btThreeSubCode,
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
