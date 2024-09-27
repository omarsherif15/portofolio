import 'package:flutter/material.dart';
import 'package:portofolio/Features/Home/Sections/Services&Skills/Widgets/skills_widget.dart';
import 'package:portofolio/Shared/colors.dart';

class Skills extends StatelessWidget {
  const Skills({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Center(
        child: SizedBox(
          width: MediaQuery.sizeOf(context).width * 0.67,
          child: Card(
            margin: const EdgeInsets.all(20),
            color: backgroundColor2,
            elevation: 20,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ListView.separated(
                shrinkWrap: true,
                itemCount: getSkills().length,
                itemBuilder: (context, index) => SkillsWidget(
                  title: getSkills()[index]['title'],
                  percent: getSkills()[index]['persentage'],
                ),
                separatorBuilder: (context, index) => const SizedBox(
                  height: 20,
                ),
              ),
            ),
          ),
        ),
      );

  List<Map<String, dynamic>> getSkills() => [
        {
          'title': 'Flutter & Dart',
          'persentage': 80,
        },
        {
          'title': 'Firebase',
          'persentage': 70,
        },
        {
          'title': 'Hive & SQLite',
          'persentage': 80,
        },
        {
          'title': 'Rest API',
          'persentage': 90,
        },
        {
          'title': 'Git & Github',
          'persentage': 90,
        },
        {
          'title': 'Payment Gateways',
          'persentage': 40,
        },
      ];
}
