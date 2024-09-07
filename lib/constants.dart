import 'package:flutter/material.dart';

void scrollToSection(BuildContext context) {
  Scrollable.ensureVisible(context,
      duration: const Duration(seconds: 1), curve: Curves.fastOutSlowIn);
}