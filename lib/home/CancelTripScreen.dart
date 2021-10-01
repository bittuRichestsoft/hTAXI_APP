import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class CancelTripScreen extends StatefulWidget {
  @override
  _CancelTripScreenState createState() => _CancelTripScreenState();
}

List<String> cancelReasonList = [
  'Rider is not here',
  'Wrong address shown',
  'Dont charge Rider'
];
List<bool> checkList = [false, false, false];
bool showCanceldialog = false;

class _CancelTripScreenState extends State<CancelTripScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.clear,
              color: Colors.black,
            ),
          ),
          title: Text(
            'CANCEL TRIP',
            style: TextStyle(
                color: Colors.black,
                fontSize: MediaQuery.of(context).size.height * 0.02,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
        body: Column(
          children: [
            canceltrip(),
            Align(
              alignment: Alignment.bottomCenter,
              child: doneButton(),
            )
          ],
        ));
  }

  Widget canceltrip() {
    return ListView.builder(
        itemCount: cancelReasonList.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 24,
                      height: 24,
                      child: Checkbox(
                        hoverColor: Colors.white,
                        focusColor: Colors.white,
                        activeColor: Colors.white,
                        fillColor: MaterialStateProperty.all(Colors.blue),
                        checkColor: Colors.white,
                        // shape: RoundedRectangleBorder(
                        //   borderRadius: BorderRadius.circular(3),
                        // ),
                        value: checkList[index],
                        onChanged: (value) {
                          setState(() {
                            if (value == true) {
                              checkList[index] = value;
                            } else {
                              checkList[index] = value;
                            }
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.04,
                    ),
                    Text(
                      cancelReasonList[index],
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: MediaQuery.of(context).size.height * 0.02,
                      ),
                    )
                  ],
                ),
                Divider(
                  color: Colors.grey.withOpacity(0.3),
                )
              ],
            ),
          );
        });
  }

  Widget doneButton() {
    return InkWell(
      onTap: () {
        setState(
          () {
            showCanceldialog = true;
          },
        );
      },
      child: Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.all(MediaQuery.of(context).size.width * 0.03),
        padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.04),
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.all(
            Radius.circular(MediaQuery.of(context).size.width * 0.06),
          ),
        ),
        child: Text(
          'Done',
          style: TextStyle(
              color: Colors.white,
              fontSize: MediaQuery.of(context).size.height * 0.02,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget cancel_bottomsheet() {
    return DraggableScrollableSheet(
        expand: true,
        builder: (BuildContext context, myscrollController) {
          return Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(
                        MediaQuery.of(context).size.width * 0.04),
                    topRight: Radius.circular(
                        MediaQuery.of(context).size.width * 0.04))),
            child: ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Text('Cancel Rockdown Trips',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize:
                                MediaQuery.of(context).size.height * 0.02)),
                    Divider(
                      color: Colors.grey,
                      height: 1,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.all(Radius.circular(
                              MediaQuery.of(context).size.width * 0.06))),
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.all(
                          MediaQuery.of(context).size.width * 0.03),
                      child: Text(
                        'Yes,Cancel',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: MediaQuery.of(context).size.height * 0.02,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.all(Radius.circular(
                              MediaQuery.of(context).size.width * 0.06))),
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.all(
                          MediaQuery.of(context).size.width * 0.03),
                      child: Text(
                        'No',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: MediaQuery.of(context).size.height * 0.02,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                );
              },
              // mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.start,
              //children: [

              // ],
            ),
          );
        });
  }
}
