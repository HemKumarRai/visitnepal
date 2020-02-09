import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutUs extends StatefulWidget {
  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      appBar: AppBar(
        backgroundColor: Colors.black12,
        title: Text("About Us"),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Center(
              child: Container(
                width: 130.0,
                height: 110.0,
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  shape: BoxShape.circle,
                ),
                child: Image.network(
                    "https://cdn.pixabay.com/photo/2013/07/13/01/24/bunny-155674__340.png"),
              ),
            ),
            Text(
              "Manish Gurung",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Container(
                width: 130.0,
                height: 110.0,
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  shape: BoxShape.circle,
                ),
                child: Image.network(
                    "https://cdn.pixabay.com/photo/2013/07/13/01/24/bunny-155674__340.png"),
              ),
            ),
            Text(
              "Suman Khatri",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Container(
                width: 130.0,
                height: 110.0,
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  shape: BoxShape.circle,
                ),
                child: Image.network(
                    "https://cdn.pixabay.com/photo/2013/07/13/01/24/bunny-155674__340.png"),
              ),
            ),
            Text(
              "Deepak Khadka",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Container(
                width: 130.0,
                height: 110.0,
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  shape: BoxShape.circle,
                ),
                child: Image.network(
                    "https://cdn.pixabay.com/photo/2013/07/13/01/24/bunny-155674__340.png"),
              ),
            ),
            Text(
              "Hem Kumar Rai",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
