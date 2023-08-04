import 'package:flutter/material.dart';
import 'package:radical_career_transition_services/screens/settings_screen.dart';
import 'package:url_launcher/url_launcher.dart';
import '../utilities/flutter_app_icons.dart';
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
              'Contact',
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
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.fromLTRB(8.0, 100.0, 8.0, 0.0),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Email: carrie.christiano@gmail.com',
                          style: TextStyle(
                            fontFamily: 'YsabeauInfant-Black.ttf',
                            fontWeight: FontWeight.bold,
                            fontSize: 15.0,
                            color: Color(kDarkestBlue),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Phone: 919.665.9916',
                          style: TextStyle(
                            fontFamily: 'YsabeauInfant-Black.ttf',
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            color: Color(kDarkestBlue),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        width: 200.0,
                        child: ElevatedButton(
                          style: kStyleElevatedButton,
                          onPressed: () {
                            _launchURLBrowserContactForm();
                          },
                          child: Text(
                            'Contact Form',
                            style: TextStyle(
                              fontFamily: 'YsabeauInfant-Black.ttf',
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        width: 200.0,
                        child: ElevatedButton.icon(
                          style: kStyleElevatedButton,
                          onPressed: () {
                            _launchURLBrowserLinkedIn();
                          },
                          icon: Icon(MyFlutterApp.linkedin_circled),
                          label: Text(
                            'Linkedin',
                            style: TextStyle(
                              fontFamily: 'YsabeauInfant-Black.ttf',
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0,
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  _launchURLBrowserLinkedIn() async {
    var url = Uri.parse(kRctsLinkedInUrl);
    if (await canLaunchUrl(url)) {
      print('Entered into the IF part of the URL launch');
      await launchUrl(url);
    } else {
      // throw 'Could not launch $url';
      print('Entered into the throw');
      throw showDialog(
        context: context,
        builder: (_) => const AlertDialog(
          title: Text(
            'No Internet connection',
            style: TextStyle(color: Colors.redAccent),
          ),
          elevation: 20,
          backgroundColor: Colors.black,
        ),
      );
    } //else
  } //_launchURLBrowser

  _launchURLBrowserContactForm() async {
    var url = Uri.parse(kRctsUrl);
    if (await canLaunchUrl(url)) {
      print('Entered into the IF part of the URL launch');
      await launchUrl(url);
    } else {
      // throw 'Could not launch $url';
      print('Entered into the throw');
      throw showDialog(
        context: context,
        builder: (_) => const AlertDialog(
          title: Text(
            'No Internet connection',
            style: TextStyle(color: Colors.redAccent),
          ),
          elevation: 20,
          backgroundColor: Colors.black,
        ),
      );
    } //else
  } //_launchURLBrowser
} //class
