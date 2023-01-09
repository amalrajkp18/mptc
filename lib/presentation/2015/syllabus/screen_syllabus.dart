import 'package:che/core/const.dart';
import 'package:che/core/theme_color.dart';
import 'package:che/presentation/2015/syllabus/widget/sem_five.dart';
import 'package:che/presentation/2015/syllabus/widget/sem_four.dart';
import 'package:che/presentation/2015/syllabus/widget/sem_one.dart';
import 'package:che/presentation/2015/syllabus/widget/sem_six.dart';
import 'package:che/presentation/2015/syllabus/widget/sem_three.dart';
import 'package:che/presentation/2015/syllabus/widget/sem_two.dart';
import 'package:che/presentation/widgets/custom_sem_button.dart';
import 'package:flutter/material.dart';

class ScreenSyllabus extends StatelessWidget {
  const ScreenSyllabus({
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
                          const SemOneSyllabs(text: 'Semester I'),
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
                          const SemTwoSyllabs(text: 'Semester II'),
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
                          const SemThreeSyllabs(text: 'Semester III'),
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
                          const SemFourSyllabs(text: 'Semester IV'),
                    ),
                  );
                },
              ),
              kHeight20,
              CustomSemButton(
                size: size,
                text: 'Semester V',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          const SemFiveSyllabs(text: 'Semester V'),
                    ),
                  );
                },
              ),
              kHeight20,
              CustomSemButton(
                size: size,
                text: 'Semester VI',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          const SemSixSyllabs(text: 'Semester VI'),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
