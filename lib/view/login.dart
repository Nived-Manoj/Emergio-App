import 'package:emergio_app/view/home_screen.dart';
import 'package:emergio_app/view/register.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
              height: 900,
              child: Image.asset(
                "assett/images/login1.jpg",
                fit: BoxFit.fitHeight,
              )),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 110),
                child: Container(
                  height: 180,
                  child: Lottie.asset(
                    "assett/animation/Login.json",
                    repeat: false,
                  ),
                ),
              ),
              Text(
                "Login to your account !",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  //  controller: _emailcontroller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Email",
                    labelText: "Email",
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  obscureText: true,
                  //controller: _passcontroller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Password",
                    labelText: "Password",
                  ),
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.orange),
                      fixedSize: MaterialStatePropertyAll(Size(180, 50))),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(),
                        ));
                  },
                  child: Text("Login",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold))),
              TextButton(onPressed: () {}, child: Text("Forgot Password ?")),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?"),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Register(),
                            ));
                      },
                      child: Text("Register")),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
