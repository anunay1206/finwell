import 'package:finwell/constants.dart';
import 'package:finwell/screens/home/home_widget.dart';
import 'package:finwell/screens/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:finwell/components/reusable_widget.dart';

class Body extends StatelessWidget {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        height: size.height,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              top: 0,
              left: 0,
              child: Image.asset(
                "assets/images/main_top.png",
                width: size.width * 0.2,
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Image.asset(
                "assets/images/main_bottom.png",
                width: size.width * .15,
              ),
            ),
            Container(
              margin: EdgeInsets.all(defaultPadding),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "LOGIN",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 25),
                  ),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  SvgPicture.asset(
                    "assets/icons/finwell_logo1.svg",
                    height: size.height * 0.40,
                  ),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    width: size.width * 0.8,
                    decoration: BoxDecoration(
                        color: kPrimaryLightColor,
                        borderRadius: BorderRadius.circular(29)),
                    child: Column(
                      children: [
                        // TextFormField(
                        //   controller: _emailTextController,
                        //   decoration: InputDecoration(
                        //     icon: Icon(
                        //       Icons.person,
                        //       color: kPrimaryColor,
                        //     ),
                        //     hintText: 'Enter Your Email',
                        //     border: InputBorder.none,
                        //   ),
                        // ),
                        reusableTextField("Enter your Email", Icons.person,
                            false, _emailTextController)
                      ],
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.005,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    width: size.width * 0.8,
                    decoration: BoxDecoration(
                        color: kPrimaryLightColor,
                        borderRadius: BorderRadius.circular(29)),
                    child: Column(
                      children: [
                        // TextFormField(
                        //   controller: _passwordTextController,
                        //   decoration: InputDecoration(
                        //     icon: Icon(
                        //       Icons.lock,
                        //       color: kPrimaryColor,
                        //     ),
                        //     hintText: 'Password',
                        //     border: InputBorder.none,
                        //   ),
                        // ),
                        reusableTextField("Enter Password", Icons.lock, true,
                            _passwordTextController)
                      ],
                    ),
                  ),
                  firebaseUIButton(context, "LOGIN", () {
                    FirebaseAuth.instance
                        .signInWithEmailAndPassword(
                            email: _emailTextController.text,
                            password: _passwordTextController.text)
                        .then((value) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeWidget()));
                    }).onError((error, stackTrace) {
                      print("Error ${error.toString()}");
                    });
                  }),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
