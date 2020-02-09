import 'package:basanta/login%20_page.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PTour extends StatefulWidget {
  @override
  _PTourState createState() => _PTourState();
}

class _PTourState extends State<PTour> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 250.0,
              width: 390.0,
              child: Carousel(
                boxFit: BoxFit.cover,
                autoplay: true,
                animationCurve: Curves.fastOutSlowIn,
                animationDuration: Duration(milliseconds: 1000),
                dotSize: 6.0,
                dotIncreasedColor: Color(0xFFFF335C),
                dotBgColor: Colors.transparent,
                dotPosition: DotPosition.topRight,
                dotVerticalPadding: 10.0,
                showIndicator: true,
                indicatorBgPadding: 7.0,
                images: [
                  AssetImage(
                    "images/pokhara.jpg",
                  ),
                  AssetImage(
                    "images/pokhara1.jpg",
                  ),
                  AssetImage(
                    "images/pokhara3.jpg",
                  ),
                  AssetImage(
                    "images/pokhara4.jpg",
                  ),
                  AssetImage(
                    "images/pokhara5.jpg",
                  ),
                ],
              ),
            ),
            Row(
              children: <Widget>[
                Container(
                  width: 350,
                  height: 30,
                  child: Center(
                    child: Text(
                      "Welcome to Pokhara ",
                      style: TextStyle(fontSize: 25, color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                text: TextSpan(
                  text: "Pokhara ",
                  style: TextStyle(fontSize: 15, color: Colors.black),
                  children: [
                    TextSpan(
                        text: "(Nepali: पोखरा)",
                        style: TextStyle(
                          color: Colors.red,
                        )),
                    TextSpan(
                      text:
                          "is a metropolitan city in Nepal, which serves as the capital of Gandaki Pradesh."
                          " It is the country's second largest city in terms of both population and area. "
                          "The city also serves as the headquarters of Kaski District. ",
                    ),
                    TextSpan(
                        text: "More",
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.red)),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Places to visit in Pokhara",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 20.0),
                    height: 200.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 160.0,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.blueAccent,
                                  blurRadius:
                                      10.0, // has the effect of softening the shadow
                                  spreadRadius:
                                      5.0, // has the effect of extending the shadow
                                  offset: Offset(
                                    10.0, // horizontal, move right 10
                                    10.0, // vertical, move down 10
                                  ),
                                )
                              ],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8.0)),
                              color: Colors.lightBlueAccent),
                          child: Tooltip(
                            message: "Mardi Himal",
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginPage()));
                              },
                              child: Image.asset(
                                "images/pp1.jpg",
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 160.0,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.blueAccent,
                                blurRadius:
                                    10.0, // has the effect of softening the shadow
                                spreadRadius:
                                    5.0, // has the effect of extending the shadow
                                offset: Offset(
                                  10.0, // horizontal, move right 10
                                  10.0, // vertical, move down 10
                                ),
                              )
                            ],
                            borderRadius:
                                BorderRadius.all(Radius.circular(8.0)),
                            color: Colors.lightBlueAccent,
                          ),
                          child: Tooltip(
                            message: "Ghandruk",
                            child: Image.asset("images/pp2.jpg"),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 160.0,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.blueAccent,
                                blurRadius:
                                    10.0, // has the effect of softening the shadow
                                spreadRadius:
                                    5.0, // has the effect of extending the shadow
                                offset: Offset(
                                  10.0, // horizontal, move right 10
                                  10.0, // vertical, move down 10
                                ),
                              )
                            ],
                            borderRadius:
                                BorderRadius.all(Radius.circular(8.0)),
                            color: Colors.lightBlueAccent,
                          ),
                          child: Tooltip(
                            message: "Sarangkot",
                            child: Image.asset("images/pp3.jpeg"),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 160.0,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.blueAccent,
                                blurRadius:
                                    10.0, // has the effect of softening the shadow
                                spreadRadius:
                                    5.0, // has the effect of extending the shadow
                                offset: Offset(
                                  10.0, // horizontal, move right 10
                                  10.0, // vertical, move down 10
                                ),
                              )
                            ],
                            borderRadius:
                                BorderRadius.all(Radius.circular(8.0)),
                            color: Colors.lightBlueAccent,
                          ),
                          child: Tooltip(
                            message: "Machapuchre",
                            child: Image.asset("images/pp4.jpg"),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 160.0,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.blueAccent,
                                blurRadius:
                                    10.0, // has the effect of softening the shadow
                                spreadRadius:
                                    5.0, // has the effect of extending the shadow
                                offset: Offset(
                                  10.0, // horizontal, move right 10
                                  10.0, // vertical, move down 10
                                ),
                              )
                            ],
                            borderRadius:
                                BorderRadius.all(Radius.circular(8.0)),
                            color: Colors.lightBlueAccent,
                          ),
                          child: Tooltip(
                              message: "Fewa Lake",
                              child: Image.asset("images/pp5.jpg")),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
