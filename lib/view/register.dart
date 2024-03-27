import 'package:emergio_app/view/login.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
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
                      "assett/animation/Register.json",
                      repeat: false,
                    ),
                  ),
                ),
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
                      labelText: "Email",
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextField(
                    obscureText: true,
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
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.orange),
                        fixedSize: MaterialStatePropertyAll(Size(180, 50))),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Login(),
                          ));
                    },
                    child: Text("Register",
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
          ],
        ),
      ),
    );
  }
}
