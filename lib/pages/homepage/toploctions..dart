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
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.15),
              offset: Offset(0, 0),
              blurRadius: 3,
              spreadRadius: 10)
        ],
      ),
      margin: EdgeInsets.all(10),
      height: 370,
      child: GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        itemCount: 4,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(0),
            child: Container(
              margin: EdgeInsets.all(10),
              height: 230,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Color.fromRGBO(244, 244, 249, 1),
              ),
              child: Column(
                children: [
                  Container(
                    height: 130,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                        opacity: 1,
                        image: AssetImage(top_loc[index].image),
                        fit: BoxFit.cover,
                        alignment: Alignment.topCenter,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, top: 5),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        top_loc[index].title,
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 17,
                            color: Color.fromRGBO(35, 73, 105, 1)),
                      ),
                    ),
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
