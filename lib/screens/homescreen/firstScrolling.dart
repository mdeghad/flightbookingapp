import 'package:flight_booking_app/common/Color.dart';
import 'package:flight_booking_app/component/customSizedBox.dart';
import 'package:flutter/material.dart';

class FirstScroll extends StatelessWidget {
  FirstScroll(
      {@required this.image, @required this.color, @required this.title});

  final IconData image;
  final Color color;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.35,
      width: MediaQuery.of(context).size.width * 0.22,
      // padding: const EdgeInsets.all(10),
      child: Column(children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.27,
          child: CircleAvatar(
            radius: 35.0,
            child: Icon(
              image,
              color: NewColors.textWhite,
            ),
            backgroundColor: color,
          ),
        ),
        CustomSizeBox1(),
        CustomSizeBox1(),
        Text(
          title,
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w900),
          textAlign: TextAlign.left,
        ),
      ]),
    );
  }
}
