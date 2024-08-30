import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:portofolio/Shared/colors.dart';
import 'package:portofolio/portofolio_layout.dart';

void scrollToSection(BuildContext context) {
  Scrollable.ensureVisible(context,
      duration: const Duration(seconds: 1), curve: Curves.fastOutSlowIn);
}

PreferredSizeWidget desktopAppBar() {
  return AppBar(
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
      TextButton(
          onPressed: () {
            scrollToSection(PortfolioLayoutState.hello.currentContext!);
            
          },
          child: Text('00. Hello',
              style: GoogleFonts.dosis(color: Colors.white, fontSize: 18))),
      const SizedBox(
        width: 15,
      ),
      TextButton(
          onPressed: () {
            scrollToSection(PortfolioLayoutState.aboutMe.currentContext!);
          },
          child: Text('01. About Me',
              style: GoogleFonts.dosis(color: Colors.white, fontSize: 18))),
      const SizedBox(
        width: 15,
      ),
      TextButton(
          onPressed: () {
            scrollToSection(PortfolioLayoutState.services.currentContext!);
          },
          child: Text('02. Experience',
              style: GoogleFonts.dosis(color: Colors.white, fontSize: 18))),
      const SizedBox(
        width: 15,
      ),
      TextButton(
          onPressed: () {
            scrollToSection(PortfolioLayoutState.projects.currentContext!);
          },
          child: Text('03. Projects',
              style: GoogleFonts.dosis(color: Colors.white, fontSize: 18))),
      const SizedBox(
        width: 15,
      ),
      OutlinedButton(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              side: BorderSide(color: primaryColor),
              padding: EdgeInsets.symmetric(vertical: 13, horizontal: 20)),
          child: Text('Contact',
              style: GoogleFonts.dosis(color: primaryColor, fontSize: 18))),
      const SizedBox(
        width: 15,
      ),
    ],
  );
}

PreferredSizeWidget mobileAppBar(context) {
  return AppBar(
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
  );
}
