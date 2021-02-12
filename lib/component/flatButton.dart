import 'package:flight_booking_app/common/Color.dart';
import 'package:flutter/material.dart';

class FlatBtn extends StatelessWidget {
  //Constructor with parameters
  FlatBtn({@required this.onPressed, @required this.title});

  final GestureTapCallback onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      // returning of button
        child: Text(
          title,
          style: TextStyle(color: NewColors.splashTextColor, fontSize: 15),
          textAlign: TextAlign.center,
        ),

      onPressed: onPressed,
    );
  }
}
