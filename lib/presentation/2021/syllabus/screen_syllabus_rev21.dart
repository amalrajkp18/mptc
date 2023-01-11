import 'package:che/core/const.dart';
import 'package:che/core/theme_color.dart';
import 'package:che/presentation/2021/syllabus/widgets/sem_four_rev21.dart';
import 'package:che/presentation/2021/syllabus/widgets/sem_one_rev21.dart';
import 'package:che/presentation/2021/syllabus/widgets/sem_three_rev21.dart';
import 'package:che/presentation/2021/syllabus/widgets/sem_two_rev21.dart';
import 'package:che/presentation/widgets/custom_sem_button.dart';
import 'package:flutter/material.dart';

class ScreenSyllabusRev21 extends StatelessWidget {
  const ScreenSyllabusRev21({
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
          padding: const EdgeInsets.all(10.0),
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
              kHeight50,
              CustomSemButton(
                size: size,
                text: 'Semester I',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          const SemOneSyllabusRev21(text: 'Semester I'),
                    ),
                  );
                },
              ),
              kHeight20,
              CustomSemButton(
                size: size,
                text: 'Semester II',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          const SemTwoSyllabusRev21(text: 'Semester II'),
                    ),
                  );
                },
              ),
              kHeight20,
              CustomSemButton(
                size: size,
                text: 'Semester III',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          const SemThreeSyllabusRev21(text: 'Semester III'),
                    ),
                  );
                },
              ),
              kHeight20,
              CustomSemButton(
                size: size,
                text: 'Semester IV',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          const SemFourSyllabusRev21(text: 'Semester IV'),
                    ),
                  );
                },
              ),
              kHeight20,
              // CustomSemButton(
              //   size: size,
              //   text: 'Semester V',
              //   onTap: () {
              //     // Navigator.push(
              //     //   context,
              //     //   MaterialPageRoute(
              //     //     builder: (context) =>
              //     //         const SemFiveSyllabusRev15(text: 'Semester V'),
              //     //   ),
              //     // );
              //   },
              // ),
              // kHeight20,
              // CustomSemButton(
              //   size: size,
              //   text: 'Semester VI',
              //   onTap: () {
              //     // Navigator.push(
              //     //   context,
              //     //   MaterialPageRoute(
              //     //     builder: (context) =>
              //     //         const SemSixSyllabusRev15(text: 'Semester VI'),
              //     //   ),
              //     // );
              //   },
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
