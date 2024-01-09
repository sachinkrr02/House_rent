import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:house/pages/splashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'House Rent',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
