import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:house/pages/homepage/home.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

class OTP extends StatefulWidget {
  const OTP({super.key});

  @override
  State<OTP> createState() => _OTPState();
}

class _OTPState extends State<OTP> {
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
            OTPTextField(
              length: 5,
              width: MediaQuery.of(context).size.width,
              fieldWidth: 40,
              style: TextStyle(fontSize: 17),
              textFieldAlignment: MainAxisAlignment.spaceAround,
              fieldStyle: FieldStyle.underline,
              onCompleted: (pin) {
                print("Completed: " + pin);
              },
            ),
            const SizedBox(height: 20.0),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
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
