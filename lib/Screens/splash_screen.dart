import 'package:flutter/material.dart';
import 'package:flutterapp/Screens//login_screen.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    });

    return Scaffold(
      backgroundColor: Color(0xFF065FB3),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/pateroslogo.png',
              width: 300,
              height: 300,
            ),
            SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
