import 'package:flutter/material.dart';
//import 'package:flutter_icons/flutter_icons.dart';

class TitleBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        
        FlatButton(
            onPressed: () {
              print("TitleBar is Pressed");
            },
            child: Image.asset(
              'images/ic_filter.png',
              width: 30.0,
            )),
            FlatButton(
            onPressed: () {
              print("TitleBar is Pressed");
            },
            child: Image.asset(
              'images/ic_label.png',
              width: 30.0,
            )),
             FlatButton(
            onPressed: () {
              print("TitleBar is Pressed");
            },
            child: Image.asset(
              'images/ic_search_location.png',
              width: 30.0,
            ))
      ],
    );
  }
}
