import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:radical_career_transition_services/screens/about_screen.dart';
import 'package:radical_career_transition_services/screens/career_screen.dart';
import 'package:radical_career_transition_services/screens/contact_screen.dart';
import 'package:radical_career_transition_services/screens/information_one_screen.dart';
import 'package:radical_career_transition_services/screens/radical_screen.dart';
import 'package:radical_career_transition_services/screens/services_screen.dart';
import 'package:radical_career_transition_services/screens/settings_screen.dart';
import 'package:radical_career_transition_services/screens/transition_screen.dart';
import 'package:radical_career_transition_services/screens/welcome_screen.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MyRctsApp());
}

class MyRctsApp extends StatefulWidget {
  const MyRctsApp({super.key});

  @override
  State<MyRctsApp> createState() => _MyRctsAppState();
}

class _MyRctsAppState extends State<MyRctsApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => const WelcomeScreen(),
        AboutScreen.id: (context) => const AboutScreen(),
        ContactScreen.id: (context) => const ContactScreen(),
        InformationOneScreen.id: (context) => const InformationOneScreen(),
        RadicalScreen.id: (context) => const RadicalScreen(),
        CareerScreen.id: (context) => const CareerScreen(),
        TransitionScreen.id: (context) => const TransitionScreen(),
        ServicesScreen.id: (context) => const ServicesScreen(),
        SettingsScreen.id: (context) => const SettingsScreen(),
      },
    );
  }
} //class MyRctsApp
