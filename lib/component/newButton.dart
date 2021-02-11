import 'package:flight_booking_app/common/Color.dart';
import 'package:flutter/material.dart';

class NewButton extends StatelessWidget {
  NewButton({@required this.onPressed, @required this.title});   //Constructor with parameters

  final GestureTapCallback onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(                                           // returning of button
      color: NewColors.buttonColor,
      child: Container(

          width: MediaQuery.of(context).size.width * 0.55,
          padding: EdgeInsets.all(18.0),
          child: Text(
            title,
            style: TextStyle(color: NewColors.White, fontSize: 15),
            textAlign: TextAlign.center,
          ),
      ),
      onPressed: onPressed,
      shape: const StadiumBorder(),
    );
  }
}
