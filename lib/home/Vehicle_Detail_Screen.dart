import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fox_taxi_rider/GlobalVariables.dart';

class Vehicle_Detail_Screen extends StatefulWidget {
  @override
  _Vehicle_Detail_ScreenState createState() => _Vehicle_Detail_ScreenState();
}

class _Vehicle_Detail_ScreenState extends State<Vehicle_Detail_Screen> {
  @override
  static List<Map<dynamic,dynamic>> myDictionary = [
    {
      "id": 1,
      "name": "Vehicle Registration",
      "date": "25/04/2020",
      "status": true
    },
    {
      "id": 2,
      "name": "Vehicle Insurance",
      "date": "15/02/2020",
      "status": true
    },
    {"id": 3, "name": "Vehicle Permit", "date": "5/02/2019", "status": true},
    {"id": 4, "name": "Vehicle Loan", "date": "30/08/2018", "status": false},
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'Vehicel Details',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
          ),
          centerTitle: true,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black)),
      body: Container(
        margin: EdgeInsets.only(top: 3),
        padding: EdgeInsets.only(left: 20, right: 20),
        color: Colors.white,
        child: ListView.builder(
          itemCount: myDictionary.length,
          itemBuilder: (BuildContext context, int index) {
            return Center(
              child: Column(
                children: [
                  ListTile(
                    title: Text('${myDictionary[index]['name']}'),
                    subtitle: Text('${myDictionary[index]['date']}'),
                    trailing: myDictionary[index]['status']
                        ? approvedContainer()
                        : notApprovedContainer(),
                  ),
                  hDivider(),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Widget approvedContainer() {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        border: Border.all(
          color: globalVariables.APP_THEME_COLOR,
          style: BorderStyle.solid,
          width: 1.0,
        ),
        color: globalVariables.APP_THEME_COLOR.withOpacity(0.2),
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Text(
        'Approved',
        style: TextStyle(
            color: globalVariables.APP_THEME_COLOR,
            fontSize: MediaQuery.of(context).size.width * 0.025),
      ),
    );
  }

  Widget notApprovedContainer() {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.red,
          style: BorderStyle.solid,
          width: 1.0,
        ),
        color: Colors.red.withOpacity(0.2),
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Text(
        'Not Approved',
        style: TextStyle(
            color: Colors.red,
            fontSize: MediaQuery.of(context).size.width * 0.025),
      ),
    );
  }

  Widget hDivider() {
    return Divider(
      height: 1,
      thickness: 1,
    );
  }
}
