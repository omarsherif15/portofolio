import 'package:flutter/material.dart';
import 'package:portofolio/Shared/Widgets/customized_text.dart';
import 'package:portofolio/Shared/colors.dart';

class ServiceWidget extends StatelessWidget {
  const ServiceWidget({
    Key? key,
    required this.icon,
    required this.title,
    required this.description,
  }) : super(key: key);

  final IconData icon;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) => Card(
        color: backgroundColor2,
        elevation: 20,
        shadowColor: backgroundColor2.withAlpha(50),
        margin: const EdgeInsets.all(20),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              Icon(
                icon,
                color: primaryColor,
                size: 50,
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomizedNormalText(
                      text: title,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                    CustomizedNormalText(
                      text: description,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
}
