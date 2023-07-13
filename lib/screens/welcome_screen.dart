import 'package:flutter/material.dart';
import 'package:radical_career_transition_services/models/menu.dart';
import 'package:radical_career_transition_services/screens/career_screen.dart';
import 'package:radical_career_transition_services/screens/radical_screen.dart';
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
        backgroundColor: const Color(kDarkestBlue),
        appBar: AppBar(
          // leading: const Icon(Icons.arrow_back),
          backgroundColor: const Color(kDarkestBlue),
          title: const FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              'Welcome',
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
                color: Colors.tealAccent,
              ),
              onPressed: () {
                Navigator.pushNamed(context, SettingsScreen.id);
              },
            ),
          ],
        ),
        body: ListView.separated(
          padding: const EdgeInsets.all(8),
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
                          builder: (context) => const RadicalScreen(),
                        ),
                      );
                    }
                    break;
                  case 1:
                    {
                    Navigator.push(
                    context,
                    MaterialPageRoute(
                    builder: (context) => const CareerScreen(),
                    ),
                    }
                    break;
                  case 2:
                    {
                    Navigator.push(
                    context,
                    MaterialPageRoute(
                    builder: (context) => const TransitionScreen(),
                    ),
                    }
                    break;
                  case 3:
                    {
                    Navigator.push(
                    context,
                    MaterialPageRoute(
                    builder: (context) => const ServicesScreen(),
                    ),
                    }
                    break;
                  default:
                    {
                      print('Default');
                    }
                    break;
                } //switch
                print('This is the index: $index');
              },
              child: Container(
                decoration: styleBoxDecoration,
                height: 90,
                // color: Colors.white,
                // color: Colors.amber[colorCodes[index]],
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      menuData[index],
                      style:
                          const TextStyle(color: Color(kFontColor), fontFamily: kFontTypeForApp, fontSize: kContainerFontHeight, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left,
                    ),
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
    );
  }
}
