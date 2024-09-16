import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portofolio/Shared/Widgets/customized_text.dart';
import 'package:portofolio/Shared/colors.dart';
import 'package:portofolio/Shared/constants.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      heightFactor: MediaQuery.sizeOf(context).width > 800 ? 2.3 : 1.5,
      widthFactor: 2,
      child: SizedBox(
        width: 700,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '02.',
                  style: GoogleFonts.dosis(
                      color: primaryColor, fontSize: 13.sp, letterSpacing: 2),
                ),
                Text(
                  ' Where I\'ve Worked',
                  style: GoogleFonts.dosis(
                      color: Colors.white,
                      fontSize: 15.sp,
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 1.w,
                ),
                Container(
                  height: 1,
                  color: Colors.grey[200],
                  width: 10.w,
                )
              ],
            ),
            SizedBox(
              height: 5.h,
            ),
            CustomizedText(
              text: experience1,
              color: Colors.grey.shade400,
            ),
            SizedBox(
              height: 5.h,
            ),
            CustomizedText(
              text: 'ABS.AI, Internship',
              fontSize: 20,
              color: primaryColor,
            ),
            SizedBox(
              height: 3.h,
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
