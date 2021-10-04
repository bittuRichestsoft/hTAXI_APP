import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fox_taxi_rider/GlobalVariables.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:fox_taxi_rider/Switch_Service_Type.dart';
import 'package:fox_taxi_rider/Trip_Detail_Screen.dart';
import 'package:fox_taxi_rider/bar_chart_graph.dart';
import 'package:fox_taxi_rider/startUp/Trip_Screen.dart';

import 'BarChartModel.dart';

class Earning_Screen extends StatefulWidget {
  @override
  _Earning_ScreenState createState() => _Earning_ScreenState();
}

class _Earning_ScreenState extends State<Earning_Screen> {

  final List<BarChartModel> data = [
    BarChartModel(
      year: "2014",
      financial: 250,
      color: charts.ColorUtil.fromDartColor
        (Color(0xFF47505F)),
    ),
    BarChartModel(
      year: "2015",
      financial: 300,
      color: charts.ColorUtil.fromDartColor
        (Colors.red),
    ),
    BarChartModel(
      year: "2016",
      financial: 100,
      color: charts.ColorUtil.fromDartColor
        (Colors.green),
    ),
    BarChartModel(
      year: "2017",
      financial: 450,
      color: charts.ColorUtil.fromDartColor
        (Colors.yellow),
    ),
    BarChartModel(
      year: "2018",
      financial: 630,
      color: charts.ColorUtil.fromDartColor
        (Colors.lightBlueAccent),
    ),
    BarChartModel(
      year: "2019",
      financial: 1000,
      color: charts.ColorUtil.fromDartColor
        (Colors.pink),
    ),
    BarChartModel(
      year: "2020",
      financial: 400,
      color: charts.ColorUtil.fromDartColor
        (Colors.purple),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          title: Text(
            'Earning',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w800),
          ),
          centerTitle: true,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
          bottom: TabBar(
            labelColor: globalVariables.APP_THEME_COLOR,
            unselectedLabelColor: Colors.grey,
            labelStyle: TextStyle(
                fontSize: MediaQuery.of(context).size.height * 0.022,
                fontWeight: FontWeight.w700),
            indicatorPadding: EdgeInsets.only(left: 10, right: 10),
            indicatorWeight: 4,
            indicatorColor: globalVariables.APP_THEME_COLOR,
            tabs: [
              Tab(text: 'TODAY'),
              Tab(text: 'WEEKLEY'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            TodayContainer(),
            WeekleyContainer(),
          ],
        ),
      ),
    );
  }

  ///region FIRST TAB CODE START
  Widget TodayContainer() {
    return ListView(
      children: [
        moneyDetailContainer(),
        totalEarningContainer()
      ],
    );
  }

  Widget moneyDetailContainer() {
    return Container(
      margin: EdgeInsets.only(top: 5),
      color: Colors.white,
      child: Container(
        child: Column(children: [
          hSIzedBox(),
          Text('Mon, 18 Feb 2020'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '\$',
                style: TextStyle(
                    color: globalVariables.APP_THEME_COLOR,
                    fontSize: MediaQuery.of(context).size.height * 0.03,
                    fontWeight: FontWeight.w800),
              ),
              Text(
                '24.5',
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * 0.05,
                    fontWeight: FontWeight.w800),
              )
            ],
          ),
          hSIzedBox(),
          Divider(
            height: 1,
            thickness: 1,
          ),
          threeSectionRow(),
        ]),
      ),
    );
  }

  Widget threeSectionRow() {
    return Row(
      children: [
        GestureDetector(
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Trip_Detail_screen()),
            );
          },
          child: Container(
            height: hHeight(context) / 8,
            width: hWidth(context) / 3.02,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '15',
                  style: TextStyle(
                      fontWeight: FontWeight.w500, fontSize: hFontSize(context)),
                ),
                Text(
                  'Trips',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: hFontSize(context) - 5,
                      color: Colors.grey),
                )
              ],
            ),
          ),
        ),
        hVerticleDividerContainer(),
        GestureDetector(
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Switch_Service_Type()),
            );
          },
          child: Container(
            height: hHeight(context) / 8,
            width: hWidth(context) / 3.02,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '8:30',
                  style: TextStyle(
                      fontWeight: FontWeight.w500, fontSize: hFontSize(context)),
                ),
                Text(
                  'Online Hrs',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: hFontSize(context) - 5,
                      color: Colors.grey),
                )
              ],
            ),
          ),
        ),
        hVerticleDividerContainer(),
        Container(
          height: hHeight(context) / 8,
          width: hWidth(context) / 3.02,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '\$22.48',
                style: TextStyle(
                    fontWeight: FontWeight.w500, fontSize: hFontSize(context)),
              ),
              Text(
                'Cash trip',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: hFontSize(context) - 5,
                    color: Colors.grey),
              )
            ],
          ),
        )
      ],
    );
  }

  Widget hSIzedBox() {
    return SizedBox(
      height: hHeight(context) * 0.045,
    );
  }

  Widget totalEarningContainer() {
    return Container(
      color: Colors.white,
      height: hHeight(context)-MediaQuery.of(context).padding.top - 5 - hHeight(context) / 8,
      margin: EdgeInsets.only(top: 5),
      // child:ListView.builder(
      //     shrinkWrap: true,
      //     itemCount: 5,
      //     itemBuilder: (context, int index){
      //       return ListTile(
      //         leading: Text('Trip fares', style: TextStyle(color: Colors.grey),),
      //         trailing: Text('\$25.20', style: TextStyle(color: Colors.grey),),);
      //     }
      // ),
      child: ListView(
        shrinkWrap: true,
        children: [
          ListTile(
            leading: Text(
              'Trip fares',
              style: TextStyle(color: Colors.grey),
            ),
            trailing: Text(
              '\$25.20',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          ListTile(
            leading: Text(
              'Yellow Taxi fee',
              style: TextStyle(color: Colors.grey),
            ),
            trailing: Text(
              '\$20.20',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          ListTile(
            leading: Text(
              '+Tax',
              style: TextStyle(color: Colors.grey),
            ),
            trailing: Text(
              '\$400',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          ListTile(
            leading: Text(
              '+Trolls',
              style: TextStyle(color: Colors.grey),
            ),
            trailing: Text(
              '\$400',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          ListTile(
            leading: Text(
              'Surge',
              style: TextStyle(color: Colors.grey),
            ),
            trailing: Text(
              '\$25.20',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          ListTile(
            leading: Text(
              'Discount',
              style: TextStyle(color: Colors.grey),
            ),
            trailing: Text(
              '\$20.0',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          Divider(height: 1, thickness: 1,),
          ListTile(
            leading: Text(
              'Total Earning',
              style: TextStyle(color: globalVariables.APP_THEME_COLOR),
            ),
            trailing: Text(
              '\$460.55',
              style: TextStyle(color: globalVariables.APP_THEME_COLOR),
            ),
          ),
        ],
      ),
    );
  }

  ///endregion First Tab code end here

  ///second tab code start------------------------------------------------------
  Widget WeekleyContainer() {
    return ScrollConfiguration(
      behavior: MyBehavior(),
      child: ListView(
        shrinkWrap: true,
        children: [
          weeklyMoneyDetailContainer(),
          weeklyTotalEarningContainer()],
      ),
    );
  }


  Widget weeklyMoneyDetailContainer() {
    return Container(
      margin: EdgeInsets.only(top: 5),
      color: Colors.white,
      child: Container(
        child: Column(children: [
          SizedBox(height: hHeight(context) * 0.02,),
          Text('Mon, 18 Feb 2020'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '\$',
                style: TextStyle(
                    color: globalVariables.APP_THEME_COLOR,
                    fontSize: MediaQuery.of(context).size.height * 0.03,
                    fontWeight: FontWeight.w800),
              ),
              Text(
                '24.5',
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * 0.05,
                    fontWeight: FontWeight.w800),
              )
            ],
          ),
          SizedBox(height: hHeight(context) * 0.02,),
          Container(
            color: Colors.blue,
            height: hHeight(context)/4,
            child: hBarChartContainer(data),
          ),
          Divider(
            height: 1,
            thickness: 1,
          ),
          weeklyThreeSectionRow(),
        ]),
      ),
    );
  }

  Widget weeklyThreeSectionRow() {
    return Row(
      children: [
        GestureDetector(
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Trip_Detail_screen()),
            );
          },
          child: Container(
            height: hHeight(context) / 8,
            width: hWidth(context) / 3.02,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '15',
                  style: TextStyle(
                      fontWeight: FontWeight.w500, fontSize: hFontSize(context)),
                ),
                Text(
                  'Trips',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: hFontSize(context) - 5,
                      color: Colors.grey),
                )
              ],
            ),
          ),
        ),
        hVerticleDividerContainer(),
        Container(
          height: hHeight(context) / 8,
          width: hWidth(context) / 3.02,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '8:30',
                style: TextStyle(
                    fontWeight: FontWeight.w500, fontSize: hFontSize(context)),
              ),
              Text(
                'Online Hrs',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: hFontSize(context) - 5,
                    color: Colors.grey),
              )
            ],
          ),
        ),
        hVerticleDividerContainer(),
        Container(
          height: hHeight(context) / 8,
          width: hWidth(context) / 3.02,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '\$22.48',
                style: TextStyle(
                    fontWeight: FontWeight.w500, fontSize: hFontSize(context)),
              ),
              Text(
                'Cash trip',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: hFontSize(context) - 5,
                    color: Colors.grey),
              )
            ],
          ),
        )
      ],
    );
  }


  Widget hVerticleDividerContainer() {
    return Container(
      height: hHeight(context) / 8,
      width: 1,
      color: Colors.grey.shade300,
    );
  }

  Widget hBarChartContainer(List<BarChartModel> data){
    return Container(
      child: ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        children: [
          bar_chart_graph(data)
        ],
      ),
    );


  }

  Widget weeklyTotalEarningContainer() {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.only(top: 5),
      // child:ListView.builder(
      //     shrinkWrap: true,
      //     itemCount: 5,
      //     itemBuilder: (context, int index){
      //       return ListTile(
      //         leading: Text('Trip fares', style: TextStyle(color: Colors.grey),),
      //         trailing: Text('\$25.20', style: TextStyle(color: Colors.grey),),);
      //     }
      // ),
      child: Column(
        children: [
          ListTile(
            leading: Text(
              'Trip fares',
              style: TextStyle(color: Colors.grey),
            ),
            trailing: Text(
              '\$25.20',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          ListTile(
            leading: Text(
              'Yellow Taxi fee',
              style: TextStyle(color: Colors.grey),
            ),
            trailing: Text(
              '\$20.20',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          ListTile(
            leading: Text(
              '+Tax',
              style: TextStyle(color: Colors.grey),
            ),
            trailing: Text(
              '\$400',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          ListTile(
            leading: Text(
              '+Trolls',
              style: TextStyle(color: Colors.grey),
            ),
            trailing: Text(
              '\$400',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          ListTile(
            leading: Text(
              'Surge',
              style: TextStyle(color: Colors.grey),
            ),
            trailing: Text(
              '\$25.20',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          ListTile(
            leading: Text(
              'Discount',
              style: TextStyle(color: Colors.grey),
            ),
            trailing: Text(
              '\$20.0',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          Divider(height: 1, thickness: 1,),
          ListTile(
            leading: Text(
              'Total Earning',
              style: TextStyle(color: globalVariables.APP_THEME_COLOR),
            ),
            trailing: Text(
              '\$460.55',
              style: TextStyle(color: globalVariables.APP_THEME_COLOR),
            ),
          ),
        ],
      ),
    );
  }

/// CHART DATA------------------------------------------------------------------


}


/// Sample ordinal data type.


