import 'package:flutter/material.dart';

class BackendHomePage extends StatefulWidget {
  const BackendHomePage({super.key});

  @override
  State<BackendHomePage> createState() => _BackendHomePageState();
}

class _BackendHomePageState extends State<BackendHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(child: Text("Backend team")),
      ),
    );
  }
}
