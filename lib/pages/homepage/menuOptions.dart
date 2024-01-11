import 'package:flutter/material.dart';

class menuOtions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ColorChangingRow(),
    );
  }
}

class ColorChangingRow extends StatefulWidget {
  @override
  _ColorChangingRowState createState() => _ColorChangingRowState();
}

class _ColorChangingRowState extends State<ColorChangingRow> {
  Color _colorContainer1 = Color.fromRGBO(244, 244, 249, 1);
  Color _colorContainer2 = Color.fromRGBO(244, 244, 249, 1);
  Color _colorContainer3 = Color.fromRGBO(244, 244, 249, 1);
  Color _colorContainer4 = Color.fromRGBO(244, 244, 249, 1);
  Color _colorContainer5 = Color.fromRGBO(244, 244, 249, 1);
  Color _colorContainer6 = Color.fromRGBO(244, 244, 249, 1);

  void changeColor(int containerNumber) {
    setState(() {
      // Reset all container colors to grey
      _colorContainer1 = Color.fromRGBO(244, 244, 249, 1);
      _colorContainer2 = Color.fromRGBO(244, 244, 249, 1);
      _colorContainer3 = Color.fromRGBO(244, 244, 249, 1);
      _colorContainer4 = Color.fromRGBO(244, 244, 249, 1);
      _colorContainer5 = Color.fromRGBO(244, 244, 249, 1);
      _colorContainer6 = Color.fromRGBO(244, 244, 249, 1);

      // Change the color of the tapped container to blue
      switch (containerNumber) {
        case 1:
          _colorContainer1 = Color.fromRGBO(35, 78, 105, 1);
          break;
        case 2:
          _colorContainer2 = Color.fromRGBO(35, 78, 105, 1);
          break;
        case 3:
          _colorContainer3 = Color.fromRGBO(35, 78, 105, 1);
          break;
        case 4:
          _colorContainer4 = Color.fromRGBO(35, 78, 105, 1);
          break;
        case 5:
          _colorContainer5 = Color.fromRGBO(35, 78, 105, 1);
          break;
        case 6:
          _colorContainer6 = Color.fromRGBO(35, 78, 105, 1);
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              // Change color on tap for the first container
              changeColor(1);
            },
            child: Container(
              width: 130,
              height: 70,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Center(
                  child: Text(
                    "For Sale: House & Apartments",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ),
                color: _colorContainer1,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              // Change color on tap for the second container
              changeColor(2);
            },
            child: Container(
              width: 130,
              height: 70,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Center(
                  child: Text(
                    "For Rent: Houses & Apartments",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ),
                color: _colorContainer2,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              // Change color on tap for the third container
              changeColor(3);
            },
            child: Container(
              width: 130,
              height: 70,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Center(
                  child: Text(
                    "Lands & Plots",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ),
                color: _colorContainer3,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              // Change color on tap for the fourth container
              changeColor(4);
            },
            child: Container(
              width: 130,
              height: 70,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Center(
                  child: Text(
                    "For Rent: Shops & Offices",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ),
                color: _colorContainer4,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              // Change color on tap for the fourth container
              changeColor(5);
            },
            child: Container(
              width: 130,
              height: 70,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Center(
                  child: Text(
                    "For Sale: Shops & Offices",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ),
                color: _colorContainer5,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              // Change color on tap for the fourth container
              changeColor(6);
            },
            child: Container(
              width: 130,
              height: 70,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Center(
                  child: Text(
                    "PG & Guest House",
                    softWrap: true,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ),
                color: _colorContainer6,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
