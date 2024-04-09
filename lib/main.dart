import 'package:flutter/material.dart';
import 'package:netflix_clone/Splash_screen.dart';
import 'package:netflix_clone/core/colors/colors.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: backgroundColor,
        primaryColor: Colors.blue,
        backgroundColor: Colors.black,
        textTheme: const TextTheme(
         bodyText1: TextStyle(color: Colors.white),
         bodyText2: TextStyle(color: Colors.white),
        )
      ),
      home:  SplashScreen()
    );
  }
}
