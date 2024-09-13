import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:portofolio/portofolio_layout.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) => const MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'My Portfolio',
              home: PortfolioLayout())
          .animate()
          .fadeIn(),
    );
  }
}
