import 'package:emergio_app/view/home_screen.dart';
import 'package:emergio_app/view/register.dart';
import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnBoardingSlider(
        headerBackgroundColor: Colors.black,
        finishButtonText: 'Register',
        onFinish: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Register(),
            ),
          );
        },
        finishButtonStyle: FinishButtonStyle(
          backgroundColor: Colors.orangeAccent[700],
        ),
        skipTextButton: Text(
          'Skip',
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
        trailing: Text(
          'Skip',
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
        trailingFunction: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomeScreen(),
            ),
          );
        },
        centerBackground: true,
        pageBackgroundColor: Colors.black,
        background: [
          Image.asset('assett/images/obg.jpeg'),
          Image.asset('assett/images/onbg.jpg'),
          Image.asset('assett/images/onbo1.jpg'),
        ],
        totalPage: 3,
        speed: 1.8,
        pageBodies: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 280,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30.0),
                  child: Text("Play, Learn, \nand Build \nGames",
                      style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.w600,
                          color: Colors.white)),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    right: 80,
                  ),
                  child: Text("- All in One \n  Place",
                      style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: Colors.orangeAccent[400])),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 330,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 69),
                  child: Text("Dive into the",
                      style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.w600,
                          color: Colors.white)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 50),
                  child: Text("Ultimate Gaming \nUniverse",
                      style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: Colors.orangeAccent[400])),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 390,
                ),
                Text("Craft Your Own",
                    style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.w600,
                        color: Colors.white)),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 80),
                  child: Text("Adventure",
                      style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: Colors.orangeAccent[400])),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
