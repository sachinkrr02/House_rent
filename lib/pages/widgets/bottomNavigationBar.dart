import 'package:flutter/material.dart';
import 'package:house/pages/homepage/agentsHome.dart';
import 'package:house/pages/profile/profilePage.dart';

class bnb extends StatefulWidget {
  const bnb({Key? key}) : super(key: key);

  @override
  _bnbState createState() => _bnbState();
}

class _bnbState extends State<bnb> {
  int pageIndex = 0;

  // final pages = [
  //   const Page1(),
  //   const Page2(),
  //   const Page3(),
  //   const Page4(),
  // ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 0;
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AgentHomePage()),
                );
              });
            },
            icon: pageIndex == 0
                ? const Icon(
                    Icons.home_filled,
                    color: Color.fromRGBO(35, 78, 105, 1),
                    size: 30,
                    semanticLabel: "Home",
                  )
                : const Icon(
                    Icons.home_outlined,
                    color: Color.fromRGBO(35, 78, 105, 1),
                    size: 30,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 1;
              });
            },
            icon: pageIndex == 1
                ? const Icon(
                    Icons.favorite,
                    color: Color.fromRGBO(35, 78, 105, 1),
                    size: 30,
                  )
                : const Icon(
                    Icons.favorite_border_outlined,
                    color: Color.fromRGBO(35, 78, 105, 1),
                    size: 30,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 2;
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfilePage()),
                );
              });
            },
            icon: pageIndex == 2
                ? const Icon(
                    Icons.person_2,
                    color: Color.fromRGBO(35, 78, 105, 1),
                    size: 30,
                  )
                : const Icon(
                    Icons.person_2_outlined,
                    color: Color.fromRGBO(35, 78, 105, 1),
                    size: 30,
                  ),
          ),
        ],
      ),
    );
  }
}
