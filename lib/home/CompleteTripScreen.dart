import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:fox_taxi_rider/home/CancelTripScreen.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class CompleteTripScreen extends StatefulWidget {
  @override
  _CompleteTripScreenState createState() => _CompleteTripScreenState();
}

GoogleMapController mapController;
double _originLatitude = 30.7046, _originLongitude = 76.7179;

class _CompleteTripScreenState extends State<CompleteTripScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          googleMapContainer(),
          topAddressContainer(),
          bottomSheetContainer()
        ],
      ),
    );
  }


  void _onMapCreated(GoogleMapController controller) async {
    mapController = controller;
  }


  Widget googleMapContainer(){
    return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: GoogleMap(
          initialCameraPosition: CameraPosition(
              target: LatLng(_originLatitude, _originLongitude),
              zoom: 8),
          myLocationEnabled: true,
          tiltGesturesEnabled: true,
          compassEnabled: true,
          scrollGesturesEnabled: true,
          zoomGesturesEnabled: true,
          onMapCreated: _onMapCreated,
        ));
  }


  Widget topAddressContainer(){
    return Column(
      children: [
        SizedBox(height: MediaQuery.of(context).padding.top,),
        Container(
          alignment: Alignment.center,
          margin:
          EdgeInsets.all(MediaQuery.of(context).size.width * 0.04),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.1,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(
                  MediaQuery.of(context).size.height * 0.1/2)),
              color: Colors.white),
          child: ListTile(
            leading: Icon(
              Icons.account_circle_outlined,
              color: Colors.blue,
            ),
            title: Text(
                "1 Ash Park,Pembork Dock SA7254,\nDurrylane, Oldham",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).size.height * 0.02)),
          ),
        ),
      ],
    );
  }


  Widget bottomSheetContainer(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        timerContainer(),
        Container(
           padding: EdgeInsets.only(left: 20,top: 20,right: 20,bottom: 20),
           margin: EdgeInsets.only(
               top: MediaQuery.of(context).size.height * 0.01),
                  decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(
                      MediaQuery.of(context).size.width * 0.04),
                  topRight: Radius.circular(
                      MediaQuery.of(context).size.width * 0.04))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              detailContainer(),
              SizedBox(height: MediaQuery.of(context).size.height*0.02,),
              Divider(height: 1, thickness: 1,),
              Visibility(
                  visible: true,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      chatContainer(),
                      messageContainer(),
                      cancelTripContainer(),
                    ],
                  ),),
              Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(
                    MediaQuery.of(context).size.width * 0.02),
                margin: EdgeInsets.all(
                    MediaQuery.of(context).size.width * 0.03),
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(
                        Radius.circular(
                            MediaQuery.of(context).size.width *
                                0.1))),
                child: Text('Arrived',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize:
                        MediaQuery.of(context).size.height *
                            0.02,
                        fontWeight: FontWeight.bold)),
              )
            ],
          ),
        )
      ],
    );
  }


  Widget timerContainer(){
    return Align(
      alignment: Alignment.bottomRight,
      child: Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width * 0.45,
        height: MediaQuery.of(context).size.height * 0.09,
        margin: EdgeInsets.only(
            right: MediaQuery.of(context).size.width * 0.05),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(
                MediaQuery.of(context).size.width * 0.05))),
        child: ListTile(
          title: Text(
            "01:59",
            style: TextStyle(
                color: Colors.blueAccent,
                fontSize: MediaQuery.of(context).size.height *
                    0.025,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          subtitle: Text("Arrived at dropoff",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize:
                  MediaQuery.of(context).size.height *
                      0.02,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center),
        ),
      ),
    );
  }

  Widget detailContainer(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment:
              MainAxisAlignment.center,
              crossAxisAlignment:
              CrossAxisAlignment.center,
              children: [
                Text(
                  '2min',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: MediaQuery.of(context)
                          .size
                          .height *
                          0.03,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: MediaQuery.of(context)
                      .size
                      .width *
                      0.03,
                ),
                Container(
                  width: MediaQuery.of(context)
                      .size
                      .width *
                      0.09,
                  height: MediaQuery.of(context)
                      .size
                      .width *
                      0.09,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context)
                      .size
                      .width *
                      0.03,
                ),
                Text(
                  '05mi',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: MediaQuery.of(context)
                          .size
                          .height *
                          0.03,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Text(
              'Picking up James Smith',
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: MediaQuery.of(context)
                      .size
                      .height *
                      0.02,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        SizedBox(
          width: 20,
          height: 20,
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.call,
              color: Colors.black,
            ),
          ),),
      ],
    );
  }

  Widget chatContainer(){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context)
                .size
                .width *
                0.12,
            height: MediaQuery.of(context)
                .size
                .height *
                0.12,
            padding: EdgeInsets.all(
                MediaQuery.of(context)
                    .size
                    .width *
                    0.02),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color:
                Colors.grey.withOpacity(0.1)),
            child: Icon(
              Icons.message,
              color:
              Colors.black.withOpacity(0.5),
            ),
          ),
          // SizedBox(height: MediaQuery.of(context).size.height * 0.01,),
          Text(
            'Chat',
            style: TextStyle(
                color: Colors.black,
                fontSize: MediaQuery.of(context)
                    .size
                    .height *
                    0.02),
          )
        ],
      ),
    );
  }

  Widget messageContainer(){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context)
                .size
                .width *
                0.12,
            height: MediaQuery.of(context)
                .size
                .height *
                0.12,
            padding: EdgeInsets.all(
                MediaQuery.of(context)
                    .size
                    .width *
                    0.02),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color:
                Colors.grey.withOpacity(0.1)),
            child: Icon(
              Icons.messenger_outline,
              color:
              Colors.black.withOpacity(0.5),
            ),
          ),
          // SizedBox(height: MediaQuery.of(context).size.height * 0.01,),
          Text(
            'Message',
            style: TextStyle(
                color: Colors.black,
                fontSize: MediaQuery.of(context)
                    .size
                    .height *
                    0.02),
          )
        ],
      ),
    );
  }

  Widget cancelTripContainer(){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    CancelTripScreen()),
          );
        },
        child: Column(
          mainAxisAlignment:
          MainAxisAlignment.center,
          crossAxisAlignment:
          CrossAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context)
                  .size
                  .width *
                  0.12,
              height: MediaQuery.of(context)
                  .size
                  .height *
                  0.12,
              padding: EdgeInsets.all(
                  MediaQuery.of(context)
                      .size
                      .width *
                      0.02),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey
                      .withOpacity(0.1)),
              child: Icon(
                Icons.clear,
                color:
                Colors.black.withOpacity(0.5),
              ),
            ),
            // SizedBox(height: MediaQuery.of(context).size.height * 0.01,),
            Text(
              'Cancel Trip',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: MediaQuery.of(context)
                      .size
                      .height *
                      0.02),
            )
          ],
        ),
      ),
    );
  }

}

