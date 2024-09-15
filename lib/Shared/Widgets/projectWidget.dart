import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:portofolio/Shared/Widgets/customized_text.dart';
import 'package:portofolio/Shared/colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectWidget extends StatefulWidget {
  const ProjectWidget(
      {Key? key,
      required this.rtl,
      required this.project,
      required this.animation})
      : super(key: key);
  final bool rtl;
  final Map<String, dynamic> project;

  final Animation<double> animation;

  @override
  State<ProjectWidget> createState() => _ProjectWidgetState();
}

class _ProjectWidgetState extends State<ProjectWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding:
            const EdgeInsetsDirectional.only(start: 50, top: 50, bottom: 50),
        width: MediaQuery.sizeOf(context).width * 0.5,
        child: MediaQuery.sizeOf(context).width > 800
            ? Stack(
                alignment: widget.rtl
                    ? AlignmentDirectional.centerEnd
                    : AlignmentDirectional.centerStart,
                fit: StackFit.passthrough,
                children: [
                  SlideTransition(
                    position: Tween<Offset>(
                      begin:
                          widget.rtl ? const Offset(-1, 0) : const Offset(1, 0),
                      end: Offset.zero,
                    ).animate(widget.animation),
                    child: Container(
                      alignment: widget.rtl
                          ? AlignmentDirectional.centerStart
                          : AlignmentDirectional.centerEnd,
                      width: MediaQuery.sizeOf(context).width,
                      height: 350,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image(
                          image: AssetImage(widget.project['image']),
                          height: 350,
                          width: 500,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  SlideTransition(
                    position: Tween<Offset>(
                      begin:
                          widget.rtl ? const Offset(1, 0) : const Offset(-1, 0),
                      end: Offset.zero,
                    ).animate(widget.animation),
                    child: Positioned(
                      right: widget.rtl ? 0 : 400,
                      left: widget.rtl ? 400 : 0,
                      child: Column(
                          crossAxisAlignment: widget.rtl
                              ? CrossAxisAlignment.end
                              : CrossAxisAlignment.start,
                          children: [
                            CustomizedText(
                              text: widget.project['title'],
                              color: primaryColor,
                              fontSize: 20,
                            ),
                            CustomizedText(
                              text: widget.project['subtitle'],
                              color: white,
                              fontWeight: FontWeight.bold,
                            ),
                            Card(
                              color: HexColor('#112240'),
                              child: Container(
                                padding: const EdgeInsets.all(15),
                                width: 600,
                                child: CustomizedText(
                                  text: widget.project['description'],
                                  fontSize: 14,
                                ),
                              ),
                            ),
                            IconButton(
                                onPressed: () async => launchUrl(
                                    Uri.parse(widget.project['github'])),
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
                  Container(
                    alignment: widget.rtl
                        ? AlignmentDirectional.centerStart
                        : AlignmentDirectional.centerEnd,
                    width: MediaQuery.sizeOf(context).width,
                    height: 350,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image(
                        image: AssetImage(widget.project['image']),
                        height: 350,
                        width: 500,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  CustomizedText(
                    text: widget.project['title'],
                    color: primaryColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  CustomizedText(
                    text: widget.project['subtitle'],
                    color: white,
                    fontSize: 16,
                  ),
                  Card(
                    color: HexColor('#112240'),
                    child: Container(
                      padding: const EdgeInsets.all(15),
                      width: 600,
                      child: CustomizedText(
                        text: widget.project['description'],
                      ),
                    ),
                  ),
                  IconButton(
                      onPressed: () async =>
                          launchUrl(Uri.parse(widget.project['github'])),
                      icon: Icon(
                        Icons.link,
                        size: 20.sp,
                        color: primaryColor,
                      )),
                ],
              ));
  }
}
