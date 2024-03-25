import 'package:emergio_app/view/login.dart';
import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Create your account !",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
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
                      builder: (context) => Login(),
                    ));
              },
              child: Text("Sign up",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold))),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Already have an account?"),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Login(),
                        ));
                  },
                  child: Text(
                    "Log In",
                  )),
            ],
          )
        ],
      ),
    );
  }
}
