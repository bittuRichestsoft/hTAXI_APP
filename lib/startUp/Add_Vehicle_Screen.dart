

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fox_taxi_rider/startUp/Vehicle_Document_Screen.dart';

import '../GlobalVariables.dart';

class Add_Vehicle_Screen extends StatefulWidget {
  @override
  _Add_Vehicle_ScreenState createState() =>
      _Add_Vehicle_ScreenState();
}

class _Add_Vehicle_ScreenState extends State<Add_Vehicle_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'Add Vehicle',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
          ),
          centerTitle: true,
          leading:
          IconButton(icon: Icon(Icons.arrow_back)), // appbar leading icon.
        ),
        body: Container(
          color: Colors.white,
          padding: EdgeInsets.only(left: 20, right: 20),
          child: ListView(
            children: [
              sizedBox001(),
              serviceTypeTextField(),
              sizedBox001(),
              carBrandTextField(),
              sizedBox001(),
              carModelTextField(),
              sizedBox001(),
              carManufacturerTextField(),
              sizedBox001(),
              carNumbePlateTextField(),
              sizedBox001(),
              colorTextField(),
              sizedBox005(),
              registerBtnContainer()
            ],
          ),
        ));
  }

  Widget serviceTypeTextField() {
    return TextFormField(
      cursorColor: Theme.of(context).cursorColor,
      // maxLength: 64,
      style: TextStyle(fontSize: hFontSize(context)),
      decoration: InputDecoration(
        labelText: 'Service Type',
        labelStyle: TextStyle(
          color: Colors.grey,
          fontSize: hFontSize(context),
        ),
        fillColor: globalVariables.APP_THEME_COLOR,
        disabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: globalVariables.APP_THEME_COLOR),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
      ),
    );
  }

  Widget carBrandTextField() {
    return TextFormField(
      cursorColor: Theme.of(context).cursorColor,
      style: TextStyle(fontSize: hFontSize(context)),
      decoration: InputDecoration(
        labelText: 'Brand(Auto Suggestion)',
        labelStyle: TextStyle(
          color: Colors.grey,
          fontSize: hFontSize(context),
        ),
        fillColor: globalVariables.APP_THEME_COLOR,
        disabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: globalVariables.APP_THEME_COLOR),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
      ),
    );
  }

  Widget carModelTextField() {
    return TextFormField(
      cursorColor: Theme.of(context).cursorColor,
      // maxLength: 10,
      style: TextStyle(fontSize: hFontSize(context)),
      decoration: InputDecoration(
        labelText: 'Model(Auto Suggestion)',
        labelStyle: TextStyle(
          color: Colors.grey,
          fontSize: hFontSize(context),
        ),
        fillColor: globalVariables.APP_THEME_COLOR,
        disabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: globalVariables.APP_THEME_COLOR),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
      ),
    );
  }

  Widget carManufacturerTextField() {
    return TextFormField(
      cursorColor: Theme.of(context).cursorColor,
      // maxLength: 64,
      style: TextStyle(fontSize: hFontSize(context)),
      decoration: InputDecoration(
        labelText: 'Manufacturer(Auto Suggestion)',
        labelStyle: TextStyle(
          color: Colors.grey,
          fontSize: hFontSize(context),
        ),
        fillColor: globalVariables.APP_THEME_COLOR,
        disabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: globalVariables.APP_THEME_COLOR),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
      ),
    );
  }

  Widget carNumbePlateTextField() {
    return TextFormField(
      cursorColor: Theme.of(context).cursorColor,
      // maxLength: 64,
      style: TextStyle(fontSize: hFontSize(context)),
      decoration: InputDecoration(
        labelText: 'Number Plate',
        labelStyle: TextStyle(
          color: Colors.grey,
          fontSize: hFontSize(context),
        ),
        fillColor: globalVariables.APP_THEME_COLOR,
        disabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: globalVariables.APP_THEME_COLOR),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
      ),
    );
  }

  Widget colorTextField() {
    return TextFormField(
      cursorColor: Theme.of(context).cursorColor,
      // maxLength: 64,
      style: TextStyle(fontSize: hFontSize(context)),
      decoration: InputDecoration(
        labelText: 'Color',
        labelStyle: TextStyle(
          color: Colors.grey,
          fontSize: hFontSize(context),
        ),
        fillColor: globalVariables.APP_THEME_COLOR,
        disabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: globalVariables.APP_THEME_COLOR),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
      ),
    );
  }

  Widget registerBtnContainer() {
    return Align(
      alignment: Alignment.center,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Vehicle_Document_Screen()),
          );
        },
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(
                MediaQuery
                    .of(context)
                    .size
                    .height * 0.06 / 2),
          ),
          // width: MediaQuery.of(context).size.width - 80,
          height: MediaQuery
              .of(context)
              .size
              .height * 0.06,
          child: Align(
              alignment: Alignment.center,
              child: Text(
                "REGISTER",
                style: TextStyle(
                    fontSize: hFontSize(context), color: Colors.white),
              )),
        ),
      ),
    );
  }

  Widget sizedBox005() {
    return SizedBox(
      height: MediaQuery
          .of(context)
          .size
          .height * 0.05,
    );
  }

  Widget sizedBox001() {
    return SizedBox(
      height: MediaQuery
          .of(context)
          .size
          .height * 0.01,
    );
  }
}
