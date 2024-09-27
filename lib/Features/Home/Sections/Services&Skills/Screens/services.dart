import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portofolio/Features/Home/Sections/Services&Skills/Widgets/service_widget.dart';

class Services extends StatelessWidget {
  const Services({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Center(
      heightFactor: 1.2,
      child: Wrap(alignment: WrapAlignment.start, children: [
        SizedBox(
          width: (MediaQuery.sizeOf(context).width * 0.7) / 2.1,
          child: const ServiceWidget(
              icon: FontAwesomeIcons.mobileScreen,
              title: 'Mobile App',
              description:
                  "Professional Development of Mobile App native-like performance and beautiful UI using Flutter for Android & IOS"),
        ),
        const SizedBox(
          width: 20,
        ),
        SizedBox(
          width: (MediaQuery.sizeOf(context).width * 0.7) / 2.1,
          child: const ServiceWidget(
              icon: FontAwesomeIcons.laptopCode,
              title: 'Web Apps',
              description:
                  " Dynamic, responsive, and user-friendly web applications, With expertise in both front-end and back-end development"),
        ),
      ]));
}
