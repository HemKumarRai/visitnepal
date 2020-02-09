import 'package:basanta/pokhara.dart';
import 'package:basanta/pokhara_page.dart';
import 'package:basanta/region_dis_page.dart';
import 'package:flutter/material.dart';

import 'kathmandu.dart';
import 'lumbini.dart';
import 'mount_page.dart';

class HomeContent extends StatefulWidget {
  @override
  _HomeContentState createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
  String cityName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(top: 50),
                  child: Image.asset("images/homecontent.jpg"),
                ),
              )
            ],
          ),
          Row(
            children: <Widget>[
              SizedBox(
                width: 8,
              ),
              Container(
                margin: EdgeInsets.all(10),
                height: 100,
                width: 170,
                color: Colors.black,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => PTour()));
                  },
                  child: Image.asset(
                    "images/pokhara.jpg",
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                height: 100,
                width: 170,
                color: Colors.black,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => KathmanduPage()));
                  },
                  child: Image.asset(
                    "images/kathmandu.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              SizedBox(
                width: 8,
              ),
              Container(
                margin: EdgeInsets.all(10),
                height: 100,
                width: 170,
                color: Colors.black,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LumbiniPage()));
                  },
                  child: Image.asset(
                    "images/lumbini.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 100,
                    width: 170,
                    color: Colors.black,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MountPage()));
                      },
                      child: Image.asset(
                        "images/mounteverest.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
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
                          builder: (context) => RegionDescriptionPage()));
                },
                child: Container(
                  margin: EdgeInsets.only(left: 20),
                  height: 80,
                  color: Colors.red,
                  width: 350,
                  child: Center(
                    child: Text(
                      "Click Here For More",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20.0),
                    ),
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
