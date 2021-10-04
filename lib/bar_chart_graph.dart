import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'BarChartModel.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class bar_chart_graph extends StatefulWidget {
  bar_chart_graph(List<BarChartModel> data){
    _barChartList = data;
    print('---------------------------${data.toString()}----------------------------------');
  }


  @override
  _bar_chart_graphState createState() => _bar_chart_graphState();
}

List<BarChartModel> _barChartList;

class _bar_chart_graphState extends State<bar_chart_graph> {
  @override
  Widget build(BuildContext context) {
    List<charts.Series<BarChartModel, String>> series = [
      charts.Series(
          id: "Financial",
          data: _barChartList,
          domainFn: (BarChartModel series, _) => series.year,
          measureFn: (BarChartModel series, _) => series.financial,
          colorFn: (BarChartModel series, _) => series.color),
    ];
    return _buildFinancialList(series);
  }

  Widget _buildFinancialList(series) {
    return _barChartList != null
        ? ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            separatorBuilder: (context, index) => Divider(
              color: Colors.white,
              height: 5,
            ),
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: _barChartList.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                height: MediaQuery.of(context).size.height / 2.3,
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(_barChartList[index].month,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 22,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                    Expanded(child: charts.BarChart(series, animate: true)),
                  ],
                ),
              );
            },
          )
        : SizedBox();
  }
}
