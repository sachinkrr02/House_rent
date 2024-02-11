import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:house/pages/homepage/agentsHome.dart';
import 'package:house/pages/homepage/backendHome.dart';
import 'package:house/pages/homepage/home.dart';
import 'package:house/pages/login/otp.dart';
import 'package:house/pages/login/register.dart';
import 'package:house/pages/profile/profilePage.dart';
import 'package:house/pages/propertyDetails/details.dart';
import 'package:house/pages/propertyDetails/plans.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String value = "Choose Your Role";

  // void sendOTP() async {
  //   String phone = "+91" + phoneController.text.trim();
  //   try {
  //     await FirebaseAuth.instance.verifyPhoneNumber(
  //       phoneNumber: phone,
  //       verificationFailed: (ex) {
  //         log(ex.code.toString());
  //         _showErrorSnackbar("Error: ${ex.code}");
  //       },
  //       codeSent: (verificationId, resendToken) {
  //         Navigator.push(
  //           context,
  //           MaterialPageRoute(
  //             builder: (context) => OTP(
  //               verificationId: verificationId,
  //             ),
  //           ),
  //         );
  //       },
  //       verificationCompleted: (credential) {},
  //       codeAutoRetrievalTimeout: (verificationId) {},
  //       timeout: Duration(seconds: 30),
  //     );
  //   } catch (e) {
  //     _showErrorSnackbar("Unexpected error occurred");
  //     log("Unexpected error: $e");
  //   }
  // }

  void _showErrorSnackbar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: TextStyle(color: Colors.white),
        ),
        duration: Duration(seconds: 5),
        backgroundColor: Colors.lightGreen,
        action: SnackBarAction(
          label: 'Dismiss',
          onPressed: () {
            // Add any action here if needed
          },
        ),
      ),
    );
  }

  /// password
  bool _obscured = false;
  final textFieldFocusNode = FocusNode();
  void _toggleObscured() {
    setState(() {
      _obscured = !_obscured;
      if (textFieldFocusNode.hasPrimaryFocus)
        return; // If focus is on text field, dont unfocus
      textFieldFocusNode.canRequestFocus =
          false; // Prevents focus if tap on eye
    });
  }

  void check() {
    if (value == "Agent") {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => AgentHomePage()));
    } else if (value == "Buyer") {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomePage()));
    } else if (value == "Backend Team") {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => BackendHomePage()));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            "Select Your Role First",
            style: TextStyle(color: Colors.white),
          ),
          duration: Duration(seconds: 5),
          backgroundColor: Colors.lightGreen,
          action: SnackBarAction(
            label: 'Dismiss',
            textColor: Colors.white,
            onPressed: () {},
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(30, 0, 20, 30),
        child: SafeArea(
          child: Column(
            children: [
              Image.asset("assets/login.png"),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Let's Sign in to your account",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: "Username",
                  contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  prefixIcon: Icon(Icons.person_2_outlined),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: passwordController,
                keyboardType: TextInputType.visiblePassword,
                obscureText: _obscured,
                focusNode: textFieldFocusNode,
                decoration: InputDecoration(
                  suffixIcon: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 4, 0),
                    child: GestureDetector(
                      onTap: _toggleObscured,
                      child: Icon(
                        _obscured
                            ? Icons.visibility_off_rounded
                            : Icons.visibility_rounded,
                        size: 24,
                      ),
                    ),
                  ),
                  hintText: "Password",
                  contentPadding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  prefixIcon: const Icon(Icons.lock),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                width: double.maxFinite,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey, width: 1)),
                child: DropdownButton<String>(
                  hint: value == ""
                      ? Text('Choose Your Role')
                      : Text(
                          value,
                          style: TextStyle(color: Colors.grey),
                        ),
                  isExpanded: true,
                  onChanged: (newValue) {
                    setState(() {
                      value = newValue.toString();
                    });
                  },
                  items: <String>[
                    'Buyer',
                    'Agent',
                    'Backend Team',
                  ].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Forgot Password",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ),
              Container(
                height: 50,
                width: 350,
                decoration: BoxDecoration(
                    color: Colors.lightGreen,
                    borderRadius: BorderRadius.circular(10.0)),
                child: ElevatedButton(
                  onPressed: () {
                    check();
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent),
                  child: const Text(
                    'Sign-In',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(fontSize: 16),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignupPage()),
                      );
                    },
                    child: Text(
                      'Signup',
                      style: TextStyle(fontSize: 18, color: Colors.lightGreen),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
