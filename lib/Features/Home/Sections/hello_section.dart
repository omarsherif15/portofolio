import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portofolio/Shared/colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:typing_text/typing_text.dart';
import 'package:url_launcher/url_launcher.dart';

class HelloSection extends StatelessWidget {
  const HelloSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      heightFactor: 1.4,
      widthFactor: 2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 600,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hi, my name is',
                  style: GoogleFonts.dosis(
                      color: primaryColor, fontSize: 20, letterSpacing: 2),
                ),
                TypingText(
                  words: const ['Omar Sherif'],
                  style: GoogleFonts.dosis(
                      color: Colors.white,
                      fontSize: 30.sp,
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Im a Flutter Developer Specialized in building, designing and maintaining exceptional Mobile Applications'
                  ' for Android, IOS and Web as well using Flutter Framework.',
                  style: GoogleFonts.dosis(
                      color: Colors.grey.shade500,
                      fontSize: 14.sp,
                      letterSpacing: 2),
                ),
                const SizedBox(
                  height: 20,
                ),
                OutlinedButton(
                    onPressed: () async => launchUrl(Uri.parse(
                        'https://drive.usercontent.google.com/download?id=1Zb-RADf8eRS6zWmLJjdkVIio7Tts8oR9&export=download&authuser=0&confirm=t&uuid=b307c846-fd82-47d6-9152-e2ce96ffb29b&at=AO7h07d3Hou_45HM4dkvqMP6hklg:1725140369244')),
                    style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        side: BorderSide(color: primaryColor),
                        padding: const EdgeInsets.symmetric(
                            vertical: 17, horizontal: 20)),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        FaIcon(
                          FontAwesomeIcons.download,
                          color: primaryColor,
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Text('Download CV',
                            style: GoogleFonts.dosis(
                                color: primaryColor, fontSize: 18)),
                      ],
                    )),
                const SizedBox(
                  height: 100,
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.sizeOf(context).width * 0.7,
            padding: const EdgeInsets.all(25),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: backgroundColor2,
            ),
            child: Wrap(
              alignment: WrapAlignment.center,
              spacing: 70,
              runSpacing: 10,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      '1+ ',
                      style: GoogleFonts.dosis(
                          color: primaryColor,
                          fontSize: 16.sp,
                          letterSpacing: 2),
                    ),
                    Text(
                      'Years of Experience',
                      style: GoogleFonts.dosis(
                          color: white, fontSize: 16.sp, letterSpacing: 2),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 10,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      '15+ ',
                      style: GoogleFonts.dosis(
                          color: primaryColor,
                          fontSize: 16.sp,
                          letterSpacing: 2),
                    ),
                    Text(
                      'Projects',
                      style: GoogleFonts.dosis(
                          color: Colors.white,
                          fontSize: 16.sp,
                          letterSpacing: 2),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 10,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      '5+ ',
                      style: GoogleFonts.dosis(
                          color: primaryColor,
                          fontSize: 16.sp,
                          letterSpacing: 2),
                    ),
                    Text(
                      'Clients',
                      style: GoogleFonts.dosis(
                          color: Colors.white,
                          fontSize: 16.sp,
                          letterSpacing: 2),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
