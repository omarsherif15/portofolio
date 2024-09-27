import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:portofolio/Shared/Widgets/customized_text.dart';
import 'package:portofolio/Shared/colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: must_be_immutable
class NewProjectWidget extends StatefulWidget {
  NewProjectWidget({
    Key? key,
    required this.project,
  }) : super(key: key);
  final Map<String, dynamic> project;

  bool isHovering = false;

  @override
  State<NewProjectWidget> createState() => _NewProjectWidgetState();
}

class _NewProjectWidgetState extends State<NewProjectWidget> {
  @override
  Widget build(BuildContext context) {
    return MediaQuery.sizeOf(context).width > 800
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MouseRegion(
                onEnter: (event) => setState(() => widget.isHovering = true),
                onExit: (event) => setState(() => widget.isHovering = false),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image(
                    image: AssetImage(widget.project['image']),
                    height: 400,
                    width: 400,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              CustomizedNormalText(
                text: widget.project['title'],
                color: primaryColor,
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
              CustomizedNormalText(
                text: widget.project['subtitle'],
                color: white,
                fontSize: 14,
              ),
            ],
          )
        : Container();
    // : Column(
    //     crossAxisAlignment: CrossAxisAlignment.start,
    //     children: [
    //       SlideTransition(
    //         position: Tween<Offset>(
    //           begin:
    //               widget.rtl ? const Offset(2, 0) : const Offset(-2, 0),
    //           end: Offset.zero,
    //         ).animate(widget.animation),
    //         child: SizedBox(
    //           width: MediaQuery.sizeOf(context).width,
    //           height: 300,
    //           child: ClipRRect(
    //             borderRadius: BorderRadius.circular(15),
    //             child: Image(
    //               image: AssetImage(widget.project['image']),
    //               height: 300,
    //               width: 500,
    //               fit: BoxFit.cover,
    //             ),
    //           ),
    //         ),
    //       ),
    //       CustomizedNormalText(
    //         text: widget.project['title'],
    //         color: primaryColor,
    //         fontSize: 20,
    //         fontWeight: FontWeight.bold,
    //       ),
    //       CustomizedNormalText(
    //         text: widget.project['subtitle'],
    //         color: white,
    //         fontSize: 16,
    //       ),
    //       Card(
    //         color: HexColor('#112240'),
    //         child: Container(
    //           padding: const EdgeInsets.all(15),
    //           width: 600,
    //           child: CustomizedNormalText(
    //             text: widget.project['description'],
    //           ),
    //         ),
    //       ),
    //       IconButton(
    //           onPressed: () async =>
    //               launchUrl(Uri.parse(widget.project['github'])),
    //           icon: Icon(
    //             Icons.link,
    //             size: 20.sp,
    //             color: primaryColor,
    //           )),
    //     ],
    //   ));
  }
}
