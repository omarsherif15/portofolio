import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portofolio/Shared/Widgets/customized_text.dart';
import 'package:portofolio/Shared/Widgets/technologies.dart';
import 'package:portofolio/Shared/colors.dart';
import 'package:portofolio/Shared/constants.dart';
import 'package:portofolio/main.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:typing_text/typing_text.dart';

class AboutMeSection extends StatelessWidget {
  const AboutMeSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      heightFactor: 1.2,
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        spacing: 150,
        runSpacing: 100,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width > 800 ? 500 : 300,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '01.',
                      style: GoogleFonts.dosis(
                          color: primaryColor, fontSize: 20, letterSpacing: 2),
                    ),
                    Text(
                      ' About Me',
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
                CustomizedText(
                  text: aboutMe,
                  color: Colors.grey.shade50,
                  //fontSize: 14.sp,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    CustomizedText(
                      text: 'I Build ',
                    ),
                    Expanded(
                      child: TypingText(
                        words: const [
                          'Awesome Mobile Apps',
                          'Awesome Websites',
                          'Awesome UI/UX'
                        ],
                        style: GoogleFonts.dosis(
                            color: primaryColor,
                            fontSize: 14.sp,
                            letterSpacing: 2,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomizedText(
                  text:
                      'Here are a few technologies I\'ve been working with recently:',
                  color: primaryColor,
                ),
                const SizedBox(
                  height: 10,
                ),
                Wrap(
                    spacing: 100,
                    children: List.generate(
                        getTechnologies().length,
                        (index) => Technologies(
                              title: getTechnologies()[index],
                            )))
              ],
            ),
          ),
          Stack(children: [
            DottedBorder(
              color: primaryColor,
              borderType: BorderType.Circle,
              dashPattern: const [50, 30, 25, 15],
              strokeWidth: 3,
              child: CircleAvatar(
                radius: 200,
                backgroundColor: Colors.transparent,
                foregroundColor: primaryColor,
              ),
            ),
            CircleAvatar(
              radius: 200,
              backgroundColor: Colors.transparent,
              foregroundColor: primaryColor,
              backgroundImage: const AssetImage('assets/images/me.png'),
            ),
          ]),
        ],
      ),
    );
  }

  List<String> getTechnologies() => [
        'Flutter',
        'Dart',
        'Bloc, Provider State Management',
        'Firebase [Database , Cloud Storage , Auth]',
        'Git , Github',
        'Payment Gateways',
        'MVVM Architecture',
      ];
}
