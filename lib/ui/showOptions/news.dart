import 'dart:convert';
import 'package:draba_task3/model/newsModel.dart';
import 'package:draba_task3/ui/detailScreen.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
//import 'package:flutter_icons/flutter_icons.dart';

class NewsTab extends StatefulWidget {
  @override
  _NewsTabState createState() => _NewsTabState();
}

class _NewsTabState extends State<NewsTab> {
 

  void _apiCall() {
    FutureBuilder<NewsModel>(
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
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(5),
            child: Card(
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              color: Colors.black54,
              child: InkWell(
                onTap: () {
                  _apiCall();
                  setState(() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailScreen()));
                  });
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Center(
                      child: Container(
                          constraints: new BoxConstraints.expand(
                              height: 150.0, width: 450),
                          alignment: Alignment.bottomLeft,
                          padding: new EdgeInsets.only(
                              left: 16.0, bottom: 8.0, top: 8.0),
                          decoration: new BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            image: new DecorationImage(
                              image: new NetworkImage(
                                  "https://images.unsplash.com/photo-1523821741446-edb2b68bb7a0?ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80"),
                              fit: BoxFit.fill,
                            ),
                          ),
                          child: Row(
                            //mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                constraints: new BoxConstraints.expand(
                                    height: 20.0, width: 40),
                                decoration: new BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: new DecorationImage(
                                    image: new NetworkImage(
                                        "https://www.vippng.com/png/full/409-4094973_delivery-clipart-home-delivery-logo-free-delivery-order.png"),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(
                                      15.0, 50.0, 10.0, 0.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text('Lime Light',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xFF000000),
                                              fontSize: 18.0)),
                                      SizedBox(width: 20.0),
                                      Text(
                                        'Monday, June 08th',
                                        style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            color: Colors.white70,
                                            fontSize: 13.0),
                                      ),
                                      Text(
                                        'Lime Coffe Soda',
                                        style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            color: Colors.white70,
                                            fontSize: 13.0),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                    alignment: Alignment.topRight,
                                    width: 60.0,
                                    child: RaisedButton(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20.0)),
                                        ),
                                        color: Colors.white70,
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
                          )),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(5),
            child: Card(
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              color: Colors.black54,
              child: InkWell(
                onTap: () {
                  _apiCall();
                  setState(() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailScreen()));
                  });
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Center(
                      child: Container(
                          constraints: new BoxConstraints.expand(
                              height: 150.0, width: 450),
                          alignment: Alignment.bottomLeft,
                          padding: new EdgeInsets.only(
                              left: 16.0, bottom: 8.0, top: 8.0),
                          decoration: new BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            image: new DecorationImage(
                              image: new NetworkImage(
                                  "https://www.jakpost.travel/wimages/large/7-78242_blurry-blue-background-4k-hd-desktop-wallpaper.jpg"),
                              fit: BoxFit.fill,
                            ),
                          ),
                          child: Row(
                            //mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                constraints: new BoxConstraints.expand(
                                    height: 20.0, width: 40),
                                decoration: new BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: new DecorationImage(
                                    image: new NetworkImage(
                                        "https://www.vippng.com/png/full/409-4094973_delivery-clipart-home-delivery-logo-free-delivery-order.png"),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(
                                      15.0, 50.0, 10.0, 0.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text('Lime Light',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xFF000000),
                                              fontSize: 18.0)),
                                      SizedBox(width: 20.0),
                                      Text(
                                        'Monday, June 08th',
                                        style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            color: Colors.white70,
                                            fontSize: 13.0),
                                      ),
                                      Text(
                                        'Lime Coffe Soda',
                                        style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            color: Colors.white70,
                                            fontSize: 13.0),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                    alignment: Alignment.topRight,
                                    width: 60.0,
                                    child: RaisedButton(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20.0)),
                                        ),
                                        color: Colors.white70,
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
                          )),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(5),
            child: Card(
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              color: Colors.black54,
              child: InkWell(
                onTap: () {
                  _apiCall();
                  setState(() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailScreen()));
                  });
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Center(
                      child: Container(
                          constraints: new BoxConstraints.expand(
                              height: 150.0, width: 450),
                          alignment: Alignment.bottomLeft,
                          padding: new EdgeInsets.only(
                              left: 16.0, bottom: 8.0, top: 8.0),
                          decoration: new BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            image: new DecorationImage(
                              image: new NetworkImage(
                                  "https://images.unsplash.com/photo-1504487762795-8e9854335a0c?ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80"),
                              fit: BoxFit.fill,
                            ),
                          ),
                          child: Row(
                            //mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                constraints: new BoxConstraints.expand(
                                    height: 20.0, width: 40),
                                decoration: new BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: new DecorationImage(
                                    image: new NetworkImage(
                                        "https://www.vippng.com/png/full/409-4094973_delivery-clipart-home-delivery-logo-free-delivery-order.png"),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(
                                      15.0, 50.0, 10.0, 0.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text('Lime Light',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xFF000000),
                                              fontSize: 18.0)),
                                      SizedBox(width: 20.0),
                                      Text(
                                        'Monday, June 08th',
                                        style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            color: Colors.white70,
                                            fontSize: 13.0),
                                      ),
                                      Text(
                                        'Lime Coffe Soda',
                                        style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            color: Colors.white70,
                                            fontSize: 13.0),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                    alignment: Alignment.topRight,
                                    width: 60.0,
                                    child: RaisedButton(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20.0)),
                                        ),
                                        color: Colors.white70,
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
                          )),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(5),
            child: InkWell(
              onTap: () {
                _apiCall();
                setState(() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DetailScreen()));
                });
              },
              child: Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                color: Colors.black54,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Center(
                      child: Container(
                          constraints: new BoxConstraints.expand(
                              height: 150.0, width: 450),
                          alignment: Alignment.bottomLeft,
                          padding: new EdgeInsets.only(
                              left: 16.0, bottom: 8.0, top: 8.0),
                          decoration: new BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            image: new DecorationImage(
                              image: new NetworkImage(
                                  "https://images.unsplash.com/photo-1523821741446-edb2b68bb7a0?ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80"),
                              fit: BoxFit.fill,
                            ),
                          ),
                          child: Row(
                            //mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                constraints: new BoxConstraints.expand(
                                    height: 20.0, width: 40),
                                decoration: new BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: new DecorationImage(
                                    image: new NetworkImage(
                                        "https://www.vippng.com/png/full/409-4094973_delivery-clipart-home-delivery-logo-free-delivery-order.png"),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(
                                      15.0, 50.0, 10.0, 0.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text('Lime Light',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xFF000000),
                                              fontSize: 18.0)),
                                      SizedBox(width: 20.0),
                                      Text(
                                        'Monday, June 08th',
                                        style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            color: Colors.white70,
                                            fontSize: 13.0),
                                      ),
                                      Text(
                                        'Lime Coffe Soda',
                                        style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            color: Colors.white70,
                                            fontSize: 13.0),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                    alignment: Alignment.topRight,
                                    width: 60.0,
                                    child: RaisedButton(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20.0)),
                                        ),
                                        color: Colors.white70,
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
                          )),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(5),
            child: InkWell(
              onTap: () {
                _apiCall();
                setState(() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DetailScreen()));
                });
              },
              child: Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                color: Colors.black54,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Center(
                      child: Container(
                          constraints: new BoxConstraints.expand(
                              height: 150.0, width: 450),
                          alignment: Alignment.bottomLeft,
                          padding: new EdgeInsets.only(
                              left: 16.0, bottom: 8.0, top: 8.0),
                          decoration: new BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            image: new DecorationImage(
                              image: new NetworkImage(
                                  "https://www.jakpost.travel/wimages/large/7-78242_blurry-blue-background-4k-hd-desktop-wallpaper.jpg"),
                              fit: BoxFit.fill,
                            ),
                          ),
                          child: Row(
                            //mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                constraints: new BoxConstraints.expand(
                                    height: 20.0, width: 40),
                                decoration: new BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: new DecorationImage(
                                    image: new NetworkImage(
                                        "https://www.vippng.com/png/full/409-4094973_delivery-clipart-home-delivery-logo-free-delivery-order.png"),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(
                                      15.0, 50.0, 10.0, 0.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text('Lime Light',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xFF000000),
                                              fontSize: 18.0)),
                                      SizedBox(width: 20.0),
                                      Text(
                                        'Monday, June 08th',
                                        style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            color: Colors.white70,
                                            fontSize: 13.0),
                                      ),
                                      Text(
                                        'Lime Coffe Soda',
                                        style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            color: Colors.white70,
                                            fontSize: 13.0),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                    alignment: Alignment.topRight,
                                    width: 60.0,
                                    child: RaisedButton(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20.0)),
                                        ),
                                        color: Colors.white70,
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
                          )),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(5),
            child: InkWell(
              onTap: () {
                _apiCall();
                setState(() {
                    Navigator.push(
            context, MaterialPageRoute(builder: (context) => DetailScreen()));
                  });
              },
              child: Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                color: Colors.black54,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Center(
                      child: Container(
                          constraints: new BoxConstraints.expand(
                              height: 150.0, width: 450),
                          alignment: Alignment.bottomLeft,
                          padding: new EdgeInsets.only(
                              left: 16.0, bottom: 8.0, top: 8.0),
                          decoration: new BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            image: new DecorationImage(
                              image: new NetworkImage(
                                  "https://images.unsplash.com/photo-1504487762795-8e9854335a0c?ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80"),
                              fit: BoxFit.fill,
                            ),
                          ),
                          child: Row(
                            //mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                constraints: new BoxConstraints.expand(
                                    height: 20.0, width: 40),
                                decoration: new BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: new DecorationImage(
                                    image: new NetworkImage(
                                        "https://www.vippng.com/png/full/409-4094973_delivery-clipart-home-delivery-logo-free-delivery-order.png"),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(
                                      15.0, 50.0, 10.0, 0.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text('Lime Light',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xFF000000),
                                              fontSize: 18.0)),
                                      SizedBox(width: 20.0),
                                      Text(
                                        'Monday, June 08th',
                                        style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            color: Colors.white70,
                                            fontSize: 13.0),
                                      ),
                                      Text(
                                        'Lime Coffe Soda',
                                        style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            color: Colors.white70,
                                            fontSize: 13.0),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                    alignment: Alignment.topRight,
                                    width: 60.0,
                                    child: RaisedButton(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20.0)),
                                        ),
                                        color: Colors.white70,
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
                          )),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(5),
            child: InkWell(
              onTap: () {
                _apiCall();
              },
              child: Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                color: Colors.black54,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Center(
                      child: Container(
                          constraints: new BoxConstraints.expand(
                              height: 150.0, width: 450),
                          alignment: Alignment.bottomLeft,
                          padding: new EdgeInsets.only(
                              left: 16.0, bottom: 8.0, top: 8.0),
                          decoration: new BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            image: new DecorationImage(
                              image: new NetworkImage(
                                  "https://www.jakpost.travel/wimages/large/7-78242_blurry-blue-background-4k-hd-desktop-wallpaper.jpg"),
                              fit: BoxFit.fill,
                            ),
                          ),
                          child: Row(
                            //mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                constraints: new BoxConstraints.expand(
                                    height: 20.0, width: 40),
                                decoration: new BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: new DecorationImage(
                                    image: new NetworkImage(
                                        "https://www.vippng.com/png/full/409-4094973_delivery-clipart-home-delivery-logo-free-delivery-order.png"),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(
                                      15.0, 50.0, 10.0, 0.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text('Lime Light',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xFF000000),
                                              fontSize: 18.0)),
                                      SizedBox(width: 20.0),
                                      Text(
                                        'Monday, June 08th',
                                        style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            color: Colors.white70,
                                            fontSize: 13.0),
                                      ),
                                      Text(
                                        'Lime Coffe Soda',
                                        style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            color: Colors.white70,
                                            fontSize: 13.0),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                    alignment: Alignment.topRight,
                                    width: 60.0,
                                    child: RaisedButton(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20.0)),
                                        ),
                                        color: Colors.white70,
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
                          )),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(5),
            child: InkWell(
              onTap: () {
                _apiCall();
                setState(() {
                    Navigator.push(
            context, MaterialPageRoute(builder: (context) => DetailScreen()));
                  });
              },
              child: Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                color: Colors.black54,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Center(
                      child: Container(
                          constraints: new BoxConstraints.expand(
                              height: 150.0, width: 450),
                          alignment: Alignment.bottomLeft,
                          padding: new EdgeInsets.only(
                              left: 16.0, bottom: 8.0, top: 8.0),
                          decoration: new BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            image: new DecorationImage(
                              image: new NetworkImage(
                                  "https://images.unsplash.com/photo-1523821741446-edb2b68bb7a0?ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80"),
                              fit: BoxFit.fill,
                            ),
                          ),
                          child: Row(
                            //mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                constraints: new BoxConstraints.expand(
                                    height: 20.0, width: 40),
                                decoration: new BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: new DecorationImage(
                                    image: new NetworkImage(
                                        "https://www.vippng.com/png/full/409-4094973_delivery-clipart-home-delivery-logo-free-delivery-order.png"),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(
                                      15.0, 50.0, 10.0, 0.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text('Lime Light',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xFF000000),
                                              fontSize: 18.0)),
                                      SizedBox(width: 20.0),
                                      Text(
                                        'Monday, June 08th',
                                        style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            color: Colors.white70,
                                            fontSize: 13.0),
                                      ),
                                      Text(
                                        'Lime Coffe Soda',
                                        style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            color: Colors.white70,
                                            fontSize: 13.0),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                    alignment: Alignment.topRight,
                                    width: 60.0,
                                    child: RaisedButton(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20.0)),
                                        ),
                                        color: Colors.white70,
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
                          )),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(5),
            child: InkWell(
              onTap: () {
                _apiCall();
                setState(() {
                    Navigator.push(
            context, MaterialPageRoute(builder: (context) => DetailScreen()));
                  });
              },
              child: Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                color: Colors.black54,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Center(
                      child: Container(
                          constraints: new BoxConstraints.expand(
                              height: 150.0, width: 450),
                          alignment: Alignment.bottomLeft,
                          padding: new EdgeInsets.only(
                              left: 16.0, bottom: 8.0, top: 8.0),
                          decoration: new BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            image: new DecorationImage(
                              image: new NetworkImage(
                                  "https://images.unsplash.com/photo-1504487762795-8e9854335a0c?ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80"),
                              fit: BoxFit.fill,
                            ),
                          ),
                          child: Row(
                            //mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                constraints: new BoxConstraints.expand(
                                    height: 20.0, width: 40),
                                decoration: new BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: new DecorationImage(
                                    image: new NetworkImage(
                                        "https://www.vippng.com/png/full/409-4094973_delivery-clipart-home-delivery-logo-free-delivery-order.png"),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(
                                      15.0, 50.0, 10.0, 0.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text('Lime Light',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xFF000000),
                                              fontSize: 18.0)),
                                      SizedBox(width: 20.0),
                                      Text(
                                        'Monday, June 08th',
                                        style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            color: Colors.white70,
                                            fontSize: 13.0),
                                      ),
                                      Text(
                                        'Lime Coffe Soda',
                                        style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            color: Colors.white70,
                                            fontSize: 13.0),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                    alignment: Alignment.topRight,
                                    width: 60.0,
                                    child: RaisedButton(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20.0)),
                                        ),
                                        color: Colors.white70,
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
                          )),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Future<NewsModel> getUser() async {
  final url =
      "http://167.172.149.230/api/get-new-events?page=1&limit=10&%20user_id=6";
  final response = await http.get(url);
  print(response.body);
  if (response.statusCode > 200 || response.statusCode < 600) {
    final jsonCard = jsonDecode(response.body);

    return NewsModel.fromJson(jsonCard);
  } else {
    throw Exception("Error while fetching data");
  }
}
