import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fox_taxi_rider/home/Vehicle_Detail_Screen.dart';

class MyVehicle_List_Screen extends StatefulWidget {
  @override
  _MyVehicle_List_ScreenState createState() =>
      _MyVehicle_List_ScreenState();
}

class _MyVehicle_List_ScreenState extends State<MyVehicle_List_Screen> {
  @override

  static final myDictionary = [
    {
      "id": 1,
      "name": "Sumo",
      "car": "TATA",
      "image": ""
    },
    {
      "id": 2,
      "name": "Maruti800",
      "car": "Suzuki",
      "image": ""
    },
    {
      "id": 3,
      "name": "Impala",
      "car": "Chevi",
      "image": ""
    },
    {
      "id": 4,
      "name": "Fiat",
      "car": "Fiat",
      "image": ""
    },
    {
      "id": 5,
      "name": "Ambassador",
      "car": "Indian",
      "image": ""
    },
  ];



  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'My Vehicel Details',
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
            return Center(child:
              GestureDetector(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Vehicle_Detail_Screen()),
                  );
                },
                child: Column(
                  children: [
                    ListTile(
                      title: Text('${myDictionary[index]['name']}'),//Text('${names[index]}'),
                      subtitle: Text('${myDictionary[index]['car']}'),
                      trailing: Icon(Icons.directions_car),
                    ),
                    hDivider(),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget vehicleTile() {
    return ListTile(
      title: Text('Sumo(The Legend)'),
      subtitle: Text('TATA'),
      trailing: Icon(Icons.directions_car),
    );
  }

  Widget hDivider() {
    return Divider(
      height: 1,
      thickness: 1,
    );
  }
}
