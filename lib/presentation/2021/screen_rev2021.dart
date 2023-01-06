import 'package:che/core/const.dart';
import 'package:che/core/theme_color.dart';
import 'package:flutter/material.dart';

class ScreenRev2021 extends StatelessWidget {
  const ScreenRev2021({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  child: Container(
                    width: size.width * 0.45,
                    height: size.height * 0.19,
                    decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                              color: ThemeColor.shadow,
                              blurRadius: 10,
                              spreadRadius: 0.1,
                              offset: Offset(0, 10)),
                        ],
                        color: ThemeColor.lightBlue,
                        borderRadius: BorderRadius.circular(10)),
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.tab,
                          color: ThemeColor.white,
                        ),
                        Text(
                          'Syllabus',
                          style: TextStyle(
                            color: ThemeColor.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  onTap: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => )));
                  },
                ),
                InkWell(
                  child: Container(
                    width: size.width * 0.45,
                    height: size.height * 0.19,
                    decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                              color: ThemeColor.shadow,
                              blurRadius: 10,
                              spreadRadius: 0.1,
                              offset: Offset(0, 10)),
                        ],
                        color: ThemeColor.lightBlue,
                        borderRadius: BorderRadius.circular(10)),
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.book,
                          color: ThemeColor.white,
                        ),
                        Text(
                          'Notes',
                          style: TextStyle(
                            color: ThemeColor.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  onTap: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => )));
                  },
                ),
              ],
            ),
            kHeight25,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  child: Container(
                    width: size.width * 0.45,
                    height: size.height * 0.19,
                    decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                              color: ThemeColor.shadow,
                              blurRadius: 10,
                              spreadRadius: 0.1,
                              offset: Offset(0, 10)),
                        ],
                        color: ThemeColor.lightBlue,
                        borderRadius: BorderRadius.circular(10)),
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.question_mark,
                          color: ThemeColor.white,
                        ),
                        Text(
                          'Question paper',
                          style: TextStyle(
                            color: ThemeColor.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  onTap: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => )));
                  },
                ),
                InkWell(
                  child: Container(
                    width: size.width * 0.45,
                    height: size.height * 0.19,
                    decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                              color: ThemeColor.shadow,
                              blurRadius: 10,
                              spreadRadius: 0.1,
                              offset: Offset(0, 10)),
                        ],
                        color: ThemeColor.lightBlue,
                        borderRadius: BorderRadius.circular(10)),
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.library_books,
                          color: ThemeColor.white,
                        ),
                        Text(
                          'Lab Manual',
                          style: TextStyle(
                            color: ThemeColor.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  onTap: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => )));
                  },
                ),
              ],
            ),
            kHeight25,
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceAround,
            //   children: [
            //     InkWell(
            //       child: Container(
            //         width: size.width * 0.45,
            //         height: size.height * 0.19,
            //         decoration: BoxDecoration(
            //             boxShadow: const [
            //               BoxShadow(
            //                   color: ThemeColor.shadow,
            //                   blurRadius: 10,
            //                   spreadRadius: 0.1,
            //                   offset: Offset(0, 10)),
            //             ],
            //             color: ThemeColor.lightBlue,
            //             borderRadius: BorderRadius.circular(10)),
            //         padding: const EdgeInsets.all(20),
            //         child: Column(
            //           mainAxisAlignment: MainAxisAlignment.center,
            //           children: const [
            //             Icon(
            //               Icons.upload,
            //               color: ThemeColor.white,
            //             ),
            //             Text(
            //               'Upload',
            //               style: TextStyle(
            //                 color: ThemeColor.white,
            //                 fontWeight: FontWeight.bold,
            //               ),
            //             ),
            //           ],
            //         ),
            //       ),
            //       onTap: () {
            //         // Navigator.push(
            //         //     context,
            //         //     MaterialPageRoute(
            //         //         builder: (context) => )));
            //       },
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
