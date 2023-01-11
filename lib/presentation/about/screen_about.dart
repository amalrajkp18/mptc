
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../core/const.dart';
import '../../core/theme_color.dart';

class ScreenAbout extends StatelessWidget {
  const ScreenAbout({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: size.width * 0.8,
                height: size.height * 0.45,
                decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                          color: ThemeColor.shadow,
                          blurRadius: 10,
                          spreadRadius: 0.2,
                          offset: Offset(0, 10)),
                    ],
                    color: ThemeColor.white,
                    borderRadius: BorderRadius.circular(10)),
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    const CircleAvatar(
                      radius: 70,
                      backgroundColor: Colors.transparent,
                      child: ClipOval(
                        child: Image(
                          image: AssetImage('images/logo.jpeg'),
                        ),
                      ),
                    ),
                    Text(
                      'DEPARTMENT OF ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: GoogleFonts.odorMeanChey().fontFamily),
                    ),
                    Text(
                      'COMPUTER HARDWARE ENGINEERING ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: GoogleFonts.odorMeanChey().fontFamily),
                    ),
                    Text(
                      'MODEL POLYTECHNIC COLLEGE,VADAKARA ',
                      style: TextStyle(
                          fontFamily: GoogleFonts.odorMeanChey().fontFamily),
                    ),
                    kHeight25,
                    Text(
                      'CONNECT WITH US ',
                      style: TextStyle(
                          fontSize: 20,
                          color: ThemeColor.grey,
                          fontFamily: GoogleFonts.dongle().fontFamily),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          child: const FaIcon(
                            FontAwesomeIcons.whatsapp,
                            size: 35,
                            color: ThemeColor.waGreen,
                          ),
                          onTap: () {},
                        ),
                        InkWell(
                          child: const FaIcon(
                            FontAwesomeIcons.instagram,
                            size: 35,
                            color: ThemeColor.instaPurpleRed,
                          ),
                          onTap: () {},
                        ),
                        InkWell(
                          child: const FaIcon(
                            FontAwesomeIcons.facebook,
                            size: 35,
                            color: ThemeColor.primary,
                          ),
                          onTap: () {},
                        ),
                        InkWell(
                          child: const FaIcon(
                            FontAwesomeIcons.linkedin,
                            size: 35,
                            color: ThemeColor.primary,
                          ),
                          onTap: () {},
                        ),
                        InkWell(
                          child: const FaIcon(
                            FontAwesomeIcons.youtube,
                            size: 35,
                            color: ThemeColor.ytRed,
                          ),
                          onTap: () {},
                        ),
                        InkWell(
                          child: const FaIcon(
                            FontAwesomeIcons.globe,
                            size: 35,
                            color: ThemeColor.grey,
                          ),
                          onTap: () {},
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: size.width * 0.8,
                height: size.height * 0.2,
                decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                          color: ThemeColor.shadow,
                          blurRadius: 10,
                          spreadRadius: 0.2,
                          offset: Offset(0, 10)),
                    ],
                    color: ThemeColor.white,
                    borderRadius: BorderRadius.circular(10)),
                padding: const EdgeInsets.all(20),
                child: InkWell(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'CREATED BY ',
                        style: TextStyle(
                            fontSize: 20,
                            color: ThemeColor.grey,
                            fontWeight: FontWeight.bold,
                            fontFamily: GoogleFonts.poppins().fontFamily),
                      ),
                      Text(
                        '2020-23 BATCH ',
                        style: TextStyle(
                            fontSize: 20,
                            color: ThemeColor.grey,
                            fontFamily: GoogleFonts.poppins().fontFamily),
                      ),
                    ],
                  ),
                  onTap: () async {
                    // ignore: deprecated_member_use
                    await canLaunch(devurl)
                        // ignore: deprecated_member_use
                        ? await launch(devurl)
                        : throw 'Could not launch $devurl';
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
