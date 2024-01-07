import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:house/pages/details.dart';
import 'package:house/pages/xyz.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var dropdownValue = "INDIA";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: AppBar(
          actions: [
            Material(
              type: MaterialType.transparency,
              child: Ink(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.green, width: 2),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50.0)), //<-- SEE HERE
                child: InkWell(
                  borderRadius: BorderRadius.circular(100.0),
                  onTap: () {},
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Icon(
                      Icons.notification_add_rounded,
                      size: 18.0,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Material(
              type: MaterialType.transparency,
              child: Ink(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 2),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50.0)), //<-- SEE HERE
                child: InkWell(
                  borderRadius: BorderRadius.circular(100.0),
                  onTap: () {},
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Icon(
                      Icons.person_2_rounded,
                      size: 18.0,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 20,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border_outlined),
            label: '',
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                child: Row(
                  children: [
                    Text(
                      "Hey,",
                      style: TextStyle(fontSize: 23),
                    ),
                    Text(
                      "Jonathan!",
                      style: TextStyle(
                          fontSize: 23,
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Container(
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "lets start exploring",
                      style: TextStyle(fontSize: 23),
                    )),
              ),
              SizedBox(
                height: 10,
              ),

              TextField(
                decoration: InputDecoration(
                  fillColor: Colors.white70,
                  filled: true,
                  suffixIcon: Icon(Icons.mic),
                  hintText: "Search,House,Apartments,etc",
                  contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  prefixIcon: Icon(Icons.search_rounded),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),

              SizedBox(
                height: 10,
              ),
              Container(
                height: 70,
                child: xyz(),
              ),

              Container(
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
                            color: Colors.deepPurpleAccent, //<-- SEE HERE
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
                              image: AssetImage("assets/img.png"),
                              fit: BoxFit.cover,
                              alignment: Alignment.topCenter,
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text(
                                "Halloween Sale!",
                                style: TextStyle(
                                    fontSize: 22,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text("All diccount up to 60%"),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: ElevatedButton(
                                    style: ButtonStyle(
                                      foregroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.white),
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
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
                                              builder: (context) =>
                                                  HomePageWidget()));
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
              ),
              SizedBox(
                height: 10,
              ),
// featured Estates
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  "Featured Estates",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
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
                                    color: Colors.lightBlue),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Material(
                                      type: MaterialType.transparency,
                                      child: Ink(
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.green, width: 2),
                                            color: Colors.green,
                                            borderRadius: BorderRadius.circular(
                                                50.0)), //<-- SEE HERE
                                        child: InkWell(
                                          borderRadius:
                                              BorderRadius.circular(100.0),
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
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                                  Color.fromRGBO(
                                                      35, 78, 105, 1))),
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    HomePageWidget()));
                                      },
                                      child: Text(
                                        "Apartments",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 9),
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
                                      "Sky Apartments",
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
                                        Text("4.9")
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.map,
                                          color: Colors.orange,
                                        ),
                                        Text(
                                          "Jakarta, Indonesia",
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
                                          "Rs. 290",
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  35, 78, 105, 1),
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
              ),

              // top locations
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      "Top Locations",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text("explore"),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 100,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color.fromRGBO(244, 244, 249, 1),
                    ),
                    child: Card(
                      color: Color.fromRGBO(244, 244, 249, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ClipOval(
                            child: SizedBox.fromSize(
                              size: Size.fromRadius(20), // Image radius
                              child: Image.asset('assets/house.jpg',
                                  fit: BoxFit.cover),
                            ),
                          ),
                          Text("Bali")
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 120,
                    height: 60,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ClipOval(
                            child: SizedBox.fromSize(
                              size: Size.fromRadius(20), // Image radius
                              child: Image.asset('assets/houseee.jpg',
                                  fit: BoxFit.cover),
                            ),
                          ),
                          Text("Jakarta")
                        ],
                      ),
                      color: Color.fromRGBO(244, 244, 249, 1),
                    ),
                  ),
                  Container(
                    width: 140,
                    height: 60,
                    child: Card(
                      color: Color.fromRGBO(244, 244, 249, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ClipOval(
                            child: SizedBox.fromSize(
                              size: Size.fromRadius(20), // Image radius
                              child: Image.asset('assets/house.jpg',
                                  fit: BoxFit.cover),
                            ),
                          ),
                          Text("Yogyakarta")
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              //top estate agents
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      "Top Estate Agents",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text("explore"),
                  ),
                ],
              ),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(4), // Border width
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(244, 244, 249, 1),
                                shape: BoxShape.circle),
                            child: ClipOval(
                              child: SizedBox.fromSize(
                                size: Size.fromRadius(25), // Image radius
                                child: Image.asset('assets/person.jpg',
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              "Amanda",
                              style: TextStyle(fontSize: 14),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(4), // Border width
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(244, 244, 249, 1),
                                shape: BoxShape.circle),
                            child: ClipOval(
                              child: SizedBox.fromSize(
                                size: Size.fromRadius(25), // Image radius
                                child: Image.asset('assets/person.jpg',
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              "Samantha",
                              style: TextStyle(fontSize: 14),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(4), // Border width
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(244, 244, 249, 1),
                                shape: BoxShape.circle),
                            child: ClipOval(
                              child: SizedBox.fromSize(
                                size: Size.fromRadius(25), // Image radius
                                child: Image.asset('assets/person.jpg',
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              "Andrew",
                              style: TextStyle(fontSize: 14),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(4), // Border width
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(244, 244, 249, 1),
                                shape: BoxShape.circle),
                            child: ClipOval(
                              child: SizedBox.fromSize(
                                size: Size.fromRadius(25), // Image radius
                                child: Image.asset('assets/person.jpg',
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              "Anderson",
                              style: TextStyle(fontSize: 14),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(4), // Border width
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(244, 244, 249, 1),
                                shape: BoxShape.circle),
                            child: ClipOval(
                              child: SizedBox.fromSize(
                                size: Size.fromRadius(25), // Image radius
                                child: Image.asset('assets/person.jpg',
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              "samantha",
                              style: TextStyle(fontSize: 14),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    SizedBox(
                      width: 30,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  "Top Estate Location",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                height: 400,
                child: itemDisplay(),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class itemDisplay extends StatelessWidget {
  const itemDisplay({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 4,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.all(0),
          child: Container(
            margin: EdgeInsets.all(7),
            padding: EdgeInsets.all(10),
            height: 250,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color.fromRGBO(244, 244, 249, 1),
            ),
            child: Column(
              children: [
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      opacity: 1,
                      image: AssetImage("assets/houseee.jpg"),
                      fit: BoxFit.cover,
                      alignment: Alignment.topCenter,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Wings Tower",
                    style: TextStyle(
                        fontSize: 15, color: Color.fromRGBO(35, 73, 105, 1)),
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.orange,
                      size: 15,
                    ),
                    Text("4.9"),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.pin_drop,
                      size: 15,
                    ),
                    Text("Jakarta"),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
