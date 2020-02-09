import 'package:flutter/material.dart';

class ConfirmationPage extends StatefulWidget {
  @override
//  String Name;
  _ConfirmationPageState createState() => _ConfirmationPageState();
}

class _ConfirmationPageState extends State<ConfirmationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Regestired Page"),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                child: Center(
                  child: Text(
                    "Log In Successfully",
                    style: TextStyle(fontStyle: FontStyle.italic, fontSize: 20),
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
