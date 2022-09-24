import 'package:finwell/components/settings.dart';
import 'package:finwell/screens/components/Profile/tips.dart';
import 'package:finwell/screens/components/about_us.dart';
import 'package:finwell/screens/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';

import 'profile_menu.dart';
import 'profile_pic.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          ProfilePic(),
          SizedBox(height: 20),
          ProfileMenu(
            text: "My Account",
            icon: "assets/icons/User Icon.svg",
            press: () => {},
          ),
          ProfileMenu(
            text: "Tips and Tricks",
            icon: "assets/icons/Bell.svg",
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Tips();
              }));
            },
          ),
          ProfileMenu(
            text: "Settings",
            icon: "assets/icons/Settings.svg",
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Setting();
              }));
            },
          ),
          ProfileMenu(
            text: "About Us",
            icon: "assets/icons/Question mark.svg",
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return AboutUs();
              }));
            },
          ),
          ProfileMenu(
            text: "Log Out",
            icon: "assets/icons/Log out.svg",
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return WelcomeScreen();
              }));
            },
          ),
        ],
      ),
    );
  }
}
