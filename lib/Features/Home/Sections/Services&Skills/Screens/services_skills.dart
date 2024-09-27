import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portofolio/Features/Home/Sections/Services&Skills/Screens/services.dart';
import 'package:portofolio/Features/Home/Sections/Services&Skills/Screens/skills.dart';
import 'package:portofolio/Shared/Widgets/customized_text.dart';
import 'package:portofolio/Shared/colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ServicesAndSkills extends StatelessWidget {
  const ServicesAndSkills({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Center(
      heightFactor: 1.2,
      widthFactor: 2,
      child: SizedBox(
        width: MediaQuery.sizeOf(context).width * 0.7,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '02.',
                    style: GoogleFonts.dosis(
                        color: primaryColor, fontSize: 20, letterSpacing: 2),
                  ),
                  Text(
                    ' Services & Skills',
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
                    width: 50.sp,
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomizedNormalText(
                  text: 'My Services',
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
              const Services(),
              const CustomizedNormalText(
                  text: 'My Skills',
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
              const Skills()
            ]),
      ));
}
