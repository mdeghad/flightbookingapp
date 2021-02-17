import 'package:flight_booking_app/common/Color.dart';
import 'package:flight_booking_app/common/string.dart';
import 'package:flutter/material.dart';
class SearchFlight extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
   return SearchFlightState();
  }
  
}

class SearchFlightState extends State{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
  return Scaffold(
    body: Container(
      child: ListView(
        children: [
          Container(
      decoration: new BoxDecoration(
      color:NewColors.splashscreenColor,
      image: new DecorationImage(
        fit: BoxFit.cover,
        colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.dstATop),
        image: AssetImage(Strings.firstPageImage)
        ),
      ),
          )
        ],
      ),
    ),
  );
  }

}