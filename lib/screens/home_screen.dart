import 'package:flutter/material.dart';
import 'package:radical_career_transition_services/models/menu.dart';
import 'package:radical_career_transition_services/screens/analyze_screen.dart';
import 'package:radical_career_transition_services/screens/assess_screen.dart';
import 'package:radical_career_transition_services/screens/career_screen.dart';
import 'package:radical_career_transition_services/screens/connect_screen.dart';
import 'package:radical_career_transition_services/screens/contact_screen.dart';
import 'package:radical_career_transition_services/screens/define_screen.dart';
import 'package:radical_career_transition_services/screens/initiate_screen.dart';
import 'package:radical_career_transition_services/screens/launch_screen.dart';
import 'package:radical_career_transition_services/screens/radical_screen.dart';
import 'package:radical_career_transition_services/screens/research_screen.dart';
import 'package:radical_career_transition_services/screens/services_screen.dart';
import 'package:radical_career_transition_services/screens/settings_screen.dart';
import 'package:radical_career_transition_services/screens/transition_screen.dart';
import 'package:radical_career_transition_services/screens/welcome_screen.dart';
import 'package:radical_career_transition_services/utilities/constants.dart';

import '../models/home.dart';
import '../utilities/widgets.dart';

class HomeScreen extends StatefulWidget {
  static String id = 'home_screen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
          backgroundColor: Colors.transparent,
          title: const FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              'Radical Career Services',
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
                Navigator.pushNamed(context, SettingsScreen.id);
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
                    Navigator.pushNamed(context, WelcomeScreen.id);
                  },
                  style: kStyleElevatedButton,
                  child: const Text(
                    'Click for More Information',
                    style: TextStyle(fontSize: 10.0),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  } //Widget

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
} //Class
