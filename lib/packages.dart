import 'package:basanta/login%20_page.dart';
import 'package:flutter/material.dart';

class PkrPackages extends StatefulWidget {
  @override
  _PkrPackagesState createState() => _PkrPackagesState();
}

class _PkrPackagesState extends State<PkrPackages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black38,
      appBar: AppBar(
        title: Text("Packages"),
        backgroundColor: Colors.black38,
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Center(
              child: Card(
                color: Colors.white,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      leading: Icon(Icons.album),
                      title: Text(
                        'Customized Package',
                        style: TextStyle(color: Colors.blue),
                      ),
                      subtitle: Text(
                        "Please visit our website for Customized package. We will soon bring this feature in our app also",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    ButtonBar(
                      children: <Widget>[
                        FlatButton(
                          child: const Text(
                            'Go to our website',
                            style: TextStyle(color: Colors.red),
                          ),
                          onPressed: () {/* ... */},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: Card(
                color: Colors.white,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      leading: Icon(Icons.album),
                      title: Text(
                        'Hire a Guide',
                        style: TextStyle(color: Colors.blue),
                      ),
                      subtitle: Text(
                        "You can hire a Guide for you to help u in your tour",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    ButtonBar(
                      children: <Widget>[
                        FlatButton(
                          child: const Text(
                            'More',
                            style: (TextStyle(color: Colors.red)),
                          ),
                          onPressed: () {/* ... */},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Text(
              "Package Features",
              style: TextStyle(
                  color: Colors.white,
                  decoration: TextDecoration.underline,
                  fontSize: 20,
                  fontStyle: FontStyle.italic),
            ),
            Center(
              child: Card(
                color: Colors.white,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      leading: Icon(Icons.album),
                      title: Text(
                        'Local Guiders and Home Stay',
                        style: TextStyle(color: Colors.blue),
                      ),
                      subtitle: Text(
                        "Right now we are making .....",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    ButtonBar(
                      children: <Widget>[
                        FlatButton(
                          child: const Text(
                            'More',
                            style: TextStyle(color: Colors.red),
                          ),
                          onPressed: () {/* ... */},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 20.0),
                    height: 110.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                            width: 160.0,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8.0)),
                                color: Colors.lightBlueAccent),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginPage()));
                              },
                              child: Image.asset(
                                "images/p1.jpg",
                                fit: BoxFit.cover,
                              ),
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                            width: 160.0,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8.0)),
                              color: Colors.lightBlueAccent,
                            ),
                            child: Image.asset(
                              "images/p2.jpg",
                              fit: BoxFit.cover,
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                            width: 160.0,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8.0)),
                              color: Colors.lightBlueAccent,
                            ),
                            child: Image.asset(
                              "images/p3.jpg",
                              fit: BoxFit.cover,
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                            width: 160.0,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8.0)),
                              color: Colors.lightBlueAccent,
                            ),
                            child: Image.asset(
                              "images/p4.jpg",
                              fit: BoxFit.cover,
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                            width: 160.0,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8.0)),
                              color: Colors.lightBlueAccent,
                            ),
                            child: Image.asset(
                              "images/p5.jpg",
                              fit: BoxFit.cover,
                            )),
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
//F45959
