import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:portofolio/Shared/Widgets/customized_text.dart';
import 'package:portofolio/Shared/colors.dart';

class ProjectWidget extends StatelessWidget {
  const ProjectWidget({Key? key, required this.rtl}) : super(key: key);
  final bool rtl;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsetsDirectional.only(start: 50, top: 50, bottom: 50),
        width: MediaQuery.sizeOf(context).width * 0.5,
        child: Stack(
          alignment: rtl
              ? AlignmentDirectional.centerEnd
              : AlignmentDirectional.centerStart,
          fit: StackFit.passthrough,
          children: [
            Container(
              alignment: rtl
                  ? AlignmentDirectional.centerStart
                  : AlignmentDirectional.centerEnd,
              width: MediaQuery.sizeOf(context).width,
              height: 350,
              child: const Image(
                image: AssetImage('assets/images/port pic.jpg'),
                height: 350,
                width: 500,
                fit: BoxFit.fitHeight,
              ),
            ),
            Positioned(
              right: rtl ? 0 : 400,
              left: rtl ? 400 : 0,
              child: Column(
                  crossAxisAlignment:
                      rtl ? CrossAxisAlignment.end : CrossAxisAlignment.start,
                  children: [
                    CustomizedText(
                      text: 'Graduation Project',
                      color: primaryColor,
                    ),
                    CustomizedText(
                      text: 'Lawyer Office Management System',
                      color: white,
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                    Card(
                      color: HexColor('#112240'),
                      child: Container(
                        padding: EdgeInsets.all(15),
                        width: 600,
                        child: const CustomizedText(
                          text:
                              'This is only half the project the main platform is a native website.\nThe mobile app is more about the view and easy access to the lawyer\'s data',
                        ),
                      ),
                    ),
                  ]),
            ),
          ],
        ));
  }
}
