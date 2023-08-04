import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:radical_career_transition_services/screens/about_screen.dart';
import 'package:radical_career_transition_services/screens/analyze_screen.dart';
import 'package:radical_career_transition_services/screens/assess_screen.dart';
import 'package:radical_career_transition_services/screens/career_screen.dart';
import 'package:radical_career_transition_services/screens/contact_screen.dart';
import 'package:radical_career_transition_services/screens/define_screen.dart';
import 'package:radical_career_transition_services/screens/home_screen.dart';
import 'package:radical_career_transition_services/screens/information_one_screen.dart';
import 'package:radical_career_transition_services/screens/initiate_screen.dart';
import 'package:radical_career_transition_services/screens/launch_screen.dart';
import 'package:radical_career_transition_services/screens/radical_screen.dart';
import 'package:radical_career_transition_services/screens/research_screen.dart';
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
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id: (context) => const HomeScreen(),
        WelcomeScreen.id: (context) => const WelcomeScreen(),
        ResearchScreen.id: (context) => const ResearchScreen(),
        ResearchScreen.id: (context) => const ResearchScreen(),
        AssessScreen.id: (context) => const AssessScreen(),
        DefineScreen.id: (context) => const DefineScreen(),
        InitiateScreen.id: (context) => const InitiateScreen(),
        AnalyzeScreen.id: (context) => const AnalyzeScreen(),
        LaunchScreen.id: (context) => const LaunchScreen(),
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
