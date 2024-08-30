
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:url_launcher/url_launcher.dart';

String linkedIn = 'https://www.linkedin.com/in/omar-sherif-148421176/';
String resume = 'https://docs.google.com/document/d/1WixeQgKqjEEGoz8703RmT6YdQm2NgXwHQIs0U17tstc/edit?usp=sharing';


Widget projectsBuilder({
  required context,
  required String projectName,
  required String description,
  required String githubUrl,
}){
  return Container(
    //width: 300,
    //height: 270,
    clipBehavior: Clip.antiAliasWithSaveLayer,
    padding: const EdgeInsets.all(15),
    decoration: BoxDecoration(
      color: HexColor('#212121').withOpacity(0.6),
      borderRadius: BorderRadius.circular(8),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children:[
        Text(projectName,style: const TextStyle(color: Colors.white,fontSize: 25)),
        const SizedBox(height: 30,),
        Text(description,style: const TextStyle(color: Colors.white,fontSize: 18)),
        const SizedBox(height: 50,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: SizedBox(
                height: 40,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: HexColor('#8c11ec'),
                    ),
                    onPressed: (){},
                    //onPressed: () => showToast('Not published Yet', context),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(FontAwesomeIcons.googlePlay,size: 15,),
                        SizedBox(width: 5,),
                        Text('Play Store',style:TextStyle(color: Colors.white,fontSize: 15)),
                      ],
                    )
                ),
              ),
            ),
            const SizedBox(width: 10,),
            Expanded(
              child: SizedBox(
                height: 40,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: HexColor('#8c11ec'),
                  ),
                    onPressed: () => launchUrl(githubUrl),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(FontAwesomeIcons.github),
                        SizedBox(width: 5,),
                        Text('Github',style:TextStyle(color: Colors.white,fontSize: 15)),
                      ],
                    )
                ),
              ),
            ),
          ],
        )

      ],
    ),
  );
}

Widget servicesBuilder({
  required context,
  required String serviceName,
  required String description,
  required IconData serviceIcon,
}){
  return Container(
    width: 300,
    height: 270,
    clipBehavior: Clip.antiAliasWithSaveLayer,
    padding: const EdgeInsets.all(15),
    decoration: BoxDecoration(
      color: Colors.black.withOpacity(0.95),
      borderRadius: BorderRadius.circular(8),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children:[
        Icon(serviceIcon,size: 50,color: HexColor('#8c11ec'),),
        const SizedBox(height: 15,),
        Text(serviceName,style: const TextStyle(color: Colors.white,fontSize: 20)),
        const SizedBox(height: 15,),
        SizedBox(
          width: 250,
            child: Text(description,
              style: const TextStyle(color: Colors.white,fontWeight:FontWeight.bold,fontSize: 15),
              textAlign: TextAlign.center
            )),
      ],
    ),
  );
}

Widget skillBuilder(IconData skillIcon){
  return Container(
    width: 10,
    height: 50,
    decoration: BoxDecoration(
      color: HexColor('#212121').withOpacity(0.6),
      borderRadius: BorderRadius.circular(8),
    ),
    padding: const EdgeInsets.all(15),
    child: Icon(skillIcon,color: HexColor('#8c11ec'),size: 40,),
  );
}


void launchUrl(String url)async {
  await canLaunch(url) ?
    await launch(url) : throw "cannot launch " + url;
}

// void showToast (String msg,context){
//   return  FlutterToastr.show(
//       msg,
//       context,
//       backgroundColor: Colors.white,
//       textStyle: const TextStyle(color: Colors.black),
//       duration: 2,
//   );
// }

void pop (context){
  Navigator.pop(context);
}