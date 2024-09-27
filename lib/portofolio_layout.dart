import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portofolio/Appbar/desktop_appbar.dart';
import 'package:portofolio/Appbar/mobile_appbar.dart';
import 'package:portofolio/Features/Home/Sections/Services&Skills/Screens/services_skills.dart';
import 'package:portofolio/Features/Home/Sections/about_me_section.dart';
import 'package:portofolio/Features/Home/Sections/contact.dart';
import 'package:portofolio/Features/Home/Sections/experience.dart';
import 'package:portofolio/Features/Home/Sections/hello_section.dart';
import 'package:portofolio/Features/Home/Sections/projects.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:url_launcher/url_launcher.dart';

import 'Shared/colors.dart';

class PortfolioLayout extends StatefulWidget {
  const PortfolioLayout({Key? key}) : super(key: key);

  @override
  PortfolioLayoutState createState() => PortfolioLayoutState();
}

class PortfolioLayoutState extends State<PortfolioLayout>
    with SingleTickerProviderStateMixin {
  static ScrollController scrollController = ScrollController();
  static final aboutMe = GlobalKey();
  static final hello = GlobalKey();
  static final projects = GlobalKey();
  static final services = GlobalKey();
  static final experience = GlobalKey();
  static final contact = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: MediaQuery.of(context).size.width > 800
          ? const PreferredSize(
              preferredSize: Size.fromHeight(90), child: DesktopAppBar())
          : const PreferredSize(
              preferredSize: Size.fromHeight(90), child: MobileAppbar()),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            SingleChildScrollView(
              controller: scrollController,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HelloSection(
                    key: hello,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  AboutMeSection(
                    key: aboutMe,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  ServicesAndSkills(
                    key: services,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  ExperienceSection(
                    key: experience,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  ProjectsSection(
                    key: projects,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Contactus(
                    key: contact,
                  ),
                ],
              ),
            ),
            Visibility(
              visible: MediaQuery.sizeOf(context).width > 800,
              child: Positioned(
                  bottom: 0,
                  left: 30,
                  child: Column(
                    children: [
                      IconButton(
                        padding: EdgeInsets.zero,
                        icon: const Icon(
                          FontAwesomeIcons.github,
                          color: Colors.white,
                        ),
                        onPressed: () async => await launchUrl(
                            Uri.parse('https://github.com/omarsherif15')),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      IconButton(
                        padding: EdgeInsets.zero,
                        icon: const Icon(FontAwesomeIcons.linkedinIn,
                            color: Colors.white),
                        onPressed: () async => await launchUrl(Uri.parse(
                            'https://www.linkedin.com/in/omarshekoo/')),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      IconButton(
                        padding: EdgeInsets.zero,
                        icon: const Icon(FontAwesomeIcons.instagram,
                            color: Colors.white),
                        onPressed: () async => await launchUrl(Uri.parse(
                            'https://www.instagram.com/omar_sherif20/')),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      IconButton(
                        padding: EdgeInsets.zero,
                        icon: const Icon(FontAwesomeIcons.facebookF,
                            color: Colors.white),
                        onPressed: () async => await launchUrl(Uri.parse(
                            'https://www.facebook.com/profile.php?id=100007026016499')),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 60,
                        color: Colors.grey,
                        width: 1,
                      )
                    ],
                  )),
            ),
            Visibility(
              visible: MediaQuery.sizeOf(context).width > 800,
              child: Positioned(
                  bottom: 0,
                  right: 30,
                  child: Column(
                    children: [
                      RotatedBox(
                        quarterTurns: 1,
                        child: TextButton(
                          style: TextButton.styleFrom(padding: EdgeInsets.zero),
                          child: Text(
                            'OmarSherifMetwaly@gmail.com',
                            style: GoogleFonts.dosis(
                                color: Colors.grey, fontSize: 18),
                          ),
                          onPressed: () async => await launchUrl(
                              Uri.parse('mailto:OmarSherifMetwaly@gmail.com')),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 60,
                        color: Colors.grey,
                        width: 1,
                      )
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
    // Scaffold(
    // backgroundColor: Colors.black.withOpacity(0.95),
    // appBar: MediaQuery.of(context).size.width > 800 ? desktopAppBar() : mobileAppBar(context),
    // body: Scrollbar(
    //   radius: Radius.zero,
    //   interactive: true,
    //   child: SingleChildScrollView(
    //     controller: scrollController,
    //     child: Column(
    //       children: [
    //       Container(
    //         width: double.infinity,
    //         height: MediaQuery.of(context).size.height,
    //         decoration: const BoxDecoration(
    //             image:DecorationImage(
    //               image: AssetImage('assets/images/port pic.jpg'),
    //               fit: BoxFit.cover
    //             ) ),
    //         child: Padding(
    //           padding: MediaQuery.of(context).size.width > 800? const EdgeInsetsDirectional.only(start: 100) :const EdgeInsetsDirectional.only(start: 30),
    //           child: Column(
    //             crossAxisAlignment: CrossAxisAlignment.start,
    //             mainAxisAlignment: MainAxisAlignment.center,
    //             children:  [
    //               const Text('Hello, I\'m',style: TextStyle(color: Colors.white,fontSize: 25),),
    //               const SizedBox(height: 6,),
    //               const Text('Omar Sherif',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 55)),
    //               const SizedBox(height: 6,),
    //               const Text('Software Engineer and Flutter Developer.',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25)),
    //               const SizedBox(height: 20,),
    //               SizedBox(
    //                 width: 250,
    //                 height: 50,
    //                 child: ElevatedButton(
    //                   style: ElevatedButton.styleFrom(backgroundColor: HexColor('#1e1a91')),
    //                     onPressed: (){
    //                     launchUrl('https://Wa.me/201010387741');
    //                     },
    //                     child: const Row(
    //                       mainAxisAlignment: MainAxisAlignment.center,
    //                       crossAxisAlignment: CrossAxisAlignment.center,
    //                       children:[
    //                         Icon(FontAwesomeIcons.whatsapp),
    //                          SizedBox(width: 5,),
    //                          Text('WhatsApp',style: TextStyle(color: Colors.white,fontSize: 25)),
    //                       ],
    //                     )),
    //               ),
    //
    //
    //             ],
    //           ),
    //         ),
    //       ),
    //       Container(
    //         key: aboutMe,
    //         width: double.infinity,
    //         color: HexColor('#212121').withOpacity(0.6),
    //         child: BsRow(
    //           children: [
    //               BsCol(
    //                sizes: const ColScreen(sm: Col.col_12, lg: Col.col_6),
    //                padding: const EdgeInsets.all(15),
    //                alignment: AlignmentDirectional.center,
    //                child: SizedBox(
    //                  width: MediaQuery.of(context).size.width > 800?  MediaQuery.of(context).size.width/2 : MediaQuery.of(context).size.width,
    //                  child: Align(
    //                   alignment: AlignmentDirectional.center,
    //                     child: Padding(
    //                       padding: const EdgeInsets.symmetric(vertical: 50),
    //                       child: Container(
    //                           clipBehavior: Clip.antiAliasWithSaveLayer,
    //                           decoration: BoxDecoration(
    //                               borderRadius: BorderRadius.circular(15)
    //                           ),
    //                           child: const Image(image: AssetImage('assets/images/20210301_194710.jpg'),height: 400,width: 400,fit: BoxFit.cover,)),
    //                     )),
    //                ),
    //              ),
    //               BsCol(
    //               alignment: AlignmentDirectional.center,
    //               sizes: const ColScreen(sm: Col.col_12, xl: Col.col_6),
    //               child: Align(
    //                 alignment:
    //                 AlignmentDirectional.centerEnd,
    //                 child: Container(
    //                   width: MediaQuery.of(context).size.width > 800?  MediaQuery.of(context).size.width/2 : MediaQuery.of(context).size.width,
    //                   padding: const EdgeInsets.all(50),
    //                   child: Column(
    //                     mainAxisAlignment: MainAxisAlignment.center,
    //                     crossAxisAlignment: CrossAxisAlignment.start,
    //                     children: [
    //                       const Text('About Me',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30)),
    //                       const SizedBox(height: 50,),
    //                       const SizedBox(
    //                         width: 600,
    //                         child: Text('My name is Omar, I\'m a 22 years old, I live in Egypt. I\'m a fresh graduated computer Science student. '
    //                             'I have also been studying a lot on my own to learn new technologies and skills '
    //                             ' My ambition is to find a position that would challenge me and give me a chance to learn, expand my horizons as I grow in my career path.'
    //                             ' I am looking for an opportunity to learn more about mobile app development and especially flutter .'
    //                             ,style: TextStyle(color: Colors.white,fontSize: 18)),
    //                       ),
    //                       const SizedBox(height: 30,),
    //                       const SizedBox(
    //                         width: 600,
    //                         child: Text('I started as a flutter developer in 2020, since then I have been dedicating about 4-5 hours a day for studies. I see that i am on the right path'
    //                             'because  i see the result of that dedicated hours brings.  I am really interested in this topic any opportunity will be a great bonus to my experience and my CV as well.'
    //                             ,style: TextStyle(color: Colors.white,fontSize: 18)),
    //                       ),
    //                       const SizedBox(height: 60,),
    //                       Wrap(
    //                         crossAxisAlignment: WrapCrossAlignment.start,
    //                         runSpacing: 20,
    //                         children: [
    //                           SizedBox(
    //                             width: MediaQuery.of(context).size.width > 600 ? 200 : 150,
    //                             height: 50,
    //                             child: ElevatedButton(
    //                                 style: ElevatedButton.styleFrom(backgroundColor: HexColor('#1e1a91')),
    //                                 onPressed: () async {
    //                                   launchUrl('https://www.linkedin.com/in/omar-sherif-148421176/');
    //                                 },
    //                                 child: Row(
    //                                   mainAxisAlignment: MainAxisAlignment.center,
    //                                   crossAxisAlignment: CrossAxisAlignment.center,
    //                                   children: [
    //                                     const Icon(FontAwesomeIcons.linkedin),
    //                                     const SizedBox(width: 15,),
    //                                     Text('Linkedin',style: TextStyle(color: Colors.white,fontSize: MediaQuery.of(context).size.width > 600 ? 25 : 15)),
    //                                   ],
    //                                 )),
    //                           ),
    //                           const SizedBox(width: 10),
    //                           const SizedBox(height: 10),
    //                           SizedBox(
    //                             width: MediaQuery.of(context).size.width > 600 ? 200 : 150,
    //                             height: 50,
    //                             child: ElevatedButton(
    //                                 style: ElevatedButton.styleFrom(backgroundColor: HexColor('#1e1a91')),
    //                                 onPressed: ()async{
    //                                   launchUrl('https://drive.google.com/file/d/1k4bpIVR8Fq_HgNUHM9l8ZaRxnvLlg8YA/view?usp=sharing');
    //                                 },
    //                                 child: Row(
    //                                   mainAxisAlignment: MainAxisAlignment.center,
    //                                   crossAxisAlignment: CrossAxisAlignment.center,
    //                                   children: [
    //                                     const Icon(FontAwesomeIcons.cloudDownloadAlt),
    //                                     const SizedBox(width: 20,),
    //                                     Text('Resume',style: TextStyle(color: Colors.white,fontSize: MediaQuery.of(context).size.width > 600 ? 25 : 15)),
    //                                   ],
    //                                 )),
    //                           ),
    //                         ],
    //                       ),
    //                     ],
    //                   ),
    //                 ),
    //               ),
    //             ),
    //           ]
    //         ),
    //       ),
    //       Container(
    //         key: projects,
    //         width: double.infinity,
    //         color: Colors.black.withOpacity(0.95),
    //         padding: const EdgeInsets.all(30),
    //         child: Column(
    //           children: [
    //             const Padding(
    //               padding: EdgeInsets.only(top: 100,bottom: 50),
    //               child: Text('Projects',style: TextStyle(color: Colors.white,fontSize: 40),),
    //             ),
    //             BsRow(
    //               //gutter: const EdgeInsets.all(10),
    //               children: [
    //                 BsCol(
    //                   padding: const EdgeInsets.all(10),
    //                   sizes: const ColScreen(sm: Col.col_12,md: Col.col_9, lg: Col.col_6,xl: Col.col_3),
    //                   child: projectsBuilder(
    //                       context: context,
    //                       projectName: 'TODO',
    //                       description: 'is a simple app that helps arrange your want todo list with date and time, when done mark done or archived when suspended. '
    //                           'this app is done using local database (SQFLite)',
    //                       githubUrl: 'https://github.com/omarsherif15/ToDo',
    //                   )
    //                 ),
    //                 BsCol(
    //                   padding:const EdgeInsets.all(10),
    //                   sizes: const ColScreen(sm: Col.col_12,md: Col.col_9, lg: Col.col_6,xl: Col.col_3),
    //                     child: projectsBuilder(
    //                       context: context,
    //                       projectName: 'News App',
    //                       description: 'Simple News app that view day by day news brief with source link if you want to know more about this specific topic using an'
    //                           ' RestApi which is updated daily with news ',
    //                       githubUrl: 'https://github.com/omarsherif15/NewsApp',
    //                     )
    //                 ),
    //                 BsCol(
    //                   padding:const EdgeInsets.all(10),
    //                   sizes: const ColScreen(sm: Col.col_12,md: Col.col_9, lg: Col.col_6,xl: Col.col_3),
    //                     child: projectsBuilder(
    //                       context: context,
    //                       projectName: 'ShopMart',
    //                       description: 'Simple E-Commerce Shopping App using RestAPI and Bloc as state management some features as Create, Update and delete Account'
    //                       ' & Add, Update and delete Address'
    //                       ' & Create, Update and delete Cart',
    //                       githubUrl: 'https://github.com/omarsherif15/ShopMart',
    //                     )
    //                 ),
    //                 BsCol(
    //                   padding:const EdgeInsets.all(10),
    //                   sizes: const ColScreen(sm: Col.col_12,md: Col.col_9, lg: Col.col_6,xl: Col.col_3),
    //                     child: projectsBuilder(
    //                       context: context,
    //                       projectName: 'Friends',
    //                       description: 'Social App using Firebase and Bloc as state management.\nSome features: Sign in with google, '
    //                           '\nCreate & Share posts, Real-time messages, '
    //                           'Notifications,\nLocalization (English, Arabic) and Light & Dark mode ',
    //                       githubUrl: 'https://github.com/omarsherif15/Friends',
    //                     )
    //                 ),
    //               ],
    //             ),
    //               Padding(
    //                 padding:const EdgeInsets.only(bottom: 50),
    //                 child: TextButton(
    //                     onPressed: () {launchUrl('https://github.com/omarsherif15?tab=repositories');},
    //                     child: Text('Repositories on GitHub',style: TextStyle(color: HexColor('#8c11ec'),fontSize: 20),)),
    //             ),
    //           ],
    //         ),
    //       ),
    //       Container(
    //         key: services,
    //         width: double.infinity,
    //         color: HexColor('#212121').withOpacity(.6),
    //         padding: const EdgeInsets.all(30),
    //         child: Column(
    //           children: [
    //             const Padding(
    //               padding: EdgeInsets.only(top: 100,bottom: 50),
    //               child: Text('Services',style: TextStyle(color: Colors.white,fontSize: 40),),
    //             ),
    //             BsRow(
    //               gutter: const EdgeInsets.all(10),
    //               children: [
    //                 BsCol(
    //                     padding: const EdgeInsets.all(10),
    //                     sizes: const ColScreen(sm: Col.col_12,md: Col.col_9, lg: Col.col_6,xl: Col.col_3),
    //                     child: servicesBuilder(
    //                       context: context,
    //                       serviceName: 'Mobile App Creation',
    //                       description: 'Development of professional cross-platform mobile applications, mobile systems and online stores',
    //                       serviceIcon: FontAwesomeIcons.mobileAlt,
    //                     )
    //                 ),
    //                 BsCol(
    //                     padding: const EdgeInsets.all(10),
    //                     sizes: const ColScreen(sm: Col.col_12,md: Col.col_9, lg: Col.col_6,xl: Col.col_3),
    //                     child: servicesBuilder(
    //                       context: context,
    //                       serviceName: 'Responsive Apps',
    //                       description: 'Creation of responsive apps for the best viewing at all resolutions',
    //                       serviceIcon: FontAwesomeIcons.laptopCode,
    //                     )
    //                 ),
    //                 BsCol(
    //                     padding: const EdgeInsets.all(10),
    //                     sizes: const ColScreen(sm: Col.col_12,md: Col.col_9, lg: Col.col_6,xl: Col.col_3),
    //                     child: servicesBuilder(
    //                       context: context,
    //                       serviceName: 'UI/UX Design',
    //                       description: 'Design layouts that fits your business in a professional and faithful way in development',
    //                       serviceIcon: FontAwesomeIcons.uikit,
    //                     )
    //                 ),
    //                 BsCol(
    //                     padding: const EdgeInsets.all(10),
    //                     sizes: const ColScreen(sm: Col.col_12,md: Col.col_9, lg: Col.col_6,xl: Col.col_3),
    //                     child: servicesBuilder(
    //                       context: context,
    //                       serviceName: 'Clean Code',
    //                       description: 'Development of professional cross-platform mobile applications, mobile systems and online stores',
    //                       serviceIcon: FontAwesomeIcons.code,
    //                     )
    //                 ),
    //               ],
    //             ),
    //           ],
    //         ),
    //       ),
    //       Container(
    //         key: skills,
    //         width: double.infinity,
    //         color: Colors.black.withOpacity(0.95),
    //         padding:  const EdgeInsets.all(15),
    //         child: BsRow(
    //           gutter: const EdgeInsets.all(15),
    //           constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width/2),
    //           children: [
    //             const BsCol(
    //               padding: EdgeInsets.all(15),
    //               alignment: AlignmentDirectional.centerStart,
    //               sizes: ColScreen(sm: Col.col_12, lg: Col.col_6),
    //               child: Column(
    //                 crossAxisAlignment: CrossAxisAlignment.start,
    //                 mainAxisAlignment: MainAxisAlignment.center,
    //                 children:  [
    //                   SizedBox(height: 15,),
    //                   Text('Skills',style: TextStyle(color: Colors.white,fontSize: 25),),
    //                   SizedBox(height: 15,),
    //                   SizedBox(
    //                     width: 600,
    //                     child: Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry.'
    //                         ' Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,'
    //                         ' when an unknown printer took a galley of type and scrambled it to make a type specimen book.'
    //                         ' It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. ',
    //                         style: TextStyle(color: Colors.white,fontSize: 18)),
    //                   ),
    //                 ],
    //               ),
    //             ),
    //             BsCol(
    //               alignment: AlignmentDirectional.center,
    //               sizes: const ColScreen(sm: Col.col_12, lg: Col.col_6),
    //               child: SizedBox(
    //                 width: MediaQuery.of(context).size.width > 600 ? 400 : 300,
    //                 //height: 200,
    //                 child: GridView.count(
    //                     crossAxisCount: 4 ,
    //                   crossAxisSpacing: 10,
    //                   mainAxisSpacing: 10,
    //                   physics: const NeverScrollableScrollPhysics(),
    //                   shrinkWrap: true,
    //                   children: [
    //                     Container(
    //                         width: 10,
    //                         height: 50,
    //                         decoration: BoxDecoration(
    //                           color: HexColor('#212121').withOpacity(0.6),
    //                           borderRadius: BorderRadius.circular(8),
    //                         ),
    //                         padding: const EdgeInsets.all(15),
    //                         child: const FlutterLogo(size: 30,style: FlutterLogoStyle.stacked)),
    //                     skillBuilder(FontAwesomeIcons.database),
    //                     skillBuilder(FontAwesomeIcons.html5),
    //                     skillBuilder(FontAwesomeIcons.css3Alt),
    //                     skillBuilder(FontAwesomeIcons.java),
    //                     skillBuilder(FontAwesomeIcons.cloud),
    //                     skillBuilder(FontAwesomeIcons.download),
    //                     skillBuilder(FontAwesomeIcons.download),
    //                   ],
    //                 ),
    //               ),
    //             )
    //               ],
    //             )
    //             ),
    //       Container(
    //         height: 100,
    //         width: double.infinity,
    //         color: HexColor('#8c11ec'),
    //         child: Row(
    //           mainAxisAlignment: MainAxisAlignment.center,
    //           children: [
    //             IconButton(
    //                 onPressed: () => launchUrl('https://www.linkedin.com/in/omar-sherif-148421176/'),
    //                 icon: const Icon(FontAwesomeIcons.linkedinIn,color: Colors.white,size: 35,)
    //             ),
    //             const SizedBox(width: 30,),
    //             IconButton(
    //                 onPressed: () => launchUrl('https://github.com/omarsherif15'),
    //                 icon: const Icon(FontAwesomeIcons.github,color: Colors.white,size: 35)
    //             ),
    //             const SizedBox(width: 30,),
    //
    //             IconButton(
    //                 onPressed: () => launchUrl('https://www.instagram.com/omar_sherif20/'),
    //                 icon: const Icon(FontAwesomeIcons.instagram,color: Colors.white,size: 35)
    //             )
    //           ],
    //         ),
    //       )
    //       ]
    //     )
    //         ),
    //     ),
    // drawer: MediaQuery.of(context).size.width < 800?
    //       Container(
    //         width: 200,
    //         color: HexColor('#212121'),
    //         padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 30),
    //         child: Column(
    //           crossAxisAlignment: CrossAxisAlignment.start,
    //           mainAxisAlignment: MainAxisAlignment.start,
    //           children: [
    //             const SizedBox(height: 50,),
    //             TextButton(
    //                 onPressed: () {Scrollable.ensureVisible(aboutMe.currentContext!);pop(context);},
    //                 child: const Text('About Me',style: TextStyle(color: Colors.white,fontSize: 18))
    //             ),
    //             const SizedBox(height: 30,),
    //             TextButton(
    //                 onPressed: () {Scrollable.ensureVisible(projects.currentContext!);pop(context);},
    //                 child: const Text('Projects',style: TextStyle(color: Colors.white,fontSize: 18))
    //             ),
    //             const SizedBox(height: 30,),
    //             TextButton(
    //                 onPressed: () {Scrollable.ensureVisible(services.currentContext!);pop(context);},
    //                 child: const Text('Services',style: TextStyle(color: Colors.white,fontSize: 18))
    //             ),
    //             const SizedBox(height: 30,),
    //             TextButton(
    //                 onPressed: () {Scrollable.ensureVisible(skills.currentContext!);pop(context);},
    //                 child: const Text('Skills',style: TextStyle(color: Colors.white,fontSize: 18))
    //             ),
    //           ],
    // ),
    //       ) : const SizedBox()
    // );
  }
}
