import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mapbox_search/mapbox_search.dart';
import 'package:provider/provider.dart';

//import 'home_page_model.dart';
//export 'home_page_model.dart';

const LatLng currentLocation = LatLng(25.1193, 55.3773);

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  //late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    //_model = createModel(context, () => HomePageModel());
  }

  @override
  void dispose() {
    // _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: SafeArea(
            top: true,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Stack(
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 0, 0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(28),
                        child: Image.asset(
                          'assets/houseee.jpg',
                          width: 370,
                          height: 449,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(290, 200, 0, 0),
                      child: Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            'assets/house.jpg',
                            width: 300,
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
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            'assets/img.png',
                            width: 300,
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
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                'house.jpg',
                                width: 300,
                                height: 200,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0, 0),
                              child: Text(
                                '+3',
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
                      padding: EdgeInsetsDirectional.fromSTEB(20, 400, 0, 0),
                      child: Container(
                        width: 80,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color(0xFF253150),
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
                                  color: Colors.black,
                                  size: 20,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                              child: Text(
                                '4.9',
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
                        width: 80,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Color(0xFF253150),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0, 0),
                          child: Text(
                            'Apartment',
                            style: TextStyle(
                              fontFamily: 'Readex Pro',
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(-1, 0),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 20, 0, 0),
                            child: Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Color(0xFFBBC7DA),
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Align(
                                alignment: AlignmentDirectional(0, 0),
                                child: FaIcon(
                                  FontAwesomeIcons.lessThan,
                                  color: Color(0xD2969FAD),
                                  size: 15,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                  child: Text(
                    'Wings Tower                             \$220',
                    style: TextStyle(),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                      child: Icon(
                        Icons.location_pin,
                        color: Colors.grey,
                        size: 24,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                      child: Text(
                        'Jakarta, Indonesia                               per month',
                        style: TextStyle(),
                      ),
                    ),
                  ],
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
                          "Rent",
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
                          child: Text(
                            '360',
                            style: TextStyle(),
                          ),
                        ),
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
                    width: 341,
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
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                              child: Text(
                                'Anderson',
                                style: TextStyle(),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                              child: Text(
                                'Real Estate Agent',
                                style: TextStyle(
                                  fontFamily: 'Readex Pro',
                                  color: Color(0xFF58585C),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Align(
                          alignment: AlignmentDirectional(0, 0),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(120, 0, 0, 0),
                            child: Icon(
                              Icons.message_outlined,
                              color: Colors.grey,
                              size: 24,
                            ),
                          ),
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
                                    color: Color(0xFF51A767),
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
                                    FontAwesomeIcons.bath,
                                    color: Color(0xFF51A767),
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
                                    color: Color(0xFF51A767),
                                    size: 20,
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0, 0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10, 0, 0, 0),
                                    child: Text(
                                      'House',
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
                        fontFamily: 'Outfit',
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                      child: Icon(
                        Icons.share_location_rounded,
                        color: Color(0xFFC7C1C1),
                        size: 40,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 5, 0, 0),
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
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.white70,
                      filled: true,
                      suffixIcon: Icon(Icons.arrow_drop_down),
                      hintText: "2.5 Km from your location",
                      contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      prefixIcon: Icon(Icons.pin_drop),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
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
                            color: Colors.blue,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'view details',
                        style: TextStyle(
                          fontFamily: 'Readex Pro',
                          color: Color(0xFF254258),
                        ),
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
                            "Rs.830",
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
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Reviews",
                      style:
                          TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ),
                //reviews
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
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
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
                //people reviews
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
                ElevatedButton(
                  onPressed: () {},
                  child: Text("View all reviews"),
                  style: ButtonStyle(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
