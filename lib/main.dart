import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:house/pages/home.dart';
import 'package:house/pages/login.dart';

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
      home: Loginpage(),
    );
  }
}
