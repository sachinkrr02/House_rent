import 'package:flutter/material.dart';
import 'package:house/pages/homepage/models/featureEstate.dart';
import 'package:house/pages/homepage/models/toploc.dart';
import 'package:house/pages/propertyDetails/details.dart';

class topLocations extends StatelessWidget {
  const topLocations({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      alignment: Alignment.centerLeft,
      width: width,
      height: 60,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            color: Color.fromRGBO(244, 244, 249, 1),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: Container(
              padding: EdgeInsets.only(left: 10, right: 10),
              width: 140,
              height: 100,
              child: Row(
                children: [
                  ClipOval(
                    child: SizedBox.fromSize(
                      size: Size.fromRadius(20), // Image radius
                      child:
                          Image.asset(top_loc[index].image, fit: BoxFit.cover),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    top_loc[index].title,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(37, 76, 105, 1)),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
