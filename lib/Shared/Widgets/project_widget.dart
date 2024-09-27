import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:portofolio/Shared/Widgets/customized_text.dart';
import 'package:portofolio/Shared/colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectWidget extends StatelessWidget {
  const ProjectWidget({
    Key? key,
    required this.rtl,
    required this.project,
    required this.animation,
  }) : super(key: key);
  final bool rtl;
  final Animation<double> animation;
  final Map<String, dynamic> project;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding:
            const EdgeInsetsDirectional.only(start: 50, top: 50, bottom: 50),
        width: MediaQuery.sizeOf(context).width * 0.5,
        child: MediaQuery.sizeOf(context).width > 800
            ? Stack(
                alignment: rtl
                    ? AlignmentDirectional.centerEnd
                    : AlignmentDirectional.centerStart,
                fit: StackFit.passthrough,
                children: [
                  SlideTransition(
                    position: Tween<Offset>(
                      begin: rtl ? const Offset(-1, 0) : const Offset(1, 0),
                      end: Offset.zero,
                    ).animate(animation),
                    child: Container(
                      alignment: rtl
                          ? AlignmentDirectional.centerStart
                          : AlignmentDirectional.centerEnd,
                      width: MediaQuery.sizeOf(context).width,
                      height: 350,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image(
                          image: AssetImage(project['image']),
                          height: 350,
                          width: 500,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: rtl ? 0 : 400,
                    left: rtl ? 400 : 0,
                    child: SlideTransition(
                      position: Tween<Offset>(
                        begin: rtl ? const Offset(1, 0) : const Offset(-1, 0),
                        end: Offset.zero,
                      ).animate(animation),
                      child: Column(
                          crossAxisAlignment: rtl
                              ? CrossAxisAlignment.end
                              : CrossAxisAlignment.start,
                          children: [
                            CustomizedNormalText(
                              text: project['title'],
                              color: primaryColor,
                              fontSize: 20,
                            ),
                            CustomizedNormalText(
                              text: project['subtitle'],
                              color: white,
                              fontWeight: FontWeight.bold,
                            ),
                            Card(
                              color: HexColor('#112240'),
                              child: Container(
                                padding: const EdgeInsets.all(15),
                                width: 600,
                                child: CustomizedNormalText(
                                  text: project['description'],
                                  fontSize: 14,
                                ),
                              ),
                            ),
                            IconButton(
                                onPressed: () async =>
                                    launchUrl(Uri.parse(project['github'])),
                                icon: Icon(
                                  Icons.link,
                                  size: 30,
                                  color: primaryColor,
                                ))
                          ]),
                    ),
                  ),
                ],
              )
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SlideTransition(
                    position: Tween<Offset>(
                      begin: rtl ? const Offset(2, 0) : const Offset(-2, 0),
                      end: Offset.zero,
                    ).animate(animation),
                    child: SizedBox(
                      width: MediaQuery.sizeOf(context).width,
                      height: 300,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image(
                          image: AssetImage(project['image']),
                          height: 300,
                          width: 500,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  CustomizedNormalText(
                    text: project['title'],
                    color: primaryColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  CustomizedNormalText(
                    text: project['subtitle'],
                    color: white,
                    fontSize: 16,
                  ),
                  Card(
                    color: HexColor('#112240'),
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      width: 600,
                      child: CustomizedNormalText(
                        text: project['description'],
                      ),
                    ),
                  ),
                  IconButton(
                      onPressed: () async =>
                          launchUrl(Uri.parse(project['github'])),
                      icon: Icon(
                        Icons.link,
                        size: 20.sp,
                        color: primaryColor,
                      )),
                ],
              ));
  }
}
