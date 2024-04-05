import 'package:emergio_app/view/career.dart';
import 'package:emergio_app/view/contact.dart';
import 'package:emergio_app/view/courses.dart';
import 'package:emergio_app/view/home_screen.dart';
import 'package:emergio_app/view/login.dart';
import 'package:emergio_app/view/syllabus.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:quickalert/quickalert.dart';
import 'package:quickalert/utils/images.dart';

class Payments extends StatelessWidget {
  Payments({super.key});
  final FirebaseAuth _auth = FirebaseAuth.instance;

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
            padding: const EdgeInsets.only(top: 15, left: 15),
            child: Text(
              "Scan this QR Code for payments",
              style: TextStyle(fontSize: 25, color: Colors.black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Image.asset("assett/images/fees.png"),
          )
        ],
      ),
      //Sidebar Drawer
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
                QuickAlert.show(
                  onCancelBtnTap: () {
                    Navigator.pop(context);
                  },
                  onConfirmBtnTap: () {
                    _auth.signOut();
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Login(),
                      ),
                      (Route route) => false,
                    );
                  },
                  context: context,
                  type: QuickAlertType.confirm,
                  text: 'Do you want to logout',
                  titleAlignment: TextAlign.center,
                  textAlignment: TextAlign.center,
                  confirmBtnText: 'Yes',
                  cancelBtnText: 'No',
                  confirmBtnColor: Colors.white,
                  backgroundColor: Colors.black,
                  headerBackgroundColor: Colors.grey,
                  confirmBtnTextStyle: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  customAsset: AppAnim.info,
                  animType: QuickAlertAnimType.rotate,
                  barrierColor: Colors.blueGrey,
                  titleColor: Colors.white,
                  textColor: Colors.white,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
