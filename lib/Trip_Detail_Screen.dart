import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fox_taxi_rider/GlobalVariables.dart';
import 'package:fox_taxi_rider/startUp/Trip_Screen.dart';

class Trip_Detail_screen extends StatefulWidget {
  // const Trip_Detail_screen({Key? key}) : super(key: key);

  @override
  _Trip_Detail_screenState createState() => _Trip_Detail_screenState();
}

class _Trip_Detail_screenState extends State<Trip_Detail_screen> {
  @override
  Widget build(BuildContext context) {
    var globalVariables;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Trips',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black), // appbar leading icon.
      ),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.only(left: 20, right: 20),
        margin: EdgeInsets.only(top: 5),
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: 5,
            itemBuilder: (context, int index) {
              return GestureDetector(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                      builder: (context) => Trip_Screen()));
                },
                child: Column(
                  children: [
                    ListTile(
                      title: Text(
                        'Mon, 18th feb',
                        style: TextStyle(
                            color: Colors.black, fontSize: hFontSize(context)),
                      ),
                      subtitle: Text(
                        '5 Trip',
                        style: TextStyle(color: Colors.grey),
                      ),
                      trailing: Text(
                        '\$25.20',
                        style: TextStyle(
                            color: Colors.black, fontSize: hFontSize(context)),
                      ),
                    ),
                    Divider(
                      thickness: 1,
                      height: 1,
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }

// child:ListView.builder(
//     shrinkWrap: true,
//     itemCount: 5,
//     itemBuilder: (context, int index){
//       return ListTile(
//         leading: Text('Trip fares', style: TextStyle(color: Colors.grey),),
//         trailing: Text('\$25.20', style: TextStyle(color: Colors.grey),),);
//     }
// ),

}
