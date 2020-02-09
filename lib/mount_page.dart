import 'package:flutter/material.dart';

import 'login _page.dart';

class MountPage extends StatefulWidget {
  @override
  _MountPageState createState() => _MountPageState();
}

class _MountPageState extends State<MountPage> {
  int mountImg = 1;
  var mt = 9;
  void getPhoto() {
    setState(() {
      mountImg++;
      if (mountImg > mt) {
        mountImg = 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Welcome To MountEverest",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.only(top: 30, left: 20),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  width: 350,
                  height: 200,
                  child: Image.asset(
                    "images/mt$mountImg.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 20, left: 200),
                  child: FlatButton(
                    onPressed: () {
                      getPhoto();
                    },
                    child: Text(
                      "More Photos",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                        backgroundColor: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                    child: Container(
                  child: Text(
                      "Mount Everest is the world’s highest mountain above sea level.The official elevation of Mount E"
                      ""
                      "verest is 29,035 feet 8850 meters above sea level.Mount Everest is located on the border of Nepal and Tibet.The Mount Eve"
                      "rest is shaped like a pyramid due to its three flat sides.The Mount Everest was named in 1865, after Sir George Everest the"
                      " Surveyor General of IndiaBefore that it used to be known"
                      " as Peak XV by the British Government Sherpa is an ethnic group indigenous to mo"
//
                      ),
                ))
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(top: 30),
                    child: Text(
                      "Packages",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          backgroundColor: Colors.blue,
                          color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    child:
                        Text("If you like this place please booked from here"),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()));
                      },
                      child: Icon(
                        Icons.supervised_user_circle,
                        size: 40,
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
