import 'package:basanta/services/weather.dart';
import 'package:basanta/utilities/constants.dart';
import 'package:flutter/material.dart';

import 'city_screen.dart';

class LocationScreen extends StatefulWidget {
  var decodeData;
  LocationScreen(this.decodeData);

  @override
  _LocationScreenState createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  String cityName;
  int temperature;
  int condition;

  WeatherModel weatherModel = new WeatherModel();
  String message;
  String weatherIcon;
  void initState() {
    // TODO: implement initState
    super.initState();
    updateUI(widget.decodeData);
  }

  void updateUI(var decodeData) {
    setState(() {
      if (decodeData == null) {
        message = "Error getting the Data.Try Again!";
        temperature = 0;
        weatherIcon = "Error!";
        cityName = "";
        return;
      }

      var cityN = decodeData['name'];
      var cond = decodeData['weather'][0]['id'];
      var temp = decodeData['main']['temp'];

      temperature = temp.toInt();
      message = weatherModel.getMessage(temperature);
      condition = cond.toInt();
      weatherIcon = weatherModel.getWeatherIcon(condition);
      cityName = cityN.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/location_background.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.white.withOpacity(0.8), BlendMode.dstATop),
          ),
        ),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    FlatButton(
                      onPressed: () async {
                        var decodedData = await weatherModel.getLocation();
                        updateUI(decodedData);
                      },
                      child: Icon(
                        Icons.near_me,
                        size: 40.0,
                      ),
                    ),
                    FlatButton(
                      onPressed: () async {
                        var typedName = await Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CityScreen()));
                        print(typedName);
                        if (typedName != null) {
                          var dacodeData =
                              await weatherModel.getCityWeather(typedName);
                          updateUI(dacodeData);
                        }
                      },
                      child: Icon(
                        Icons.location_city,
                        size: 40.0,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 6,
                child: Padding(
                  padding: const EdgeInsets.only(top: 25.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        '$weatherIcon',
                        style: kConditionTextStyle,
                      ),
                      Text(
                        '$temperature°',
                        style: kTempTextStyle,
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Text(
                  "$message in $cityName",
                  textAlign: TextAlign.center,
                  style: kMessageTextStyle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
//for style what to import extra
//line 38n39 40 what we get and how
