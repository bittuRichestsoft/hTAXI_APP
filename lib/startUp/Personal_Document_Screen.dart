import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fox_taxi_rider/startUp/Add_Vehicle_Screen.dart';
import '../GlobalVariables.dart';

class Personal_Document_Screen extends StatefulWidget {
  @override
  _Personal_Document_ScreenState createState() =>
      _Personal_Document_ScreenState();
}

class _Personal_Document_ScreenState extends State<Personal_Document_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'Personal Details',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
          ),
          centerTitle: true,
            elevation: 0,
            iconTheme: IconThemeData(color: Colors.black)

        ),
        body: Container(
          margin: EdgeInsets.only(top: 3),
          color: Colors.white,
          padding: EdgeInsets.only(left: 20, right: 20),
          child: ListView(
            children: [
              sizedBox025(),
              BirthCertifiateTextField(),
              sizedBox025(),
              DrivingLicenceTextField(),
              sizedBox025(),
              PassportTextField(),
              sizedBox025(),
              ElectionCardTextField(),
              sizedBox0035(),
              terms_Conditions(),
              sizedBox0035(),
              NextContainer(),
            ],
          ),
        ));
  }

  Widget BirthCertifiateTextField() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Birth Certificate',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w700,
                fontSize: hFontSize(context),
              ),
            ),
            InkWell(
              onTap: () {
                print('bith certificate taped');
              },
              child: Text(
                'Upload',
                style: TextStyle(
                  color: globalVariables.APP_THEME_COLOR,
                  fontWeight: FontWeight.w700,
                  fontSize: hFontSize(context),
                ),
              ),
            ),
          ],
        ),
        sizedBox0005(),
        Text('Birth Certificate Uploaded',
            style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w700,
                fontSize: hFontSize(context))),
        sizedBox025(),
        Container(
          height: MediaQuery.of(context).size.height * 0.001,
          color: Colors.grey,
        )
      ],
    );
  }

  Widget DrivingLicenceTextField() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Driving Licence',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w700,
                fontSize: hFontSize(context),
              ),
            ),
            InkWell(
              onTap: () {
                print('Driving Licence taped');
              },
              child: Text(
                'Upload',
                style: TextStyle(
                  color: globalVariables.APP_THEME_COLOR,
                  fontWeight: FontWeight.w700,
                  fontSize: hFontSize(context),
                ),
              ),
            ),
          ],
        ),
        sizedBox0005(),
        Text('Driving Licence Uploaded',
            style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w700,
                fontSize: hFontSize(context))),
        sizedBox025(),
        Container(
          height: MediaQuery.of(context).size.height * 0.001,
          color: Colors.grey,
        )
      ],
    );
  }

  Widget PassportTextField() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Passport',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w700,
                fontSize: hFontSize(context),
              ),
            ),
            InkWell(
              onTap: () {
                print('Passport taped');
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
        Text('Passport Uploaded',
            style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w700,
                fontSize: hFontSize(context))),
        sizedBox025(),
        Container(
          height: MediaQuery.of(context).size.height * 0.001,
          color: Colors.grey,
        )
      ],
    );
  }

  Widget ElectionCardTextField() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('ElectionCard',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: hFontSize(context))),
            InkWell(
              onTap: () {
                print('ElectionCard taped');
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
        Text('ElectionCard Uploaded',
            style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w700,
                fontSize: hFontSize(context))),
        sizedBox025(),
        Container(
          height: MediaQuery.of(context).size.height * 0.001,
          color: Colors.grey,
        )
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
            MaterialPageRoute(builder: (context) => Add_Vehicle_Screen()),
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

  Widget sizedBox0035() {
    return SizedBox(height: MediaQuery.of(context).size.height * 0.035);
  }

  Widget sizedBox025() {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.025,
    );
  }

  Widget sizedBox0005() {
    return SizedBox(height: MediaQuery.of(context).size.height * 0.005);
  }
}
