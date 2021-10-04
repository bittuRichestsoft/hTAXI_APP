import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fox_taxi_rider/GlobalVariables.dart';
import 'package:fox_taxi_rider/home/HomeMapScreen.dart';
import 'package:fox_taxi_rider/startUp/Reset_Password_Screen.dart';

class Login_screen extends StatefulWidget {
  @override
  _Login_screenState createState() => _Login_screenState();
}

class _Login_screenState extends State<Login_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(
            color: Colors.black
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 20, right: 20),
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Text(
              "Sign In",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
            ),
            //sizedBox05(),
            emailTextField(),
            passwordTextField(),
            sizedBox05(),
            signInContainer(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
           forgotPasswordContainer(),
          ],
        ),
      ),
    );
  }


  Widget emailTextField(){
    return  TextFormField(
      cursorColor: Theme.of(context).cursorColor,
      style: TextStyle(fontSize: hFontSize(context)),
      decoration: InputDecoration(
        labelText: 'Email',
        labelStyle: TextStyle(
          color: Colors.grey,
          fontSize: hFontSize(context),
        ),
        fillColor: globalVariables.APP_THEME_COLOR,
        disabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: globalVariables.APP_THEME_COLOR),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
      ),
    );
  }


  Widget passwordTextField(){
    return  TextFormField(
      cursorColor: Theme.of(context).cursorColor,
      maxLength: 10,
      style: TextStyle(fontSize:  hFontSize(context)),
      decoration: InputDecoration(
        labelText: 'Password',
        labelStyle: TextStyle(
          color: Colors.grey,
            fontSize:  hFontSize(context),
        ),
        helperText: 'Password must be 6 digits',
        suffixIcon: Icon(
          Icons.remove_red_eye,
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
      ),
    );
  }


  Widget passwordContainer(){
    return Container(
      width: MediaQuery.of(context).size.width -
          MediaQuery.of(context).size.width * 0.29,
      child: TextField(
        style: TextStyle(fontSize: 25),
        decoration: InputDecoration(
          hintStyle: TextStyle(fontSize: 25, color: Colors.grey),
          hintText: 'Password',
          border: InputBorder.none,
          contentPadding: EdgeInsets.only(
              bottom: MediaQuery.of(context).size.height * 0.05),
        ),
      ),
    );
  }

  Widget mobileNumberContainer(){
    return Container(
      width: MediaQuery.of(context).size.width -
          MediaQuery.of(context).size.width * 0.29,
      child: TextField(
        style: TextStyle(fontSize: 25),
        decoration: InputDecoration(
          hintStyle: TextStyle(fontSize: 25, color: Colors.grey),
          hintText: 'Mobile Number',
          border: InputBorder.none,
          contentPadding: EdgeInsets.only(
              bottom: MediaQuery.of(context).size.height * 0.05),
        ),
      ),
    );
  }


  Widget signInContainer(){
    return Align(
      alignment: Alignment.center,
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomeMapScreen()),
          );
        },
        child: Container(
          decoration: BoxDecoration(
            color: globalVariables.APP_THEME_COLOR,
            borderRadius: BorderRadius.circular(
                MediaQuery.of(context).size.height * 0.06 / 2),
          ),
          // width: MediaQuery.of(context).size.width - 80,
          height: MediaQuery.of(context).size.height * 0.06,
          child: Align(
              alignment: Alignment.center,
              child: Text(
                "SIGN IN",
                style: TextStyle(fontSize: 20, color: Colors.white),
              )),
        ),
      ),
    );
  }

  Widget forgotPasswordContainer(){
    return  Align(
      alignment: Alignment.center,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Reset_Password_Screen()),
          );
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
                MediaQuery.of(context).size.height * 0.06 / 2),
          ),
          // width: MediaQuery.of(context).size.width - 80,
          height: MediaQuery.of(context).size.height * 0.06,
          child: Align(
            alignment: Alignment.center,
            child: Text(
              "FORGOT PASSWORD",
              style: TextStyle(fontSize: 20, color: globalVariables.APP_THEME_COLOR),
            ),
          ),
        ),
      ),
    );
  }

  Widget lineContainer(){
    return Container(
      color: Colors.grey[350],
      height: MediaQuery.of(context).size.height * 0.001,
    );
  }

  Widget sizedBox05(){
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.05,
    );
  }
}
