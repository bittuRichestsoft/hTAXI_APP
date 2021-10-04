import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fox_taxi_rider/GlobalVariables.dart';
import 'package:fox_taxi_rider/startUp/Bank_Detail_Screen.dart';

class Create_Profile_Screen extends StatefulWidget {
  @override
  _Create_Profile_ScreenState createState() => _Create_Profile_ScreenState();
}

class _Create_Profile_ScreenState extends State<Create_Profile_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black), // appbar leading icon.
        ),
        body: Container(
          color: Colors.white,
          padding: EdgeInsets.only(left: 20, right: 20),
          child: ScrollConfiguration(
            behavior: MyBehavior(),
            child: ListView(
              children: [
                //sizedBox05(),
                titleText(),
                firstNameTextField(),
                lastNameTextField(),
                mobileNumberTextField(),
                homeAddressTextField(),
                passwordTextField(),
                sizedBox05(),
                terms_Conditions(),
                sizedBox05(),
                registerContainer(),
                sizedBox05(),
              ],
            ),
          ),
        ));
  }

  Widget titleText() {
    return Text(
      "Create Profile",
      style: TextStyle(
          decoration: TextDecoration.none,
          color: Colors.black,
          fontSize: MediaQuery.of(context).size.height * 0.032,
          fontWeight: FontWeight.w700),
    );
  }

  Widget firstNameTextField() {
    return TextFormField(
      cursorColor: Theme.of(context).cursorColor,
      // maxLength: 64,
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

  Widget lastNameTextField() {
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

  Widget mobileNumberTextField() {
    return TextFormField(
      cursorColor: Theme.of(context).cursorColor,
      // maxLength: 10,
      style: TextStyle(fontSize: hFontSize(context)),
      decoration: InputDecoration(
        labelText: 'Mobile Number',
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

  Widget homeAddressTextField() {
    return TextFormField(
      cursorColor: Theme.of(context).cursorColor,
      // maxLength: 64,
      style: TextStyle(fontSize: hFontSize(context)),
      decoration: InputDecoration(
        labelText: 'Home Address',
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

  Widget passwordTextField() {
    return TextFormField(
      cursorColor: Theme.of(context).cursorColor,
      maxLength: 16,
      style: TextStyle(fontSize: hFontSize(context)),
      decoration: InputDecoration(
        helperText: 'Password must be 6 digits',
        labelText: 'Password',
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
        suffixIcon: Icon(
          Icons.remove_red_eye,
        ),
      ),
    );
  }

  Widget terms_Conditions() {
    return Container(
      child: Align(
        alignment: Alignment.center,
        child: Text(
          "By countinuing. I confirm that i have read and agree to the Terms & conditions and Privacy policy",
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  Widget registerContainer() {
    return Align(
      alignment: Alignment.center,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Bank_Detail_Screen()),
          );
        },
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(
                MediaQuery.of(context).size.height * 0.06 / 2),
          ),
          // width: MediaQuery.of(context).size.width - 80,
          height: MediaQuery.of(context).size.height * 0.06,
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

  Widget sizedBox05() {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.05,
    );
  }
}
