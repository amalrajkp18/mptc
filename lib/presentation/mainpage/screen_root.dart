import 'package:che/presentation/about/screen_about.dart';
import 'package:che/presentation/home/screen_home.dart';
import 'package:che/presentation/mainpage/widget/bottom_navbar.dart';
import 'package:che/presentation/upload/screen_upload.dart';
import 'package:flutter/material.dart';

class ScreenRoot extends StatelessWidget {
  ScreenRoot({super.key});

  final _pages = [
    const ScreenHome(),
    const ScreenUpload(),
    const ScreenAbout(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: indexChangeNotifier,
          builder: (context, int index, _) {
            return _pages[index];
          },
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
