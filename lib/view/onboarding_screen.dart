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
                  height: 480,
                ),
                Text('Description Text 1'),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 480,
                ),
                Text('Description Text 3'),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 480,
                ),
                Text('Description Text 2'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
