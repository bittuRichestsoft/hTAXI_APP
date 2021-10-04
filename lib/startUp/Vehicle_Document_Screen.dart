
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fox_taxi_rider/home/HomeMapScreen.dart';
import 'package:fox_taxi_rider/startUp/Add_Vehicle_Screen.dart';
import 'package:fox_taxi_rider/startUp/Subscription_Plan_Screen.dart';
import '../GlobalVariables.dart';

class Vehicle_Document_Screen extends StatefulWidget {
  @override
  _Vehicle_Document_ScreenState createState() =>
      _Vehicle_Document_ScreenState();
}

class _Vehicle_Document_ScreenState extends State<Vehicle_Document_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'Vehicle Document',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
          ),
          centerTitle: true,
          elevation: 0,
            iconTheme: IconThemeData(color: Colors.black),
        ),
        body: Container(
          margin: EdgeInsets.only(top: 3),
          color: Colors.white,
          padding: EdgeInsets.only(left: 20, right: 20),
          child: ScrollConfiguration(
            behavior: MyBehavior(),
            child: ListView(
              children: [
                sizedBox025(),
                RCBookContainer(),
                sizedBox025(),
                InsurencePolicyContainer(),
                sizedBox025(),
                OwnerCertificatesContainer(),
                sizedBox025(),
                PUC(),
                sizedBox0035(),
                terms_Conditions(),
                sizedBox0035(),
                NextContainer(),
              ],
            ),
          ),
        ));
  }

  Widget RCBookContainer() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('RC Book',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: hFontSize(context))),
            InkWell(
              onTap: (){
                print('RC Book taped');
              },
              child: Text('Upload',
                  style: TextStyle(
                      color: globalVariables.APP_THEME_COLOR,
                      fontWeight: FontWeight.w700,
                      fontSize: hFontSize(context))),
            ),
          ],
        ),
        sizedBox0005(),
        Text('RC Book Uploading',
            style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w700,
                fontSize: hFontSize(context))),
        sizedBox025(),
       bottomLineContainer(),
      ],
    );
  }

  Widget InsurencePolicyContainer(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Insurence Policy',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: hFontSize(context))),
            InkWell(
              onTap: (){
                print('InsurencePolicy taped');
              },
              child: Text('Upload',
                  style: TextStyle(
                      color: globalVariables.APP_THEME_COLOR,
                      fontWeight: FontWeight.w700,
                      fontSize: hFontSize(context))),
            ),
          ],
        ),
        sizedBox0005(),
        Text('InsurencePolicy Uploaded',
            style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w700,
                fontSize: hFontSize(context))),
        sizedBox025(),
        bottomLineContainer()
      ],
    );
  }

  Widget OwnerCertificatesContainer() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Owner Certificate',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: hFontSize(context))),
            InkWell(
              onTap: (){
                print('Owner Certificate taped');
              },
              child: Text('Upload',
                  style: TextStyle(
                      color: globalVariables.APP_THEME_COLOR,
                      fontWeight: FontWeight.w700,
                      fontSize: hFontSize(context))),
            ),
          ],
        ),
        sizedBox0005(),
        Text('OwnerCertificate Uploaded',
            style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w700,
                fontSize: hFontSize(context))),
        sizedBox025(),
        bottomLineContainer()
      ],
    );
  }

  Widget PUC(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('PUC',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: hFontSize(context))),
            InkWell(
              onTap: (){
                print('PUC taped');
              },
              child: Text('Upload',
                  style: TextStyle(
                      color: globalVariables.APP_THEME_COLOR,
                      fontWeight: FontWeight.w700,
                      fontSize: hFontSize(context))),
            ),
          ],
        ),
        sizedBox0005(),
        Text('PUC Uploaded',
            style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w700,
                fontSize: hFontSize(context))),
        sizedBox025(),
        bottomLineContainer()
      ],
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

  Widget NextContainer() {
    return Align(
      alignment: Alignment.center,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomeMapScreen()),
          );
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
                "Next",
                style: TextStyle(
                    fontSize: hFontSize(context), color: Colors.white),
              )),
        ),
      ),
    );
  }

  Widget bottomLineContainer(){
    return  Container(
      height: MediaQuery.of(context).size.height*0.001,
      color: Colors.grey,
    );
  }

  Widget sizedBox0035() {
    return SizedBox(
        height: MediaQuery.of(context).size.height * 0.035
    );
  }

  Widget sizedBox025() {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.025,
    );
  }

  Widget sizedBox0005(){
    return SizedBox(height: MediaQuery.of(context).size.height*0.005);

  }
}
