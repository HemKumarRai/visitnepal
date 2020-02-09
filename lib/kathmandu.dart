import 'package:flutter/material.dart';

import 'login _page.dart';

class KathmanduPage extends StatefulWidget {
  @override
  _KathmanduPageState createState() => _KathmanduPageState();
}

class _KathmanduPageState extends State<KathmanduPage> {
  int ktm = 9;
  int ktmImg = 1;
  void getPhoto() {
    setState(() {
      ktmImg++;
      if (ktmImg > ktm) {
        ktmImg = 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Welcome To Kathmandu",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 20, top: 30),
                  width: 350,
                  height: 200,
                  child: Image.asset(
                    "images/ktm$ktmImg.jpg",
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
                    child: Text("Kathmandu, Nepal's capital, is set "
                        "in a valley surrounded by the Himalayan mountains. At the heart of the old city’s mazelike alleys is Durbar Square, "
                        "which becomes frenetic during Indra Jatra, a religious festival featuring masked dances. Many of the city's historic sites "
                        "were damaged or destroyed by a"
                        " 2015 earthquake. Durbar Square's palace, Hanuman Dhoka, and Kasthamandap, a wooden Hindu temple, are being rebuilt "),
                  ),
                )
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(top: 20),
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
            ),
          ],
        ),
      ),
    );
  }
}
