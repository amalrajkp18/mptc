import 'package:che/presentation/widgets/screen_sems_list.dart';
import 'package:flutter/material.dart';
import 'widgets/sem_five_rev15.dart';
import 'widgets/sem_four_rev15.dart';
import 'widgets/sem_one_rev15.dart';
import 'widgets/sem_six_rev15.dart';
import 'widgets/sem_three_rev15.dart';
import 'widgets/sem_two_rev15.dart';

class ScreenSyllabusRev15 extends StatelessWidget {
  const ScreenSyllabusRev15({
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
            builder: (context) => const SemOneSyllabusRev15(text: 'Semester I'),
          ),
        );
      },
      semTwo: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                const SemTwoSyllabusRev15(text: 'Semester II'),
          ),
        );
      },
      semThree: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                const SemThreeSyllabusRev15(text: 'Semester III'),
          ),
        );
      },
      semFour: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                const SemFourSyllabusRev15(text: 'Semester IV'),
          ),
        );
      },
      semFive: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                const SemFiveSyllabusRev15(text: 'Semester V'),
          ),
        );
      },
      semSix: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                const SemSixSyllabusRev15(text: 'Semester VI'),
          ),
        );
      },
    );
  }
}
