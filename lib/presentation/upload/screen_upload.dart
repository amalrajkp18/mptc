import 'package:che/core/theme_color.dart';
import 'package:flutter/material.dart';

final List<String> contents = [
  'Notes',
  'Question Paper',
];
final List<String> sem = [
  'Semester I',
  'Semester II',
  'Semester III',
  'Semester IV',
  'Semester V',
  'Semester VI',
];

class ScreenUpload extends StatelessWidget {
  const ScreenUpload({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColor.scaffoldBgColor,
      body: SafeArea(child: Column()),
    );
  }
}
