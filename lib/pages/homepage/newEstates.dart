import 'package:flutter/material.dart';
import 'package:house/pages/homepage/models/featureEstate.dart';

class newEstates extends StatelessWidget {
  const newEstates({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
      height: 560,
      child: GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        itemCount: 6,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          return Container(
            height: 250,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Color.fromRGBO(244, 244, 249, 1),
            ),
            child: Column(
              children: [
                Container(
                  height: 125,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                      opacity: 1,
                      image: AssetImage(feature_data[index].image),
                      fit: BoxFit.cover,
                      alignment: Alignment.topCenter,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      feature_data[index].title,
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 17,
                          color: Color.fromRGBO(35, 73, 105, 1)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.orange,
                        size: 15,
                      ),
                      Text(feature_data[index].rating),
                      Icon(
                        Icons.pin_drop,
                        size: 14,
                      ),
                      Text(feature_data[index].loc),
                    ],
                  ),
                ),
                Row(
                  children: [],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
