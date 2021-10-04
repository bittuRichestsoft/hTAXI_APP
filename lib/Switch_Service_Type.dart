import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'GlobalVariables.dart';

class Switch_Service_Type extends StatefulWidget {
  //const Switch_Service_Type({Key? key}) : super(key: key);

  @override
  _Switch_Service_TypeState createState() => _Switch_Service_TypeState();
}

class _Switch_Service_TypeState extends State<Switch_Service_Type> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Switch service type',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black), // appbar leading icon.
      ),
      body: Container(
        padding: EdgeInsets.only(left: 20, right: 20),
        margin: EdgeInsets.only(top: 5),
        color: Colors.white,
        child: Column(
          children: [
            exectiveContainer(),
            limoContainer(),
            economyContainer(),
            SizedBox()
          ],
        ),
      ),
    );
  }

  Widget exectiveContainer() {
    return Column(
      children: [
        ListTile(
          title: Text(
            'Executive',
            style: TextStyle(color: Colors.black, fontSize: hFontSize(context)),
          ),
          subtitle: Text(
            'What is executive',
            style: TextStyle(color: Colors.grey),
          ),
          trailing: Switch(
              value: false,
              activeColor: globalVariables.APP_THEME_COLOR,
              inactiveThumbColor: Colors.white,
              onChanged: (value) {
                value ? false : true;
              }),
        ),
        Divider(
          thickness: 1,
          height: 1,
        ),
      ],
    );
  }

  Widget limoContainer() {
    return Column(
      children: [
        ListTile(
          title: Text(
            'Limo',
            style: TextStyle(color: Colors.black, fontSize: hFontSize(context)),
          ),
          subtitle: Text(
            'What is Limo',
            style: TextStyle(color: Colors.grey),
          ),
          trailing: Switch(
            value: false,
            activeColor: globalVariables.APP_THEME_COLOR,
            inactiveThumbColor: Colors.white,
            onChanged: (value) {},
          ),
        ),
        Divider(
          thickness: 1,
          height: 1,
        ),
      ],
    );
  }

  Widget economyContainer() {
    return Column(
      children: [
        ListTile(
          title: Text(
            'Economy',
            style: TextStyle(color: Colors.black, fontSize: hFontSize(context)),
          ),
          subtitle: Text(
            'Describe short brief',
            style: TextStyle(color: Colors.grey),
          ),
          trailing: Switch(
            value: false,
            activeColor: globalVariables.APP_THEME_COLOR,
            inactiveThumbColor: Colors.white,
            onChanged: (value) {},
          ),
        ),
        Divider(
          thickness: 1,
          height: 1,
        ),
      ],
    );
  }
}
