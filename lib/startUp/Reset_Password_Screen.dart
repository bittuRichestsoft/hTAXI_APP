import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fox_taxi_rider/GlobalVariables.dart';
import 'package:fox_taxi_rider/startUp/Create_Profile_Screen.dart';

class Reset_Password_Screen extends StatefulWidget {
  @override
  _Reset_Password_ScreenState createState() => _Reset_Password_ScreenState();
}

class _Reset_Password_ScreenState extends State<Reset_Password_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Reset Password', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),),
        centerTitle: true,
        elevation: 0,
        iconTheme: IconThemeData(
            color: Colors.black
        ), // appbar leading icon.
      ),
      body: Container(
        margin: EdgeInsets.only(top: 3),
        padding: EdgeInsets.only(left: 20, right: 20),
        color: Colors.white,
        child: Column(children: [
          newPasswordTextField(),
          confirmPasswordTextField(),
          sizedBox05(),
          ResetPasswordContainer(),
        ],),
      ),
    );
  }


  Widget newPasswordTextField(){
    return  TextFormField(
      cursorColor: Theme.of(context).cursorColor,
      maxLength: 16,
      style: TextStyle(fontSize: hFontSize(context)),
      decoration: InputDecoration(
        helperText: 'Password must be 6 digits',
        labelText: 'New Password',
        labelStyle: TextStyle(
          color: Colors.grey,
          fontSize: hFontSize(context),
        ),
        fillColor: globalVariables.APP_THEME_COLOR,
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        disabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        suffixIcon: Icon(
          Icons.remove_red_eye,
        ),
      ),
    );
  }


  Widget confirmPasswordTextField(){
    return  TextFormField(
      cursorColor: Theme.of(context).cursorColor,
      maxLength: 16,
      style: TextStyle(fontSize: hFontSize(context)),
      decoration: InputDecoration(
        helperText: 'Password must be 6 digits',
        labelText: 'Confirm Password',
        labelStyle: TextStyle(
          color: Colors.grey,
          fontSize: hFontSize(context),
        ),
          fillColor: globalVariables.APP_THEME_COLOR,
        disabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color:  globalVariables.APP_THEME_COLOR),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color:Colors.grey),
        ),
        suffixIcon: Icon(
          Icons.remove_red_eye,
        ),
      ),
    );
  }


  Widget ResetPasswordContainer(){
    return Align(
      alignment: Alignment.center,
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Create_Profile_Screen()),
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
                "RESET",
                style: TextStyle(fontSize: hFontSize(context), color: Colors.white),
              )),
        ),
      ),
    );
  }


  Widget sizedBox05(){
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.05,
    );
  }
}
