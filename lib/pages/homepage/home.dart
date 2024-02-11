import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:house/pages/homepage/featureEstate.dart';
import 'package:house/pages/homepage/menuOptions.dart';
import 'package:house/pages/homepage/models/featureEstate.dart';
import 'package:house/pages/homepage/models/salesModel.dart';
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
              SizedBox(
                height: 20,
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

              featureEstate(),
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
              itemDisplay(),

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

class itemDisplay extends StatelessWidget {
  const itemDisplay({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 550,
      child: GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        itemCount: 6,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(0),
            child: Container(
              margin: EdgeInsets.all(7),
              padding: EdgeInsets.all(10),
              height: 250,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromRGBO(244, 244, 249, 1),
              ),
              child: Column(
                children: [
                  Container(
                    height: 85,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        opacity: 1,
                        image: AssetImage(feature_data[index].image),
                        fit: BoxFit.cover,
                        alignment: Alignment.topCenter,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      feature_data[index].title,
                      style: TextStyle(
                          fontSize: 15, color: Color.fromRGBO(35, 73, 105, 1)),
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.orange,
                        size: 15,
                      ),
                      Text(feature_data[index].rating),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.pin_drop,
                        size: 15,
                      ),
                      Text(feature_data[index].loc),
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
