import 'package:basanta/services/weather.dart';
import 'package:flutter/material.dart';

import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'location_screen.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  void getLocation() async {
//    WeatherModel weatherModel = new WeatherModel();
    var decodeData = await WeatherModel().getLocation();
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => LocationScreen(decodeData)));
  }

  @override
  void initState() {
    super.initState();
    getLocation();
  }

  @override
  void deactivate() {
    super.deactivate();
    print("The screen is closed");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpinKitWave(
          color: Colors.white,
        ),
      ),
    );
  }
}

//line 20 21
