import 'package:emergio_app/view/home_screen.dart';
import 'package:emergio_app/view/register.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passcontroller = TextEditingController();
  String _email = "";
  String _password = "";
  void handleLogin() async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
          email: _email, password: _password);
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("User : ${userCredential.user!.email}"),
      ));
      showTopSnackBar(
        Overlay.of(context),
        const CustomSnackBar.success(
          message: ("User Logged in Successfully "),
        ),
      );

      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HomeScreen(),
          ));
    } catch (e) {
      showTopSnackBar(
        Overlay.of(context),
        const CustomSnackBar.error(
          message:
              'Something went wrong. Please check your credentials and try again',
        ),
      );
    }
  }

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
                Form(
                    key: _formkey,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: "Email",
                              labelText: "Email",
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Please Enter a valid email address";
                              }
                              return null;
                            },
                            onChanged: (value) {
                              setState(() {
                                _email = value;
                              });
                            },
                          ),
                        ),
                        SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: "Password",
                              labelText: "Password",
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Please Enter password";
                              }
                              return null;
                            },
                            onChanged: (value) {
                              setState(() {
                                _password = value;
                              });
                            },
                          ),
                        ),
                      ],
                    )),

                // Padding(
                //   padding: const EdgeInsets.all(10.0),
                //   child: TextField(
                //     keyboardType: TextInputType.emailAddress,
                //     //  controller: _emailcontroller,
                //     decoration: InputDecoration(
                //       border: OutlineInputBorder(),
                //       hintText: "Email",
                //       labelText: "Email",
                //     ),
                //   ),
                // ),
                // SizedBox(height: 10),
                // Padding(
                //   padding: const EdgeInsets.all(10.0),
                //   child: TextField(
                //     obscureText: true,
                //     //controller: _passcontroller,
                //     decoration: InputDecoration(
                //       border: OutlineInputBorder(),
                //       hintText: "Password",
                //       labelText: "Password",
                //     ),
                //   ),
                // ),
                SizedBox(height: 10),
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.orange),
                        fixedSize: MaterialStatePropertyAll(Size(180, 50))),
                    onPressed: () {
                      if (_formkey.currentState!.validate()) {
                        handleLogin();
                      }
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //       builder: (context) => HomeScreen(),
                      //     ));
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
      ),
    );
  }
}
