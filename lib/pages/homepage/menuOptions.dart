import 'package:flutter/material.dart';

class MenuOptions extends StatelessWidget {
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
  int _selectedContainer = -1;

  void changeColor(int containerNumber) {
    setState(() {
      _selectedContainer = containerNumber;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buildContainer(1, "All"),
          buildContainer(2, "House"),
          buildContainer(3, "Apartments"),
          buildContainer(4, "Shops"),
          buildContainer(5, "Offices"),
          buildContainer(6, "Hostels"),
          buildContainer(7, "PG's"),
        ],
      ),
    );
  }

  Widget buildContainer(int containerNumber, String label) {
    final isSelected = _selectedContainer == containerNumber;

    return InkWell(
      onTap: () {
        // Change color on tap for the container
        changeColor(containerNumber);
      },
      child: Container(
        width: 100,
        height: 50,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Center(
            child: Text(
              label,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: isSelected ? Colors.white : Colors.black,
              ),
            ),
          ),
          color: isSelected
              ? Color.fromRGBO(35, 78, 105, 1)
              : Color.fromRGBO(244, 244, 249, 1),
        ),
      ),
    );
  }
}
