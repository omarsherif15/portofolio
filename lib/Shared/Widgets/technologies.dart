import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portofolio/Shared/Widgets/customized_text.dart';
import 'package:portofolio/Shared/colors.dart';

class Technologies extends StatelessWidget {
  const Technologies({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.arrow_right,color: primaryColor,),
            const CustomizedText(text: 'Flutter',),
          ],
        ),  const SizedBox(width: 50,),
        Row(
          mainAxisSize: MainAxisSize.min,

          children: [
            Icon(Icons.arrow_right,color: primaryColor,),
            const CustomizedText(text: 'Firebase',),
          ],
        ),  const SizedBox(width: 50,),
        Row(
          mainAxisSize: MainAxisSize.min,

          children: [
            Icon(Icons.arrow_right,color: primaryColor,),
            const CustomizedText(text: 'Bloc, Provider',),
          ],
        ),
      ],
    );
  }
}
