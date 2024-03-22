import 'package:flutter/material.dart';

class Career extends StatelessWidget {
  const Career({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          children: [Image.asset("assett/icons/logo.png")],
        ),
      ),
    );
  }
}
