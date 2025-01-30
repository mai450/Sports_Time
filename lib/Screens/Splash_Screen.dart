import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sports_app/Screens/OnBoardingScreen/On_Boarding_Screen.dart';

import 'Home_Screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool isFirstRun = true;

  @override
  void initState() {
    super.initState();
    navigateToOnboarding();
    // Check if it is the first run of the app
    SharedPreferences.getInstance().then((prefs) {
      setState(() {
        isFirstRun = prefs.getBool('isFirstRun') ?? true;
      });
    });
  }

  void navigateToOnboarding() {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, '/onboarding');
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Column(
        children: [
          const SizedBox(height: 14),
          Image.asset('assets/sport time app.png',
              height: MediaQuery.of(context).size.height * .23,
              width: MediaQuery.of(context).size.width * .50),
          const SizedBox(height: 25),
        ],
      ),
      backgroundColor: const Color.fromARGB(255, 30, 30, 55),
      nextScreen: isFirstRun ? OnBoardingScreen() : home_screen(),
      splashIconSize: 250,
      duration: 3000,
      splashTransition: SplashTransition.fadeTransition,
      pageTransitionType: PageTransitionType.fade,
    );
  }
}
