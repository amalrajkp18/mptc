import 'package:che/core/theme_color.dart';
import 'package:flutter/material.dart';

class CustomSubButton extends StatelessWidget {
  const CustomSubButton({
    super.key,
    required this.size,
    required this.coursename,
    required this.coursecode,
  });

  final Size size;
  final String coursename;
  final String coursecode;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
              color: ThemeColor.shadow,
              blurRadius: 1,
              spreadRadius: 1,
              offset: Offset(0, 1)),
        ],
        color: ThemeColor.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, top: 2),
        child: ListTile(
          trailing: Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Text(
              coursecode,
              style: const TextStyle(
                  fontSize: 17,
                  color: ThemeColor.black,
                  fontWeight: FontWeight.w600),
            ),
          ),
          title: Text(
            coursename,
            style: const TextStyle(
              fontSize: 17,
              color: ThemeColor.black,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
