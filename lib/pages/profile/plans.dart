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
        preferredSize: Size.fromHeight(5.0), // here the desired height
        child: AppBar(),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: SafeArea(
          child: Column(
            children: [
              Text(
                "Plans and Pricing",
                style: TextStyle(
                    fontSize: 30, color: Color.fromRGBO(37, 76, 105, 1)),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(25),
                height: height * 0.3,
                width: width,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(234, 234, 249, 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/gold1.png',
                      height: 130,
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Gold",
                          style: TextStyle(
                              fontSize: 35,
                              color: Color.fromRGBO(37, 76, 105, 1),
                              fontWeight: FontWeight.w700),
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
                            "Get Started",
                            style: TextStyle(color: Colors.white),
                          ),
                          style: ElevatedButton.styleFrom(
                              shape: const RoundedRectangleBorder(),
                              backgroundColor: Colors.lightGreen),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(25),
                height: height * 0.3,
                width: width,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(234, 234, 249, 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/silver.png',
                      height: 130,
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Silver",
                          style: TextStyle(
                              fontSize: 35,
                              color: Color.fromRGBO(37, 76, 105, 1),
                              fontWeight: FontWeight.w700),
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
                            "Get Started",
                            style: TextStyle(color: Colors.white),
                          ),
                          style: ElevatedButton.styleFrom(
                              shape: const RoundedRectangleBorder(),
                              backgroundColor: Colors.lightGreen),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(25),
                height: height * 0.3,
                width: width,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(234, 234, 249, 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/dimond.png',
                      height: 130,
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Dimond",
                          style: TextStyle(
                              fontSize: 35,
                              color: Color.fromRGBO(37, 76, 105, 1),
                              fontWeight: FontWeight.w700),
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
                            "Get Started",
                            style: TextStyle(color: Colors.white),
                          ),
                          style: ElevatedButton.styleFrom(
                              shape: const RoundedRectangleBorder(),
                              backgroundColor: Colors.lightGreen),
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
