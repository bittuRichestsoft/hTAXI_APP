import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyVehicele_Details_Screen extends StatefulWidget {
  @override
  _MyVehicele_Details_ScreenState createState() => _MyVehicele_Details_ScreenState();
}

class _MyVehicele_Details_ScreenState extends State<MyVehicele_Details_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Edit Profile',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
        leading:
        IconButton(icon: Icon(Icons.arrow_back)), // appbar leading icon.
      ),
      body: Container(
        padding: EdgeInsets.only(left: 20, right: 20),
        color: Colors.white,
      ),
    );
  }
}
