import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fox_taxi_rider/startUp/SignIn_SignUpScreen.dart';

class chooseLanguage extends StatefulWidget {
  @override
  _chooseLanguageState createState() => _chooseLanguageState();
}

class _chooseLanguageState extends State<chooseLanguage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: ListView(
          padding: EdgeInsets.fromLTRB(25, 60, 25, 25),
          children: [
            Container(
              child: Text("Choose Language",
                  style: TextStyle(
                    fontSize: 30,
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(top: hPadding(), bottom: hPadding()),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SignIn_SignUpScreen()));
                },
                child: Container(
                  child: Text(
                    "Arabic",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
            hDivider(),
            Padding(
              padding: EdgeInsets.only(top: hPadding(), bottom: hPadding()),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SignIn_SignUpScreen()));
                },
                child: Container(
                  child: Text(
                    "Chinese",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
            hDivider(),
            Padding(
              padding: EdgeInsets.only(top: hPadding(), bottom: hPadding()),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SignIn_SignUpScreen()));
                },
                child: Container(
                  child: Text(
                    "English",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
            hDivider(),
            Padding(
              padding: EdgeInsets.only(top: hPadding(), bottom: hPadding()),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SignIn_SignUpScreen()));
                },
                child: Container(
                  child: Text(
                    "Korean",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
            hDivider(),
            Padding(
              padding: EdgeInsets.only(top: hPadding(), bottom: hPadding()),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SignIn_SignUpScreen()));
                },
                child: Container(
                    child: Text(
                  "Urdu",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                )),
              ),
            ),
            hDivider(),
          ],
        ),
      ),
    );
  }


  Widget hDivider(){
    return Divider(height: 1, thickness: 1,);
  }


  Widget hSizedBox(){
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.05,
    );
  }

  double hPadding(){
    return MediaQuery.of(context).size.height*0.03;
  }
}
