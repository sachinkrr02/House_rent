import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:house/pages/login/login.dart';
import 'package:house/pages/onboarding/onboarding.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Colors.transparent,
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                  'assets/house/build2.jpg',
                ),
              ),
            ),
            height: height,
          ),
          Container(
            height: height,
            decoration: BoxDecoration(
              color: Colors.white,
              gradient: LinearGradient(
                begin: FractionalOffset.topCenter,
                end: FractionalOffset.bottomCenter,
                colors: [
                  Colors.white70.withOpacity(0),
                  Colors.blue,
                ],
                stops: [0.0, 1.0],
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/splash.png',
                  scale: 0.4,
                ),
                Text(
                  "Rise",
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.w400),
                ),
                Text(
                  "Real Estate",
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(120, 50),
                    backgroundColor: Colors.lightGreen,
                    shape: BeveledRectangleBorder(),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => OnBoardingScreen()));
                  },
                  child: Text(
                    "Lets get Started",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: 50),
                    child: Text(
                      "Made with love",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 13),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
