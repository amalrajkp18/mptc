
import 'package:flutter/material.dart';

import '../about/screen_about.dart';
import '../home/screen_home.dart';
import 'widget/bottom_navbar.dart';

class ScreenRoot extends StatelessWidget {
  ScreenRoot({super.key});

  final _pages = [
    const ScreenHome(),
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
