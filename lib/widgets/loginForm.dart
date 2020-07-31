import 'dart:convert';

import 'package:draba_task3/model/loginmodel.dart';
import 'package:draba_task3/ui/homeScreem.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool isvalid = false;

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();

  bool _obscureText = true;

  void _toggle() {
    setState(() {
      _obscureText = false;
    });
  }

  void _submitCommand() {
    final form = formKey.currentState;

    if (form.validate()) {
      _apiCall();
      setState(() {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomePage()));
      });
    }
  }

  void _apiCall() {
    FutureBuilder<LoginModel>(
      future: getUser(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final login = snapshot.data;

          print(
              "email : ${login.data.user.email} \n lat : ${login.data.user.lat} \n lang : ${login.data.user.lang} \n device_id : ${login.data.user.deviceId} \n device_token : ${login.data.user.deviceToken} \n device_type : ${login.data.user.deviceType}");
        } else if (snapshot.hasError) {
          return Text(snapshot.error.toString());
        }

        return CircularProgressIndicator();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Form(
    key: formKey,
    child: Column(
      children: <Widget>[
        const SizedBox(
          height: 20.0,
        ),
        new Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Colors.white38,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: TextFormField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14.0),
                prefixIcon: Icon(
                  Icons.mail_outline,
                  color: Colors.white,
                ),
                hintText: 'Email',
                hintStyle: TextStyle(
                  color: Colors.white54,
                  fontFamily: 'OpenSans',
                )),
            validator: (val) => !EmailValidator.validate(val, true)
                ? 'Not a valid email.'
                : null,
            //onSaved: (val) => email = val,
          ),
        ),
        const SizedBox(
          height: 20.0,
        ),
        new Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Colors.white38,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: TextFormField(
            obscureText: _obscureText,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.lock_outline,
                color: Colors.white,
              ),
              hintText: 'Password',
              hintStyle: TextStyle(
                color: Colors.white54,
                fontFamily: 'OpenSans',
              ),
              suffixIcon: IconButton(
                icon: Icon(
                    _obscureText ? Icons.visibility_off : Icons.visibility),
                color: Colors.white,
                onPressed: _toggle,
              ),
            ),
            validator: (val) {
              if (val.length == 0) {
                return "Password cannot be empty";
              }
              if (val.length <= 6) {
                return "Password too short";
              } else {
                return null;
              }
            },
            //onSaved: (val) => password = val,
            keyboardType: TextInputType.text,
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
          Text(
            "Forgot Password ?  ",
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Merriweather',
              fontSize: 15.0,
            ),
          ),
        ]),
        const SizedBox(
          height: 10.0,
        ),
        Container(
          width: double.infinity,
          height: 50.0,
          child: RaisedButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            onPressed: () {
              _submitCommand();
            },
            //textColor: Colors.black,
            color: Colors.greenAccent,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Text(
                    'Sign In',
                    style: TextStyle(fontSize: 20.0, color: Colors.black),
                  ),
                ),
                Icon(
                  Icons.arrow_forward,
                  size: 30,
                ),
              ],
            ),
          ),
        ),
      ],
    ),
        ),
      );
  }
}

Future<LoginModel> getUser() async {
  final url = "http://167.172.149.230/api/login";
  final response = await http.post(url, body: {
    "email ": "deeppatel@yopmail.com",
    "password": "deep@123456",
    "lat": "0.0",
    "lang ": "0.0",
    "device_id": "1234567",
    "device_token": "123456",
    "device_type": "android"
  });
  print(response.body);
  if (response.statusCode > 200 || response.statusCode < 600) {
    final jsonLogin = jsonDecode(response.body);
    
    return LoginModel.fromJson(jsonLogin);
  } else {
    throw Exception("Error while fetching data");
  }
}
