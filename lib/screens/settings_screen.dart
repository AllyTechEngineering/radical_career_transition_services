import 'package:flutter/material.dart';
import 'package:radical_career_transition_services/screens/radical_screen.dart';

import '../utilities/constants.dart';

class SettingsScreen extends StatefulWidget {
  static String id = 'settings_screen';
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: kAppBarTitleShort,
      home: Scaffold(
        backgroundColor: const Color(kDarkestBlue),
        appBar: AppBar(
          leading: BackButton(
            onPressed: () => Navigator.of(context).pop(),
          ),
          backgroundColor: const Color(kDarkestBlue),
          title: const FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              'Settings',
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
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, RadicalScreen.id);
                  },
                  child: const Text('Elevated Button'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
