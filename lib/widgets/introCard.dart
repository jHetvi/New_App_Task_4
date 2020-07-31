import 'package:flutter/material.dart';

class IntroCard extends StatefulWidget {
  @override
  _IntroCardState createState() => _IntroCardState();
}

class _IntroCardState extends State<IntroCard> with TickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        color: Colors.transparent,
        elevation: 0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(image: AssetImage('images/ic_drabadpre.png'), height: 200.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "DRABA",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Merriweather',
                  fontSize: 60.0,
                  fontWeight: FontWeight.bold
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
