import 'package:emergio_app/view/career.dart';
import 'package:emergio_app/view/contact.dart';
import 'package:emergio_app/view/courses.dart';
import 'package:emergio_app/view/home_screen.dart';
import 'package:emergio_app/view/login.dart';
import 'package:emergio_app/view/payments.dart';
import 'package:flutter/material.dart';

class Syllabus extends StatelessWidget {
  const Syllabus({super.key});

  @override
  Widget build(BuildContext context) {
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
      body: Column(
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
          Text(
            "UI/UX",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Graphic Design",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Human Resource Management ",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Python",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Game Art",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Game Development",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Digital Marketing",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          )
        ],
      ),
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.black87,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
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
              height: 280,
            ),
            ListTile(
              leading: Icon(
                Icons.logout,
                color: Colors.redAccent,
              ),
              title: const Text('LogOut'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
