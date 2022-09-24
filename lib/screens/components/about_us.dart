import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Column(
            children: [
              Text("About Finwell",
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  )),
              SizedBox(
                height: 20,
              ),
              Text(
                "1. Your daily spending rate will be provided.",
                style: TextStyle(
                    fontSize: 32,
                    color: Colors.green,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "2. You may set up alerts and manage your daily spending.",
                style: TextStyle(
                    fontSize: 32,
                    color: Colors.orange.shade400,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "3. Your spending patterns will determine your monthly expense amount.",
                style: TextStyle(
                    fontSize: 32,
                    color: Colors.green,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "4. In a matter of seconds, daily transactions can be recorded.",
                style: TextStyle(
                    fontSize: 32,
                    color: Colors.orange.shade400,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "5. Additionally, you can group them into discrete and visible categories like Expenses: Food, Shopping, or Income (gifts, salaries).",
                style: TextStyle(
                    fontSize: 32,
                    color: Colors.green,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "6. Furthermore, it accepts all currencies",
                style: TextStyle(
                    fontSize: 32,
                    color: Colors.orange.shade400,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "7. One report to display your spending patterns.",
                style: TextStyle(
                    fontSize: 32,
                    color: Colors.green,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "8. Using easy-to-read graphs, you can see where your money is coming from and going.",
                style: TextStyle(
                    fontSize: 32,
                    color: Colors.orange.shade400,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
