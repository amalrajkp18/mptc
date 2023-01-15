import 'package:flutter/material.dart';

import '../../../widgets/screen_sems_list.dart';
import 'widgets/sem_four_rev21.dart';
import 'widgets/sem_one_rev21.dart';
import 'widgets/sem_three_rev21.dart';
import 'widgets/sem_two_rev21.dart';

class ScreenSyllabusRev21 extends StatelessWidget {
  const ScreenSyllabusRev21({
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
            builder: (context) => const SemOneSyllabusRev21(text: 'Semester I'),
          ),
        );
      },
      semTwo: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                const SemTwoSyllabusRev21(text: 'Semester II'),
          ),
        );
      },
      semThree: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                const SemThreeSyllabusRev21(text: 'Semester III'),
          ),
        );
      },
      semFour: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                const SemFourSyllabusRev21(text: 'Semester IV'),
          ),
        );
      },
      semFive: () {
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //     builder: (context) =>
        //         const SemFiveSyllabusRev21(text: 'Semester V'),
        //   ),
        // );
      },
      semSix: () {
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //     builder: (context) =>
        //         const SemSixSyllabusRev15(text: 'Semester VI'),
        //   ),
        // );
      },
    );
  }
}
