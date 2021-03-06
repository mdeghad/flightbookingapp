import 'package:flight_booking_app/common/Color.dart';
import 'package:flight_booking_app/common/string.dart';
import 'package:flutter/material.dart';

class MaterailBtn extends StatelessWidget {
  //Constructor with parameters
  MaterailBtn({@required this.onPressed, @required this.title,@required this.image});

  final GestureTapCallback onPressed;
  final String title;
 final  String image;

  @override
  Widget build(BuildContext context) {
    // returning of button
    return MaterialButton(

      child: Container(

        width: MediaQuery.of(context).size.width * 0.18,
        padding: EdgeInsets.all(10.0),
        child: Image.asset(image),

      ),

      onPressed: onPressed,

      shape: CircleBorder(),

    );
  }
}
