import 'package:emergio_app/view/home_screen.dart';
import 'package:flutter/material.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
              height: 900,
              child: Image.asset(
                "assett/images/bg1.jpg",
                fit: BoxFit.fitHeight,
              )),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 80, top: 260),
                child: Text("Play, Learn, \nand Build \nGames",
                    style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.w600,
                        color: Colors.white)),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 110),
                child: Text("- All in One \n Place",
                    style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Colors.orangeAccent[400])),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                    "Play your favorite titles, discover new ones, learn the craft of game development,and build your own games—all conveniently accessible under one digital roof.",
                    style: TextStyle(fontSize: 17, color: Colors.white)),
              ),
              SizedBox(
                height: 90,
              ),
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Colors.orangeAccent[700])),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(),
                        ));
                  },
                  child: Text(
                    "Next",
                    style: TextStyle(color: Colors.white),
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
