import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../GlobalVariables.dart';

class Edit_Profile_Screen extends StatefulWidget {
  @override
  _Edit_Profile_ScreenState createState() => _Edit_Profile_ScreenState();
}

class _Edit_Profile_ScreenState extends State<Edit_Profile_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Edit Profile',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
        leading:
        IconButton(icon: Icon(Icons.arrow_back)), // appbar leading icon.
      ),
      body: Container(
        padding: EdgeInsets.only(left: 20, right: 20),
        color: Colors.white,
        child: Column(
          children: [
            sizedBox003(),
            firstNameContainer(),
            sizedBox003(),
            lastNameContainer(),
            sizedBox003(),
            mobileNumberContainer(),
            Divider(height: 1, thickness: 1.7,),
            sizedBox003(),
            emailContainer(),
            sizedBox003(),
            saveBtnContainer()
          ],
        ),
      ),
    );
  }

  Widget firstNameContainer() {
    return TextFormField(
      cursorColor: Theme.of(context).cursorColor,
      style: TextStyle(fontSize: hFontSize(context)),
      decoration: InputDecoration(
        labelText: 'First Name',
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

  Widget lastNameContainer() {
    return TextFormField(
      cursorColor: Theme.of(context).cursorColor,
      style: TextStyle(fontSize: hFontSize(context)),
      decoration: InputDecoration(
        labelText: 'Last Name',
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

  Widget mobileNumberContainer() {
    return Row(
      children: [
        Icon(
          Icons.flag,
          size: MediaQuery.of(context).size.width * 0.07,
        ),
        SizedBox(
          width: 10,
        ),
        Text("+91", style: TextStyle(fontSize: hFontSize(context))),
        Container(
          width: MediaQuery.of(context).size.width -
              MediaQuery.of(context).size.width * 0.31,
          child: TextField(
            decoration: InputDecoration(
              hintStyle: TextStyle(fontSize: hFontSize(context)),
              hintText: '1234567890',
              border: InputBorder.none,
              contentPadding: EdgeInsets.all(20),
            ),
          ),
        ),
      ],
    );
  }

  Widget emailContainer() {
    return TextFormField(
      cursorColor: Theme.of(context).cursorColor,
      style: TextStyle(fontSize: hFontSize(context)),
      decoration: InputDecoration(
        labelText: 'abc@def.com',
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

  Widget saveBtnContainer() {
    return Align(
      alignment: Alignment.center,
      child: GestureDetector(
        onTap: () {
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(builder: (context) => Add_Vehicle_Screen()),
          // );
        },
        child: Container(
          decoration: BoxDecoration(
            color: globalVariables.APP_THEME_COLOR,
            borderRadius: BorderRadius.circular(
                MediaQuery.of(context).size.height * 0.06 / 2),
          ),
          // width: MediaQuery.of(context).size.width - 80,
          height: MediaQuery.of(context).size.height * 0.06,
          child: Align(
              alignment: Alignment.center,
              child: Text(
                "SAVE",
                style: TextStyle(
                    fontSize: hFontSize(context), color: Colors.white),
              ),    ),
        ),
      ),
    );
  }

  Widget sizedBox003(){
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.03,
    );
  }


}
