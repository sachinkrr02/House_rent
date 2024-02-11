import 'package:flutter/material.dart';

class addListing extends StatefulWidget {
  const addListing({super.key});

  @override
  State<addListing> createState() => _addListingState();
}

class _addListingState extends State<addListing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Add listing Page")),
    );
  }
}
