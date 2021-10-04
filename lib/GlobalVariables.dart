import 'package:flutter/material.dart';

class globalVariables {

  static var GOOGLE_API_KEY = "AIzaSyBl8YPYAhb7DmlmyjK81AJX-hdtavJi-es";
  static var APP_THEME_COLOR =  Color.fromRGBO(38, 178, 88, 1);//green
  static var APP_BACKGROUND_COLOR =  Color.fromRGBO(241, 245, 248, 1);//off white

}

double hFontSize(context){
  return MediaQuery.of(context).size.height*0.026;
}

double hWidth(context){
  return MediaQuery.of(context).size.width;
}

double hHeight(context){
  return MediaQuery.of(context).size.height;
}

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}