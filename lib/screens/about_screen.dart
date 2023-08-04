import 'package:flutter/material.dart';
import 'package:radical_career_transition_services/screens/settings_screen.dart';

import '../utilities/constants.dart';

class AboutScreen extends StatefulWidget {
  static String id = 'about_screen';
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: kAppBarTitleShort,
      home: Scaffold(
        backgroundColor: Colors.transparent,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_circle_left_outlined,
              color: Color(kLightBlue),
            ),
            iconSize: 40.0,
            onPressed: () => Navigator.of(context).pop(),
          ),
          backgroundColor: Colors.transparent,
          title: const FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              'About',
              style: TextStyle(
                fontFamily: kFontTypeForApp,
                color: Color(kLightBlue),
                fontSize: kAppBarFontHeight,
                fontWeight: FontWeight.bold,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.settings,
                color: Color(kLightBlue),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SettingsScreen(),
                  ),
                );
              },
            ),
          ],
        ),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/CareerBackgroundManWithStairsFaded40Percent.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Image.asset(
                    'images/blob-b9d4257.png',
                    width: logoWidthValue,
                    height: logoHeightValue,
                    fit: BoxFit.fitHeight,
                  ),
                ),
                // titleSection,
                // buttonSectionOne,
                // buttonSectionTwo,
                // buttonSectionThree,
                // socialMediaRow,
                // textSection,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
