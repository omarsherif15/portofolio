import 'package:auto_animated/auto_animated.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portofolio/Shared/Widgets/projectWidget.dart';
import 'package:portofolio/Shared/colors.dart';
import 'package:portofolio/main.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      heightFactor: 1.1,
      widthFactor: 2,
      child: SizedBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '03.',
                  style: GoogleFonts.dosis(
                      color: primaryColor, fontSize: 20, letterSpacing: 2),
                ),
                Text(
                  ' Somethings I\'ve Build',
                  style: GoogleFonts.dosis(
                      color: Colors.white,
                      fontSize: 20,
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 15,
                ),
                Container(
                  height: 1,
                  color: Colors.grey[200],
                  width: 30.sp,
                )
              ],
            ),
            SizedBox(
              height: 10.h,
            ),

            // Creating Each Project Widget

            SizedBox(
                width: MediaQuery.sizeOf(context).width * 0.7,
                child: LiveList.options(
                  itemBuilder: (context, index, animation) => animatedProject(
                    context,
                    index.isOdd,
                    animation,
                    getProjects()[index],
                  ),
                  itemCount: getProjects().length,
                  shrinkWrap: true,
                  options: const LiveOptions(
                      reAnimateOnVisibility: true,
                      showItemDuration: Duration(milliseconds: 500)),
                ))
          ],
        ),
      ),
    );
  }

  List<Map<String, dynamic>> getProjects() => const [
        {
          'title': 'Avocado',
          'subtitle': 'Lawyer Office Management System',
          'image': 'assets/Mockups/Avocado Mockup.jpg',
          'description':
              '• The mobile app allows you to view and easy access to the lawyer\'s data. Support English and Arabic\n'
                  '• View Lawyers\' Cases and everything related. (Sessions, Investigations, attachments, etc...)\n'
                  '• Previously added legal library (as PDFs), Courts profile (Plus GPS Direction)',
          'github': 'https://github.com/omarsherif15/avocado',
        },
        {
          'title': 'Vegan Market',
          'subtitle': 'E-Commerce App',
          'image': 'assets/Mockups/VeganMarket.jpg',
          'description':
              '• Built a grocery app with Stripe payments, using Firebase backend\n'
                  '• Web admin panel for managing orders and products.',
          'github': 'https://github.com/omarsherif15/VeganMarket',
        },
        {
          'title': 'Friends',
          'subtitle': 'Social Media App',
          'image': 'assets/Mockups/Friends.jpg',
          'description':
              '• Localized Social App (Facebook Clone) using Firebase, Light & Dark mode\n'
                  '• Create & Share posts, likes & comment (text and Image)\n'
                  '• Real-time messages (Chat) and Notifications',
          'github': 'https://github.com/omarsherif15/Friends',
        },
        {
          'title': 'ShopMart',
          'subtitle': 'E-Commerce App',
          'image': 'assets/Mockups/ShopMart.jpg',
          'description':
              '• Built a Simple E-Commerce Shopping App using Rest API\n'
                  '• CRUD Account, Address, Cart, Favorites\n'
                  '• Categories & Products updated continuously, Search Products',
          'github': 'https://github.com/omarsherif15/ShopMart',
        }
      ];
}
