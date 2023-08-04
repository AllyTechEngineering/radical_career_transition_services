import 'package:flutter/material.dart';
import 'package:radical_career_transition_services/models/assess.dart';
import 'package:radical_career_transition_services/screens/radical_screen.dart';
import 'package:radical_career_transition_services/screens/services_screen.dart';
import 'package:radical_career_transition_services/screens/settings_screen.dart';
import 'package:radical_career_transition_services/screens/transition_screen.dart';
import '../models/menu.dart';
import '../utilities/constants.dart';
import 'career_screen.dart';
import 'contact_screen.dart';

class AssessScreen extends StatefulWidget {
  static String id = 'assess_screen';
  const AssessScreen({super.key});

  @override
  State<AssessScreen> createState() => _AssessScreenState();
}

class _AssessScreenState extends State<AssessScreen> {
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
              'Assess',
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
              image: AssetImage('images/CareerBackgroundManWithStairs.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 50, 120.0, 20.0),
            child: ListView(
              children: <Widget>[
                textSection,
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ContactScreen(),
                      ),
                    );
                  },
                  style: kStyleElevatedButton,
                  child: const Text('Contact us'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget textSection = const Padding(
    padding: EdgeInsets.all(20.0),
    child: Text(
        style: TextStyle(
          fontSize: 20.0,
          fontFamily: 'YsabeauInfant-ExtraBold.ttf',
          fontWeight: FontWeight.bold,
          color: Color(kDarkestBlue),
        ),
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
  );
}
