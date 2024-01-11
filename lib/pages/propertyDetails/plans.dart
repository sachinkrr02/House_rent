import 'package:flutter/material.dart';

class Plans extends StatefulWidget {
  const Plans({super.key});

  @override
  State<Plans> createState() => _PlansState();
}

class _PlansState extends State<Plans> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40.0), // here the desired height
        child: AppBar(
          title: Text("Plans and Pricing"),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Scheduling",
                style: TextStyle(fontSize: 33, fontWeight: FontWeight.w700),
              ),
              Text(
                "Should be easy,",
                style: TextStyle(fontSize: 33, fontWeight: FontWeight.w700),
              ),
              Text(
                "Convenient",
                style: TextStyle(
                    fontSize: 33,
                    fontWeight: FontWeight.w800,
                    color: Color.fromRGBO(37, 76, 105, 1)),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(20),
                height: height * 0.35,
                width: width,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(234, 234, 249, 1),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Color.fromRGBO(37, 76, 105, 1),
                      width: 2,
                    )),
                child: Column(
                  children: [
                    SizedBox(
                      width: 25,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Silver",
                          style: TextStyle(
                              fontSize: 25,
                              color: Color.fromRGBO(37, 76, 105, 1),
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          "\$1225",
                          style: TextStyle(
                              fontSize: 30,
                              color: Color.fromRGBO(37, 76, 105, 1),
                              fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "1 Listings",
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                        Text("30 days uptime",
                            style: TextStyle(fontSize: 16, color: Colors.grey)),
                        Text("Featured Listings",
                            style: TextStyle(fontSize: 16, color: Colors.grey)),
                        SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Buy Now",
                            style: TextStyle(color: Colors.white),
                          ),
                          style: ElevatedButton.styleFrom(
                              fixedSize: Size(300, 40),
                              shape: const RoundedRectangleBorder(),
                              backgroundColor: Colors.lightGreen),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'For individuals who want to start',
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(20),
                height: height * 0.36,
                width: width,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(234, 234, 249, 1),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Color.fromRGBO(37, 76, 105, 1),
                      width: 2,
                    )),
                child: Column(
                  children: [
                    SizedBox(
                      width: 25,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Gold",
                          style: TextStyle(
                              fontSize: 25,
                              color: Color.fromRGBO(37, 76, 105, 1),
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          "\$1725",
                          style: TextStyle(
                              fontSize: 30,
                              color: Color.fromRGBO(37, 76, 105, 1),
                              fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "3 Listings",
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                        Text("45 days uptime",
                            style: TextStyle(fontSize: 16, color: Colors.grey)),
                        Text("Featured Listings",
                            style: TextStyle(fontSize: 16, color: Colors.grey)),
                        SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Buy Now",
                            style: TextStyle(color: Colors.white),
                          ),
                          style: ElevatedButton.styleFrom(
                              fixedSize: Size(300, 40),
                              shape: const RoundedRectangleBorder(),
                              backgroundColor: Colors.lightGreen),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'For individuals who want to start',
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(20),
                height: height * 0.36,
                width: width,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(234, 234, 249, 1),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Color.fromRGBO(37, 76, 105, 1),
                      width: 2,
                    )),
                child: Column(
                  children: [
                    SizedBox(
                      width: 25,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Diamond",
                          style: TextStyle(
                              fontSize: 25,
                              color: Color.fromRGBO(37, 76, 105, 1),
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          "\$2549",
                          style: TextStyle(
                              fontSize: 30,
                              color: Color.fromRGBO(37, 76, 105, 1),
                              fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "7 Listings",
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                        Text("90 days uptime",
                            style: TextStyle(fontSize: 16, color: Colors.grey)),
                        Text("Featured Listings",
                            style: TextStyle(fontSize: 16, color: Colors.grey)),
                        SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Buy Now",
                            style: TextStyle(color: Colors.white),
                          ),
                          style: ElevatedButton.styleFrom(
                              fixedSize: Size(300, 40),
                              shape: const RoundedRectangleBorder(),
                              backgroundColor: Colors.lightGreen),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'For individuals who want to start',
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
