import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portofolio/Shared/Widgets/customized_text.dart';
import 'package:portofolio/Shared/colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:url_launcher/url_launcher.dart';

class Contactus extends StatelessWidget {
  const Contactus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Center(
          child: SizedBox(
        height: MediaQuery.sizeOf(context).height * 0.75,
        width: MediaQuery.sizeOf(context).width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomizedNormalText(
              text: "04. What's Next",
              color: primaryColor,
              fontSize: 15,
            ),
            const SizedBox(
              height: 10,
            ),
            const CustomizedNormalText(
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
              child: CustomizedNormalText(
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
            const Spacer(),
            Visibility(
              visible: MediaQuery.sizeOf(context).width < 800,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        padding: EdgeInsets.zero,
                        icon: const Icon(
                          FontAwesomeIcons.github,
                          color: Colors.white,
                        ),
                        onPressed: () async => await launchUrl(
                            Uri.parse('https://github.com/omarsherif15')),
                      ),
                      IconButton(
                        padding: EdgeInsets.zero,
                        icon: const Icon(FontAwesomeIcons.linkedinIn,
                            color: Colors.white),
                        onPressed: () async => await launchUrl(Uri.parse(
                            'https://www.linkedin.com/in/omarshekoo/')),
                      ),
                      IconButton(
                        padding: EdgeInsets.zero,
                        icon: const Icon(FontAwesomeIcons.instagram,
                            color: Colors.white),
                        onPressed: () async => await launchUrl(Uri.parse(
                            'https://www.instagram.com/omar_sherif20/')),
                      ),
                      IconButton(
                        padding: EdgeInsets.zero,
                        icon: const Icon(FontAwesomeIcons.facebookF,
                            color: Colors.white),
                        onPressed: () async => await launchUrl(Uri.parse(
                            'https://www.facebook.com/profile.php?id=100007026016499')),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextButton(
                    style: TextButton.styleFrom(padding: EdgeInsets.zero),
                    child: Text(
                      'OmarSherifMetwaly@gmail.com',
                      style:
                          GoogleFonts.dosis(color: Colors.grey, fontSize: 18),
                    ),
                    onPressed: () async => await launchUrl(
                        Uri.parse('mailto:OmarSherifMetwaly@gmail.com')),
                  ),
                ],
              ),
            ),
          ],
        ),
      ));
}
