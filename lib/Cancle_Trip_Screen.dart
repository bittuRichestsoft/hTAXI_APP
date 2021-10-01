import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cancle_Trip_Screen extends StatefulWidget {
  @override
  _Cancle_Trip_ScreenState createState() => _Cancle_Trip_ScreenState();
}

class _Cancle_Trip_ScreenState extends State<Cancle_Trip_Screen> {
  @override
  List<String> names = [
    'Rider isn\'t here',
    'Wrong address shown',
    'Don\'t charge rider',
    'Got some work',
    'other'
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Cancel Trip',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
        leading:
            IconButton(icon: Icon(Icons.arrow_back)), // appbar leading icon.
      ),
      body: Scaffold(
        body: ListView.builder(
          itemCount: names.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: MediaQuery.of(context).size.height/10,
              //margin: EdgeInsets.all(2),
              padding: EdgeInsets.only(left: 20, top: 20),
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${names[index]}',
                    style: TextStyle(fontSize: 22, color: Colors.black),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height*0.035,
                  ),
                  Divider(height: 1,)
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
