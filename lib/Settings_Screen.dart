import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fox_taxi_rider/GlobalVariables.dart';
import 'package:fox_taxi_rider/home/MyVehicle_List_Screen.dart';
import 'package:fox_taxi_rider/home/ProfileScreen.dart';

import 'home/Personal-InfoScreen.dart';

class Settings_Screen extends StatefulWidget {
  @override
  _Settings_ScreenState createState() => _Settings_ScreenState();
}

class _Settings_ScreenState extends State<Settings_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Settings',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          container1(),
          helpContainer(),
          container2()
        ],
      ),
    );
  }


  Widget container1() {
    return Container(
      margin: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * 0.01,
          bottom: MediaQuery.of(context).size.height * 0.01),
      padding: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
      color: CupertinoColors.white,
      child: Column(
        children: [
          GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PersonalInfoScreen()),
              );
            },
            child: Row(
              children: [
                Icon(
                  Icons.person,
                  size: MediaQuery.of(context).size.height * 0.04,
                ),
                sizedBoxWidth003(),
                Text(
                  'My Profile',
                  style: TextStyle(fontSize: hFontSize(context)),
                )
              ],
            ),
          ),
          sizedBox006(),
          GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyVehicle_List_Screen()),
              );

            },
            child: Row(
              children: [
                Icon(
                  Icons.directions_car,
                  size: MediaQuery.of(context).size.height * 0.04,
                ),
                sizedBoxWidth003(),
                Text(
                  'My Vehicle',
                  style: TextStyle(fontSize: hFontSize(context)),
                )
              ],
            ),
          ),
          sizedBox006(),
          Row(
            children: [
              Icon(
                Icons.drive_file_move,
                size: MediaQuery.of(context).size.height * 0.04,
              ),
              sizedBoxWidth003(),
              Text(
                'Personal Document',
                style: TextStyle(fontSize: hFontSize(context)),
              )
            ],
          ),
          sizedBox006(),
          Row(
            children: [
              Icon(
                Icons.home_work_outlined,
                size: MediaQuery.of(context).size.height * 0.04,
              ),
              sizedBoxWidth003(),
              Text(
                'Bank Details',
                style: TextStyle(fontSize: hFontSize(context)),
              )
            ],
          ),
          sizedBox006(),
          Row(
            children: [
              Icon(
                Icons.lock,
                size: MediaQuery.of(context).size.height * 0.04,
              ),
              sizedBoxWidth003(),
              Text(
                'Change Password',
                style: TextStyle(fontSize: hFontSize(context)),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget helpContainer(){
    return Container(
      margin: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * 0.01),
      padding: EdgeInsets.only(left: 20, right: 20, bottom: 5),
      child: Text(
        'HELP',
        style: TextStyle(
          fontSize: hFontSize(context),
        ),
      ),
    );
  }

  Widget container2() {
    return Container(
      //margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.01),
      padding: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
      color: CupertinoColors.white,
      child: Column(
        children: [
          Row(
            children: [
              Icon(
                Icons.warning_outlined,
                size: MediaQuery.of(context).size.height * 0.04,
              ),
              sizedBoxWidth003(),
              Text(
                'Terms & Conditions',
                style: TextStyle(fontSize: hFontSize(context)),
              )
            ],
          ),
          sizedBox006(),
          Row(
            children: [
              Icon(
                Icons.policy,
                size: MediaQuery.of(context).size.height * 0.04,
              ),
              sizedBoxWidth003(),
              Text(
                'Privacy Policies',
                style: TextStyle(fontSize: hFontSize(context)),
              )
            ],
          ),
          sizedBox006(),
          Row(
            children: [
              Icon(
                Icons.info,
                size: MediaQuery.of(context).size.height * 0.04,
              ),
              sizedBoxWidth003(),
              Text(
                'About',
                style: TextStyle(fontSize: hFontSize(context)),
              )
            ],
          ),
          sizedBox006(),
          Row(
            children: [
              Icon(
                Icons.contact_page,
                size: MediaQuery.of(context).size.height * 0.04,
              ),
              sizedBoxWidth003(),
              Text(
                'Contact us',
                style: TextStyle(fontSize: hFontSize(context)),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget sizedBox006() {
    return SizedBox(height: MediaQuery.of(context).size.height * 0.06);
  }

  Widget sizedBoxWidth003() {
    return SizedBox(width: MediaQuery.of(context).size.width * 0.03);
  }
}
