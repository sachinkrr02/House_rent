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

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: AppBar(
          actions: [
            Material(
              type: MaterialType.transparency,
              child: Ink(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.green, width: 2),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50.0)), //<-- SEE HERE
                child: InkWell(
                  borderRadius: BorderRadius.circular(100.0),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Plans()));
                  },
                  child: Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Icon(
                      Icons.price_check_outlined,
                      size: 30.0,
                      color: Colors.black,
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
                    border: Border.all(color: Colors.black, width: 2),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50.0)), //<-- SEE HERE
                child: InkWell(
                  borderRadius: BorderRadius.circular(100.0),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ProfilePage()));
                  },
                  child: Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Icon(
                      Icons.person_2_rounded,
                      size: 30,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 20,
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                child: Row(
                  children: [
                    Text(
                      "Hey,",
                      style: TextStyle(fontSize: 23),
                    ),
                    Text(
                      "Jonathan!",
                      style: TextStyle(
                          fontSize: 23,
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Container(
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "lets start exploring",
                      style: TextStyle(fontSize: 23),
                    )),
              ),
              SizedBox(
                height: 20,
              ),

              TextField(
                decoration: InputDecoration(
                  fillColor: Colors.white70,
                  hintText: "Search for Houses, Apartments, etc",
                  contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  prefixIcon: Icon(Icons.search_rounded),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),

              SizedBox(
                height: 20,
              ),
              Container(
                height: 70,
                child: menuOtions(),
              ),
              SizedBox(
                height: 10,
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
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              featureEstate(),
              SizedBox(
                height: 10,
              ),
              featureEstate(),
              SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  "Your Leads",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                height: 370,
                child: itemDisplay(),
              ),
              Container(
                height: 190,
                child: GridView.builder(
                  itemCount: 2,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
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
                                    fontSize: 15,
                                    color: Color.fromRGBO(35, 73, 105, 1)),
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

class itemDisplay extends StatelessWidget {
  const itemDisplay({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 4,
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
    );
  }
}
