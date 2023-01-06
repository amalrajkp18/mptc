import 'package:che/core/const.dart';
import 'package:che/core/theme_color.dart';
import 'package:che/presentation/widgets/custom_sub_button.dart';
import 'package:flutter/material.dart';

class ScreenSemOne extends StatelessWidget {
  const ScreenSemOne({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    text,
                    style: const TextStyle(
                      color: ThemeColor.black,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  InkWell(
                    child: Container(
                      decoration: BoxDecoration(
                          color: ThemeColor.lightGrey,
                          borderRadius: BorderRadius.circular(12)),
                      padding: const EdgeInsets.all(12),
                      child: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  )
                ],
              ),
              kHeight50,
              InkWell(
                onTap: () {},
                child: CustomSubButton(
                  size: size,
                  coursename: 'English for Communication I',
                  coursecode: '1001',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
