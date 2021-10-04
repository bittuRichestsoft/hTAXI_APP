import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fox_taxi_rider/GlobalVariables.dart';
import 'package:fox_taxi_rider/startUp/Add_MoneyTO_Wallet_Screen.dart';

import 'Wallet_Screen.dart';

class Subscription_Plan_Screeen extends StatefulWidget {
  @override
  _Subscription_Plan_ScreeenState createState() =>
      _Subscription_Plan_ScreeenState();
}

class _Subscription_Plan_ScreeenState extends State<Subscription_Plan_Screeen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Subscription Plan',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
       elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
      ),
      body: ScrollConfiguration(
        behavior: MyBehavior(),
        child: ListView(
          children: [
            basicPlanContainer(),
            classicPlanContainer(),
          ],
        ),
      ),
    );
  }

  Widget basicPlanContainer() {
    return Container(
      margin: EdgeInsets.all(MediaQuery.of(context).size.width * 0.025),
      padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
      // height: MediaQuery.of(context).size.height / 2.5,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(5.0)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Base plan",
            style: TextStyle(
                fontSize: hFontSize(context), fontWeight: FontWeight.w700),
          ),
          Text(
            "1 Month",
            style: TextStyle(fontSize: smallTextSize0022(), color: Colors.grey),
          ),
          sizedBox025(),
          Text(
            "• 10 rides everyday",
            style: TextStyle(fontSize: hFontSize(context), color: Colors.grey),
          ),
          sizedBox025(),
          Text(
            "• 2 cash rides",
            style: TextStyle(fontSize: hFontSize(context), color: Colors.grey),
          ),
          sizedBox025(),
          Text(
            "• 50km travel rides",
            style: TextStyle(fontSize: hFontSize(context), color: Colors.grey),
          ),
          sizedBox025(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Text(
                  "TRY FREE",
                  style: TextStyle(
                      fontSize: hFontSize(context),
                      fontWeight: FontWeight.w900,
                      decoration: TextDecoration.none,
                      color: globalVariables.APP_THEME_COLOR),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget classicPlanContainer() {
    return Container(
      margin: EdgeInsets.only(
          left: MediaQuery.of(context).size.width * 0.025,
          right: MediaQuery.of(context).size.width * 0.025,
          bottom: MediaQuery.of(context).size.width * 0.025),
      padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
      // height: MediaQuery.of(context).size.height / 2.5,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(5.0)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Classic plan",
            style: TextStyle(
                fontSize: hFontSize(context), fontWeight: FontWeight.w700),
          ),
          Text(
            "3 Month",
            style: TextStyle(fontSize: smallTextSize0022(), color: Colors.grey),
          ),
          sizedBox025(),
          Text(
            "• 20 rides everyday",
            style: TextStyle(fontSize: hFontSize(context), color: Colors.grey),
          ),
          sizedBox025(),
          Text(
            "• 8 cash rides",
            style: TextStyle(fontSize: hFontSize(context), color: Colors.grey),
          ),
          sizedBox025(),
          Text(
            "• 250km travel rides",
            style: TextStyle(fontSize: hFontSize(context), color: Colors.grey),
          ),
          sizedBox025(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Add_MoneyTO_Wallet_Screen()),
                  );
                },
                child: Text(
                  "BUY AT \$20.50",
                  style: TextStyle(
                      fontSize: hFontSize(context),
                      fontWeight: FontWeight.w900,
                      decoration: TextDecoration.none,
                      color: globalVariables.APP_THEME_COLOR),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  double smallTextSize0022() {
    return MediaQuery.of(context).size.height * 0.022;
  }

  Widget sizedBox025() {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.025,
    );
  }

  Widget sizedBox0005() {
    return SizedBox(height: MediaQuery.of(context).size.height * 0.005);
  }
}
