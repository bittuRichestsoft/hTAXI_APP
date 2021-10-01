import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fox_taxi_rider/GlobalVariables.dart';
import 'package:fox_taxi_rider/startUp/Subscription_Plan_Screen.dart';

class Wallet_Screen extends StatefulWidget {
  @override
  _Wallet_ScreenState createState() => _Wallet_ScreenState();
}

class _Wallet_ScreenState extends State<Wallet_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'Wallet',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
          ),
          centerTitle: true,
          leading:
              IconButton(icon: Icon(Icons.arrow_back)), // appbar leading icon.
        ),
        body: Column(
          children: [
            totalBalanceContainer(),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03,),
            detailsListView(),
          ],
        ));
  }

  Widget totalBalanceContainer() {
    return Container(
      color: Colors.white,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.01),
      child: Column(
        children: [
          sizedBox005(),
          Text(
            "Total balance",
            style: TextStyle(fontSize: hFontSize(context), color: Colors.grey),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "\$",
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * 0.03,
                    color: globalVariables.APP_THEME_COLOR),
              ),
              Text(
                "54.55",
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * 0.05,
                    color: Colors.black),
              ),
            ],
          ),
          sizedBox005(),
          Divider(
            height: MediaQuery.of(context).size.height * 0.001,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width / 2.015,
                height: MediaQuery.of(context).size.height * 0.07,
                child: Text(
                  "WITHDRAW",
                  style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: hFontSize(context),
                      color: globalVariables.APP_THEME_COLOR),
                ),
              ),
              Container(
                color: Colors.grey.shade300,
                  height: MediaQuery.of(context).size.height * 0.07,
                  width:MediaQuery.of(context).size.height * 0.001),
              GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Subscription_Plan_Screeen()),
                  );
                },
                child: Container(
                  width: MediaQuery.of(context).size.width / 2.015,
                  alignment: Alignment.center,
                  height: MediaQuery.of(context).size.height * 0.07,
                  child: Text(
                    "ADD MONEY",
                    style: TextStyle(
                        fontSize: hFontSize(context),
                        fontWeight: FontWeight.w800,
                        color: globalVariables.APP_THEME_COLOR),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget detailsListView() {
    return Expanded(
      child: ListView(
        shrinkWrap: true,
        children: [
          Container(
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.07,
                right: MediaQuery.of(context).size.width * 0.07),
            width: MediaQuery.of(context).size.width,
            //height: MediaQuery.of(context).size.height * 0.005,
            child: Text(
              'APRIL 2020',
              style: TextStyle(fontSize: fontSIZE()),
            ),
          ),
          Container(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.015,
                left: MediaQuery.of(context).size.width * 0.07,
                right: MediaQuery.of(context).size.width * 0.07,),
            color: Colors.white,
            // height: MediaQuery.of(context).size.height * 0.12,
            child: Column(
              children: [
                Center(
                  child: ListTile(
                    leading: Icon(Icons.account_balance_wallet_outlined),
                    title: Text(
                      "Add to wallet",
                      style: TextStyle(fontSize: fontSIZE(), color: Colors.grey),
                    ),
                    subtitle: Text(
                      '1st feb\'19• # 54224',
                      style: TextStyle(fontSize: fontSIZE(), color: Colors.grey),
                    ),
                    trailing: Text(
                      "5454",
                      style: TextStyle(fontSize: fontSIZE(), color: Colors.grey),
                    ),
                  ),
                ),
                listViewHeightSizedBox(),
                Divider(
                  height: 1,
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.015,
              left: MediaQuery.of(context).size.width * 0.07,
              right: MediaQuery.of(context).size.width * 0.07,),
            color: Colors.white,
            // height: MediaQuery.of(context).size.height * 0.12,
            child: Column(
              children: [
                Center(
                  child: ListTile(
                    leading: Icon(Icons.account_balance_wallet_outlined),
                    title: Text(
                      "Add to wallet",
                      style: TextStyle(fontSize: fontSIZE(), color: Colors.grey),
                    ),
                    subtitle: Text(
                      '1st feb\'19• # 54224',
                      style: TextStyle(fontSize: fontSIZE(), color: Colors.grey),
                    ),
                    trailing: Text(
                      "5454",
                      style: TextStyle(fontSize: fontSIZE(), color: Colors.grey),
                    ),
                  ),
                ),
                listViewHeightSizedBox(),
                Divider(
                  height: 1,
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.015,
              left: MediaQuery.of(context).size.width * 0.07,
              right: MediaQuery.of(context).size.width * 0.07,),
            color: Colors.white,
            // height: MediaQuery.of(context).size.height * 0.12,
            child: Column(
              children: [
                Center(
                  child: ListTile(
                    leading: Icon(Icons.account_balance_wallet_outlined),
                    title: Text(
                      "Add to wallet",
                      style: TextStyle(fontSize: fontSIZE(), color: Colors.grey),
                    ),
                    subtitle: Text(
                      '1st feb\'19• # 54224',
                      style: TextStyle(fontSize: fontSIZE(), color: Colors.grey),
                    ),
                    trailing: Text(
                      "5454",
                      style: TextStyle(fontSize: fontSIZE(), color: Colors.grey),
                    ),
                  ),
                ),
                listViewHeightSizedBox(),
                Divider(
                  height: 1,
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.015,
              left: MediaQuery.of(context).size.width * 0.07,
              right: MediaQuery.of(context).size.width * 0.07,),
            color: Colors.white,
            // height: MediaQuery.of(context).size.height * 0.12,
            child: Column(
              children: [
                Center(
                  child: ListTile(
                    leading: Icon(Icons.account_balance_wallet_outlined),
                    title: Text(
                      "Add to wallet",
                      style: TextStyle(fontSize: fontSIZE(), color: Colors.grey),
                    ),
                    subtitle: Text(
                      '1st feb\'19• # 54224',
                      style: TextStyle(fontSize: fontSIZE(), color: Colors.grey),
                    ),
                    trailing: Text(
                      "5454",
                      style: TextStyle(fontSize: fontSIZE(), color: Colors.grey),
                    ),
                  ),
                ),
                listViewHeightSizedBox(),
                Divider(
                  height: 1,
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.015,
              left: MediaQuery.of(context).size.width * 0.07,
              right: MediaQuery.of(context).size.width * 0.07,),
            color: Colors.white,
            // height: MediaQuery.of(context).size.height * 0.12,
            child: Column(
              children: [
                Center(
                  child: ListTile(
                    leading: Icon(Icons.account_balance_wallet_outlined),
                    title: Text(
                      "Add to wallet",
                      style: TextStyle(fontSize: fontSIZE(), color: Colors.grey),
                    ),
                    subtitle: Text(
                      '1st feb\'19• # 54224',
                      style: TextStyle(fontSize: fontSIZE(), color: Colors.grey),
                    ),
                    trailing: Text(
                      "5454",
                      style: TextStyle(fontSize: fontSIZE(), color: Colors.grey),
                    ),
                  ),
                ),
                listViewHeightSizedBox(),
                Divider(
                  height: 1,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget listViewHeightSizedBox() {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.015,
    );
  }

  Widget listViewWidthSizedBox() {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.02,
    );
  }

  Widget sizedBox005() {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.05,
    );
  }

  double fontSIZE() {
    return MediaQuery.of(context).size.height * 0.024;
  }
}
