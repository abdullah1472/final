import 'package:flutter/material.dart';
import 'dart:async';
import 'localization.dart';
import 'first_page.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Simulate a time-consuming task, such as loading data or initializing resources
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => HomePage()), // Use the correct class name
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/icon.png', width: 100, height: 100), // Your app icon
            SizedBox(height: 20),
            CircularProgressIndicator(),
            SizedBox(height: 20),
            Text(
              AppLocalizations.of(context)!.translate('splash'), // Assuming you have Localization properly set up
              style: TextStyle(fontSize: 24.0),
            ),
          ],
        ),
      ),
    );
  }
}