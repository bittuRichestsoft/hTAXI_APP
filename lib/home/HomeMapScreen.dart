import 'dart:async';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:fox_taxi_rider/GlobalVariables.dart';
import 'package:fox_taxi_rider/home/CompleteTripScreen.dart';
import 'package:fox_taxi_rider/home/ProfileScreen.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomeMapScreen extends StatefulWidget {
  @override
  _HomeMapScreenState createState() => _HomeMapScreenState();
}

GoogleMapController mapController;
double _originLatitude = 30.7046, _originLongitude = 76.7179;
bool show_findingtrips = false;
Timer timer;

class _HomeMapScreenState extends State<HomeMapScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          googleMapContainer(),
          detailContainer(),
          PriceLabel(),
          profileLogo(),
          profileBadge(),
        ],
      ),
    );
  }

  void _onMapCreated(GoogleMapController controller) async {
    mapController = controller;
  }

  Widget googleMapContainer() {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: GoogleMap(
          initialCameraPosition: CameraPosition(
              target: LatLng(_originLatitude, _originLongitude), zoom: 8),
          myLocationEnabled: true,
          tiltGesturesEnabled: true,
          compassEnabled: true,
          scrollGesturesEnabled: true,
          zoomGesturesEnabled: true,
          onMapCreated: _onMapCreated,
        ));
  }

  Widget detailContainer() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        goBtnContainer(),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
        Visibility(
          visible: show_findingtrips == false ? true : false,
          child: Container(
            //height: MediaQuery.of(context).size.height * 0.252,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft:
                      Radius.circular(MediaQuery.of(context).size.width * 0.04),
                  topRight: Radius.circular(
                      MediaQuery.of(context).size.width * 0.04)),
            ),
            child: Column(
              children: [
                youAreOffLine(),
                Divider(
                  height: 1,
                  color: Colors.grey,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.18,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      acceptanceContainer(),
                      verticelDivider1(),
                      ratingContainer(),
                      verticelDivider1(),
                      cancellationContainer(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Visibility(
            visible: show_findingtrips == true ? true : false,
            child: findingtripContainer())
      ],
    );
  }

  Widget PriceLabel() {
    return Column(
      children: [
        SizedBox(height: MediaQuery.of(context).padding.top),
        Align(
          alignment: Alignment.topCenter,
          child: Container(
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.width * 0.01),
            width: MediaQuery.of(context).size.width * 0.3,
            height: MediaQuery.of(context).size.height * 0.05,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                    Radius.circular(MediaQuery.of(context).size.width * 0.05))),
            child: Text(
              '\$150.00',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.of(context).size.height * 0.02),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }

  Widget profileBadge() {
    return Column(
      children: [
        SizedBox(height: MediaQuery.of(context).padding.top),
        Align(
          alignment: Alignment.topRight,
          child: Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width * 0.07,
            height: MediaQuery.of(context).size.height * 0.02,
            margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.03,
                right: MediaQuery.of(context).size.width * 0.07),
            decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.all(
                    Radius.circular(MediaQuery.of(context).size.width * 0.03))),
            child: Text(
              '5',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: MediaQuery.of(context).size.height * 0.013),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }

  Widget profileLogo() {
    return Column(
      children: [
        SizedBox(height: MediaQuery.of(context).padding.top),
        Align(
          alignment: Alignment.topRight,
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfileScreen()),
              );
            },
            child: Container(
              margin: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width * 0.02),
              width: MediaQuery.of(context).size.width * 0.1,
              height: MediaQuery.of(context).size.height * 0.06,
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.black),
            ),
          ),
        ),
      ],
    );
  }

  Widget goBtnContainer() {
    return InkWell(
      onTap: () {
        setState(
          () {
            show_findingtrips = true;
          },
        );
      },
      child: Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.height * 0.1,
          height: MediaQuery.of(context).size.height * 0.1,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xff08A74D),
              border: Border.all(color: Colors.white)),
          child: Container(
            padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.04),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 1),
                shape: BoxShape.circle),
            child: Text(
              'GO',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: hFontSize(context),
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          )),
    );
  }

  Widget verticelDivider1() {
    return VerticalDivider(
      width: 1,
      thickness: 1,
    );
  }

  Widget youAreOffLine(){
    return Padding(
      padding:
      EdgeInsets.all(MediaQuery.of(context).size.width * 0.03),
      child: Text(
        'You are offline',
        style: TextStyle(
            color: Colors.black,
            fontSize: hFontSize(context),
            fontWeight: FontWeight.bold),
      ),
    );
  }


  Widget acceptanceContainer(){
    return  Container(
      width: MediaQuery.of(context).size.width * 0.31,
      height: MediaQuery.of(context).size.height,
      // color: Colors.purple,
      // padding: EdgeInsets.all(
      //     MediaQuery.of(context).size.width * 0.03),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.star,
            color: Colors.green,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.width * 0.001,
          ),
          Text(
            '95.0%',
            style: TextStyle(
                color: Colors.black,
                fontSize: MediaQuery.of(context).size.height *
                    0.025,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.width * 0.001,
          ),
          Text(
            'Acceptance',
            style: TextStyle(
                color: Colors.grey,
                fontSize:
                MediaQuery.of(context).size.height * 0.02,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget ratingContainer(){
    return Container(
      width: MediaQuery.of(context).size.width * 0.31,
      height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.star,
            color: Colors.green,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.width * 0.001,
          ),
          Text(
            '95.0%',
            style: TextStyle(
                color: Colors.black,
                fontSize: MediaQuery.of(context).size.height *
                    0.025,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.width * 0.001,
          ),
          Text(
            'Rating',
            style: TextStyle(
                color: Colors.grey,
                fontSize:
                MediaQuery.of(context).size.height * 0.02,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }


  Widget cancellationContainer(){
    return Container(
      width: MediaQuery.of(context).size.width * 0.31,
      height: MediaQuery.of(context).size.height*0.3,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.star,
            color: Colors.green,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.width * 0.001,
          ),
          Text(
            '95.0%',
            style: TextStyle(
                color: Colors.black,
                fontSize: MediaQuery.of(context).size.height *
                    0.025,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.width * 0.001,
          ),
          Text(
            'cancellation',
            style: TextStyle(
                color: Colors.grey,
                fontSize:
                MediaQuery.of(context).size.height * 0.02,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget findingtripContainer() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CompleteTripScreen()),
          );
        },
        child: Container(
          height: MediaQuery.of(context).size.height * 0.3,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft:
                    Radius.circular(MediaQuery.of(context).size.width * 0.04),
                topRight:
                    Radius.circular(MediaQuery.of(context).size.width * 0.04)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding:
                    EdgeInsets.all(MediaQuery.of(context).size.width * 0.02),
                child: Text(
                  'Finding trips',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: MediaQuery.of(context).size.height * 0.03,
                      fontWeight: FontWeight.bold),
                ),
              ),
              LinearProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.23,
                padding:
                    EdgeInsets.all(MediaQuery.of(context).size.width * 0.04),
                color: Colors.lightBlueAccent.withOpacity(0.2),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Opportunity nearby',
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: MediaQuery.of(context).size.height * 0.03,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'More requests than usual',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: MediaQuery.of(context).size.height * 0.025,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
