import 'package:docker_app/screens/homepage.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AnimatedSplashScreen(
        //duration: 300000,
        splashTransition: SplashTransition.fadeTransition,
        splash: Image.asset('assets/Moby-logo.png'),
        nextScreen: Home(),
      ),
    );
  }
}
