import 'package:flutter/material.dart';
import 'package:portofolio/Shared/Widgets/customized_text.dart';
import 'package:portofolio/Shared/colors.dart';

class Technologies extends StatelessWidget {
  const Technologies({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          Icons.arrow_right,
          color: primaryColor,
        ),
        CustomizedText(
          text: title,
        ),
      ],
    );
  }
}
