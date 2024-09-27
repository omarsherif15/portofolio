import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portofolio/Shared/colors.dart';
import 'package:portofolio/portofolio_layout.dart';

import '../constants.dart';

class DesktopAppBar extends StatefulWidget implements PreferredSizeWidget {
  const DesktopAppBar({Key? key}) : super(key: key);

  @override
  State<DesktopAppBar> createState() => _DesktopAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

/// State for widget AppBar.
class _DesktopAppBarState extends State<DesktopAppBar> {
  @override
  Widget build(BuildContext context) => AppBar(
        backgroundColor: backgroundColor,
        forceMaterialTransparency: true,
        automaticallyImplyLeading: false,
        toolbarHeight: 90,
        leading: const Image(
          image: AssetImage('assets/images/logo.png'),
          fit: BoxFit.contain,
        ),
        leadingWidth: 100,
        elevation: 0,
        actions: [
          AppBarButton(
            title: '00. Home',
            scrollContext: PortfolioLayoutState.hello.currentContext!,
          ),
          const SizedBox(
            width: 15,
          ),
          AppBarButton(
            title: '01. About Me',
            scrollContext: PortfolioLayoutState.aboutMe.currentContext!,
          ),
          const SizedBox(
            width: 15,
          ),
          AppBarButton(
            title: '02. Services',
            scrollContext: PortfolioLayoutState.services.currentContext!,
          ),
          const SizedBox(
            width: 15,
          ),
          AppBarButton(
            title: '03. Experience',
            scrollContext: PortfolioLayoutState.experience.currentContext!,
          ),
          const SizedBox(
            width: 15,
          ),
          AppBarButton(
            title: '04. Projects',
            scrollContext: PortfolioLayoutState.projects.currentContext!,
          ),
          const SizedBox(
            width: 15,
          ),
          const SizedBox(
            width: 15,
          ),
          OutlinedButton(
              onPressed: () {
                scrollToSection(PortfolioLayoutState.contact.currentContext!);
              },
              style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  side: BorderSide(color: primaryColor),
                  padding:
                      const EdgeInsets.symmetric(vertical: 13, horizontal: 20)),
              child: Text('Contact',
                  style: GoogleFonts.dosis(color: primaryColor, fontSize: 18))),
          const SizedBox(
            width: 15,
          ),
        ],
      );
}

class AppBarButton extends StatefulWidget {
  const AppBarButton(
      {Key? key, required this.title, required this.scrollContext})
      : super(key: key);

  final String title;
  final BuildContext scrollContext;

  @override
  State<StatefulWidget> createState() => _AppBarButtonState();
}

class _AppBarButtonState extends State<AppBarButton> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) => setState(() => isHovered = true),
      onExit: (event) => setState(() => isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 100),
        padding: isHovered
            ? const EdgeInsets.only(bottom: 10)
            : const EdgeInsets.all(0),
        child: TextButton(
            onPressed: () {
              scrollToSection(widget.scrollContext);
            },
            child: Text(widget.title,
                style: GoogleFonts.dosis(
                    color: isHovered ? primaryColor : Colors.white,
                    fontSize: 18))),
      ),
    );
  }
}
