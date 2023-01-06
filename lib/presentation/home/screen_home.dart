import 'package:animated_segmented_tab_control/animated_segmented_tab_control.dart';
import 'package:che/core/const.dart';
import 'package:che/core/theme_color.dart';
import 'package:che/presentation/2015/screen_rev2015.dart';
import 'package:che/presentation/2021/screen_rev2021.dart';
import 'package:flutter/material.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                kHeight,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Hey, there!',
                      style: TextStyle(
                        color: ThemeColor.black,
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: ThemeColor.lightGrey,
                          borderRadius: BorderRadius.circular(12)),
                      padding: const EdgeInsets.all(12),
                      child: const Icon(
                        Icons.notifications,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                kHeight,
                const SegmentedTabControl(
                  height: 50,
                  radius: Radius.circular(10),
                  backgroundColor: ThemeColor.lightGrey,
                  indicatorColor: ThemeColor.primary,
                  tabTextColor: ThemeColor.black,
                  selectedTabTextColor: ThemeColor.white,
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                  tabs: [
                    SegmentTab(
                      label: "Rev 2015",
                    ),
                    SegmentTab(
                      label: "Rev 2021",
                    ),
                  ],
                ),
                const Expanded(
                  child: TabBarView(
                    children: [
                      ScreenRev2015(),
                      ScreenRev2021(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
