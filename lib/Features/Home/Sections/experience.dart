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
      child: SizedBox(
        width: MediaQuery.sizeOf(context).width * 0.7,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '03.',
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
            CustomizedNormalText(
              text: experience1,
              color: Colors.grey.shade400,
            ),
            SizedBox(
              height: 5.h,
            ),
            CustomizedNormalText(
              text: 'ABS.AI, Internship',
              fontSize: 20,
              color: primaryColor,
            ),
            SizedBox(
              height: 3.h,
            ),
            const CustomizedNormalText(
              text: 'August 2024 - Present',
            )
          ],
        ),
      ),
    );
  }
}
