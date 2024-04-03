import 'package:emergio_app/view/home_screen.dart';
import 'package:emergio_app/view/login.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoginAgain extends StatelessWidget {
  const LoginAgain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        title: Row(
          children: [
            InkWell(
                child: Image.asset("assett/icons/logo.png"),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      ));
                }),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
              child: Lottie.asset(
            "assett/animation/Error animation.json",
            repeat: false,
          )),
          Text(
            "OOPS !",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Text(
            "Please login to use this feature",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 50,
          ),
          ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.orange),
                fixedSize: MaterialStatePropertyAll(Size(200, 50))),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Login(),
                  ));
            },
            child: Text("Login to Continue",
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
          ),
          TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ));
              },
              child: Text(
                "Back to Home",
                style: TextStyle(decoration: TextDecoration.underline),
              )),
        ],
      ),
    );
  }
}
