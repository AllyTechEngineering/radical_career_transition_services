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
import 'package:radical_career_transition_services/utilities/constants.dart';

class WelcomeScreen extends StatefulWidget {
  static String id = 'welcome_screen';
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
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
            padding: const EdgeInsets.fromLTRB(8.0, 50.0, 8.0, 25.0),
            child: ListView.separated(
              // padding: const EdgeInsets.all(8),
              itemCount: menuData.length,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {
                    switch (index) {
                      case 0:
                        {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ResearchScreen(),
                            ),
                          );
                        }
                        break;
                      case 1:
                        {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const AssessScreen(),
                            ),
                          );
                        }
                        break;
                      case 2:
                        {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const DefineScreen(),
                            ),
                          );
                        }
                        break;
                      case 3:
                        {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const InitiateScreen(),
                            ),
                          );
                        }
                        break;
                      case 4:
                        {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ConnectScreen(),
                            ),
                          );
                        }
                        break;
                      case 5:
                        {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const AnalyzeScreen(),
                            ),
                          );
                        }
                        break;
                      case 6:
                        {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LaunchScreen(),
                            ),
                          );
                        }
                        break;
                      case 7:
                        {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ContactScreen(),
                            ),
                          );
                        }
                        break;
                      default:
                        {
                          print('Default');
                        }
                        break;
                    } //switch
                  },
                  child: Container(
                    decoration: styleBoxDecoration,
                    height: 65.0,
                    width: 20.0,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20.0, 15.0, 8.0, 1.0),
                      child: Text(
                        menuData[index],
                        style: const TextStyle(color: Colors.white, fontFamily: kFontTypeForApp, fontSize: 20.0, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) => const Divider(
                height: 25.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
