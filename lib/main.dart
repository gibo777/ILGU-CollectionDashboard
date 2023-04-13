import 'package:flutter/material.dart';
import 'package:flutterapp/Screens/login_screen.dart';
import 'package:flutterapp/Screens/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ILGU Online Collection Dashboard',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
      routes: {
        '/login': (context) => LoginScreen(),
      },
    );
  }
}
