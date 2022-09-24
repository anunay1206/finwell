import 'package:flutter/material.dart';

class Tips extends StatelessWidget {
  const Tips({Key? key}) : super(key: key);

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
                "1.Utilise our services to track your daily expenses automatically without any manual work",
                style: TextStyle(
                    fontSize: 32,
                    color: Colors.green,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "2. Set savings objectives, and we'll offer advice on how to achieve them.",
                style: TextStyle(
                    fontSize: 32,
                    color: Colors.orange.shade400,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "3. You will naturally be able to reduce spending to control your expenses once you know your spending rate and anticipated monthly amount.",
                style: TextStyle(
                    fontSize: 32,
                    color: Colors.green,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "4. Decide on your financial priorities in step 5",
                style: TextStyle(
                    fontSize: 32,
                    color: Colors.orange.shade400,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "5. Pick the appropriate tools.",
                style: TextStyle(
                    fontSize: 32,
                    color: Colors.green,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "6. The market's only expenditure rate monitoring app, Finwell, is also the best in terms of other offerings.",
                style: TextStyle(
                    fontSize: 32,
                    color: Colors.orange.shade400,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "7. Invest and save money following your financial needs.",
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
