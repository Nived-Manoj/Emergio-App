import 'package:emergio_app/view/career.dart';
import 'package:emergio_app/view/contact.dart';
import 'package:emergio_app/view/courses.dart';
import 'package:emergio_app/view/home_screen.dart';
import 'package:emergio_app/view/login.dart';
import 'package:emergio_app/view/login_error.dart';
import 'package:emergio_app/view/payments.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Syllabus extends StatelessWidget {
  Syllabus({super.key});
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    if (FirebaseAuth.instance.currentUser != null) {
      return Scaffold(
        backgroundColor: Colors.grey[300],
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
        body: Stack(
          children: [
            Container(
                height: 900,
                child: Image.asset(
                  "assett/images/syllabus.png",
                  fit: BoxFit.fill,
                )),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    "WE HELP TRANSFORM STUDENTS INTO CAREERS WHERE THEY CAN EARN BETTER",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "Emergio is a provider of skill development courses in IT, Designing, Management, and Accounting.",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "SYLLABUS",
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  child: Text(
                    "UI/UX",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  onTap: () {},
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  child: Text(
                    "Python",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  onTap: () {},
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  child: Text(
                    "Game Art",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  onTap: () {},
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  child: Text(
                    "Graphic Design",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  onTap: () {},
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  child: Text(
                    "Digital Marketing",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  onTap: () {},
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  child: Text(
                    "Game Development",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  onTap: () {},
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  child: Text(
                    "Human Resource Management ",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  onTap: () {},
                )
              ],
            ),
          ],
        ),
        endDrawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.black87,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.black26,
                      child: Image.asset("assett/icons/logo.png"),
                      radius: 50,
                    ),
                    Text(
                      'Emergio Games',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: const Text(' Home'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      ));
                },
              ),
              ListTile(
                leading: Icon(Icons.book),
                title: const Text(' Courses '),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Courses(),
                      ));
                },
              ),
              ListTile(
                leading: Icon(Icons.workspace_premium),
                title: const Text(' Career '),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Career(),
                      ));
                },
              ),
              ListTile(
                leading: Icon(Icons.phone),
                title: const Text(' Contact '),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Contact(),
                      ));
                },
              ),
              ListTile(
                leading: Icon(Icons.notes),
                title: const Text('Syllabus'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Syllabus(),
                      ));
                },
              ),
              ListTile(
                leading: Icon(Icons.payment),
                title: const Text('Fees/Payments'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Payments(),
                      ));
                },
              ),
              ListTile(
                leading: Icon(Icons.login),
                title: const Text('Login/Register'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Login(),
                      ));
                },
              ),
              SizedBox(
                height: 220,
              ),
              ListTile(
                leading: Icon(
                  Icons.logout,
                  color: Colors.redAccent,
                ),
                title: const Text('LogOut'),
                onTap: () {
                  _auth.signOut();
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Login(),
                    ),
                    (Route route) => false,
                  );
                },
              ),
            ],
          ),
        ),
      );
    } else {
      return LoginAgain();
    }
  }
}
