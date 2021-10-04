import 'package:flutter/material.dart';
import 'package:fox_taxi_rider/startUp/Personal_Document_Screen.dart';

import '../GlobalVariables.dart';

class Bank_Detail_Screen extends StatefulWidget {
  @override
  _Bank_Detail_ScreenState createState() => _Bank_Detail_ScreenState();
}

class _Bank_Detail_ScreenState extends State<Bank_Detail_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            title: Text(
              'Bank Details',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
            ),
            centerTitle: true,
            elevation: 0,
            iconTheme: IconThemeData(color: Colors.black)),
        body: Container(
          margin: EdgeInsets.only(top: 3),
          color: Colors.white,
          padding: EdgeInsets.only(left: 20, right: 20),
          child: ScrollConfiguration(
            behavior: MyBehavior(),
            child: ListView(
              children: [
                bankNameTextField(),
                accountHolderNameTextField(),
                accountNumberTextField(),
                swift_IFSC_CodeTextField(),
                sizedBox05(),
                terms_Conditions(),
                sizedBox05(),
                NextBtnContainer(),
              ],
            ),
          ),
        ));
  }

  Widget bankNameTextField() {
    return TextFormField(
      cursorColor: Theme.of(context).cursorColor,
      style: TextStyle(fontSize: hFontSize(context)),
      decoration: InputDecoration(
        labelText: 'Bank Name',
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

  Widget accountHolderNameTextField() {
    return TextFormField(
      cursorColor: Theme.of(context).cursorColor,
      // maxLength: 10,
      style: TextStyle(fontSize: hFontSize(context)),
      decoration: InputDecoration(
        labelText: 'Account Holder NAme',
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

  Widget accountNumberTextField() {
    return TextFormField(
      cursorColor: Theme.of(context).cursorColor,
      // maxLength: 64,
      style: TextStyle(fontSize: hFontSize(context)),
      decoration: InputDecoration(
        labelText: 'Account Number',
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

  Widget swift_IFSC_CodeTextField() {
    return TextFormField(
      cursorColor: Theme.of(context).cursorColor,
      // maxLength: 64,
      style: TextStyle(fontSize: hFontSize(context)),
      decoration: InputDecoration(
        labelText: 'Account Number',
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

  Widget NextBtnContainer() {
    return Align(
      alignment: Alignment.center,
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Personal_Document_Screen()),
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
                "Next",
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
