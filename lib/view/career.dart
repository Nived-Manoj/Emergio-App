import 'package:emergio_app/view/contact.dart';
import 'package:emergio_app/view/courses.dart';
import 'package:emergio_app/view/home_screen.dart';
import 'package:emergio_app/view/job_form.dart';
import 'package:emergio_app/view/login.dart';
import 'package:emergio_app/view/login_error.dart';
import 'package:emergio_app/view/payments.dart';
import 'package:emergio_app/view/syllabus.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:quickalert/models/quickalert_animtype.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/utils/images.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';
import 'package:url_launcher/url_launcher.dart';

class Career extends StatelessWidget {
  Career({super.key});
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    List courses = [
      "Game Development",
      "Digital Marketing",
      "Human Resource Management",
      "UI/UX",
      "Python",
      "Game Artist"
    ];
    List avatar = [
      AssetImage("assett/images/benin.jpg"),
      AssetImage("assett/images/basith.jpg"),
      AssetImage(
        "assett/images/nisha.jpg",
      ),
      AssetImage(
        "assett/images/greeshma.jpg",
      ),
      AssetImage(
        "assett/images/nayana.jpg",
      ),
      AssetImage(
        "assett/images/vishnu.png",
      ),
    ];
    List tutors = [
      "Benin P John",
      "Abdul Basith",
      "Nisha Chandran",
      "Greeshma M",
      "Nayana Mohan",
      "Vishnu MP"
    ];
    List description = [
      "Our game development tutors are industry veterans, passionate about gaming and equipped with vast experience. They provide personalized guidance, empowering you to master game creation from coding to design.",
      "Our digital marketing tutors are industry experts immersed in the dynamic digital realm. They offer tailored guidance in social media, SEO, content creation, and analytics, empowering you for success.",
      "Our HRM tutors are seasoned professionals with expertise in recruitment, training, and compliance. They mentor and prepare you for effective people management within organizations.",
      "Our UI/UX tutors are industry experts in crafting user-friendly digital experiences. They guide you through design principles and cutting-edge tools, empowering you to create intuitive interfaces",
      "Our Python tutors are coding experts, diving into its versatility for web, data, AI, and automation. They provide hands-on training for mastering this powerful language.",
      "Our game art tutors are visual storytelling experts. They guide you in character design, environments, and animation, empowering you to craft captivating game visuals.",
    ];

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
                  height: 500,
                  child: Image.asset(
                    "assett/images/career bg.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
                Column(children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 260, right: 125),
                    child: Text("Join Our Team",
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w500,
                            color: Colors.white)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                        "Meet the driving force behind our success-the diverse, passionate individuals who make up our team. Committed to excellence, innovation, and collaboration, our team brings expertise from various fields to create impactful solutions. Get to know the faces behind our collective dedication todelivering top-tier",
                        style: TextStyle(fontSize: 17, color: Colors.white)),
                  ),
                ])
              ],
            ),
            SizedBox(
              height: 50,
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  height: 590,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 30),
                    child: Column(
                      children: [
                        Stack(children: [
                          Image.asset("assett/images/career.jpg"),
                          InkWell(
                            child: Container(
                              height: 30,
                              width: 100,
                              color: Colors.pinkAccent[400],
                              child: Center(
                                  child: Text(
                                "APPLY NOW",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              )),
                            ),
                            onTap: () {
                              if (FirebaseAuth.instance.currentUser != null) {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => JobForm(),
                                    ));
                              } else {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => LoginAgain(),
                                    ));
                              }
                            },
                          )
                        ]),
                        Divider(
                          thickness: 2,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("UI/UX Developer",
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
                            "We are hiring UI/UX Developer with 2+ year experience...",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  height: 590,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 30),
                    child: Column(
                      children: [
                        Stack(children: [
                          Image.asset("assett/images/career.jpg"),
                          InkWell(
                            child: Container(
                              height: 30,
                              width: 100,
                              color: Colors.pinkAccent[400],
                              child: Center(
                                  child: Text(
                                "APPLY NOW",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              )),
                            ),
                            onTap: () {
                              if (FirebaseAuth.instance.currentUser != null) {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => JobForm(),
                                    ));
                              } else {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => LoginAgain(),
                                    ));
                              }
                            },
                          )
                        ]),
                        Divider(
                          thickness: 2,
                        ),
                        SizedBox(
                          height: 10,
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
                            "We are hiring Python Developer with 2+ year experience...",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  height: 590,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 30),
                    child: Column(
                      children: [
                        Stack(children: [
                          Image.asset("assett/images/career.jpg"),
                          InkWell(
                            child: Container(
                              height: 30,
                              width: 100,
                              color: Colors.pinkAccent[400],
                              child: Center(
                                  child: Text(
                                "APPLY NOW",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              )),
                            ),
                            onTap: () {
                              if (FirebaseAuth.instance.currentUser != null) {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => JobForm(),
                                    ));
                              } else {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => LoginAgain(),
                                    ));
                              }
                            },
                          )
                        ]),
                        Divider(
                          thickness: 2,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Social Media Manager",
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
                            "We are hiring Social Media Manager with 2+ year experience...",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  height: 590,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 30),
                    child: Column(
                      children: [
                        Stack(children: [
                          Image.asset("assett/images/career.jpg"),
                          InkWell(
                            child: Container(
                              height: 30,
                              width: 100,
                              color: Colors.pinkAccent[400],
                              child: Center(
                                  child: Text(
                                "APPLY NOW",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              )),
                            ),
                            onTap: () {
                              if (FirebaseAuth.instance.currentUser != null) {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => JobForm(),
                                    ));
                              } else {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => LoginAgain(),
                                    ));
                              }
                            },
                          )
                        ]),
                        Divider(
                          thickness: 2,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Graphic Designer",
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
                            "We are hiring Graphics Designer with 2+ year experience...",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  height: 590,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 30),
                    child: Column(
                      children: [
                        Stack(children: [
                          Image.asset("assett/images/career.jpg"),
                          InkWell(
                            child: Container(
                              height: 30,
                              width: 100,
                              color: Colors.pinkAccent[400],
                              child: Center(
                                  child: Text(
                                "APPLY NOW",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              )),
                            ),
                            onTap: () {
                              if (FirebaseAuth.instance.currentUser != null) {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => JobForm(),
                                    ));
                              } else {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => LoginAgain(),
                                    ));
                              }
                            },
                          )
                        ]),
                        Divider(
                          thickness: 2,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Hr Executive",
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
                            "We are hiring HR Executive with 2+ year experience...",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  height: 590,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 30),
                    child: Column(
                      children: [
                        Stack(children: [
                          Image.asset("assett/images/career.jpg"),
                          InkWell(
                            child: Container(
                              height: 30,
                              width: 100,
                              color: Colors.pinkAccent[400],
                              child: Center(
                                  child: Text(
                                "APPLY NOW",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              )),
                            ),
                            onTap: () {
                              if (FirebaseAuth.instance.currentUser != null) {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => JobForm(),
                                    ));
                              } else {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => LoginAgain(),
                                    ));
                              }
                            },
                          )
                        ]),
                        Divider(
                          thickness: 2,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("SEO Specialist",
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
                            "We are hiring SEO specialist with 2+ year experience...",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  height: 590,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 30),
                    child: Column(
                      children: [
                        Stack(children: [
                          Image.asset("assett/images/career.jpg"),
                          InkWell(
                            child: Container(
                              height: 30,
                              width: 100,
                              color: Colors.pinkAccent[400],
                              child: Center(
                                  child: Text(
                                "APPLY NOW",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              )),
                            ),
                            onTap: () {
                              if (FirebaseAuth.instance.currentUser != null) {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => JobForm(),
                                    ));
                              } else {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => LoginAgain(),
                                    ));
                              }
                            },
                          )
                        ]),
                        Divider(
                          thickness: 2,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Unity Game Developer",
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
                            "We are hiring Unity Game Developer with 2+ year experience...",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  height: 590,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 30),
                    child: Column(
                      children: [
                        Stack(children: [
                          Image.asset("assett/images/career.jpg"),
                          InkWell(
                            child: Container(
                              height: 30,
                              width: 100,
                              color: Colors.pinkAccent[400],
                              child: Center(
                                  child: Text(
                                "APPLY NOW",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              )),
                            ),
                            onTap: () {
                              if (FirebaseAuth.instance.currentUser != null) {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => JobForm(),
                                    ));
                              } else {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => LoginAgain(),
                                    ));
                              }
                            },
                          )
                        ]),
                        Divider(
                          thickness: 2,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Game Artist",
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
                            "We are hiring Game Artist with 2+ year experience...",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            // //search
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: TextField(
            //     decoration: InputDecoration(
            //         hintText: "search",
            //         suffixIcon: Icon(Icons.search),
            //         border: OutlineInputBorder(
            //             borderRadius: BorderRadius.circular(20))),
            //   ),
            // ),
            // SizedBox(
            //   height: 10,
            // ),

            Padding(
              padding: const EdgeInsets.only(right: 260),
              child: Text(
                "Our Tutors",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: 20,
            ),

            ///ListView

            SizedBox(
              height: 1110,
              child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: courses.length,
                itemBuilder: (BuildContext context, int index) => ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    foregroundImage: avatar[index],
                  ),
                  title: Text(
                    tutors[index],
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 22,
                        color: Colors.deepOrangeAccent[200]),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        courses[index],
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            color: Colors.pinkAccent[200]),
                      ),
                      Text(
                        description[index],
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 30,
            ),

            //last container
            SizedBox(
              height: 40,
            ),
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
            ),
          ],
        ),
      ),
      //Sidebar Menu
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
