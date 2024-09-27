import 'package:flutter/material.dart';
import 'package:portofolio/Shared/colors.dart';
import 'package:portofolio/portofolio_layout.dart';

// ignore: must_be_immutable
class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  late AnimationController slideAnimationController;
  late AnimationController rotateAnimationController;
  bool isLoading = true;

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

/// State for widget SplashScreen.
class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  @override
  void initState() {
    widget.slideAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );

    widget.rotateAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );

    repeatAnimations();

    super.initState();

    // Initial state initialization
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    widget.slideAnimationController.dispose();
    widget.rotateAnimationController.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: backgroundColor,
        body: Center(
          child: RotationTransition(
            turns: Tween(begin: 0.0, end: 1.0)
                .animate(widget.rotateAnimationController),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SlideTransition(
                  position: Tween<Offset>(
                          begin: const Offset(-1, 0), end: Offset.zero)
                      .animate(widget.slideAnimationController),
                  child: const Image(
                      image: AssetImage('assets/images/first_half_logo.png'),
                      fit: BoxFit.cover,
                      height: 100,
                      width: 150),
                ),
                SlideTransition(
                  position:
                      Tween<Offset>(begin: const Offset(1, 0), end: Offset.zero)
                          .animate(widget.slideAnimationController),
                  child: const Image(
                      image: AssetImage('assets/images/second_half_logo.png'),
                      fit: BoxFit.cover,
                      height: 100,
                      width: 150),
                )
              ],
            ),
          ),
        ),
      );

  Future<void> repeatAnimations() async {
    // Start the rotate animation
    widget.slideAnimationController.forward().then(
          (value) => widget.rotateAnimationController.forward(),
        );

    Future.delayed(
      const Duration(
        seconds: 2,
      ),
      () {
        // Stop repeating both animations
        widget.slideAnimationController.stop();
        widget.rotateAnimationController.stop();

        // Navigate to the next screen
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
              builder: (context) =>
                  const PortfolioLayout()), // Replace with your next screen
        );
      },
    );
    // After the animations have repeated, navigate to the next screen
  }
}
