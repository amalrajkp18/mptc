import 'package:flutter/material.dart';

import '../../core/const.dart';
import '../../core/theme_color.dart';
import 'custom_sem_button.dart';

class ScreenSemsList extends StatelessWidget {
  const ScreenSemsList({
    super.key,
    required this.text,
    required this.semOne,
    required this.semTwo,
    required this.semThree,
    required this.semFour,
    required this.semFive,
    required this.semSix,
  });

  final String text;
  final VoidCallback semOne;
  final VoidCallback semTwo;
  final VoidCallback semThree;
  final VoidCallback semFour;
  final VoidCallback semFive;
  final VoidCallback semSix;

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
              CustomSemButton(size: size, text: 'Semester I', onTap: semOne),
              kHeight,
              CustomSemButton(size: size, text: 'Semester II', onTap: semTwo),
              kHeight,
              CustomSemButton(
                  size: size, text: 'Semester III', onTap: semThree),
              kHeight,
              CustomSemButton(size: size, text: 'Semester IV', onTap: semFour),
              kHeight,
              CustomSemButton(size: size, text: 'Semester V', onTap: semFive),
              kHeight,
              CustomSemButton(size: size, text: 'Semester VI', onTap: semSix),
            ],
          ),
        ),
      ),
    );
  }
}
