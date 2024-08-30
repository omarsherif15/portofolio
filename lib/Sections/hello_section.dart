import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portofolio/Shared/colors.dart';

class HelloSection extends StatelessWidget {
  const HelloSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      heightFactor: 2.3,
      widthFactor: 2,
      child: Container(
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
            Text(
              'Omar Sherif',
              style: GoogleFonts.dosis(
                  color: Colors.white,
                  fontSize: 70,
                  letterSpacing: 2,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'Im a Flutter Developer Specialized in building, designing and maintaining exceptional Mobile Applications'
              ' for Android, IOS and Web as well using Flutter Framework.',
              style: GoogleFonts.dosis(
                  color: Colors.grey.shade500, fontSize: 20, letterSpacing: 2),
            ),
            const SizedBox(
              height: 20,
            ),
            OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    side: BorderSide(color: primaryColor),
                    padding:
                        EdgeInsets.symmetric(vertical: 17, horizontal: 20)),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    FaIcon(
                      FontAwesomeIcons.download,
                      color: primaryColor,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text('Download CV',
                        style: GoogleFonts.dosis(
                            color: primaryColor, fontSize: 18)),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
