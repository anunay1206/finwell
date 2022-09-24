import 'package:finwell/screens/login/login_screen.dart';
import 'package:finwell/screens/signup/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:finwell/screens/welcome/components/background.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:finwell/components/rounded_button.dart';
import 'package:finwell/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Welcome to FINWELL",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 24
              ),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            SvgPicture.asset(
              "assets/icons/finwell_logo1.svg",
              height: size.height * 0.40,
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            RoundedButton(
              text: "LOGIN",
              press: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return LoginScreen();
                  },
                ));
              },
            ),
            RoundedButton(
              text: "SIGNUP",
              color: kPrimaryLightColor,
              textColor: Colors.black,
              press: () {
                Navigator.push(context,MaterialPageRoute(
                  builder: (context){
                    return SignupScreen();
                  },
                ));
              },
            )
          ],
        ),
      ),
    );
  }
}
