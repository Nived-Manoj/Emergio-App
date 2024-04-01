import 'package:emergio_app/view/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyAUU1J7kz5Bl_CQ3X7vkwYDpqpmPRIZX9U",
          appId: "1:701544939176:android:9f0207aef1f0539cfb8c9d",
          messagingSenderId: "",
          projectId: "emergio-2f3ae"));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SplashScreen(),
      ),
    );
  }
}
