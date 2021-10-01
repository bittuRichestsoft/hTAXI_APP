import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fox_taxi_rider/GlobalVariables.dart';
import 'package:fox_taxi_rider/startUp/OTP_Verification.dart';

class Enter_mobileScreen extends StatefulWidget {
  @override
  _Enter_mobileScreenState createState() => _Enter_mobileScreenState();
}

class _Enter_mobileScreenState extends State<Enter_mobileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.05,
              right: MediaQuery.of(context).size.width * 0.05,
              top: MediaQuery.of(context).size.height * 0.03),
          child: ListView(
            children: [
              Text(
                "Enter Mobile Number",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Row(
                children: [
                  Icon(
                    Icons.flag,
                    size: MediaQuery.of(context).size.width * 0.07,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text("+91", style: TextStyle(fontSize: 20)),
                  Container(
                    width: MediaQuery.of(context).size.width -
                        MediaQuery.of(context).size.width * 0.3,
                    child: TextField(
                      decoration: InputDecoration(
                        hintStyle: TextStyle(fontSize: 20),
                        hintText: '1234567890',
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(20),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                color: Colors.grey,
                height: MediaQuery.of(context).size.height * 0.001,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "By countinuing. I confirm that i have read and agree to the Terms & conditions and Privacy policy",
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              InkWell(
                onTap: () {
                  showDialog(
                      barrierDismissible: false,
                      context: context,
                      builder: (BuildContext context) {
                        return popup_confirmation();
                      });
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[350],
                    borderRadius: BorderRadius.circular(
                        MediaQuery.of(context).size.height * 0.06 / 2),
                  ),
                  width: MediaQuery.of(context).size.width - 80,
                  height: MediaQuery.of(context).size.height * 0.06,
                  child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Continue",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget popup_confirmation() {
    return Stack(children: [
      Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.black.withOpacity(0.05),
      ),
      Center(
        child: Container(
          width: MediaQuery.of(context).size.width / 1.1,
          height: MediaQuery.of(context).size.height / 3.5,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: ListView(
              children: [
                Text(
                  "Confirm",
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      color: Colors.black,
                      fontSize: MediaQuery.of(context).size.height * 0.032,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.032,
                ),
                Text(
                  "We will send verification code to",
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.grey,
                    fontSize: MediaQuery.of(context).size.height * 0.02,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.015,
                ),
                Text(
                  "+91 9874563210",
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.grey,
                    fontSize: MediaQuery.of(context).size.height * 0.02,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 3.5,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.06,
                        child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "CANCEL",
                              style: TextStyle(
                                  fontSize: 18,
                                  decoration: TextDecoration.none,
                                  color: globalVariables.APP_THEME_COLOR),
                            )),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.07,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => OTP_Verification()),
                        );
                      },
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.06,
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "SEND OTP",
                            style: TextStyle(
                                fontSize: 18,
                                decoration: TextDecoration.none,
                                color: globalVariables.APP_THEME_COLOR),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      )
    ]);
  }
}
