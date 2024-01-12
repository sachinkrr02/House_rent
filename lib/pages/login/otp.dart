import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:house/pages/homepage/home.dart';
import 'package:house/pages/login/login.dart';

class OTP extends StatefulWidget {
  final String verificationId;
  const OTP({super.key, required this.verificationId});

  @override
  State<OTP> createState() => _OTPState();
}

class _OTPState extends State<OTP> {
  TextEditingController otpController = TextEditingController();

  void verifyOTP() async {
    String otp = otpController.text.trim();

    PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: widget.verificationId, smsCode: otp);

    try {
      UserCredential userCredential =
          await FirebaseAuth.instance.signInWithCredential(credential);
      if (userCredential.user != null) {
        Navigator.popUntil(context, (route) => route.isFirst);
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => HomePage()));
      }
    } on FirebaseAuthException catch (ex) {
      log(ex.code.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "OTP",
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.bold, fontSize: 80.0),
            ),
            Text("Verfication", style: Theme.of(context).textTheme.headline6),
            const SizedBox(height: 40.0),
            const Text("Enter OTP send ot your mobile no. +91 1234567890",
                textAlign: TextAlign.center),
            const SizedBox(height: 20.0),
            TextField(
              controller: otpController,
              maxLength: 6,
              decoration:
                  InputDecoration(labelText: "6-Digit OTP", counterText: ""),
            ),
            const SizedBox(height: 20.0),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  verifyOTP();
                },
                child: Text(
                  "Next",
                  style: TextStyle(fontSize: 19, color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightGreen),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
