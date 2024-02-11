import 'package:flutter/material.dart';
import 'package:house/pages/homepage/home.dart';
import 'package:house/pages/homepage/newEstates.dart';
import 'package:house/pages/profile/editProfile.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => editProfile()));
            },
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(15),
        child: SafeArea(
          child: Column(
            children: [
              Container(
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: CircleAvatar(
                        backgroundImage: AssetImage("assets/person.jpg"),
                        radius: 60,
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: CircleAvatar(
                            radius: 20,
                            backgroundColor: Color.fromRGBO(37, 73, 105, 1),
                            child: Center(
                              child: IconButton(
                                color: Colors.white,
                                alignment: Alignment.bottomRight,
                                onPressed: () {},
                                icon: Icon(Icons.edit_outlined),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      "Mathew Adam",
                      style: TextStyle(
                          fontSize: 21,
                          color: Color.fromRGBO(37, 73, 105, 1),
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      "mathew@gmail.com",
                      style: TextStyle(color: Colors.grey, fontSize: 13),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    height: 80,
                    width: 150,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "30",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(37, 73, 105, 1),
                          ),
                        ),
                        Text(
                          "Listings",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    height: 80,
                    width: 150,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "28",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(37, 73, 105, 1),
                          ),
                        ),
                        Text(
                          "Reviews",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Container(
                  width: 500,
                  alignment: Alignment.center,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color.fromRGBO(244, 244, 249, 1),
                  ),
                  child: Text(
                    "Listings",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromRGBO(37, 73, 105, 1),
                        fontSize: 25,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              newEstates(),
            ],
          ),
        ),
      ),
    );
  }
}
