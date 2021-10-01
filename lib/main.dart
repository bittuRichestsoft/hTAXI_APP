import 'package:flutter/material.dart';
import 'package:fox_taxi_rider/GlobalVariables.dart';
import 'package:fox_taxi_rider/LoginScreen.dart';
import 'package:fox_taxi_rider/startUp/chooseLanguageScreen.dart';

void main() {
  runApp(MyApp());
}



class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: globalVariables.APP_BACKGROUND_COLOR,
          fontFamily: "Nunito-SemiBold"),
      home: chooseLanguage(),
    );
  }
}


