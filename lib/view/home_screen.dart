import 'package:emergio_app/view/career.dart';
import 'package:emergio_app/view/contact.dart';
import 'package:emergio_app/view/courses.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          children: [Image.asset("assett/icons/logo.png")],
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
                      "assett/images/bg1.jpg",
                      fit: BoxFit.fitHeight,
                    )),
                Column(
                  children: [
                    Text("Play, Learn, and Build Games",
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                    Text("- All in One Place",
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.amberAccent)),
                  ],
                ),
              ],
            ),

            SizedBox(
              height: 40,
            ),
            Stack(
              children: [
                Container(
                    height: 500,
                    child: Image.asset("assett/images/gplay.jpg",
                        fit: BoxFit.fitHeight)),
                Padding(
                  padding: const EdgeInsets.only(left: 25, top: 25),
                  child: Container(
                    height: 30,
                    width: 150,
                    color: Colors.pinkAccent[400],
                    child: Center(
                      child: InkWell(
                        onTap: () {},
                        child: Text(
                          "ENQUIRE NOW",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 250, right: 90),
                      child: Text("WANNA PLAY A \n GAME",
                          style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                          "Ready for gaming thrills? Dive in now! Discover adventures,puzzles,and challenges awaiting your play.",
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.white,
                              fontWeight: FontWeight.w400)),
                    ),
                  ],
                ),
              ],
            ),

            SizedBox(
              height: 30,
            ),
            Stack(
              children: [
                Container(
                    height: 500,
                    child: Image.asset("assett/images/g dev.jpg",
                        fit: BoxFit.fitHeight)),
                Padding(
                  padding: const EdgeInsets.only(left: 25, top: 25),
                  child: Container(
                    height: 30,
                    width: 150,
                    color: Colors.greenAccent[700],
                    child: Center(
                      child: InkWell(
                        onTap: () {},
                        child: Text(
                          "ENQUIRE NOW",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 250, right: 9),
                      child: Text("WANNA DEVELOP A \n GAME",
                          style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 18, top: 34),
                      child: Text(
                          "Turn your game Ideas into reality! Join our game development courses and create captivating worlds",
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.white,
                              fontWeight: FontWeight.w500)),
                    ),
                  ],
                ),
              ],
            ),

            SizedBox(
              height: 30,
            ),
            //new break
            Center(
              child: Container(
                height: 30,
                width: 80,
                color: Colors.pinkAccent[200],
                child: Center(
                  child: Text(
                    "NEW",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text("Featured Courses",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                    color: Colors.black)),
            SizedBox(
              height: 60,
            ),
            Image.asset("assett/images/hrm.jpg"),
            SizedBox(
              height: 30,
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
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Nurturing organizational talent. Explore our courses for insights into recruitment, employee management,performance optimization, and compliance strategies.",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(height: 30),
            Image.asset("assett/images/Uiux.jpg"),
            SizedBox(
              height: 30,
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
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Designing user-friendly digital journeys. Join our courses to master interface design and user experience strategies, creating engaging digital landscapes.",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Image.asset("assett/images/Dm.jpg"),
            SizedBox(
              height: 30,
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
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Strategic, data-driven promotion. Our courses cover social media,SEO,content crreation, and analytics, empowering you to  navigate today's digital landscape and drive results.",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            //placements
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 130),
                  child: Container(
                    height: 45,
                    width: 300,
                    color: Colors.orangeAccent[700],
                    child: Center(
                      child: Text(
                        "OUR RECENT PLACEMENTS",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Image.asset(
                  "assett/images/lekshmi.png",
                  scale: 1,
                )
              ],
            ),
            SizedBox(height: 30),
            //Our popular courses break
            Center(
              child: Container(
                height: 30,
                width: 80,
                color: Colors.pinkAccent[200],
                child: Center(
                  child: Text(
                    "NEW",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),

            Text("Our Popular Courses",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                    color: Colors.black)),
            SizedBox(
              height: 60,
            ),
            Image.asset("assett/images/G devlp.jpg"),
            SizedBox(
              height: 30,
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
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Craft gaming worlds from imagination to reality. Our courses guide you through  every step of game dvelopment, unlocking the skills to bring your ideas to life.",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Image.asset("assett/images/python.jpg"),
            SizedBox(
              height: 30,
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
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "The language of possibilites. Join our courses to explore its simplicity and versatility in web development, AI,data analysis,and automation.",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Image.asset("assett/images/game.jpg"),
            SizedBox(
              height: 30,
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
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Text(
                "Where imagination takes from. Enroll in our courses to master visual storytelling, character design, and worl creation, shaping the essence of gaming experiences.",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(height: 30),
            Image.asset("assett/images/Uiux.jpg"),
            SizedBox(
              height: 30,
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
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Designing user-friendly digital journeys. Join our courses to master interface design and user experience strategies, creating engaging digital landscapes.",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            //Level up container
            Container(
              color: Colors.deepOrange[800],
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text("Ready to level up your \n tech career? ",
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.w500)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: CircleAvatar(
                          backgroundColor: Colors.black,
                          radius: 35,
                          child: Text(
                            "1",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      Text(
                        "Register for the Program",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: CircleAvatar(
                          backgroundColor: Colors.black,
                          radius: 35,
                          child:
                              Text("2", style: TextStyle(color: Colors.white)),
                        ),
                      ),
                      Text(
                        "Attend Our Free Precourses",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: CircleAvatar(
                          backgroundColor: Colors.black,
                          radius: 35,
                          child:
                              Text("3", style: TextStyle(color: Colors.white)),
                        ),
                      ),
                      Text(
                        "Crack our Selection Test",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: CircleAvatar(
                          backgroundColor: Colors.black,
                          radius: 35,
                          child:
                              Text("4", style: TextStyle(color: Colors.white)),
                        ),
                      ),
                      Text(
                        "Start Learning with Personal \n Training",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: CircleAvatar(
                          backgroundColor: Colors.black,
                          radius: 35,
                          child:
                              Text("5", style: TextStyle(color: Colors.white)),
                        ),
                      ),
                      Text(
                        "Get placed with high salary \n packages",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
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
                      height: 60,
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
                    Text(
                      "Home ",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Courses",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Career ",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Contact",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 60,
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
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        "Trans Asia Cyber Park, Infopark Phase 2, Infopark Sez, Phase||, Kochi,Kakkanad, Kerala 682303 ",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "hr@emergiotech.com",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "+91 88915 16767",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "+91 75940 88816",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
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
                    Text("emergiotech.com",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        )),
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
                          onTap: () {},
                        ),
                        InkWell(
                          child: Image.asset("assett/icons/instagram.png",
                              scale: 13, color: Colors.white70),
                          onTap: () {},
                        ),
                        InkWell(
                          child: Image.asset("assett/icons/social.png",
                              scale: 13, color: Colors.white70),
                          onTap: () {},
                        ),
                        InkWell(
                          child: Image.asset("assett/icons/linkedin.png",
                              scale: 13, color: Colors.white70),
                          onTap: () {},
                        ),
                        InkWell(
                          child: Image.asset("assett/icons/whatsapp.png",
                              scale: 13, color: Colors.white70),
                          onTap: () {},
                        ),
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
              child: Text(
                'Navigation Drawer',
                style: TextStyle(fontSize: 20, color: Colors.white),
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
            SizedBox(
              height: 390,
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
