import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fox_taxi_rider/GlobalVariables.dart';
import 'package:fox_taxi_rider/home/HomeMapScreen.dart';

import 'home/home.dart';

class LoginScreen extends StatefulWidget {
  @override
  LoginScreen_State createState() => LoginScreen_State();
  var txt = TextEditingController();
}

class LoginScreen_State extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: globalVariables.APP_THEME_COLOR,
        child: ListView(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.08,
            ),
            Text(
              "Fox-Taxi",
              style: TextStyle(
                  fontSize: 60,
                  color: Colors.white.withOpacity(1),
                  fontFamily: 'Nunito-Black'),
              textAlign: TextAlign.center,
            ),
            Text(
              "For Rider",
              style: TextStyle(fontSize: 40, color: Colors.white.withOpacity(1)),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Text(
              "Login with",
              style: TextStyle(fontSize: 40, color: Colors.white.withOpacity(1)),
              textAlign: TextAlign.center,
            ), //Login text
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.35,
                  //margin: EdgeInsets.only(left: 30.0),
                  child: ElevatedButton(
                    child: Text("FaceBook"),
                    onPressed: () => print("it's pressed"),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                      onPrimary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  // margin: EdgeInsets.only(left: 30.0),
                  width: MediaQuery.of(context).size.width * 0.35,
                  child: ElevatedButton(
                    child: Text("Google"),
                    onPressed: () => print("it's pressed"),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                      onPrimary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 50,
                  height: 2,
                  color: Colors.white,
                ),
                SizedBox(width: 10),
                Text("or",
                    style: TextStyle(
                        fontSize: 20, color: Colors.white.withOpacity(1)),
                    textAlign: TextAlign.center),
                SizedBox(width: 10),
                Container(
                  width: 50,
                  height: 2,
                  color: Colors.white,
                )
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Container(
              margin: const EdgeInsets.only(left: 30.0, right: 30.0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    filled: true,
                    hintStyle: TextStyle(color: Colors.grey[800]),
                    hintText: "abc@bcd.com",
                    fillColor: Colors.white),
              ),
            ), //email field
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Container(
              margin: const EdgeInsets.only(left: 30.0, right: 30.0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    filled: true,
                    hintStyle: TextStyle(color: Colors.grey[800]),
                    hintText: "",
                    fillColor: Colors.white),
              ),
            ), //password field
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Container(
              margin: const EdgeInsets.only(left: 80.0, right: 80.0),
              child: TextButton(
                child:
                    Text("Submit".toUpperCase(), style: TextStyle(fontSize: 14)),
                style: ButtonStyle(
                  padding:
                      MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(15)),
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      side: BorderSide(color: Colors.white),
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeMapScreen()),
                  );
                },
              ),
            ), //submit button
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: const EdgeInsets.only(left: 50.0, right: 50.0),
                child: TextButton(
                    child: Text(
                      "Forgot password?",
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white.withOpacity(1),
                      ),
                    ),
                    onPressed: () => null),
              ),
            ), //Forgot password button
          ],
        ),
      ),
    );
  }
}
