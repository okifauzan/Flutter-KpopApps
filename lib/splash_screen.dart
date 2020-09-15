import 'package:flutter/material.dart';
import 'main_screen.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget{
  static const String id = "splash_screen";
  @override
  SplashState createState() => SplashState();
}

class SplashState extends State<SplashScreen>{
  Timer _timer;

  @override
  void initState() {
    super.initState();
    startSplashScreen();
  }

  startSplashScreen() async {
    return _timer = Timer(Duration(seconds: 3), (){
      Navigator.of(context).pushReplacementNamed(MainScreen.id);
    });
  }

  @override
  void dispose(){
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset(
          'images/kpop.jpg',
          height: 300,
          width: 350,
        ),
      ),
    );
  }
}