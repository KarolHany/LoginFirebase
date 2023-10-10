import 'package:flutter/material.dart';

class ScreenPro extends StatelessWidget {
  String name;
  String phone;
  String photo;
  ScreenPro({required this.name, required this.phone, required this.photo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 241, 167, 254),
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Center(
          child: Text(
            "Welcome Back",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        actions: [
          Icon(Icons.favorite),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.notifications)
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            CircleAvatar(
              radius: 100,
              child: ClipOval(child: Image.asset("$photo")),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Text(
                name,
                style: TextStyle(
                    color: Colors.white, fontSize: 50, fontFamily: "Monoton"),
              ),
            ),
            Container(
              child: Text(
                "SoftWare Engineer",
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            Container(
              color: Colors.purple,
              margin: EdgeInsets.all(20),
              child: ListTile(
                title: Text(
                  phone,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.normal),
                ),
                leading: Icon(Icons.phone),
                iconColor: Colors.white,
              ),
            ),
            Container(
              color: Colors.purple,
              margin: EdgeInsets.all(20),
              child: ListTile(
                title: Text(
                  "http:\\linkedin\\$name",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.normal),
                ),
                leading: Icon(Icons.link),
                iconColor: Colors.white,
              ),
            ),
            Container(
              color: Colors.purple,
              margin: EdgeInsets.all(20),
              child: ListTile(
                title: Text(
                  "$name@gmail.com",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.normal),
                ),
                leading: Icon(Icons.phone),
                iconColor: Colors.white,
              ),
            ),
            Container(
              color: Colors.purple,
              margin: EdgeInsets.all(20),
              child: ListTile(
                title: Text(
                  "Atomika",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.normal),
                ),
                leading: Icon(Icons.map),
                iconColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
