import 'package:flutter/material.dart';

class xyz extends StatelessWidget {
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

  void changeColor(int containerNumber) {
    setState(() {
      // Reset all container colors to grey
      _colorContainer1 = Color.fromRGBO(244, 244, 249, 1);
      _colorContainer2 = Color.fromRGBO(244, 244, 249, 1);
      _colorContainer3 = Color.fromRGBO(244, 244, 249, 1);
      _colorContainer4 = Color.fromRGBO(244, 244, 249, 1);

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
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: () {
            // Change color on tap for the first container
            changeColor(1);
          },
          child: Container(
            width: 90,
            height: 60,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Center(
                child: Text(
                  "ALL",
                  style: TextStyle(),
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
            width: 90,
            height: 60,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Center(
                child: Text(
                  "House",
                  style: TextStyle(),
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
            width: 100,
            height: 60,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Center(
                child: Text(
                  "Apartment",
                  style: TextStyle(),
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
            width: 90,
            height: 60,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Center(
                child: Text(
                  "House",
                  style: TextStyle(),
                ),
              ),
              color: _colorContainer4,
            ),
          ),
        ),
      ],
    );
  }
}
