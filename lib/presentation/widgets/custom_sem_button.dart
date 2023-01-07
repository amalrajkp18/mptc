import 'package:che/core/theme_color.dart';
import 'package:flutter/material.dart';

class CustomSemButton extends StatelessWidget {
  const CustomSemButton({
    Key? key,
    required this.size,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  final Size size;
  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.9,
      height: 60,
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
              color: ThemeColor.shadow,
              blurRadius: 10,
              spreadRadius: 0.1,
              offset: Offset(0, 10)),
        ],
        color: ThemeColor.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: const TextStyle(
                  fontSize: 17,
                  color: ThemeColor.black,
                  fontWeight: FontWeight.w600),
            ),
            InkWell(
              onTap: onTap,
              child: Container(
                width: 70,
                height: 35,
                decoration: BoxDecoration(
                    color: ThemeColor.primary,
                    borderRadius: BorderRadius.circular(20)),
                child: const Center(
                  child: Icon(
                    Icons.arrow_forward,
                    color: ThemeColor.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
