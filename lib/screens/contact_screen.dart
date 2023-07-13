import 'package:flutter/material.dart';
import 'package:radical_career_transition_services/screens/settings_screen.dart';

import '../utilities/constants.dart';

class ContactScreen extends StatefulWidget {
  static String id = 'contact_screen';
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: kAppBarTitleShort,
      home: Scaffold(
        backgroundColor: const Color(kDarkestBlue),
        appBar: AppBar(
          backgroundColor: const Color(kDarkestBlue),
          title: const FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              'Contact',
              style: TextStyle(
                fontFamily: kFontTypeForApp,
                color: Color(kFontColor),
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
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pushNamed(context, SettingsScreen.id);
              },
            ),
          ],
        ),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/OceanBackgroundWithOutBackgroundImage.png'),
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
