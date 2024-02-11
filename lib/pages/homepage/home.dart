import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:house/pages/homepage/featureEstate.dart';
import 'package:house/pages/homepage/menuOptions.dart';
import 'package:house/pages/homepage/models/featureEstate.dart';
import 'package:house/pages/homepage/models/salesModel.dart';
import 'package:house/pages/homepage/nearbyEstates.dart';
import 'package:house/pages/homepage/newEstates.dart';
import 'package:house/pages/homepage/sales.dart';
import 'package:house/pages/homepage/toploctions..dart';
import 'package:house/pages/propertyDetails/plans.dart';
import 'package:house/pages/profile/profilePage.dart';
import 'package:house/pages/splashScreen.dart';
import 'package:house/pages/widgets/bottomNavigationBar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String value = "Location";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size(0, 0),
          child: AppBar(
            backgroundColor: Color.fromRGBO(179, 215, 235, 1),
          )),
      bottomNavigationBar: bnb(),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(bottom: 10),
                alignment: Alignment.center,
                decoration:
                    BoxDecoration(color: Color.fromRGBO(179, 215, 235, 1)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          padding: EdgeInsets.only(left: 10, right: 10),
                          width: 170,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30)),
                          child: Row(
                            children: [
                              Icon(
                                Icons.location_pin,
                                color: Color.fromRGBO(35, 78, 105, 1),
                              ),
                              Container(
                                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                                width: 120,
                                child: DropdownButton<String>(
                                  alignment: Alignment.centerLeft,
                                  dropdownColor: Colors.white,
                                  hint: value == ""
                                      ? Text(
                                          'Location',
                                          style: TextStyle(fontSize: 15),
                                        )
                                      : Text(
                                          value,
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  35, 78, 105, 1),
                                              fontSize: 15),
                                        ),
                                  isExpanded: true,
                                  onChanged: (newValue) {
                                    setState(() {
                                      value = newValue.toString();
                                    });
                                  },
                                  items: <String>[
                                    'India',
                                    'USA',
                                    'UK',
                                    'Europe',
                                  ].map((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(
                                        value,
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Material(
                          type: MaterialType.transparency,
                          child: Ink(
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.green, width: 2),
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.circular(50.0)), //<-- SEE HERE
                            child: InkWell(
                              borderRadius: BorderRadius.circular(100.0),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Plans()));
                              },
                              child: Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Icon(
                                  Icons.notifications_active_outlined,
                                  size: 22.0,
                                  color: Color.fromRGBO(35, 78, 105, 1),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Material(
                          type: MaterialType.transparency,
                          child: Ink(
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black, width: 2),
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.circular(50.0)), //<-- SEE HERE
                            child: InkWell(
                              borderRadius: BorderRadius.circular(100.0),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SplashScreen()));
                              },
                              child: Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Icon(
                                  Icons.person,
                                  size: 22,
                                  color: Color.fromRGBO(35, 78, 105, 1),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                      ],
                    )
                  ],
                ),
              ),

              Container(
                padding: EdgeInsets.only(left: 30, top: 10),
                child: Row(
                  children: [
                    Text(
                      "Hey,",
                      style: TextStyle(fontSize: 25),
                    ),
                    Text(
                      "Jonathan!",
                      style: TextStyle(
                          fontSize: 26,
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),

              Container(
                padding: EdgeInsets.only(left: 30),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "lets start exploring",
                      style: TextStyle(fontSize: 25),
                    )),
              ),

              Divider(
                height: 20.0,
                thickness: 3.0,
                color: Colors.blue,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.white70,
                    hintText: "Search for Houses, Apartments, etc",
                    contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    prefixIcon: Icon(Icons.search_rounded),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ),

              SizedBox(
                height: 20,
              ),
              Container(
                height: 70,
                child: MenuOptions(),
              ),

              Sales(
                title: demo_data[1].title,
                image: demo_data[1].image,
                subtitle: demo_data[1].subtitle,
              ),
              SizedBox(
                height: 10,
              ),

              Divider(
                height: 20.0,
                thickness: 2.0,
                color: Colors.grey,
              ),
// featured Estates
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  "Featured Estates",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(35, 78, 105, 1)),
                ),
              ),
              featureEstate(),

              Divider(
                height: 20.0,
                thickness: 2.0,
                color: Colors.grey,
              ),

// nearby estates
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  "Nearby Estates",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(35, 78, 105, 1)),
                ),
              ),
              nearByEstates(),
              Divider(
                height: 20.0,
                thickness: 2.0,
                color: Colors.grey,
              ),

// top locations
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  "Top Locations",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(35, 78, 105, 1)),
                ),
              ),
              topLocations(),
              Divider(
                height: 20.0,
                thickness: 2.0,
                color: Colors.grey,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  "Explore New Estates",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(35, 78, 105, 1)),
                ),
              ),
              newEstates(),
              Divider(
                height: 20.0,
                thickness: 2.0,
                color: Colors.grey,
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
