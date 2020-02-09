//import 'package:flutter/material.dart';
//
//import 'login _page.dart';
//
//class PokharaPage extends StatefulWidget {
//  @override
//  _PokharaPageState createState() => _PokharaPageState();
//}
//
//class _PokharaPageState extends State<PokharaPage> {
//  @override
//  int pokharaimg = 1;
//  void getPhoto() {
//    setState(() {
//      pokharaimg++;
//      if (pokharaimg > 5) {
//        pokharaimg = 1;
//      }
//    });
//  }
//
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text(
//          "Welcome To Pokhara",
//          style: TextStyle(
//            fontWeight: FontWeight.bold,
//            fontStyle: FontStyle.italic,
//          ),
//        ),
//        centerTitle: true,
//      ),
//      body: Container(
//        margin: EdgeInsets.only(left: 20, top: 20),
//        child: Column(
//          children: <Widget>[
//            Row(
//              children: <Widget>[
//                Container(
//                  width: 350,
//                  height: 200,
//                  child: Image.asset(
//                    "images/pokhara$pokharaimg.jpg",
//                    fit: BoxFit.cover,
//                  ),
//                ),
//              ],
//            ),
//            Row(
//              children: <Widget>[
//                Container(
//                  margin: EdgeInsets.only(top: 20, left: 200),
//                  child: FlatButton(
//                    onPressed: () {
//                      getPhoto();
//                    },
//                    child: Text(
//                      "More Photos",
//                      style: TextStyle(
//                        fontSize: 20,
//                        color: Colors.black54,
//                        fontWeight: FontWeight.bold,
//                        backgroundColor: Colors.white,
//                      ),
//                    ),
//                  ),
//                )
//              ],
//            ),
//            Row(
//              children: <Widget>[
//                Expanded(
//                  child: Container(
//                    child: Text(
//                        "Pokhara is a city on Phewa Lake, in central Nepal. It’s known as a gateway to the Annapurna Circuit, a popular trail "
//                        "in the Himalayas. Tal Barahi Temple, a 2-story pagoda, sits on an island in the lake. On the eastern shore, the Lakeside district has"
//                        " yoga centers and restaurants. In the city’s south, the International"
//                        " Mountain Museum has exhibits on the history of mountaineering and the people of the Himalayas. "),
//                  ),
//                )
//              ],
//            ),
//            Row(
//              children: <Widget>[
//                Expanded(
//                  child: Container(
//                    margin: EdgeInsets.only(top: 20),
//                    child: Text(
//                      "Packages",
//                      style: TextStyle(
//                          fontWeight: FontWeight.bold,
//                          fontSize: 30,
//                          backgroundColor: Colors.yellow,
//                          color: Colors.white),
//                    ),
//                  ),
//                )
//              ],
//            ),
//            Row(
//              children: <Widget>[
//                Expanded(
//                  child: Container(
//                    child:
//                        Text("If you like this place please booked from here"),
//                  ),
//                ),
//                Expanded(
//                  child: Container(
//                    child: GestureDetector(
//                      onTap: () {
//                        Navigator.push(
//                            context,
//                            MaterialPageRoute(
//                                builder: (context) => LoginPage()));
//                      },
//                      child: Icon(
//                        Icons.supervised_user_circle,
//                        size: 40,
//                      ),
//                    ),
//                  ),
//                )
//              ],
//            )
//          ],
//        ),
//      ),
//    );
//  }
//}
