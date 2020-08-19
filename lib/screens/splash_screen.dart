import 'package:flutter/material.dart';

import 'package:majillano_media/screens/onboarding_screens.dart';
import 'package:splashscreen/splashscreen.dart';

class WelcomeSplashScreen extends StatefulWidget {
  @override
  _WelcomeSplashScreenState createState() => _WelcomeSplashScreenState();
}

class _WelcomeSplashScreenState extends State<WelcomeSplashScreen> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 5,
      navigateAfterSeconds: OnBoardingScreen(),
      image: Image.asset('assets/images/1.jpg'),
      photoSize: 120.0,
      loaderColor: Colors.transparent,
      //Color.fromARGB(255, 236, 34, 40),
      loadingText: Text(
        'أهلا بك في ماجلانو ميديا',
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 236, 34, 40),
        ),
      ),
    );
  }
}
