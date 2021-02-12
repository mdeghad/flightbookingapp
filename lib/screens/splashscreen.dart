import 'dart:async';

import 'package:flight_booking_app/common/Color.dart';
import 'package:flight_booking_app/common/string.dart';
import 'package:flight_booking_app/screens/signup.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SplashScreenState();
  }
}

class SplashScreenState extends State {
  //To set duration and navigation
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      //setting of duration for splash
        Duration(seconds: 10),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => SignUP())));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
        body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: NewColors.splashscreenColor,
            child: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  //setting image for splash
                  Strings.logoImage,
                  width: 110,
                  height: 110,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      Strings.splshscreenText1,
                      //setting text for splash
                      style: TextStyle(
                          fontSize: 35,
                          color: NewColors.White,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 10),
                    Text(
                      Strings.splshscreenText2,
                      //setting text for splash
                      style: TextStyle(
                          fontSize: 35,
                          color: NewColors.splashTextColor,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                )
              ],
            ))));
  }
}
