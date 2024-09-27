import 'package:flutter/material.dart';
import 'package:portofolio/Shared/Widgets/customized_text.dart';
import 'package:portofolio/Shared/colors.dart';

class SkillsWidget extends StatelessWidget {
  const SkillsWidget({
    Key? key,
    required this.title,
    required this.percent,
  }) : super(key: key);

  final String title;
  final double percent;

  @override
  Widget build(BuildContext context) => Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CustomizedNormalText(
                  text: title, fontWeight: FontWeight.bold, fontSize: 15),
              CustomizedNormalText(
                  text: ' $percent%',
                  fontSize: 13,
                  color: Colors.grey.withOpacity(0.5)),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          LinearProgressIndicator(
            value: percent / 100,
            minHeight: 10,
            borderRadius: BorderRadius.circular(15),
            color: primaryColor,
            backgroundColor: Colors.grey.withOpacity(0.2),
          )
        ],
      );
}
