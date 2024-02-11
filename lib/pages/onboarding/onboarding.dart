import 'package:flutter/material.dart';
import 'package:house/pages/login/login.dart';
import 'model.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoardingScreen> {
  late PageController _pageController;
  int _currentPage = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: height,
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'assets/splash.png',
                        height: 100,
                        width: 100,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Loginpage()));
                          },
                          child: Text("Skip")),
                    ],
                  ),
                ),
                Container(
                  height: 600,
                  child: PageView.builder(
                    itemCount: demo_data.length,
                    controller: _pageController,
                    onPageChanged: (int page) {
                      setState(() {
                        _currentPage = page;
                      });
                    },
                    itemBuilder: (context, index) => OnBoarding(
                      image: demo_data[index].image,
                      title: demo_data[index].title,
                    ),
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      demo_data.length,
                      (index) => buildDot(index, _currentPage == index),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 50,
                      width: 340,
                      child: ElevatedButton(
                        onPressed: () {
                          if (_currentPage < demo_data.length - 1) {
                            _pageController.nextPage(
                              duration: const Duration(milliseconds: 10),
                              curve: Curves.ease,
                            );
                          } else {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Loginpage()),
                            );
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.lightGreen,
                        ),
                        child: Text(
                          _currentPage < demo_data.length - 1
                              ? 'Next'
                              : 'Login',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildDot(int index, bool isActive) {
    return Container(
      margin: const EdgeInsets.all(8),
      width: isActive ? 12 : 8,
      height: isActive ? 12 : 8,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isActive ? Colors.black : Colors.grey,
      ),
    );
  }
}

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key, required this.image, required this.title});
  final String image, title;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.only(left: 0, right: 00),
      child: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 80, bottom: 10),
              child: Text(
                title,
                textAlign: TextAlign.left,
                style: const TextStyle(
                  color: Color.fromRGBO(32, 77, 108, 1),
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(0),
              width: width,
              height: 500,
              decoration: BoxDecoration(
                image:
                    DecorationImage(image: AssetImage(image), fit: BoxFit.fill),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
