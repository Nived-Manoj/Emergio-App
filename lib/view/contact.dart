import 'package:emergio_app/view/career.dart';
import 'package:emergio_app/view/courses.dart';
import 'package:emergio_app/view/home_screen.dart';
import 'package:emergio_app/view/login.dart';
import 'package:emergio_app/view/payments.dart';
import 'package:emergio_app/view/syllabus.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Contact extends StatelessWidget {
  Contact({super.key});
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    Future<void> _launchUrl(String url) async {
      final Uri uri = Uri.parse(url);

      if (!await launchUrl(uri)) {
        throw 'Could not launch $uri';
      }
    }

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
      body: SingleChildScrollView(
        child: Column(children: [
          Stack(children: [
            Container(
              height: 400,
              child: Image.asset(
                "assett/images/contact.jpg",
                fit: BoxFit.cover,
              ),
            ),
            Column(children: [
              Padding(
                padding: const EdgeInsets.only(top: 230, right: 165),
                child: Text("Contact Us",
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w500,
                        color: Colors.white)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                    "Got questions? We're here to help. Reach out via email, phone, or our contact form. Let's connect and support your journey.",
                    style: TextStyle(fontSize: 17, color: Colors.white)),
              ),
            ]),
          ]),
          SizedBox(
            height: 20,
          ),
          //space for add gmap
          Container(
            height: 490,
            width: 380,
            color: Colors.black,
            child: Center(
              child: Text(
                "Google map\n we are working on it...",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),

          //
          //contact us
          Padding(
            padding: const EdgeInsets.only(right: 275),
            child: Text(
              "Contact Us",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Address",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.deepOrangeAccent[200]),
                ),
              ),
              Container(
                width: 290,
                child: Text(
                  "Trans Asia Cyber Park,Infopark Phase 2,Kochi, Kakkanad,Kerala 682303",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Phone",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.deepOrangeAccent[200]),
                ),
              ),
              Container(
                width: 310,
                child: Text(
                  "+91 75940 88816",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "E-mail",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.deepOrangeAccent[200]),
                ),
              ),
              Container(
                width: 310,
                child: Text(
                  "hr@emergiotech.com",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          //social link
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: 20,
              ),
              InkWell(
                  child: Image.asset("assett/icons/facebook.png", scale: 16),
                  onTap: () => _launchUrl(
                      'https://www.facebook.com/emergiogames?mibextid=ZbWKwL')),
              InkWell(
                child: Image.asset(
                  "assett/icons/instagram.png",
                  scale: 16,
                ),
                onTap: () => _launchUrl(
                    'https://www.instagram.com/emergio_games?igsh=MW1sNGJkaDB4b3Rt'),
              ),
              InkWell(
                  child: Image.asset(
                    "assett/icons/social.png",
                    scale: 16,
                  ),
                  onTap: () => _launchUrl(
                      'https://www.google.com/search?q=emergio+games+pvt+ltd+kochi&rlz=1C1ZKTG_enIN904IN904&oq=e&gs_lcrp=EgZjaHJvbWUqBggAEEUYOzIGCAAQRRg7MggIARBFGCcYOzISCAIQLhgnGK8BGMcBGIAEGIoFMgYIAxBFGDsyBggEEEUYQDIGCAUQRRg5Mg0IBhAAGIMBGLEDGIAEMg0IBxAAGIMBGLEDGIAE0gEJNzI5N2owajE1qAIAsAIA&sourceid=chrome&ie=UTF-8#rlimm=12764878485428070386&scso=_WuxdZd7TOLn5seMP9e-kwAU_9:34.400001525878906')),
              InkWell(
                  child: Image.asset(
                    "assett/icons/linkedin.png",
                    scale: 16,
                  ),
                  onTap: () => _launchUrl(
                      'https://www.linkedin.com/company/emergiogames/')),
              InkWell(
                  child: Image.asset(
                    "assett/icons/whatsapp.png",
                    scale: 16,
                  ),
                  onTap: () => _launchUrl('https://wa.me/918891516767')),
              SizedBox(
                width: 20,
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          //Leave reply
          Padding(
            padding: const EdgeInsets.only(right: 245),
            child: Text(
              "Leave a Reply",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Name",
                labelText: "Name",
              ),
            ),
          ),
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
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              maxLines: null,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Subject",
                labelText: "Subject",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              maxLines: null,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Message",
                labelText: "Message",
              ),
            ),
          ),
          SizedBox(height: 10),
          ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.orange),
                  fixedSize: MaterialStatePropertyAll(Size(150, 50))),
              onPressed: () {
                // Navigator.push(
                //     context,
                //     Mat
                //       builder
                //     ));
              },
              child: Text("Send",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold))),
          SizedBox(
            height: 60,
          ),

//last container
          Container(
            color: Colors.black,
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Image.asset(
                    "assett/icons/logo.png",
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    "  We Develope the Best",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "Infra Futura, Seaport- Airport Rd, Opp. Bharata Mata College, Thrikkakara, Kakkanad, Kochi,Kakkanad, Kerala 682039 ",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    "GET IN TOUCH ",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Monday to Friday ",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "9AM-7PM",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    "QUICK LINKS",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 30,
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
                        "Home ",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.white,
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      )),

                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Courses(),
                            ));
                      },
                      child: Text(
                        "Courses ",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.white,
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      )),

                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Career(),
                            ));
                      },
                      child: Text(
                        "Career ",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.white,
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      )),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Contact(),
                            ));
                      },
                      child: Text(
                        "Contact ",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.white,
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      )),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "CONTACT",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 30,
                  ),

                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10, bottom: 40),
                        child: Image.asset("assett/icons/pin.png",
                            scale: 25, color: Colors.white),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 370,
                        child: Text(
                          "Trans Asia Cyber Park, Infopark Phase 2, Infopark Sez, Phase||, Kochi,Kakkanad, Kerala 682303 ",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 75),
                        child: Image.asset("assett/icons/email.png",
                            scale: 25, color: Colors.white),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      InkWell(
                        child: Text(
                          "hr@emergiotech.com",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.white,
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                        onTap: () {
                          _launchUrl("mailto:hr@emergiotech.com");
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 90),
                        child: Image.asset("assett/icons/call.png",
                            scale: 25, color: Colors.white),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      InkWell(
                        child: Text(
                          "+91 88915 16767",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.white,
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                        onTap: () {
                          _launchUrl("tel:+91 8891516767");
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 95),
                        child: Image.asset("assett/icons/call.png",
                            scale: 25, color: Colors.white),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      InkWell(
                        child: Text(
                          "+91 75940 88816",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.white,
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                        onTap: () {
                          _launchUrl("tel:+91 7594088816");
                        },
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 30,
                  ),
                  Divider(
                    color: Colors.white,
                    indent: 20,
                    endIndent: 20,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text("© 2023 Copyrights",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      )),
                  SizedBox(
                    height: 8,
                  ),
                  InkWell(
                    child: Text("emergiotech.com",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.white,
                          fontSize: 18,
                          color: Colors.white,
                        )),
                    onTap: () =>
                        _launchUrl('https://www.emergiogames.com/index/'),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  //Social Links
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      InkWell(
                          child: Image.asset("assett/icons/facebook.png",
                              scale: 13, color: Colors.white70),
                          onTap: () => _launchUrl(
                              'https://www.facebook.com/emergiogames?mibextid=ZbWKwL')),
                      InkWell(
                        child: Image.asset("assett/icons/instagram.png",
                            scale: 13, color: Colors.white70),
                        onTap: () => _launchUrl(
                            'https://www.instagram.com/emergio_games?igsh=MW1sNGJkaDB4b3Rt'),
                      ),
                      InkWell(
                          child: Image.asset("assett/icons/social.png",
                              scale: 13, color: Colors.white70),
                          onTap: () => _launchUrl(
                              'https://www.google.com/search?q=emergio+games+pvt+ltd+kochi&rlz=1C1ZKTG_enIN904IN904&oq=e&gs_lcrp=EgZjaHJvbWUqBggAEEUYOzIGCAAQRRg7MggIARBFGCcYOzISCAIQLhgnGK8BGMcBGIAEGIoFMgYIAxBFGDsyBggEEEUYQDIGCAUQRRg5Mg0IBhAAGIMBGLEDGIAEMg0IBxAAGIMBGLEDGIAE0gEJNzI5N2owajE1qAIAsAIA&sourceid=chrome&ie=UTF-8#rlimm=12764878485428070386&scso=_WuxdZd7TOLn5seMP9e-kwAU_9:34.400001525878906')),
                      InkWell(
                          child: Image.asset("assett/icons/linkedin.png",
                              scale: 13, color: Colors.white70),
                          onTap: () => _launchUrl(
                              'https://www.linkedin.com/company/emergiogames/')),
                      InkWell(
                          child: Image.asset("assett/icons/whatsapp.png",
                              scale: 13, color: Colors.white70),
                          onTap: () =>
                              _launchUrl('https://wa.me/918891516767')),
                      SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ), //last container
        ]),
      ),
      //Sidebar Drawer
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
  }
}
