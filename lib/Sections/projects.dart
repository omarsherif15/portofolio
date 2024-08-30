import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portofolio/Shared/Widgets/projectWidget.dart';
import 'package:portofolio/Shared/colors.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      heightFactor: 1.1,
      widthFactor: 2,
      child: SizedBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '03.',
                  style: GoogleFonts.dosis(
                      color: primaryColor, fontSize: 20, letterSpacing: 2),
                ),
                Text(
                  ' Somethings I\'ve Build',
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
            SizedBox(
                width: MediaQuery.sizeOf(context).width * 0.7,
                child: ListView.builder(
                  itemBuilder: (context, index) =>
                      ProjectWidget(rtl: index.isOdd),
                  itemCount: 4,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                ))
          ],
        ),
      ),
    );
  }
}
