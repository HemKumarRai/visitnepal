import 'package:basanta/packages.dart';
import 'package:flutter/material.dart';

import 'login _page.dart';

class LumbiniPage extends StatefulWidget {
  @override
  _LumbiniPageState createState() => _LumbiniPageState();
}

class _LumbiniPageState extends State<LumbiniPage> {
  int lumbiniImg = 1;
  int lumbini = 10;
  void getPhoto() {
    setState(() {
      lumbiniImg++;
      if (lumbiniImg > lumbini) {
        lumbiniImg = 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Welcome To Lumbini",
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
                Expanded(
                  child: Container(
                    width: 350,
                    height: 200,
                    child: Image.asset(
                      "images/lbn$lumbiniImg.jpg",
                      fit: BoxFit.cover,
                    ),
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
                        "Lumbinī is a Buddhist pilgrimage site in the Rupandehi District of Province No. 5 in Nepal. It is "
                        "the place where, according to Buddhist tradition, Queen Mahamayadevi gave birth to Siddhartha "
                        "Gautama in 563 BCE. Gautama, who achieved Enlightenment some time around 528 BCE, became "
                        "the Buddha and founded Buddhism. "),
                  ),
                )
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PkrPackages()));
                    },
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
                  ),
                )
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    child: Center(
                        child: Text(
                            "If you like this place please booked from here ☞")),
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
