import 'package:flutter/material.dart';
import 'home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      //if (mounted) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
      //}
    });

    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 500,
          width: 500,
          child: Image.asset(
              'assets/download.jpeg'), // Add a splash image to assets
        ),
      ),
    );
  }
}
