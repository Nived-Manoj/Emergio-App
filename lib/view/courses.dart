import 'package:emergio_app/view/career.dart';
import 'package:emergio_app/view/contact.dart';
import 'package:emergio_app/view/home_screen.dart';
import 'package:emergio_app/view/login.dart';
import 'package:emergio_app/view/payments.dart';
import 'package:emergio_app/view/syllabus.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:quickalert/quickalert.dart';
import 'package:quickalert/utils/images.dart';
import 'package:url_launcher/url_launcher.dart';

class Courses extends StatelessWidget {
  Courses({super.key});
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 400,
                  child: Image.asset(
                    "assett/images/course.jpg",
                    fit: BoxFit.fitHeight,
                  ),
                ),
                Column(children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 185, right: 165),
                    child: Text("Our Courses",
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w500,
                            color: Colors.white)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                        "Unlock your potential with our expert-led courses. Dive into the world of game development, designing, programming through hands-on learning and industry insights. From beginners to advanced learners, we're here to fuel your creativity and skill advancement.",
                        style: TextStyle(fontSize: 17, color: Colors.white)),
                  ),
                ])
              ],
            ),
            // courses
            SizedBox(
              height: 50,
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      height: 585,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 30),
                        child: Column(
                          children: [
                            Image.asset("assett/images/hrm.jpg"),
                            SizedBox(
                              height: 10,
                            ),
                            Text("Human Resource Management",
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black)),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 5,
                              ),
                              child: Text(
                                "Nurturing organizational talent. Explore our courses for insights into recruitment, employee management,performance optimization, and compliance strategies.",
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, top: 15),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.orangeAccent[400],
                    child: Text(
                      "9.0",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      height: 420,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 30),
                        child: Column(
                          children: [
                            Image.asset("assett/images/Uiux.jpg"),
                            SizedBox(
                              height: 10,
                            ),
                            Text("UI/UX",
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black)),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 5,
                              ),
                              child: Text(
                                "Designing user-friendly digital journeys. Join our courses to master interface design and user experience strategies, creating engaging digital landscapes.",
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, top: 10),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.orangeAccent[400],
                    child: Text(
                      "9.3",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(
              height: 30,
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      height: 600,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 30),
                        child: Column(
                          children: [
                            Image.asset("assett/images/Dm.jpg"),
                            Divider(thickness: 2),
                            SizedBox(
                              height: 10,
                            ),
                            Text("Digital Marketing",
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black)),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 5,
                              ),
                              child: Text(
                                "Strategic, data-driven promotion. Our courses cover social media,SEO,content crreation, and analytics, empowering you to  navigate today's digital landscape and drive results.",
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, top: 10),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.orangeAccent[400],
                    child: Text(
                      "8.9",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(
              height: 60,
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      height: 470,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 30),
                        child: Column(
                          children: [
                            Image.asset("assett/images/G devlp.jpg"),
                            SizedBox(
                              height: 20,
                            ),
                            Text("Game Development",
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black)),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 5,
                              ),
                              child: Text(
                                "Craft gaming worlds from imagination to reality. Our courses guide you through  every step of game dvelopment, unlocking the skills to bring your ideas to life.",
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, top: 10),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.orangeAccent[400],
                    child: Text(
                      "8.9",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(
              height: 30,
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      height: 450,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 30),
                        child: Column(
                          children: [
                            Image.asset("assett/images/python.jpg"),
                            SizedBox(
                              height: 20,
                            ),
                            Text("Python",
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black)),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 5,
                              ),
                              child: Text(
                                "The language of possibilites. Join our courses to explore its simplicity and versatility in web development, AI,data analysis,and automation.",
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, top: 10),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.orangeAccent[400],
                    child: Text(
                      "9.5",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(
              height: 30,
            ),

            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      height: 595,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 30),
                        child: Column(
                          children: [
                            Image.asset("assett/images/game.jpg"),
                            SizedBox(
                              height: 20,
                            ),
                            Text("Game Art",
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black)),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 5,
                              ),
                              child: Text(
                                "Where imagination takes from. Enroll in our courses to master visual storytelling, character design, and worl creation, shaping the essence of gaming experiences.",
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, top: 10),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.orangeAccent[400],
                    child: Text(
                      "9.4",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(
              height: 40,
            ),
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(Colors.orangeAccent[700])),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Syllabus(),
                      ));
                },
                child: Text(
                  "Download Syllabus",
                  style: TextStyle(color: Colors.white),
                )),
            SizedBox(
              height: 40,
            ),
            //Details last container
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
                      height: 30,
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
            ),
          ],
        ),
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
