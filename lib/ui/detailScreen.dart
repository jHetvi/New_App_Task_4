import 'dart:convert';

import 'package:draba_task3/model/joinModel.dart';
import 'package:draba_task3/ui/homeScreem.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class DetailScreen extends StatefulWidget {
  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  void backNavigate() {
    setState(() {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomePage()));
    });
  }

  void _apiCall() {
    FutureBuilder<JoinModel>(
      future: getUser(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          //final card = snapshot.data;
          /*  print(
              "id : ${card.data.id} \n }"); */
        } else if (snapshot.hasError) {
          return Text(snapshot.error.toString());
        }

        return CircularProgressIndicator();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        reverse: true,
        physics: AlwaysScrollableScrollPhysics(),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.black,
          child: Column(
            children: <Widget>[
              Container(
                //color: Colors.black54,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        height: 200,
                        width: double.infinity,
                        child: Center(
                            child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://wallpapercave.com/wp/jIbokTb.jpg"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        )),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          FlatButton(
                            onPressed: backNavigate,
                            child: Image(
                              image: ExactAssetImage("images/ic_back.png"),
                              height: 20.0,
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.fromLTRB(50.0, 0.0, 0.0, 0.0),
                            child: Text(
                              "Project Details",
                              style: TextStyle(
                                  fontSize: 25.0, color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      top: 160,
                      left: 10,
                      child: Center(
                          child: Text(
                        'Lime Light',
                        style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )),
                    ),
                    Positioned(
                      top: 150,
                      right: 15,
                      child: CircleAvatar(
                        radius: 22,
                        backgroundColor: Colors.grey,
                        child: Image.asset(
                          "images/ic_website.png",
                          height: 25.0,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 158,
                      right: 65,
                      child: Container(
                          alignment: Alignment.topRight,
                          width: 55.0,
                          height: 30.0,
                          child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.0)),
                              ),
                              color: Colors.grey,
                              onPressed: () {
                                print("Eye Button Pressed");
                              },
                              child: Row(
                                children: <Widget>[
                                  Image.asset(
                                    'images/ic_coffee_bean.png',
                                    width: 10.0,
                                  ),
                                  SizedBox(width: 5.0),
                                  Text(
                                    "3",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ))),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                reverse: true,
                physics: BouncingScrollPhysics(),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    constraints: BoxConstraints.expand(height: 260),
                    child: Stack(
                      textDirection: TextDirection.ltr,
                      children: <Widget>[
                        Text(
                          "Description",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                        Positioned(
                          top: 25.0,
                          child: Text(
                            "Lime Coffee Soda",
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 50,
                          child: CircleAvatar(
                            radius: 20,
                            backgroundColor: Colors.grey,
                            child: Image.asset(
                              "images/ic_user_menu.png",
                              height: 25.0,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 60.0,
                          left: 50.0,
                          child: Text(
                            "Test dhdh",
                            style: TextStyle(
                                color: Colors.white70,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Positioned(
                          top: 105.0,
                          left: 30.0,
                          child: Text(
                            "Monday June 08th",
                            style: TextStyle(
                                color: Colors.white70,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Positioned(
                            top: 100.0,
                            child: Icon(Icons.calendar_today,
                                color: Colors.greenAccent)),
                        Positioned(
                            top: 130.0,
                            child:
                                Icon(Icons.timer, color: Colors.greenAccent)),
                        Positioned(
                          top: 163.0,
                          left: 30.0,
                          child: Text(
                            "Bluebird La, Boone, US, 286075 ",
                            style: TextStyle(
                                color: Colors.white70,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Positioned(
                            top: 160.0,
                            child: Icon(Icons.location_on,
                                color: Colors.greenAccent)),
                        Positioned(
                          top: 195,
                          left: 20.0,
                          child: CircleAvatar(
                            radius: 20,
                            backgroundColor: Colors.grey,
                            child: Image.asset(
                              "images/ic_user_menu.png",
                              height: 25.0,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 195,
                          child: CircleAvatar(
                            radius: 20,
                            backgroundColor: Colors.grey,
                            child: Image.asset(
                              "images/ic_user_menu.png",
                              height: 25.0,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 205.0,
                          left: 70.0,
                          child: Text(
                            "2 Going",
                            style: TextStyle(
                                color: Colors.white70,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Stack(
                  alignment: AlignmentDirectional.bottomCenter,
                  children: <Widget>[
                    Container(
                      width: 200.0,
                      height: 50.0,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0))),
                        onPressed: () {
                          _apiCall();
                        },
                        //textColor: Colors.black,
                        color: Colors.greenAccent,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Expanded(
                              child: Text(
                                'Join',
                                style: TextStyle(
                                    fontSize: 25.0, color: Colors.white),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Future<JoinModel> getUser() async {
  final url =
      "http://167.172.149.230/api/get-event-detail?event_id=2&%20user_id=6";
  final response = await http.get(url);
  print(response.body);
  if (response.statusCode > 200 || response.statusCode < 600) {
    final jsonLogin = jsonDecode(response.body);

    return JoinModel.fromJson(jsonLogin);
  } else {
    throw Exception("Error while fetching data");
  }
}
