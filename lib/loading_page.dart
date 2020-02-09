import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'main.dart';

class LoadingPage extends StatefulWidget {
  @override
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  void go() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));
  }

  @override
//  void initState() {
//    // TODO: implement initState
//    super.initState();
//    go();
//  }
//
//  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => MyApp()));
          },
          child: SpinKitWave(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

//#1F4FA0
//#EA1D21
