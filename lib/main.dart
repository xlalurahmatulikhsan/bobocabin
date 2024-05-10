import 'package:flutter/material.dart';
import 'package:my_application/app/splash_screen.dart';
import 'package:my_application/navigation_menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(
        child: NavigationMenu(),
      ),
    );
  }
}
