import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fox_taxi_rider/GlobalVariables.dart';

import 'Trip_Screen.dart';

class Add_MoneyTO_Wallet_Screen extends StatefulWidget {
  @override
  _Add_MoneyTO_Wallet_ScreenState createState() =>
      _Add_MoneyTO_Wallet_ScreenState();
}

class _Add_MoneyTO_Wallet_ScreenState extends State<Add_MoneyTO_Wallet_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Add Money to wallet',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),// appbar leading icon.
      ),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          availableBalanceContainer(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          bankAccountContainer(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          submitRequestBtn(),
        ],
      ),
    );
  }

  Widget availableBalanceContainer() {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //change here don't //worked
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //change here don't //worked
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Available balance",
                style: TextStyle(
                  fontSize: hFontSize(context),
                ),
              ),
              Text(
                "\$54.75",
                style: TextStyle(
                  fontSize: hFontSize(context),
                ),
              ),
            ],
          ),
          sizedBox002(),
          Text(
            "\$ 48",
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.width * 0.09,
            ),
          ),
          sizedBox002(),
          Row(
            children: [
              Container(
                  width: MediaQuery.of(context).size.width / 5,
                  height: MediaQuery.of(context).size.height * 0.055,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: globalVariables.APP_THEME_COLOR,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Center(
                      child: Text(
                    '+10',
                    style: TextStyle(
                        fontSize: hFontSize(context),
                        color: globalVariables.APP_THEME_COLOR),
                  ))),
              sizedBoxWidth003(),
              Container(
                  width: MediaQuery.of(context).size.width / 5,
                  height: MediaQuery.of(context).size.height * 0.055,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: globalVariables.APP_THEME_COLOR,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Center(
                      child: Text(
                    '+20',
                    style: TextStyle(
                        fontSize: hFontSize(context),
                        color: globalVariables.APP_THEME_COLOR),
                  ))),
              sizedBoxWidth003(),
              Container(
                width: MediaQuery.of(context).size.width / 5,
                height: MediaQuery.of(context).size.height * 0.055,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: globalVariables.APP_THEME_COLOR,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Center(
                  child: Text(
                    '+50',
                    style: TextStyle(
                        fontSize: hFontSize(context),
                        color: globalVariables.APP_THEME_COLOR),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget bankAccountContainer() {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "From Bank Account",
                style: TextStyle(
                  fontSize: hFontSize(context),
                ),
              ),
              Icon(Icons.arrow_forward_ios)
            ],
          ),
          sizedBox002(),
          Row(
            children: [
              Icon(
                Icons.ballot_rounded,
                size: MediaQuery.of(context).size.height * 0.06,
              ),
              sizedBoxWidth003(),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Standard Chartered Bank',
                    style: TextStyle(
                      fontSize: hFontSize(context),
                    ),
                  ),
                  Text(
                    '*****3315',
                    style: TextStyle(
                      fontSize: hFontSize(context),
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget submitRequestBtn() {
    return GestureDetector(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Trip_Screen()),
        );
      },
      child: Container(
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
              "SUBMIT REQUEST",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),),
      ),
    );
  }


  Widget sizedBox002() {
    return SizedBox(height: MediaQuery.of(context).size.height * 0.02);
  }

  Widget sizedBoxWidth003() {
    return SizedBox(width: MediaQuery.of(context).size.width * 0.03);
  }
}
