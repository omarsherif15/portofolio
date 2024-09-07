import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portofolio/Shared/Widgets/customized_text.dart';
import 'package:portofolio/Shared/colors.dart';
import 'package:portofolio/portofolio_layout.dart';

import '../constants.dart';

class MobileAppbar extends StatefulWidget implements PreferredSizeWidget {
  const MobileAppbar({Key? key}) : super(key: key);

  @override
  State<MobileAppbar> createState() => _MobileAppbarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

/// State for widget MobileAppbar.
class _MobileAppbarState extends State<MobileAppbar> {
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
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: PopupMenuButton(
                color: backgroundColor,
                position: PopupMenuPosition.under,
                padding: const EdgeInsets.symmetric(vertical: 100),
                popUpAnimationStyle:
                    AnimationStyle(curve: Curves.fastEaseInToSlowEaseOut),
                constraints:
                    BoxConstraints(minWidth: MediaQuery.sizeOf(context).width),
                itemBuilder: (context) => [
                      PopupMenuItem(
                          onTap: () {
                            scrollToSection(
                                PortfolioLayoutState.hello.currentContext!);
                          },
                          child: const _AppBarButton(
                            title: '00. Home',
                          )),
                      PopupMenuItem(
                          onTap: () {
                            scrollToSection(
                                PortfolioLayoutState.aboutMe.currentContext!);
                          },
                          child: const _AppBarButton(
                            title: '01. About Me',
                          )),
                      PopupMenuItem(
                          onTap: () {
                            scrollToSection(
                                PortfolioLayoutState.services.currentContext!);
                          },
                          child: const _AppBarButton(
                            title: '02. Experience',
                          )),
                      PopupMenuItem(
                          onTap: () {
                            scrollToSection(
                                PortfolioLayoutState.projects.currentContext!);
                          },
                          child: const _AppBarButton(
                            title: '03. Projects',
                          )),
                      PopupMenuItem(
                          onTap: () {
                            scrollToSection(
                                PortfolioLayoutState.contact.currentContext!);
                          },
                          child: const _AppBarButton(title: '04. Contact')),
                    ],
                clipBehavior: Clip.antiAlias,
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: primaryColor)),
                    padding: const EdgeInsets.symmetric(
                        vertical: 13, horizontal: 10),
                    child: Icon(FontAwesomeIcons.ellipsisVertical,
                        color: primaryColor))),
          ),
        ],
      );
}

class _AppBarButton extends StatefulWidget {
  const _AppBarButton({Key? key, required this.title}) : super(key: key);

  final String title;
  @override
  State<_AppBarButton> createState() => _AppBarButtonState();
}

class _AppBarButtonState extends State<_AppBarButton> {
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
          child: CustomizedText(
            text: widget.title,
            color: isHovered ? primaryColor : Colors.white,
            fontSize: 18,
          ),
        ));
  }
}
