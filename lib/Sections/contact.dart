import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portofolio/Shared/Widgets/customized_text.dart';
import 'package:portofolio/Shared/colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Contactus extends StatelessWidget {
  const Contactus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Center(
          child: SizedBox(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomizedText(
              text: "04. What's Next",
              color: primaryColor,
              fontSize: 15,
            ),
            const SizedBox(
              height: 10,
            ),
            const CustomizedText(
              text: "Get In Touch",
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 600,
              child: CustomizedText(
                text:
                    'I’m currently looking for any new opportunities, my inbox is always open. Whether you have a question or just want to say hi, I’ll definitely get back to you!',
                color: Colors.grey.shade500,
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    side: BorderSide(color: primaryColor),
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 25)),
                child: Text('Say Hello',
                    style: GoogleFonts.dosis(
                        color: primaryColor, fontSize: 18.sp))),
          ],
        ),
      ));
}
