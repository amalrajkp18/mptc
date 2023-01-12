import 'package:che/core/theme_color.dart';
import 'package:flutter/material.dart';

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
          selectedFontSize: 12,
          unselectedFontSize: 10,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_box_outlined),
              label: 'Upload',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.perm_device_info),
              label: 'About',
            ),
          ],
        );
      },
    );
  }
}
