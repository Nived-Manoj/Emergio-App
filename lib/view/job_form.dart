import 'package:emergio_app/view/career.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:emergio_app/view/contact.dart';
import 'package:emergio_app/view/courses.dart';
import 'package:emergio_app/view/home_screen.dart';

import 'package:emergio_app/view/login.dart';
import 'package:emergio_app/view/payments.dart';
import 'package:emergio_app/view/syllabus.dart';

class JobForm extends StatefulWidget {
  const JobForm({super.key});

  @override
  State<JobForm> createState() => _JobFormState();
}

class _JobFormState extends State<JobForm> {
  List<String> _category = [
    'UI/UX Developer ',
    'Python',
    'Social Media Manager',
    'Graphic Designer',
    "Hr Executive",
    "SEO Specialist",
    "Unity Game Developer",
    "Game Artist",
  ];
  String? _selectedValue;
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
          children: [Image.asset("assett/icons/logo.png")],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 15,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 330),
                        child: Text(
                          "Name",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 20),
                      child: TextField(
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Name",
                          labelText: "Name",
                        ),
                      ),
                    ),
                    Container(
                      height: 15,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 320),
                        child: Text(
                          "Contact",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 20),
                      child: TextField(
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Contact Number",
                          labelText: "Phone",
                        ),
                      ),
                    ),
                    Container(
                      height: 15,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 330),
                        child: Text(
                          "Email",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 20),
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Email",
                          labelText: "Email",
                        ),
                      ),
                    ),
                    Container(
                      height: 15,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 310),
                        child: Text(
                          "Position",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 20),
                      child: Container(
                        height: 65,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: DropdownButton(
                                hint: Text('Choose the position'),
                                value: _selectedValue,
                                onChanged: (newValue) {
                                  setState(() {
                                    _selectedValue = newValue;
                                  });
                                },
                                items: _category.map((Category) {
                                  return DropdownMenuItem(
                                    child: new Text(Category),
                                    value: Category,
                                  );
                                }).toList(),
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.zero,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      height: 15,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 310),
                        child: Text(
                          "Resume",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(right: 190),
                      child: ElevatedButton(
                          style: ButtonStyle(
                              elevation: MaterialStatePropertyAll(10),
                              backgroundColor: MaterialStatePropertyAll(
                                  Colors.greenAccent[700]),
                              fixedSize:
                                  MaterialStatePropertyAll(Size(180, 50))),
                          onPressed: () async {
                            final result =
                                await FilePicker.platform.pickFiles();
                          },
                          child: Text("Upload Resume",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold))),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.only(right: 250),
                      child: ElevatedButton(
                          style: ButtonStyle(
                              shape: MaterialStatePropertyAll(StadiumBorder()),
                              elevation: MaterialStatePropertyAll(10),
                              backgroundColor: MaterialStatePropertyAll(
                                  Colors.redAccent[400]),
                              fixedSize:
                                  MaterialStatePropertyAll(Size(120, 50))),
                          onPressed: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //       builder: (context) => ,
                            //     ));
                          },
                          child: Text("APPLY",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold))),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(
              height: 20,
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
            ),
          ],
        ),
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
