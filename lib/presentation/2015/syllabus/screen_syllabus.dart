import 'package:che/core/const.dart';
import 'package:che/core/theme_color.dart';
import 'package:che/presentation/2015/syllabus/widget/sem_three.dart';
import 'package:che/presentation/2015/syllabus/widget/sem_two.dart';
import 'package:che/presentation/widgets/custom_sem_button.dart';
import 'package:flutter/material.dart';

import 'widget/sem_one.dart';

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
                      builder: (context) => const SemOne(text: 'Semester I'),
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
                      builder: (context) => const SemTwo(text: 'Semester II'),
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
                          const SemThree(text: 'Semester III'),
                    ),
                  );
                },
              ),
              kHeight20,
              CustomSemButton(
                size: size,
                text: 'Semester IV',
                onTap: () {},
              ),
              kHeight20,
              CustomSemButton(
                size: size,
                text: 'Semester V',
                onTap: () {},
              ),
              kHeight20,
              CustomSemButton(
                size: size,
                text: 'Semester VI',
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
