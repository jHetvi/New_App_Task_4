import 'package:flutter/material.dart';
import 'package:draba_task3/widgets/loginForm.dart';

class SceondScreen extends StatefulWidget {
  @override
  _SceondScreenState createState() => _SceondScreenState();
}

class _SceondScreenState extends State<SceondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        //reverse: true,
       // physics: NeverScrollableScrollPhysics(),
        child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: ExactAssetImage('images/temp_splash.png'),
                fit: BoxFit.fill,
              ),
            ),
            child: Column(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(25.0, 40.0, 25.0, 0.0),
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Image(
                            image: AssetImage('images/ic_drabadpre.png'),
                            height: 100.0),
                        Text(
                          "DRABA",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Merriweather',
                            fontSize: 40.0,
                            letterSpacing: 5.0,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          "Please Login to continue.",
                          style: TextStyle(
                            color: Colors.white38,
                            fontFamily: 'Merriweather',
                            fontSize: 15.0,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        LoginForm(),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Center(
                          child: Text(
                            "OR  ",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Merriweather',
                              fontSize: 25.0,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                                height: 50.0,
                                width: 50.0,
                                child: RaisedButton(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.0)),
                                    ),
                                    color: Colors.white70,
                                    onPressed: () {
                                      print("FaceBook Button Pressed");
                                    },
                                    child: Image.asset(
                                      'images/ic_facebook.png',
                                      width: 9.0,
                                    ))),
                            const SizedBox(
                              width: 15.0,
                            ),
                            Container(
                                height: 50.0,
                                width: 50.0,
                                child: RaisedButton(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.0)),
                                    ),
                                    color: Colors.white70,
                                    onPressed: () {
                                      print("Instagram Button Pressed");
                                    },
                                    child: Image.asset(
                                      'images/ic_instagram.png',
                                      width: 15.0,
                                    ))),
                            const SizedBox(
                              width: 15.0,
                            ),
                            Container(
                                height: 50.0,
                                width: 50.0,
                                child: RaisedButton(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.0)),
                                    ),
                                    color: Colors.white70,
                                    onPressed: () {
                                      print("Gmail Button Pressed");
                                    },
                                    child: Image.asset(
                                      'images/ic_white_google.png',
                                    ))),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Dont have an account?  ",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Merriweather',
                          fontSize: 15.0,
                        ),
                      ),
                      Text(
                        "Sign Up",
                        style: TextStyle(
                          color: Colors.lightGreen,
                          fontFamily: 'Merriweather',
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ]),
              ],
            )),
      ),
    );
  }
}
