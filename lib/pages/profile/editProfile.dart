import 'package:flutter/material.dart';
import 'package:house/pages/profile/profilePage.dart';
import 'package:mapbox_search/mapbox_search.dart';

class editProfile extends StatefulWidget {
  const editProfile({super.key});

  @override
  State<editProfile> createState() => _editProfileState();
}

class _editProfileState extends State<editProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Edit Profile')),
        leading: CircleAvatar(
          child: IconButton(
              onPressed: () {
                Navigator.popUntil(context, (route) => route.isFirst);
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => ProfilePage()));
              },
              icon: Icon(Icons.arrow_back)),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: SafeArea(
          child: Column(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/person.jpg"),
                  radius: 60,
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: Color.fromRGBO(37, 73, 105, 1),
                      child: Center(
                        child: IconButton(
                          color: Colors.white,
                          alignment: Alignment.bottomRight,
                          onPressed: () {},
                          icon: Icon(Icons.edit_outlined),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(20),
                    suffixIcon: Icon(Icons.person_outline_rounded),
                    fillColor: Color.fromRGBO(244, 244, 249, 1),
                    hintText: "Mathew Adam",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(20),
                    suffixIcon: Icon(Icons.phone_outlined),
                    fillColor: Color.fromRGBO(244, 244, 249, 1),
                    hintText: "+62 112-3288-9111",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(20),
                    suffixIcon: Icon(Icons.email_outlined),
                    fillColor: Color.fromRGBO(244, 244, 249, 1),
                    hintText: "mathew@gmail.com",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(Colors.lightGreen)),
                onPressed: () {},
                child: Text(
                  "Update details",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
