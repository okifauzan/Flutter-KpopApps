import 'package:flutter/material.dart';
import 'package:submission_1/main_screen.dart';
import 'splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Submission_1',
      theme: ThemeData.light(),
      initialRoute: SplashScreen.id,
      routes: {
        SplashScreen.id: (context) => SplashScreen(),
        MainScreen.id: (context) => MainScreen(),
      },
    );
  }
}
