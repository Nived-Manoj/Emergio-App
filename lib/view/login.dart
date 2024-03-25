import 'package:emergio_app/view/home_screen.dart';
import 'package:emergio_app/view/register.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
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
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              //controller: _passcontroller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Password",
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
                  child: Text("Sign Up")),
            ],
          )
        ],
      ),
    );
  }
}
