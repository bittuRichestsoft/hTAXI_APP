import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:fox_taxi_rider/GlobalVariables.dart';
import 'package:fox_taxi_rider/home/Edit_Profile_Screen.dart';

class PersonalInfoScreen extends StatefulWidget {
  @override
  _PersonalInfoScreenState createState() => _PersonalInfoScreenState();
}

class _PersonalInfoScreenState extends State<PersonalInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              blackContainer(),
              profileTopContainer(),
              userImage(),
            ],
          ),
          personalInfoText(),
          personalListDetailContainer(),
        ],
      ),
    );
  }

  Widget topBarBtns() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.clear,
              color: Colors.white,
            )),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Edit_Profile_Screen()),
            );
          },
          child: Padding(
            padding: const EdgeInsets.only(right: 15, top: 15),
            child: Text(
              'Edit',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.of(context).size.height * 0.02),
            ),
          ),
        )
      ],
    );
  }

  Widget userImage() {
    return Positioned(
      top: MediaQuery.of(context).padding.top +
          MediaQuery.of(context).size.height * 0.06,
      left: 0,
      right: 0,
      child: Container(
        width: MediaQuery.of(context).size.height * 0.15,
        height: MediaQuery.of(context).size.height * 0.15,
        //margin: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        decoration:
            BoxDecoration(color: Colors.orangeAccent, shape: BoxShape.circle),
      ),
    );
  }

  Widget profileTopContainer() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(MediaQuery.of(context).size.width * 0.03),
        ),
      ),
      margin: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * 0.14 +
              MediaQuery.of(context).padding.top,
          left: 20,
          right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.08,
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              'James Smith',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: MediaQuery.of(context).size.height * 0.025,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          Divider(
            height: 1,
            thickness: 1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                //color: Colors.blue,
                width: MediaQuery.of(context).size.width * 0.4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '3250',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: MediaQuery.of(context).size.height * 0.022,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Total trips',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: MediaQuery.of(context).size.height * 0.02,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.grey.shade400,
                width: 1,
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              // VerticalDivider(color: Colors.grey, thickness: 5, width: 5,),
              Container(
                width: MediaQuery.of(context).size.width * 0.4,
                //color: Colors.red,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '2.5',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: MediaQuery.of(context).size.height * 0.022,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Years',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: MediaQuery.of(context).size.height * 0.018,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget personalListDetailContainer() {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20),
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.1),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(MediaQuery.of(context).size.width * 0.03),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: hEdgeInset()),
            child: Text(
              '+987456321',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.of(context).size.height * 0.022),
              textAlign: TextAlign.start,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: hEdgeInset()),
            child: Text(
              'James@yellowtaxi.com',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.of(context).size.height * 0.022),
              textAlign: TextAlign.start,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: hEdgeInset()),
            child: Text(
              'English and Spanish',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.of(context).size.height * 0.022),
              textAlign: TextAlign.start,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: hEdgeInset(), bottom: hEdgeInset()),
            child: Text(
              'RML,NEW York',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.of(context).size.height * 0.022),
              textAlign: TextAlign.start,
            ),
          ),
        ],
      ),
    );
  }

  Widget blackContainer() {
    return Container(
      color: Color.fromRGBO(40, 47, 56, 1),
      height: MediaQuery.of(context).size.height * 0.3,
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).padding.top,
          ),
          topBarBtns(),
        ],
      ),
    );
  }

  Widget personalInfoText() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(left: 20, right: 20, top: 25, bottom: 10),
        child: Text(
          'PERSONAL INFO',
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: hFontSize(context)),
          textAlign: TextAlign.start,
        ),
      ),
    );
  }

  double hEdgeInset() {
    return MediaQuery.of(context).size.height * 0.035;
  }
}
