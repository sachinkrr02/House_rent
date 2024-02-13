import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:house/pages/homepage/nearbyEstates.dart';
import 'package:mapbox_search/mapbox_search.dart';
import 'package:provider/provider.dart';

const LatLng currentLocation = LatLng(25.1193, 55.3773);

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  String value = "Location";

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 12),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(28),
                        child: Image.asset(
                          'assets/house/build6.jpg',
                          width: 370,
                          height: 449,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            child: IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: Icon(Icons.arrow_back)),
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.lightGreen,
                            child: Icon(
                              Icons.favorite,
                              color: Colors.white,
                              size: 18,
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(290, 200, 0, 0),
                      child: Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.white, width: 3),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image.asset(
                            'assets/house/build2.jpg',
                            width: 200,
                            height: 200,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(290, 275, 0, 0),
                      child: Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.white, width: 3),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image.asset(
                            'assets/house/build3.jpg',
                            width: 200,
                            height: 200,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(290, 350, 0, 0),
                      child: Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.white, width: 3),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(16),
                              child: Image.asset(
                                'assets/house/build5.jpg',
                                scale: 1,
                                width: 200,
                                height: 200,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                '+3',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Readex Pro',
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 400, 0, 0),
                      child: Container(
                        width: 80,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(35, 78, 105, 1),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0, 0),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                child: Icon(
                                  Icons.star_rounded,
                                  color: Colors.yellow,
                                  size: 20,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                              child: Text(
                                '4.2',
                                style: TextStyle(
                                  fontFamily: 'Readex Pro',
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(110, 400, 0, 0),
                      child: Container(
                        width: 100,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(35, 78, 105, 1),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0, 0),
                          child: Text(
                            'Apartment',
                            style: TextStyle(
                              fontSize: 13,
                              fontFamily: 'Readex Pro',
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Wings Tower",
                        style: TextStyle(
                            fontSize: 25,
                            color: Color.fromRGBO(35, 78, 105, 1),
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "\$ 220",
                        style: TextStyle(
                            fontSize: 25,
                            color: Color.fromRGBO(35, 78, 105, 1),
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 0, 20, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.location_pin,
                            size: 16,
                            color: Color.fromRGBO(35, 78, 105, 1),
                          ),
                          Text(
                            "Jakarta,Indonesia",
                            style: TextStyle(
                                fontSize: 12,
                                color: Color.fromRGBO(35, 78, 105, 1)),
                          ),
                        ],
                      ),
                      Text(
                        "per month",
                        style: TextStyle(
                            fontSize: 12,
                            color: Color.fromRGBO(35, 78, 105, 1)),
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(-1, 0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 10, 0, 0),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Rent",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.lightGreen),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 0, 0),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "Buy",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white10),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(120, 0, 0, 0),
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color(0x0E0E3E74),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Align(
                            alignment: AlignmentDirectional(0, 0),
                            child: Icon(Icons.view_carousel)),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 350,
                  child: Divider(
                    thickness: 1,
                    color: Color(0xCCC5C5C5),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                  child: Container(
                    width: 360,
                    height: 70,
                    decoration: BoxDecoration(
                      color: Color(0x0E0E3E74),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                          child: Container(
                            width: 40,
                            height: 40,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(
                              'assets/person.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Anderson',
                                style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromRGBO(35, 78, 105, 1)),
                              ),
                              Text(
                                'Real Estate Agent',
                                style: TextStyle(
                                    fontFamily: 'Readex Pro',
                                    color: Color.fromRGBO(35, 78, 105, 1)),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0, 0),
                          child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(120, 0, 0, 0),
                              child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.message_outlined,
                                      color: Color.fromRGBO(35, 78, 105, 1)))),
                        ),
                      ],
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(5, 10, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(25, 10, 0, 0),
                          child: Container(
                            width: 130,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Color(0x0E0E3E74),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10, 0, 0, 0),
                                  child: FaIcon(
                                    FontAwesomeIcons.bed,
                                    color: Colors.lightGreen,
                                    size: 20,
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0, 0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10, 0, 0, 0),
                                    child: Text(
                                      '2 Bedroom',
                                      style: TextStyle(
                                          fontFamily: 'Readex Pro',
                                          color:
                                              Color.fromRGBO(35, 78, 105, 1)),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 10, 0, 0),
                          child: Container(
                            width: 130,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Color(0x0E0E3E74),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10, 0, 0, 0),
                                  child: FaIcon(
                                    FontAwesomeIcons.bath,
                                    color: Colors.lightGreen,
                                    size: 20,
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0, 0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10, 0, 0, 0),
                                    child: Text(
                                      '1 Bathroom',
                                      style: TextStyle(
                                        fontFamily: 'Readex Pro',
                                        color: Color(0xFF58585C),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 10, 0, 0),
                          child: Container(
                            width: 130,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Color(0x0E0E3E74),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10, 0, 0, 0),
                                  child: FaIcon(
                                    FontAwesomeIcons.house,
                                    color: Colors.lightGreen,
                                    size: 20,
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0, 0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10, 0, 0, 0),
                                    child: Text(
                                      'Balcony',
                                      style: TextStyle(
                                        fontFamily: 'Readex Pro',
                                        color: Color(0xFF58585C),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(-1, 0),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 25, 0, 0),
                    child: Text(
                      'Location & Public Facilities',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(35, 78, 105, 1),
                        fontFamily: 'Outfit',
                        fontSize: 21,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: CircleAvatar(
                        radius: 20,
                        child: Icon(
                          Icons.place_outlined,
                          size: 17,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        'St. Cikoko Timur, Kec, Pancoran, Jakarta\nSelatan, Indonesia 12770',
                        style: TextStyle(
                          fontFamily: 'Readex Pro',
                          color: Color(0xFF58585C),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey, width: 1),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.place),
                      Container(
                        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                        width: 320,
                        child: DropdownButton<String>(
                          hint: value == ""
                              ? Text('location')
                              : Text(
                                  value,
                                  style: TextStyle(color: Colors.grey),
                                ),
                          isExpanded: true,
                          onChanged: (newValue) {
                            setState(() {
                              value = newValue.toString();
                            });
                          },
                          items: <String>[
                            '2Km From location',
                            '3Km From location',
                            '5Km From location',
                          ].map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(30, 0, 0, 0),
                        child: Container(
                          width: 100,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Color(0x0E0E3E74),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(0, 0),
                            child: Text(
                              '2 Hospital',
                              style: TextStyle(
                                fontFamily: 'Readex Pro',
                                color: Color(0xFF58585C),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                        child: Container(
                          width: 100,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Color(0x0E0E3E74),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(0, 0),
                            child: Text(
                              '4 Gas stations',
                              style: TextStyle(
                                fontFamily: 'Readex Pro',
                                color: Color(0xFF58585C),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                        child: Container(
                          width: 100,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Color(0x0E0E3E74),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Align(
                            alignment: AlignmentDirectional(0, 0),
                            child: Text(
                              '2 Schools',
                              style: TextStyle(
                                fontFamily: 'Readex Pro',
                                color: Color(0xFF58585C),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  margin: EdgeInsets.only(left: 10, right: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blueAccent,
                  ),
                  height: 200,
                  child: GoogleMap(
                    initialCameraPosition: CameraPosition(
                      target: currentLocation,
                      zoom: 14,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Cost of living',
                        style: TextStyle(
                            fontFamily: 'Readex Pro',
                            color: Color.fromRGBO(35, 78, 105, 1),
                            fontSize: 21,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'view details',
                        style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'Readex Pro',
                            color: Color.fromRGBO(35, 78, 105, 1)),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  padding: EdgeInsets.only(left: 20),
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color.fromRGBO(244, 244, 249, 1),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Text(
                            "\$ 830",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(37, 42, 93, 1)),
                          ),
                          Text(
                            "/month",
                            style:
                                TextStyle(color: Color.fromRGBO(37, 42, 93, 1)),
                          )
                        ],
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'From average citizen spend around this location',
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),

                //reviews
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Reviews",
                      style: TextStyle(
                          fontFamily: 'Readex Pro',
                          color: Color.fromRGBO(35, 78, 105, 1),
                          fontSize: 21,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color.fromRGBO(101, 131, 152, 1),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.only(left: 20),
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color.fromRGBO(84, 111, 131, 1)),
                        child: Icon(
                          Icons.star,
                          size: 30,
                          color: Colors.yellow,
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 14,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 14,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 14,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 14,
                                ),
                                Icon(
                                  Icons.star_half,
                                  color: Colors.yellow,
                                  size: 14,
                                ),
                                Text("4.9"),
                              ],
                            ),
                            Text(
                              "From 112 reviewers",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(right: 20),
                        child: Icon(Icons.person_2),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),

                Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color.fromRGBO(244, 244, 249, 1),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.only(left: 20),
                            height: 50,
                            width: 50,
                            child: ClipOval(
                              child: SizedBox.fromSize(
                                size: Size.fromRadius(30), // Image radius
                                child: Image.asset('assets/person.jpg',
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                          Text(
                            "Kurt Millins",
                            style: TextStyle(fontSize: 17),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Icon(
                            Icons.star_border,
                            color: Colors.orange,
                          ),
                          Icon(
                            Icons.star_border,
                            color: Colors.orange,
                          ),
                          Icon(
                            Icons.star_border,
                            color: Colors.orange,
                          ),
                          Icon(
                            Icons.star_border,
                            color: Colors.orange,
                          ),
                          Icon(
                            Icons.star_border,
                            color: Colors.orange,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color.fromRGBO(244, 244, 249, 1),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.only(left: 20),
                            height: 50,
                            width: 50,
                            child: ClipOval(
                              child: SizedBox.fromSize(
                                size: Size.fromRadius(30), // Image radius
                                child: Image.asset('assets/person.jpg',
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                          Text(
                            "Kurt Millins",
                            style: TextStyle(fontSize: 17),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Icon(
                            Icons.star_border,
                            color: Colors.orange,
                          ),
                          Icon(
                            Icons.star_border,
                            color: Colors.orange,
                          ),
                          Icon(
                            Icons.star_border,
                            color: Colors.orange,
                          ),
                          Icon(
                            Icons.star_border,
                            color: Colors.orange,
                          ),
                          Icon(
                            Icons.star_border,
                            color: Colors.orange,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.only(left: 15, right: 15),
                  width: 400,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("View all reviews"),
                    style: ButtonStyle(),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Nearby From this location",
                      style: TextStyle(
                          fontFamily: 'Readex Pro',
                          color: Color.fromRGBO(35, 78, 105, 1),
                          fontSize: 21,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                nearByEstates(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
