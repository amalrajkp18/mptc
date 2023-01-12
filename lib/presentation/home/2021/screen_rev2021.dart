import 'package:flutter/material.dart';

import '../../../core/const.dart';
import '../../../core/theme_color.dart';
import 'syllabus/screen_syllabus_rev21.dart';

class ScreenRev2021 extends StatelessWidget {
  const ScreenRev2021({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  child: Container(
                    width: size.width * 0.42,
                    height: size.width * 0.42,
                    decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                              color: ThemeColor.shadow,
                              blurRadius: 10,
                              spreadRadius: 0.1,
                              offset: Offset(0, 10)),
                        ],
                        color: ThemeColor.white,
                        borderRadius: BorderRadius.circular(10)),
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.article,
                          color: ThemeColor.black,
                          size: 30,
                        ),
                        Text(
                          'Syllabus',
                          style: TextStyle(
                            color: ThemeColor.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            const ScreenSyllabusRev21(text: 'Syllabus'),
                      ),
                    );
                  },
                ),
                InkWell(
                  child: Container(
                    width: size.width * 0.42,
                    height: size.width * 0.42,
                    decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                              color: ThemeColor.shadow,
                              blurRadius: 10,
                              spreadRadius: 0.1,
                              offset: Offset(0, 10)),
                        ],
                        color: ThemeColor.white,
                        borderRadius: BorderRadius.circular(10)),
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.auto_stories_outlined,
                          color: ThemeColor.black,
                          size: 30,
                        ),
                        Text(
                          'Notes',
                          style: TextStyle(
                            color: ThemeColor.black,
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  child: Container(
                    width: size.width * 0.42,
                    height: size.width * 0.42,
                    decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                              color: ThemeColor.shadow,
                              blurRadius: 10,
                              spreadRadius: 0.1,
                              offset: Offset(0, 10)),
                        ],
                        color: ThemeColor.white,
                        borderRadius: BorderRadius.circular(10)),
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.quiz,
                          color: ThemeColor.black,
                          size: 30,
                        ),
                        Text(
                          'Question paper',
                          style: TextStyle(
                            color: ThemeColor.black,
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
                    width: size.width * 0.42,
                    height: size.width * 0.42,
                    decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                              color: ThemeColor.shadow,
                              blurRadius: 10,
                              spreadRadius: 0.1,
                              offset: Offset(0, 10)),
                        ],
                        color: ThemeColor.white,
                        borderRadius: BorderRadius.circular(10)),
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.menu_book,
                          color: ThemeColor.black,
                          size: 30,
                        ),
                        Text(
                          'Lab Manual',
                          style: TextStyle(
                            color: ThemeColor.black,
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
            //         width: size.width * 0.42,
            //         height: size.width * 0.42,
            //         decoration: BoxDecoration(
            //             boxShadow: const [
            //               BoxShadow(
            //                   color: ThemeColor.shadow,
            //                   blurRadius: 10,
            //                   spreadRadius: 0.1,
            //                   offset: Offset(0, 10)),
            //             ],
            //             color: ThemeColor.white,
            //             borderRadius: BorderRadius.circular(10)),
            //         padding: const EdgeInsets.all(20),
            //         child: Column(
            //           mainAxisAlignment: MainAxisAlignment.center,
            //           children: const [
            //             Icon(
            //               Icons.upload,
            //               color: ThemeColor.black,
            //             ),
            //             Text(
            //               'Upload',
            //               style: TextStyle(
            //                 color: ThemeColor.black,
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
