import 'package:flutter/material.dart';

import 'confirmation_Page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  var Phone;
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 75.0,
              backgroundImage: AssetImage("images/logo.png"),
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
              color: Colors.white,
              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    title: TextField(
                      onChanged: (Phone),
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Please enter Your Name!",
                          hintStyle: TextStyle(
                            color: Colors.red,
                          ),
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular((10))),
                            borderSide: BorderSide.none,
                          )),
                    ),
                  )),
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
              color: Colors.white,
              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    title: TextField(
                      onChanged: (Phone),
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Please enter Your Contact!",
                          hintStyle: TextStyle(
                            color: Colors.red,
                          ),
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular((10))),
                            borderSide: BorderSide.none,
                          )),
                    ),
                  )),
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
              color: Colors.white,
              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    title: TextField(
                      onChanged: (Phone),
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Please enter Your Email!",
                          hintStyle: TextStyle(
                            color: Colors.red,
                          ),
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular((10))),
                            borderSide: BorderSide.none,
                          )),
                    ),
                  )),
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
              color: Colors.white,
              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    title: TextField(
                      onChanged: (Phone),
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Country",
                          hintStyle: TextStyle(
                            color: Colors.red,
                          ),
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular((10))),
                            borderSide: BorderSide.none,
                          )),
                    ),
                  )),
            ),
            Container(
              child: ButtonBar(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ConfirmationPage()));
                    },
                    child: Text(
                      "Log In",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
