import 'package:auto_animated/auto_animated.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portofolio/Features/Home/Widegets/project_widget.dart';
import 'package:portofolio/Shared/Widgets/customized_text.dart';
import 'package:portofolio/Shared/colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

// ignore: must_be_immutable
class ProjectsSection extends StatefulWidget {
  ProjectsSection({Key? key}) : super(key: key);

  late TabController tabController;

  @override
  State<ProjectsSection> createState() => _ProjectsSectionState();
}

class _ProjectsSectionState extends State<ProjectsSection>
    with TickerProviderStateMixin {
  @override
  void initState() {
    widget.tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      heightFactor: 1,
      child: SizedBox(
        width: MediaQuery.sizeOf(context).width * 0.7,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '04.',
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
            Container(
                width: MediaQuery.sizeOf(context).width * 0.7,
                height: 80,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: backgroundColor2,
                ),
                child: TabBar(
                    unselectedLabelColor: Colors.grey,
                    unselectedLabelStyle: GoogleFonts.dosis(
                      fontSize: 14.sp,
                    ),
                    indicatorColor: primaryColor,
                    dividerHeight: 0,
                    labelColor: primaryColor,
                    labelStyle: GoogleFonts.dosis(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                    ),
                    controller: widget.tabController,
                    tabs: const [
                      Tab(
                        text: 'All',
                      ),
                      Tab(
                        icon: Icon(FontAwesomeIcons.mobileScreen),
                        text: 'Mobile',
                      ),
                      Tab(
                        icon: Icon(FontAwesomeIcons.laptop),
                        text: 'Web',
                        // child: CustomizedNormalText(
                        //   text: 'web',
                        //   color: Colors.white,
                        //   fontWeight: FontWeight.bold,
                        // ),
                      )
                    ])),

            SizedBox(
              height: 5.h,
            ),

            SizedBox(
              height: MediaQuery.sizeOf(context).height * 1.32,
              child: TabBarView(
                  controller: widget.tabController,
                  children: List.generate(
                    3,
                    (index) => GridView.count(
                        crossAxisCount: 3,
                        mainAxisSpacing: 20,
                        crossAxisSpacing: 20,
                        childAspectRatio: 0.7,
                        shrinkWrap: true,
                        children: getProjects()
                            .map(
                                (project) => NewProjectWidget(project: project))
                            .toList()),
                  )),
            )
          ],
        ),
      ),
    );
  }

  List<Map<String, dynamic>> getProjects() => const [
        {
          'title': 'Avocado',
          'subtitle': 'Lawyer Office MS',
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
