import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:house/pages/login/otp.dart';
import 'package:house/pages/login/register.dart';
import 'package:house/pages/propertyDetails/details.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  TextEditingController phoneController = TextEditingController();

  void sendOTP() async {
    String phone = "+91" + phoneController.text.trim();

    await FirebaseAuth.instance.verifyPhoneNumber(
        phoneNumber: phone,
        codeSent: (verificationId, resendToken) {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => OTP(
                        verificationId: verificationId,
                      )));
        },
        verificationCompleted: (credential) {},
        verificationFailed: (ex) {
          log(ex.code.toString());
        },
        codeAutoRetrievalTimeout: (verificationId) {},
        timeout: Duration(seconds: 30));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.white,
        surfaceTintColor: Colors.white,
      ),
      body: ListView(
        padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
        children: [
          Image.asset("assets/login.png"),
          Align(
            alignment: Alignment.center,
            child: Text(
              "Lets Signin into your account",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            controller: phoneController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              hintText: "Phone No.",
              contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              prefixIcon: Icon(Icons.phone_android_outlined),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          // TextField(
          //   controller: passwordController,
          //   decoration: InputDecoration(
          //     hintText: "Password",
          //     contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
          //     prefixIcon: Icon(Icons.lock),
          //     border:
          //         OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          //   ),
          // ),
          // Align(
          //   alignment: Alignment.topRight,
          //   child: TextButton(
          //     onPressed: () {},
          //     child: Text("Forgot your password?"),
          //   ),
          // ),
          SizedBox(
            height: 0,
          ),
          ElevatedButton(
            onPressed: () {
              sendOTP();
            },
            child: Text(
              "Sign In",
              style: TextStyle(fontSize: 19, color: Colors.white),
            ),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.lightGreen),
          ),
          SizedBox(
            height: 25,
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 20,
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
    );
  }
}
