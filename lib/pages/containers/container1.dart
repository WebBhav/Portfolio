import 'package:entry/entry.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:xpense_flutter_web/utils/colors.dart';
import 'package:xpense_flutter_web/utils/constants.dart';
import 'package:xpense_flutter_web/utils/styles.dart';
import 'package:url_launcher/url_launcher.dart';


class Container1 extends StatefulWidget {
  const Container1({Key? key}) : super(key: key);

  @override
  _Container1State createState() => _Container1State();
}

class _Container1State extends State<Container1> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileContainer1(),
      desktop: DesktopContainer1(),
    );
  }

  //================ MOBILE ===============

  Widget MobileContainer1() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: w! / 10, vertical: 20),
      child: Column(
        children: [
          Container(
            height: w! / 1.2,
            width: w! / 1.2,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(illustration1), fit: BoxFit.contain)),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Hello, \nWelcome to \nmy Portfolio',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: w! / 10, fontWeight: FontWeight.bold, height: 1),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'You\'ll find here all about Vaibhav Singhal',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.grey.shade600, fontSize: 16),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 45,
            child: ElevatedButton.icon(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(AppColors.primary)),
                onPressed: () {
                  // const url = 'https://www.linkedin.com/in/vaibhav-singhal-iit-ropar/';  
                  // launchUrl(url);
                  const url = 'https://drive.google.com/file/d/1PoYI3lo6J8Wio-4siVtokOY5xQgbsEOP/view?usp=drive_link';  
                  launch(url);
                },
                icon: Icon(Icons.arrow_drop_down),
                label: Text('Resume')),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            '— Click to visit',
            style: TextStyle(color: Colors.grey.shade600, fontSize: 16),
          )
        ],
      ),
    );
  }

  //============== DESKTOP =============

  Widget DesktopContainer1() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: w! / 10, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
              child: Container(
            // color: Colors.red,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hello, \nWelcome to \nmy Portfolio',
                  style: TextStyle(
                      fontSize: w! / 20,
                      fontWeight: FontWeight.bold,
                      height: 1),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'You\'ll find here all about Vaibhav Singhal',
                  style: TextStyle(color: Colors.grey.shade400, fontSize: 16),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                      height: 45,
                      child: ElevatedButton.icon(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(AppColors.primary)),
                          onPressed: () {
                            // const urlString = 'https://drive.google.com/file/d/1PoYI3lo6J8Wio-4siVtokOY5xQgbsEOP/view?usp=drive_link';
                            // final Uri url = Uri.parse(urlString);
                            // canLaunchUrl(url);

                            const url = 'https://drive.google.com/file/d/1PoYI3lo6J8Wio-4siVtokOY5xQgbsEOP/view?usp=drive_link';  
                            launch(url);
                          },
                          icon: Icon(Icons.arrow_drop_down),
                          label: Text('Resume')),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      '— Click to visit',
                      style:
                          TextStyle(color: Colors.grey.shade400, fontSize: 16),
                    )
                  ],
                ),
              ],
            ),
          )),
          Expanded(
            child: Container(
              height: 530,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(illustration1), fit: BoxFit.contain)),
            ),
          ),
        ],
      ),
    );
  }
}
