import 'package:flutter/material.dart';

import 'constants.dart';

ElevatedButton radicalCareerTransitionServices(BuildContext context) {
  return ElevatedButton(
    style: kStyleElevatedButton,
    onPressed: () {
      // Navigator.pushNamed(context, ScreenRaceResultsAll.id, arguments: 10);
    },
    child: const Text(
      'Hobie Race Results',
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Color(kFontColor),
        fontSize: 20.0,
      ),
    ),
  );
} //Widget Build
