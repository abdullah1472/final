import 'package:flutter/material.dart';
import 'first_page.dart';
import 'localization.dart';
import 'splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({key});

  @override
  Widget build(BuildContext context) {
    var delegate;
    var GlobalWidgetsLocalizations;
    return MaterialApp(
      title: 'Three Page App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', 'US'),
        Locale('ar', 'AR'),
      ],
      home: SplashScreen(), // Show splash screen as the first screen
    );
  }
}

class GlobalMaterialLocalizations {
  static var delegate;
}