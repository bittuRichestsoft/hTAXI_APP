import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fox_taxi_rider/GlobalVariables.dart';

import '../Settings_Screen.dart';

class Trip_Screen extends StatefulWidget {
  @override
  _Trip_ScreenState createState() => _Trip_ScreenState();
}

class _Trip_ScreenState extends State<Trip_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Trip #0001',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),// appbar leading icon.
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //SizedBox(height: MediaQuery.of(context).size.height * 0.01,),
          detailContainer(),
          doneBtn(),
        ],
      ),
    );
  }

  Widget detailContainer() {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * 0.01,
          bottom: MediaQuery.of(context).size.height * 0.01),
      padding: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '\$',
                style: TextStyle(
                    color: globalVariables.APP_THEME_COLOR,
                    fontSize: MediaQuery.of(context).size.height * 0.03,
                    fontWeight: FontWeight.w800),
              ),
              Text(
                '154.75',
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * 0.05,
                    fontWeight: FontWeight.w800),
              )
            ],
          ),
          sizedBox002(),
          Text(
            'Collection cash from Rockdean',
            style: TextStyle(color: Colors.grey, fontSize: hFontSize(context)),
          ),
          sizedBox002(),
          Divider(
            height: 1,
          ),
          sizedBox002(),
          viewDetailBtn(),
        ],
      ),
    );
  }

  Widget viewDetailBtn() {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Trip_Screen()),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(
              MediaQuery.of(context).size.height * 0.06 / 2),
        ),
        width: MediaQuery.of(context).size.width - 40,
        height: MediaQuery.of(context).size.height * 0.06,
        child: Align(
          alignment: Alignment.center,
          child: Text(
            "VIEW MORE DETAILS",
            style:
                TextStyle(fontSize: 20, color: globalVariables.APP_THEME_COLOR),
          ),
        ),
      ),
    );
  }

  Widget doneBtn() {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Settings_Screen()),
        );
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
          color: globalVariables.APP_THEME_COLOR,
          borderRadius: BorderRadius.circular(
              MediaQuery.of(context).size.height * 0.06 / 2),
        ),
        width: MediaQuery.of(context).size.width - 40,
        height: MediaQuery.of(context).size.height * 0.06,
        child: Align(
          alignment: Alignment.center,
          child: Text(
            "DONE",
            style: TextStyle(fontSize: hFontSize(context), color: Colors.white),
          ),
        ),
      ),
    );
  }

  Widget sizedBox002() {
    return SizedBox(height: MediaQuery.of(context).size.height * 0.02);
  }
}
