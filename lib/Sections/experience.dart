import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portofolio/Shared/Widgets/customized_text.dart';
import 'package:portofolio/Shared/Widgets/technologies.dart';
import 'package:portofolio/Shared/colors.dart';
import 'package:portofolio/Shared/constants.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      heightFactor: 2.3,
      widthFactor: 2,
      child: SizedBox(
        width: 500,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '02.',
                  style: GoogleFonts.dosis(
                      color: primaryColor, fontSize: 20, letterSpacing: 2),
                ),
                Text(
                  ' Where I\'ve Worked',
                  style: GoogleFonts.dosis(
                      color: Colors.white,
                      fontSize: 20,
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 15,
                ),
                Container(
                  height: 1,
                  color: Colors.grey[200],
                  width: 200,
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            CustomizedText(
              text: experience1,
              color: Colors.grey.shade400,
              fontSize: 16,
            ),
            const SizedBox(
              height: 20,
            ),
            CustomizedText(
              text: 'ABS.AI, Internship',
              fontSize: 25,
              color: primaryColor,
            ),
            const SizedBox(
              height: 10,
            ),
            const CustomizedText(
              text: 'August 2024 - Present',
            )
          ],
        ),
      ),
    );
  }
}
