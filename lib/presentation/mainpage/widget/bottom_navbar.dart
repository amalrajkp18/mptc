import 'package:flutter/material.dart';

import '../../../core/theme_color.dart';

ValueNotifier<int> indexChangeNotifier = ValueNotifier(0);

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: indexChangeNotifier,
      builder: (context, int newIndex, _) {
        return BottomNavigationBar(
          backgroundColor: ThemeColor.scaffoldBgColor,
          currentIndex: newIndex,
          onTap: (index) {
            indexChangeNotifier.value = index;
          },
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: ThemeColor.primary,
          selectedIconTheme: const IconThemeData(color: ThemeColor.primary),
          unselectedItemColor: Colors.grey,
          unselectedIconTheme: const IconThemeData(color: ThemeColor.grey),
          showUnselectedLabels: false,
          showSelectedLabels: false,
          // selectedFontSize: 12,
          // unselectedFontSize: 10,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 30,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.drive_folder_upload_outlined,
                size: 30,
              ),
              label: 'About',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.info,
                size: 30,
              ),
              label: 'About',
            ),
          ],
        );
      },
    );
  }
}
