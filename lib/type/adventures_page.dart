import 'package:flutter/material.dart';

class AdventuresPage extends StatefulWidget {
  @override
  _AdventuresPageState createState() => _AdventuresPageState();
}

class _AdventuresPageState extends State<AdventuresPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" Some Adventure Places "),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(10),
                height: 170,
                width: 170,
                color: Colors.white,
                child: Image.asset("images/adv1.jpg"),
              ),
              Container(
                margin: EdgeInsets.all(10),
                height: 170,
                width: 170,
                color: Colors.white,
                child: Image.asset("images/adv2.jpg"),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(10),
                height: 170,
                width: 170,
                color: Colors.white,
              ),
              Container(
                margin: EdgeInsets.all(10),
                height: 170,
                width: 170,
                color: Colors.white,
                child: Image.asset("images/adv3.jpg"),
              )
            ],
          )
        ],
      ),
    );
  }
}
