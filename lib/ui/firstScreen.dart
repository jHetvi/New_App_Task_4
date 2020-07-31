import 'package:flutter/material.dart';
import 'dart:async';
import 'package:draba_task3/ui/secondScreen.dart';
import 'package:draba_task3/widgets/introCard.dart';

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
 final splashDelay = 5;

  @override
  void initState() {
    super.initState();

    _loadWidget();
  }

  _loadWidget() async {
    var _duration = Duration(seconds: splashDelay);
    return Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => SceondScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: SafeArea(
            child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
                      image: DecorationImage(
                        image: ExactAssetImage('images/temp_splash.png'),fit: BoxFit.fill,
                      ),
                    ),
                    child: Center(
                      child: SingleChildScrollView(
                        reverse: true,
                        child: IntroCard(),
                      ),
                    )
        ),
      ),
    );
  }
}
