import 'package:flutter/material.dart';
import 'package:house/pages/homepage/models/salesModel.dart';
import 'package:house/pages/propertyDetails/details.dart';

class Sales extends StatelessWidget {
  const Sales({
    super.key,
    required String title,
    required String image,
    required String subtitle,
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
            width: 250,
            child: Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: Colors.deepPurpleAccent,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                  image: DecorationImage(
                    opacity: 1,
                    image: AssetImage(demo_data[index].image),
                    fit: BoxFit.cover,
                    alignment: Alignment.topCenter,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      demo_data[index].title,
                      style: TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(demo_data[index].subtitle),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: ElevatedButton(
                          style: ButtonStyle(
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Color.fromRGBO(35, 78, 105, 1)),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10),
                                    bottomRight: Radius.circular(10)),
                              ),
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePageWidget()));
                          },
                          child: Icon(Icons.arrow_forward)),
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
