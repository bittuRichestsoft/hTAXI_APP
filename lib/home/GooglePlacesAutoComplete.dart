import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fox_taxi_rider/GlobalVariables.dart';
import 'package:google_place/google_place.dart';

class GooglePlacesAutoComplete extends StatefulWidget {
  @override
  GooglePlacesAutoCompletestate createState() =>
      new GooglePlacesAutoCompletestate();
}

class GooglePlacesAutoCompletestate extends State<GooglePlacesAutoComplete> {
  GooglePlace _places = GooglePlace(globalVariables.GOOGLE_API_KEY);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: const Text('Set Location'),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          color: Colors.grey[100],
          alignment: Alignment.center,
          child: ListView(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(children: [
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      width: 40,
                      height: 40,
                      child: IconButton(
                        icon: Icon(Icons.directions_car),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      width: 40,
                      height: 40,
                      child: IconButton(
                        icon: Icon(Icons.star),
                      ),
                    ),
                  ]),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 20),
                        height: 40,
                        width: MediaQuery.of(context).size.width - 90,
                        child: TextField(
                          onChanged: (text) {
                            print("First text field: $text");
                            setState(() {});
                          },
                          decoration: InputDecoration(
                              filled: true,
                              hintStyle: TextStyle(
                                  color: Colors.grey[800],
                                  fontSize: 22,
                                  height: 40),
                              hintText: "Location",
                              fillColor: Colors.white),
                          textAlignVertical: TextAlignVertical.center,
                          textAlign: TextAlign.left,
                          maxLines: 1,
                          style: TextStyle(fontSize: 22),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 20),
                        height: 40,
                        width: MediaQuery.of(context).size.width - 90,
                        child: TextField(
                          onChanged: (text) {
                            print("First text field: $text");
                            setState(() {});
                          },
                          decoration: InputDecoration(
                              filled: true,
                              hintStyle: TextStyle(
                                  color: Colors.grey[800],
                                  fontSize: 22,
                                  height: 40),
                              hintText: "Location",
                              fillColor: Colors.white),
                          textAlignVertical: TextAlignVertical.center,
                          textAlign: TextAlign.left,
                          maxLines: 1,
                          style: TextStyle(fontSize: 22),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(left: 20),
                width: 40,
                height: 40,
                child: IconButton(
                  icon: Icon(Icons.location_on),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(children: [
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      width: 40,
                      height: 40,
                      child: IconButton(
                        icon: Icon(Icons.home),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      width: 40,
                      height: 40,
                      child: IconButton(
                        icon: Icon(Icons.work),
                      ),
                    ),
                  ]),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 20),
                        height: 40,
                        width: MediaQuery.of(context).size.width - 90,
                        child: TextField(
                          onChanged: (text) {
                            print("First text field: $text");
                            setState(() {});
                          },
                          decoration: InputDecoration(
                              filled: true,
                              hintStyle: TextStyle(
                                  color: Colors.grey[800],
                                  fontSize: 22,
                                  height: 40),
                              hintText: "Location",
                              fillColor: Colors.white),
                          textAlignVertical: TextAlignVertical.center,
                          textAlign: TextAlign.left,
                          maxLines: 1,
                          style: TextStyle(fontSize: 22),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 20),
                        height: 40,
                        width: MediaQuery.of(context).size.width - 90,
                        child: TextField(
                          onChanged: (text) {
                            print("First text field: $text");
                            setState(() {});
                          },
                          decoration: InputDecoration(
                              filled: true,
                              hintStyle: TextStyle(
                                  color: Colors.grey[800],
                                  fontSize: 22,
                                  height: 40),
                              hintText: "Location",
                              fillColor: Colors.white),
                          textAlignVertical: TextAlignVertical.center,
                          textAlign: TextAlign.left,
                          maxLines: 1,
                          style: TextStyle(fontSize: 22),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(left: 20),
                width: 40,
                height: 40,
                child: IconButton(
                  icon: Icon(Icons.location_on),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(children: [
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      width: 40,
                      height: 40,
                      child: IconButton(
                        icon: Icon(Icons.home),
                      ),
                    ),
                  ]),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 20),
                        height: 40,
                        width: MediaQuery.of(context).size.width - 90,
                        decoration: BoxDecoration(
                            color: globalVariables.APP_THEME_COLOR,
                            borderRadius: BorderRadius.all(Radius.circular(20))
                        ),
                        child: Text("data"),
                      ),
                    ]
                  )
                ],
              )
            ],
          ),
        ));
  }
}
