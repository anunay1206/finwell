import 'package:finwell/screens/components/Profile/body.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  // static String routeName = '/profile';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        automaticallyImplyLeading: false,
        title: Center(
          child: Text(
            "Profile",
            style: TextStyle(
              color: Colors.black87,
            ),
          ),
        ),
      ),
      body: Body(),
    );
  }
}
