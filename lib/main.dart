import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:finwell/screens/home/home_widget.dart';
import 'package:finwell/splash.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:finwell/screens/welcome/welcome_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FINWELL',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: const AppBarTheme(
            backgroundColor: Colors.transparent, elevation: 0),
      ),
      home: AnimatedSplashScreen(
        backgroundColor: Colors.white,
        splash: SvgPicture.asset(
          "assets/icons/finwell_logo1.svg",
          height: 200,
          width: 200,
        ),
        splashTransition: SplashTransition.rotationTransition,
        duration: 1500,
        nextScreen: WelcomeScreen(),
      ),
    );
  }
}
