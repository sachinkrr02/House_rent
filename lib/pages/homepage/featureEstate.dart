import 'package:flutter/material.dart';
import 'package:house/pages/homepage/models/featureEstate.dart';
import 'package:house/pages/propertyDetails/details.dart';

class featureEstate extends StatelessWidget {
  const featureEstate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: Expanded(
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: 3,
          itemBuilder: (BuildContext context, int index) => Container(
            width: 285,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      height: 150,
                      width: 120,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.lightBlue,
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                feature_data[index].image,
                              ))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Material(
                            type: MaterialType.transparency,
                            child: Ink(
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.green, width: 2),
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(
                                      50.0)), //<-- SEE HERE
                              child: InkWell(
                                borderRadius: BorderRadius.circular(100.0),
                                onTap: () {},
                                child: Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Icon(
                                    Icons.favorite,
                                    size: 18.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Color.fromRGBO(35, 78, 105, 1))),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomePageWidget()));
                            },
                            child: Text(
                              "Apartments",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 9),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            feature_data[index].title,
                            softWrap: true,
                            style: TextStyle(
                                color: Color.fromRGBO(35, 78, 105, 1),
                                fontSize: 17),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.orange,
                              ),
                              Text(feature_data[index].rating)
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.map,
                                color: Colors.orange,
                              ),
                              Text(
                                feature_data[index].loc,
                                style: TextStyle(fontSize: 10),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            children: [
                              Text(
                                feature_data[index].price,
                                style: TextStyle(
                                    color: Color.fromRGBO(35, 78, 105, 1),
                                    fontSize: 20),
                              ),
                              Text("/month"),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
