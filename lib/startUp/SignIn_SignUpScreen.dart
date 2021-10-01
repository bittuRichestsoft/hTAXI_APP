import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fox_taxi_rider/GlobalVariables.dart';
import 'package:fox_taxi_rider/startUp/Login_screen.dart';
import 'package:fox_taxi_rider/startUp/Enter_mobileScreen.dart';

class SignIn_SignUpScreen extends StatefulWidget {
  @override
  _SignIn_SignUpScreenState createState() => _SignIn_SignUpScreenState();
}

class _SignIn_SignUpScreenState extends State<SignIn_SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(
            color: Colors.black
        ),
      ),
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Align(
                alignment: Alignment.center,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Login_screen()),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: globalVariables.APP_THEME_COLOR,
                      borderRadius: BorderRadius.circular(
                          MediaQuery.of(context).size.height * 0.06 / 2),
                    ),
                    width: MediaQuery.of(context).size.width - 80,
                    height: MediaQuery.of(context).size.height * 0.06,
                    child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "SIGN IN",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        )),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Align(
                alignment: Alignment.center,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Enter_mobileScreen()),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: globalVariables.APP_THEME_COLOR,
                      borderRadius: BorderRadius.circular(
                          MediaQuery.of(context).size.height * 0.06 / 2),
                    ),
                    width: MediaQuery.of(context).size.width - 80,
                    height: MediaQuery.of(context).size.height * 0.06,
                    child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "SIGN UP",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        )),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
