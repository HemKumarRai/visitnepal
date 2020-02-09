import 'dart:ui';

import 'package:basanta/type/adventures_page.dart';
import 'package:flutter/material.dart';

class RegionDescriptionPage extends StatefulWidget {
  @override
  _RegionDescriptionPageState createState() => _RegionDescriptionPageState();
}

class _RegionDescriptionPageState extends State<RegionDescriptionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(30),
                  height: 80,
                  width: 350,
                  child: Center(
                    child: Text(
                      "What Type Of Travel You Want?",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontStyle: FontStyle.italic,
                          fontSize: 20.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AdventuresPage()));
                },
                child: Container(
                  margin: EdgeInsets.only(left: 60),
                  height: 80,
                  width: 300,
                  color: Color(0xFF0645AD),
                  child: Center(
                    child: Text(
                      "Adventures",
                      style: TextStyle(
                          color: Colors.white,
                          fontStyle: FontStyle.italic,
                          fontSize: 30),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 60, top: 20),
                height: 80,
                width: 300,
                color: Color(0xFF0645AD),
                child: Center(
                  child: Text(
                    "Exploration",
                    style: TextStyle(
                        color: Colors.white,
//                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        fontSize: 30),
                  ),
                ),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 60, top: 20),
                height: 80,
                width: 300,
                color: Color(0xFF0645AD),
                child: Center(
                  child: Text(
                    "Business",
                    style: TextStyle(
                        color: Colors.white,
//                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        fontSize: 30),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
